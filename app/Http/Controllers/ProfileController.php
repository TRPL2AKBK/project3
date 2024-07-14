<?php

namespace App\Http\Controllers;

use App\Models\ChangeLog;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;


class ProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request, $id)
    {
        $currentUser = Auth::user();

        $data = User::findOrFail($id);

        if ($currentUser->id != $data->id) {
            abort(403, 'Unauthorized action.');
        }

        return view('profile.index', compact('data'));
    }

    public function update(Request $request, $id)
    {
        // Mendapatkan data user sebelum update
        $oldUser = User::find($id);

        $validator = Validator::make($request->all(), [
            'nama' => 'required|regex:/^[a-zA-Z0-9\s_]+$/',
            // 'nidn' => 'required',
            'nidn' => 'required|exists:dosen,nidn',

            'image' => 'image|file|max:1024',
            'email' => 'required|email|unique:user,email,' . $id,
            'password' => 'sometimes|nullable|min:8',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $data = [
            'name' => $request->nama,
            'nidn' => $request->nidn,
            'updated_at' => Carbon::now(),
        ];

        if ($request->email) {
            $data['email'] = $request->email;
        }

        if ($request->password) {
            $data['password'] = Hash::make($request->password);
        }

        if ($request->file('image')) {
            if ($request->oldDokumen) {
                Storage::delete($request->oldDokumen);
            }
            $data['image'] = $request->image->store('Image');
        }

        User::whereId($id)->update($data);

        $this->createChangeLog($oldUser, $data);

        return redirect()->route('profile.edit', ['id' => Auth::user()->id])->with('success', 'Data berhasil diperbarui');
    }

    // Fungsi untuk membuat catatan perubahan
    private function createChangeLog($oldUser, $newData)
    {
        // Bandingkan data lama dengan data baru
        $changes = [];
        foreach ($newData as $key => $value) {
            if ($key !== 'created_at' && $key !== 'updated_at') {
                if ($oldUser->$key != $value) {
                    $changes[$key] = [
                        'old_value' => $oldUser->$key,
                        'new_value' => $value,
                    ];
                }
            }
        }

        // Simpan catatan perubahan ke dalam log
        if (!empty($changes)) {
            $log = new ChangeLog;
            $log->user_id = $oldUser->id;
            $log->changes = json_encode($changes);
            $log->save();
        }
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
