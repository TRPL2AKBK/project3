<?php

namespace App\Http\Controllers;

use App\Models\Jurusan;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;

class JurusanController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function fetchAndSaveData()
    {
        $url = 'https://umkm-pnp.com/heni/index.php?folder=jurusan&file=jurusan';
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            $addedCount = 0; // Penghitung data baru yang ditambahkan
            $updatedCount = 0; // Penghitung data yang diperbarui

            foreach ($data['list'] as $jurusanData) {
                // Mencari data jurusan yang sudah ada di database
                $existingJurusan = Jurusan::where('id_jurusan', $jurusanData['id_jurusan'])->first();

                // Menyimpan atau memperbarui data ke database
                $jurusan = Jurusan::updateOrCreate(
                    ['id_jurusan' => $jurusanData['id_jurusan']],
                    [
                        'kode_jurusan' => $jurusanData['kode_jurusan'],
                        'jurusan' => $jurusanData['jurusan']
                    ]
                );

                // Memeriksa apakah data baru ditambahkan atau diperbarui
                if ($jurusan->wasRecentlyCreated) {
                    $addedCount++;
                } elseif ($jurusan->wasChanged()) {
                    $updatedCount++;
                }
            }

            // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
            if ($addedCount > 0 || $updatedCount > 0) {
                return redirect()->route('admin.jurusan')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
            } else {
                return redirect()->route('admin.jurusan')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
            }
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }




    public function dataJurusan()
    {
        $jurusan = Jurusan::get();

        return view('admin/dataJurusan', compact('jurusan'));
    }
    public function index()
    {
        //
    }

    public function createJurusan()
    {
        return view('admin/createJurusan');
    }

    public function storeJurusan(Request $request)
    {
        //dd($request->all()); //untuk mengecek request
        $validator = Validator::make($request->all(), [
            'kode_jurusan' => 'required|max:5',
            'jurusan' => 'required|max:50',

        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $jurusan['kode_jurusan'] = $request->kode_jurusan;
        $jurusan['jurusan'] = $request->jurusan;

        Jurusan::create($jurusan);
        return redirect()->route('admin.jurusan');
    }

    public function editJurusan(Request $request, $id_jurusan)
    {
        $jurusan = Jurusan::find($id_jurusan);
        return view('admin/editJurusan', compact('jurusan'));
    }

    public function updateJurusan(Request $request, $id_jurusan)
    {
        $validator = Validator::make($request->all(), [
            'kode_jurusan' => 'required|max:5',
            'jurusan' => 'required|max:50',

        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        // data baru
        $jurusan['kode_jurusan'] = $request->kode_jurusan;
        $jurusan['jurusan'] = $request->jurusan;
        // unset($jurusan['updated_at']);
        Jurusan::updateJurusan($id_jurusan, $jurusan);
        return redirect()->route('admin.jurusan')->with('success', 'Data berhasil diperbarui');
    }

    public function deleteJurusan(Request $request, $id_jurusan)
    {

        $jurusan = Jurusan::find($id_jurusan);
        if ($jurusan) {
            $jurusan->delete();
        }

        return redirect()->route('admin.jurusan')->with('success', 'Data berhasil dihapus');
    }
}
