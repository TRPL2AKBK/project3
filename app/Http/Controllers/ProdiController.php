<?php

namespace App\Http\Controllers;

use App\Models\Jurusan;
use App\Models\Prodi;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;


class ProdiController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    // public function fetchAndSaveData()
    // {
    //     // URL atau path ke data JSON Anda
    //     $url = 'https://umkm-pnp.com/heni/index.php?folder=jurusan&file=prodi';
    //     // Mengambil data JSON
    //     $response = Http::get($url);
    //     $data = $response->json();

    //     // Memeriksa apakah pengambilan data sukses
    //     if ($data['success'] == 1) {
    //         $addedCount = 0; // Penghitung data baru yang ditambahkan
    //         $updatedCount = 0; // Penghitung data yang diperbarui

    //         foreach ($data['list'] as $prodiData) {
    //             // Menyimpan atau memperbarui data ke database
    //             $prodi = Prodi::updateOrCreate(
    //                 ['id_prodi' => $prodiData['id_prodi']], // Kondisi untuk mencari data yang sudah ada
    //                 [
    //                     'kode_prodi' => $prodiData['kode_prodi'],
    //                     'prodi' => $prodiData['prodi'],
    //                     'id_jurusan' => $prodiData['id_jurusan'],
    //                     'id_jenjang' => $prodiData['id_jenjang']
    //                 ]
    //             );

    //             // Memeriksa apakah data baru ditambahkan atau diperbarui
    //             if ($prodi->wasRecentlyCreated) {
    //                 $addedCount++;
    //             } elseif ($prodi->wasChanged()) {
    //                 $updatedCount++;
    //             }
    //         }

    //         // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
    //         if ($addedCount > 0 || $updatedCount > 0) {
    //             return redirect()->route('admin.prodis')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
    //         } else {
    //             return redirect()->route('admin.prodis')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
    //         }
    //     } else {
    //         return response()->json(['message' => 'Data tidak ditemukan'], 404);
    //     }
    // }

    public function fetchAndSaveData()
    {
        // URL atau path ke data JSON Anda
        $url = 'https://umkm-pnp.com/heni/index.php?folder=jurusan&file=prodi';

        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            // Mengirim data ke view sebelum menyimpan
            return view('admin/dataProdiApi', [
                'prodiData' => $data['list'] // Mengirim data 'list' dari JSON
            ]);
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }

    public function saveData(Request $request)
    {
        $prodiData = $request->input('prodiData');
        // dd($prodiData);
        $addedCount = 0;
        $updatedCount = 0;

        foreach ($prodiData as $data) {
            // Pastikan data yang diterima tidak kosong sebelum menyimpan
            if (!empty($data['kode_prodi']) && !empty($data['prodi']) && !empty($data['id_jurusan']) && !empty($data['id_jenjang'])) {
                $prodi = Prodi::updateOrCreate(
                    ['id_prodi' => $data['id_prodi']], // Sesuaikan dengan kunci utama yang sesuai
                    [
                        'kode_prodi' => $data['kode_prodi'],
                        'prodi' => $data['prodi'],
                        'id_jurusan' => $data['id_jurusan'],
                        'id_jenjang' => $data['id_jenjang']
                    ]
                );

                // Hitung jumlah data yang ditambahkan atau diperbarui
                if ($prodi->wasRecentlyCreated) {
                    $addedCount++;
                } elseif ($prodi->wasChanged()) {
                    $updatedCount++;
                }
            } else {
                // Tindakan jika data tidak lengkap atau tidak valid
                // Misalnya, log error atau kembalikan pesan ke pengguna
            }
        }

        // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
        if ($addedCount > 0 || $updatedCount > 0) {
            return redirect()->route('admin.prodis')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
        } else {
            return redirect()->route('admin.prodis')->with('error', 'Tidak ada data baru atau diperbarui.');
        }
    }

    public function cancel(Request $request)
    {
        // Lakukan logika pembatalan di sini
        return redirect()->back()->with('message', 'Pembatalan berhasil dilakukan');
    }



    public function dataProdi()
    {

        $prodi = Prodi::get();

        return view('admin/dataProdi', compact('prodi'));
    }

    public function createProdi()
    {
        return view('admin/createProdi');
    }

    public function storeProdi(Request $request)
    {
        //dd($request->all()); //untuk mengecek request
        $validator = Validator::make($request->all(), [
            'kode_prodi' => 'required',
            'prodi' => 'required',
            'id_jurusan' => 'required',
            'id_jenjang' => 'required',

        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        $prodi['kode_prodi'] = $request->kode_prodi;
        $prodi['prodi'] = $request->prodi;
        $prodi['id_jurusan'] = $request->id_jurusan;
        $prodi['id_jenjang'] = $request->id_jenjang;

        Prodi::create($prodi);

        return redirect()->route('admin.prodis')->with('success', 'Data berhasil ditambahkan');
    }

    public function editProdi(Request $request, $id_prodi)
    {
        $prodi = Prodi::find($id_prodi);
        //dd($data); //untuk mengecek request

        return view('admin/editProdi', compact('prodi'));
    }

    public function updateProdi(Request $request, $id_prodi)
    {
        $validator = Validator::make($request->all(), [
            'kode_prodi' => 'required',
            'prodi' => 'required',
            'id_jurusan' => 'required',
            'id_jenjang' => 'required',
        ]);

        if ($validator->fails()) return redirect()->back()->withInput()->withErrors($validator);

        // data baru
        $prodi['kode_prodi'] = $request->kode_prodi;
        $prodi['prodi'] = $request->prodi;
        $prodi['id_jurusan'] = $request->id_jurusan;
        $prodi['id_jenjang'] = $request->id_jenjang;
        // unset($prodi['updated_at']);
        Prodi::updateProdi($id_prodi, $prodi);

        return redirect()->route('admin.prodis')->with('success', 'Data berhasil diubah');
    }

    public function deleteProdi(Request $request, $id_prodi)
    {


        $prodi = Prodi::find($id_prodi); //mencari data berdasarkan id
        if ($prodi) {
            $prodi->delete();
        }

        return redirect()->route('admin.prodis')->with('success', 'Data berhasil dihapus');
    }
}
