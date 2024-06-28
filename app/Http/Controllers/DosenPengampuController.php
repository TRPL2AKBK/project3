<?php

namespace App\Http\Controllers;

use App\Models\DosenPengampu;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class DosenPengampuController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $pengampu = DosenPengampu::with(['dosen', 'matakuliah'])->get();
        // dd($pengampu);
        return view('admin/dataPengampu', compact('pengampu'));
    }

    // public function fetchAndSaveData()
    // {
    //     $url = 'https://umkm-pnp.com/heni/index.php?folder=dosen&file=matakuliah';
    //     try {
    //         // Mengambil data JSON
    //         $response = Http::get($url);
    //         $data = $response->json();

    //         // Memeriksa apakah pengambilan data sukses
    //         if ($data['success'] == 1) {
    //             $addedCount = 0; // Penghitung data baru yang ditambahkan
    //             $updatedCount = 0; // Penghitung data yang diperbarui
    //             foreach ($data['list'] as $ampuData) {
    //                 // Menyimpan atau memperbarui data ke database berdasarkan 'nidn'
    //                 $ampu = DosenPengampu::updateOrCreate(
    //                     ['nidn' => $ampuData['nidn']], // Primary key alternatif
    //                     [
    //                         'nama' => $ampuData['nama'],
    //                         'kode_matakuliah' => $ampuData['kode_matakuliah'],
    //                         'nama_matakuliah' => $ampuData['nama_matakuliah'],
    //                         'kode_kelas' => $ampuData['kode_kelas'],
    //                         'nama_kelas' => $ampuData['nama_kelas'],
    //                         'smt_thn_akd' => $ampuData['smt_thn_akd'],
    //                     ]
    //                 );

    //                 // Memeriksa apakah data baru ditambahkan atau diperbarui
    //                 if ($ampu->wasRecentlyCreated) {
    //                     $addedCount++;
    //                 } elseif ($ampu->wasChanged()) {
    //                     $updatedCount++;
    //                 }
    //             }

    //             // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
    //             if ($addedCount > 0 || $updatedCount > 0) {
    //                 return redirect()->route('pengampu')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
    //             } else {
    //                 return redirect()->route('pengampu')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
    //             }
    //         } else {
    //             return response()->json(['message' => 'Data tidak ditemukan'], 404);
    //         }
    //     } catch (\Exception $e) {
    //         Log::error('Error fetching and saving data: ' . $e->getMessage());
    //         return redirect()->route('pengampu')->with('error', 'Terjadi kesalahan dalam mengambil atau menyimpan data.');
    //     }
    // }
}
