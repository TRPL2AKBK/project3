<?php

namespace App\Http\Controllers\Users;

use App\Models\Dosen;
use App\Models\DosenPengampu;
use App\Models\RPS;
use App\Models\Soal;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;
use App\Models\User;

class DosenController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function fetchAndSaveData()
    {
        // URL atau path ke data JSON Anda
        $url = 'https://umkm-pnp.com/heni/index.php?folder=dosen&file=index';
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            $addedCount = 0; // Penghitung data baru yang ditambahkan
            $updatedCount = 0; // Penghitung data yang diperbarui

            foreach ($data['list'] as $dosenData) {
                // Menyimpan atau memperbarui data ke database
                $dosen = Dosen::updateOrCreate(
                    ['nidn' => $dosenData['nidn']], // Kondisi untuk mencari data yang sudah ada
                    [
                        'nama' => $dosenData['nama'],
                        'nip' => $dosenData['nip'],
                        'gender' => $dosenData['gender'],
                        'kode_jurusan' => $dosenData['kode_jurusan'],
                        'jurusan' => $dosenData['jurusan'],
                        'kode_prodi' => $dosenData['kode_prodi'],
                        'prodi' => $dosenData['prodi'],
                        'email' => $dosenData['email']
                    ]
                );

                // Memeriksa apakah data baru ditambahkan atau diperbarui
                if ($dosen->wasRecentlyCreated) {
                    $addedCount++;
                } elseif ($dosen->wasChanged()) {
                    $updatedCount++;
                }
            }

            // Menampilkan pesan berdasarkan jumlah data yang ditambahkan atau diperbarui
            if ($addedCount > 0 || $updatedCount > 0) {
                return redirect()->route('admin.dosens')->with('success', "$addedCount data baru ditambahkan, $updatedCount data diperbarui.");
            } else {
                return redirect()->route('admin.dosens')->with('success', 'Tidak ada data baru yang ditambahkan atau diperbarui.');
            }
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }


    // public function index()
    // {
    //     $user = Auth::user();
    //     $dataSoal = Soal::where('dosen_pengampu', $user->id)->orderByDesc('id_soal')->get();
    //     $dataRps = RPS::where('id_dosen_pengembang', $user->id)->orderByDesc('id_rps')->get();
    //     $matakuliah = DosenPengampu::where('nidn', $user->nidn)->get();
    //     return view('dosen\dashboard', compact('dataRps', 'dataSoal', 'matakuliah'));
    // }

    public function index()
    {
        $user = Auth::user();
        $dataSoal = Soal::where('dosen_pengampu', $user->id)->orderByDesc('id_soal')->count();
        $dataRps = RPS::where('id_dosen_pengembang', $user->id)->orderByDesc('id_rps')->count();
        $verifSoal = Soal::whereNotNull('evaluasi')
            ->where('dosen_pengampu', $user->id)
            ->orderByDesc('id_soal')
            ->count();
        $verifRps = RPS::whereNotNull('evaluasi')
            ->where('id_dosen_pengembang', $user->id)
            ->orderByDesc('id_rps')
            ->count();
        $matakuliah = DosenPengampu::where('nidn', $user->nidn)->get();

        $notifications = $user->unreadNotifications;
        $user->unreadNotifications->markAsRead();
        return view('dosen\dashboard', compact('dataRps', 'dataSoal', 'verifSoal', 'verifRps', 'matakuliah', 'notifications'));
    }
}
