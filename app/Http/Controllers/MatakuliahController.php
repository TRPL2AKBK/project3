<?php

namespace App\Http\Controllers;

use App\Models\Matakuliah;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Http;

class MatakuliahController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $matakuliah = Matakuliah::get();

        return view('admin/dataMatakuliah', compact('matakuliah'));
    }

    public function fetchAndSaveData()
    {
        // URL atau path ke data JSON Anda
        $url = 'https://umkm-pnp.com/heni/index.php?folder=matakuliah&file=index';
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            $addedCount = 0; // Penghitung data baru yang ditambahkan
            $updatedCount = 0; // Penghitung data yang diperbarui

            foreach ($data['list'] as $matakuliahData) {
                // Menyimpan atau memperbarui data ke database
                $matakuliah = Matakuliah::updateOrCreate(
                    ['id_matakuliah' => $matakuliahData['id_matakuliah']], // Kondisi untuk mencari data yang sudah ada
                    [
                        'kode_matakuliah' => $matakuliahData['kode_matakuliah'],
                        'nama_matakuliah' => $matakuliahData['nama_matakuliah'],
                        'TP' => $matakuliahData['TP'],
                        'sks' => $matakuliahData['sks'],
                        'jam' => $matakuliahData['jam'],
                        'sks_teori' => $matakuliahData['sks_teori'],
                        'sks_praktek' => $matakuliahData['sks_praktek'],
                        'jam_teori' => $matakuliahData['jam_teori'],
                        'jam_praktek' => $matakuliahData['jam_praktek'],
                        'semester' => $matakuliahData['semester'],
                        'id_kurikulum' => $matakuliahData['id_kurikulum'],
                    ]
                );

                // Memeriksa apakah data baru ditambahkan atau diperbarui
                if ($matakuliah->wasRecentlyCreated) {
                    $addedCount++;
                } elseif ($matakuliah->wasChanged()) {
                    $updatedCount++;
                }
            }

            // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
            if ($addedCount > 0 || $updatedCount > 0) {
                return redirect()->route('admin.matakuliah')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
            } else {
                return redirect()->route('admin.matakuliah')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
            }
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }
}
