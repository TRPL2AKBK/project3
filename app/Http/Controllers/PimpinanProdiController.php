<?php

namespace App\Http\Controllers;

use App\Models\PimpinanProdi;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;

class PimpinanProdiController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function fetchAndSaveData()
    {
        // URL atau path ke data JSON Anda
        $url = 'https://umkm-pnp.com/heni/index.php?folder=jurusan&file=kaprodi';
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            $addedCount = 0; // Penghitung data baru yang ditambahkan
            $updatedCount = 0; // Penghitung data yang diperbarui

            foreach ($data['list'] as $pimpinanData) {
                // Menyimpan atau memperbarui data ke database
                $pimpinanProdi = PimpinanProdi::updateOrCreate(
                    ['nidn' => $pimpinanData['nidn']], // Kondisi untuk mencari data yang sudah ada
                    [
                        'nama' => $pimpinanData['nama'],
                        'nip' => $pimpinanData['nip'],
                        'kode_prodi' => $pimpinanData['kode_prodi'],
                        'prodi' => $pimpinanData['prodi'],
                        'kode_jurusan' => $pimpinanData['kode_jurusan'],
                        'jurusan' => $pimpinanData['jurusan'],
                        'periode' => $pimpinanData['periode'],
                        'status' => $pimpinanData['status']
                    ]
                );

                // Memeriksa apakah data baru ditambahkan atau diperbarui
                if ($pimpinanProdi->wasRecentlyCreated) {
                    $addedCount++;
                } elseif ($pimpinanProdi->wasChanged()) {
                    $updatedCount++;
                }
            }

            // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
            if ($addedCount > 0 || $updatedCount > 0) {
                return redirect()->route('admin.kaprodi')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
            } else {
                return redirect()->route('admin.kaprodi')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
            }
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }


    public function index()
    {
        $kaprodi = PimpinanProdi::get();
        // dd($kaprodi);
        return view('admin/dataKaprodi', compact('kaprodi'));
    }
}
