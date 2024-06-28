<?php

namespace App\Http\Controllers;

use App\Models\Kurikulum;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Http;

class KurikulumController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $kurikulum = Kurikulum::get();

        return view('admin/dataKurikulum', compact('kurikulum'));
    }

    public function fetchAndSaveData()
    {
        $url = 'https://umkm-pnp.com/heni/index.php?folder=matakuliah&file=kurikulum';
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            $addedCount = 0; // Penghitung data baru yang ditambahkan
            $updatedCount = 0; // Penghitung data yang diperbarui

            foreach ($data['list'] as $kurikulumData) {
                // Menyimpan atau memperbarui data ke database
                $kurikulum = Kurikulum::updateOrCreate(
                    ['id_kurikulum' => $kurikulumData['id_kurikulum']],
                    [
                        'kode_kurikulum' => $kurikulumData['kode_kurikulum'],
                        'nama_kurikulum' => $kurikulumData['nama_kurikulum'],
                        'tahun' => $kurikulumData['tahun'],
                        'id_prodi' => $kurikulumData['id_prodi'],
                        'status' => $kurikulumData['status'],
                    ]
                );

                // Memeriksa apakah data baru ditambahkan atau diperbarui
                if ($kurikulum->wasRecentlyCreated) {
                    $addedCount++;
                } elseif ($kurikulum->wasChanged()) {
                    $updatedCount++;
                }
            }

            // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
            if ($addedCount > 0 || $updatedCount > 0) {
                return redirect()->route('admin.kurikulum')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
            } else {
                return redirect()->route('admin.kurikulum')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
            }
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }
}
