@extends('layout.main')
@section('title', 'Verifikasi Soal')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Verifikasi Soal</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Verifikasi Soal</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        {{-- Table Prodi --}}
                        <div class="card">
                            <div class="card-header mb-3">
                                <h3 class="card-title mt-2">Verifikasi Soal</h3>
                            </div>
                            <div class="card-body ">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            <th>Matakuliah</th>
                                            <th>Dosen Pengampu</th>
                                            <th>Dokumen</th>
                                            <th>Verifikator 1</th>
                                            <th>Verifikator 2</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($verifData as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td>{{ $p->soal->matakuliah->nama_matakuliah }}</td>
                                                <td>{{ $p->soal->pengampu->nama }}</td>
                                                <td> <a href={{ asset('storage/' . $p->soal->dokumen) }} target="_blank"
                                                        class="btn btn-primary">view</a> </td>
                                                <td>
                                                    @if (!$p->status1)
                                                        <span>{{ 'Belum diverifikasi' }}</span> <br>
                                                    @else
                                                        Nama : {{ $p->verif1->dosen->nama ?? 'Belum diverifikasi' }} <br>
                                                        @if ($p->status1 == 'terima')
                                                            Status : <span style="color:green;">{{ $p->status1 }}</span>
                                                            <br>
                                                        @elseif($p->status1 == 'tolak')
                                                            Status : <span style="color:red;">{{ $p->status1 }}</span>
                                                            <br>
                                                        @elseif($p->status1 == 'revisi')
                                                            Status : <span style="color:orange;">{{ $p->status1 }}</span>
                                                            <br>
                                                        @else
                                                            <span>Status : </span> <br>
                                                        @endif
                                                        Komentar : {{ $p->komentar1 }} <br>
                                                        Tanggal : {{ $p->tanggal1 }}
                                                    @endif
                                                </td>
                                                <td>
                                                    @if (!$p->status2)
                                                        <span>{{ 'Belum diverifikasi' }}</span> <br>
                                                    @else
                                                        Nama : {{ $p->verif2->dosen->nama ?? 'Belum diverifikasi' }} <br>
                                                        @if ($p->status2 == 'terima')
                                                            Status : <span style="color:green;">{{ $p->status2 }}</span>
                                                            <br>
                                                        @elseif($p->status2 == 'tolak')
                                                            Status : <span style="color:red;">{{ $p->status2 }}</span>
                                                            <br>
                                                        @elseif($p->status2 == 'revisi')
                                                            Status : <span
                                                                style="color:orange;">{{ $p->status2 }}</span><br>
                                                        @else
                                                            <span>Status : </span> <br>
                                                        @endif
                                                        Komentar : {{ $p->komentar2 }} <br>
                                                        Tanggal : {{ $p->tanggal2 }}
                                                    @endif
                                                </td>
                                                <td>
                                                    <a
                                                        href="{{ route('verifikasi.verifsoal.edit', ['id' => $p->id_verif_soal]) }}"class="btn btn-primary">
                                                        Verifikasi</a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        {{-- /Table Prodi --}}
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>


@endsection
