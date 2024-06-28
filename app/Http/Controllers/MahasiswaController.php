<?php

namespace App\Http\Controllers;

use App\Models\Mahasiswa;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Http;

class MahasiswaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $mahasiswa = Mahasiswa::get();

        return view('admin/dataMahasiswa', compact('mahasiswa'));
    }

    public function fetchAndSaveData()
    {
        // URL atau path ke data JSON Anda
        $url = 'https://umkm-pnp.com/heni/index.php?folder=mahasiswa&file=index';
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            $addedCount = 0; // Penghitung data baru yang ditambahkan
            $updatedCount = 0; // Penghitung data yang diperbarui

            foreach ($data['list'] as $mahasiswaData) {
                // Menyimpan atau memperbarui data ke database
                $mahasiswa = Mahasiswa::updateOrCreate(
                    ['nim' => $mahasiswaData['nim']], // Kondisi untuk mencari data yang sudah ada
                    [
                        'nama' => $mahasiswaData['nama'],
                        'kode_jurusan' => $mahasiswaData['kode_jurusan'],
                        'jurusan' => $mahasiswaData['jurusan'],
                        'kode_prodi' => $mahasiswaData['kode_prodi'],
                        'prodi' => $mahasiswaData['prodi'],
                        'gender' => $mahasiswaData['gender'],

                    ]
                );

                // Memeriksa apakah data baru ditambahkan atau diperbarui
                if ($mahasiswa->wasRecentlyCreated) {
                    $addedCount++;
                } elseif ($mahasiswa->wasChanged()) {
                    $updatedCount++;
                }
            }

            // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
            if ($addedCount > 0 || $updatedCount > 0) {
                return redirect()->route('admin.mahasiswa')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
            } else {
                return redirect()->route('admin.mahasiswa')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
            }
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }
}
