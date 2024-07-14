<?php

namespace App\Http\Controllers;

use App\Models\PimpinanJurusan;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;

class PimpinanJurusanController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $kajur = PimpinanJurusan::get();

        return view('admin/dataKajur', compact('kajur'));
    }

    public function dashboard()
    {
    }

    public function fetchAndSaveData()
    {
        // URL atau path ke data JSON Anda
        $url = 'https://umkm-pnp.com/heni/index.php?folder=jurusan&file=pimpinan';
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            $addedCount = 0; // Penghitung data baru yang ditambahkan
            $updatedCount = 0; // Penghitung data yang diperbarui

            foreach ($data['list'] as $pimpinanData) {
                // Menyimpan atau memperbarui data ke database
                $pimpinanJurusan = PimpinanJurusan::updateOrCreate(
                    ['jabatan_pimpinan' => $pimpinanData['jabatan_pimpinan']], // Kondisi untuk mencari data yang sudah ada
                    [
                        'nama' => $pimpinanData['nama'],
                        'periode' => $pimpinanData['periode'],
                        'status' => $pimpinanData['status'],
                    ]
                );

                // Memeriksa apakah data baru ditambahkan atau diperbarui
                if ($pimpinanJurusan->wasRecentlyCreated) {
                    $addedCount++;
                } elseif ($pimpinanJurusan->wasChanged()) {
                    $updatedCount++;
                }
            }

            // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
            if ($addedCount > 0 || $updatedCount > 0) {
                return redirect()->route('admin.kajur')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
            } else {
                return redirect()->route('admin.kajur')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
            }
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }
}
