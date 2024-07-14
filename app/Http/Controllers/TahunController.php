<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Tahun;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class TahunController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function dataTahun()
    {
        $tahun = Tahun::get();

        return view('admin.dataTahun', compact('tahun'));
    }
    public function createTahun()
    {
        return view('admin/createTahun');
    }

    public function storeTahun(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'smt_thn_akd' => 'required',
            'status' => 'required|in:0,1',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $tahun['smt_thn_akd'] = $request->smt_thn_akd;
        $tahun['status'] = $request->status;

        Tahun::create($tahun);

        return redirect()->route('admin.tahun');
    }

    public function editTahun(Request $request, $id_smt_thn_akd)
    {
        $tahun = Tahun::find($id_smt_thn_akd);

        return view('admin/editTahun', compact('tahun'));
    }

    public function updateTahun(Request $request, $id_smt_thn_akd)
    { 
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'smt_thn_akd' => 'required',
            'status' => 'required|in:0,1',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $tahun['smt_thn_akd'] = $request->smt_thn_akd;
        $tahun['status'] = $request->status;

        Tahun::updateTahun($id_smt_thn_akd, $tahun);

        return redirect()->route('admin.tahun');
    }

    public function deleteTahun(Request $request, $id_smt_thn_akd)
    {
        $tahun = Tahun::find($id_smt_thn_akd);
        if ($tahun) {
            $tahun->delete();
        }

        return redirect()->route('admin.tahun');
    }

    public function fetchAndSaveData()
    {
        // URL atau path ke data JSON Anda
        $url = 'https://umkm-pnp.com/heni/index.php?folder=jurusan&file=thn_ta';
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            $addedCount = 0; // Penghitung data baru yang ditambahkan
            $updatedCount = 0; // Penghitung data yang diperbarui

            foreach ($data['list'] as $smt_thn_akd) {
                // Menyimpan atau memperbarui data ke database
                $api = Tahun::updateOrCreate(
                    ['id_smt_thn_akd' => $smt_thn_akd['id_smt_thn_akd']], // Kondisi untuk mencari data yang sudah ada
                    [
                        'smt_thn_akd' => $smt_thn_akd['smt_thn_akd'],
                        'status' => $smt_thn_akd['status'],
                    ]
                );

                // Memeriksa apakah data baru ditambahkan atau diperbarui
                if ($api->wasRecentlyCreated) {
                    $addedCount++;
                } elseif ($api->wasChanged()) {
                    $updatedCount++;
                }
            }

            // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
            if ($addedCount > 0 || $updatedCount > 0) {
                return redirect()->route('admin.tahun')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
            } else {
                return redirect()->route('admin.tahun')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
            }
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }

}

