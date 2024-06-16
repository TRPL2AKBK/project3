<?php

namespace App\Http\Controllers;

use App\Models\MatakuliahKBK;
use App\Models\RPS;
use App\Models\VerifikasiRPS;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;


class RPSController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        if (auth()->user()->id_level == 1) {
            $rpsData = RPS::orderByDesc('id_rps')->get();
            return view('admin/dataRPS', compact('rpsData'));
        } else {
            $user = Auth::user();
            $rpsData = RPS::where('id_dosen_pengembang', $user->id)->orderByDesc('id_rps')->get();
            return view('admin/dataRPS', compact('rpsData'));
        }
    }

    public function create()
    {
        $matakuliah = MatakuliahKBK::get();
        // dd($matakuliah);
        return view('admin/createRPS', compact('matakuliah'));
    }


    public function store(Request $request)
    {
        // dd($request);
        $validator = Validator::make($request->all(), [
            'id_matakuliah_kbk' => 'required',
            'versi_rps' => 'required',
            'dokumen' => 'required|file|max:25000',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        DB::beginTransaction();

        try {
            $rpsData = [
                'id_matakuliah_kbk' => $request->id_matakuliah_kbk,
                'versi_rps' => $request->versi_rps,
                'dokumen' => $request->dokumen->store('RPS'),
                'id_dosen_pengembang' => Auth::id(),

            ];

            $rpsData = RPS::create($rpsData);

            $verifData = [
                'id_rps' => $rpsData->id_rps,
            ];

            VerifikasiRPS::create($verifData);

            DB::commit();

            return redirect()->route('verifikasi.rps');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->withInput()->withErrors($e->getMessage());
        }
    }

    public function edit(Request $request, $id_rps)
    {
        $rpsData = RPS::find($id_rps);
        return view('admin/editRPS', compact('rpsData'));
    }

    public function update(Request $request, $id_rps)
    {
        // dd($request);

        $validator = Validator::make($request->all(), [
            'id_matakuliah_kbk' => 'required',
            'versi_rps' => 'required',
            'dokumen' => 'file|max:25000',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $rpsData['id_matakuliah_kbk'] = $request->id_matakuliah_kbk;
        $rpsData['versi_rps'] = $request->versi_rps;
        $rpsData['id_dosen_pengembang'] = Auth::id();
        if ($request->file('dokumen')) {
            if ($request->oldDokumen) {
                Storage::delete($request->oldDokumen);
            }
            $rpsData['dokumen'] = $request->dokumen->store('RPS');
        }

        RPS::updateRPS($id_rps, $rpsData);
        // dd($request->all());

        return redirect()->route('verifikasi.rps');
    }

    public function destroy($id_rps)
    {
        $rpsData = RPS::find($id_rps);

        if ($rpsData->dokumen) {
            Storage::delete($rpsData->dokumen);
        }

        $rpsData->delete();
        return redirect()->route('verifikasi.rps');
    }
}
