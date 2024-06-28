<?php

namespace App\Http\Controllers;

use App\Models\ProposalTa;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Http;

class ProposalTaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $proposal = ProposalTa::get();
        return view('admin/dataProposalTa', compact('proposal'));
    }

    public function fetchAndSaveData()
    {
        // URL atau path ke data JSON Anda
        $url = 'https://umkm-pnp.com/heni/index.php?folder=mahasiswa&file=proposal';
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            $addedCount = 0; // Penghitung data baru yang ditambahkan
            $updatedCount = 0; // Penghitung data yang diperbarui

            foreach ($data['list'] as $proposaltaData) {
                // Menyimpan atau memperbarui data ke database
                $proposalta = ProposalTa::updateOrCreate(
                    ['nim' => $proposaltaData['nim']], // Kondisi untuk mencari data yang sudah ada
                    [
                        'nama' => $proposaltaData['nama'],
                        'judul' => $proposaltaData['judul'],
                        'pembimbing_satu_nama' => $proposaltaData['pembimbing_satu_nama'],
                        'pembimbing_satu_nidn' => $proposaltaData['pembimbing_satu_nidn'],
                        'pembimbing_dua_nama' => $proposaltaData['pembimbing_dua_nama'],
                        'pembimbing_dua_nidn' => $proposaltaData['pembimbing_dua_nidn']
                    ]
                );

                // Memeriksa apakah data baru ditambahkan atau diperbarui
                if ($proposalta->wasRecentlyCreated) {
                    $addedCount++;
                } elseif ($proposalta->wasChanged()) {
                    $updatedCount++;
                }
            }

            // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
            if ($addedCount > 0 || $updatedCount > 0) {
                return redirect()->route('admin.proposalta')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
            } else {
                return redirect()->route('admin.proposalta')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
            }
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }
}
