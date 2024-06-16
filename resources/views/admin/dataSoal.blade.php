@extends('layout.main')
@section('title', 'Data Soal')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Data Soal</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Data Soal</li>
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
                                <h3 class="card-title mt-2">Data Soal</h3>
                                <div class="card-title" style="float: right"><a href="{{ route('verifikasi.soal.create') }}"
                                        class="btn btn-primary" style="float: right">
                                        Upload Soal</a>
                                </div>
                            </div>
                            <div class="card-body ">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            <th>Matakuliah</th>
                                            <th>Dokumen</th>
                                            <th>Dosen Pengampu</th>
                                            <th>Tahun Akademik</th>
                                            <th>Verifikator 1</th>
                                            <th>Verifikator 2</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($soalData as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $p->matakuliah->nama_matakuliah }} </td>
                                                <td> <a href={{ asset('storage/' . $p->dokumen) }} target="_blank"
                                                        class="btn btn-primary">view</a>
                                                </td>
                                                <td> {{ $p->pengampu->nama }} </td>
                                                <td> {{ $p->tahun->smt_thn_akd }} </td>
                                                <td>

                                                    @if (!$p->verifsoal->status1)
                                                        <span>{{ 'Belum diverifikasi' }}</span> <br>
                                                    @else
                                                        Nama : {{ $p->verifsoal1->verif1->dosen->nama ?? '' }}
                                                        <br>
                                                        @if ($p->verifsoal->status1 == 'terima')
                                                            Status : <span
                                                                style="color:green;">{{ $p->verifsoal->status1 }}</span>
                                                            <br>
                                                        @elseif($p->verifsoal->status1 == 'tolak')
                                                            Status : <span
                                                                style="color:red;">{{ $p->verifsoal->status1 }}</span> <br>
                                                        @elseif($p->verifsoal->status1 == 'revisi')
                                                            Status : <span
                                                                style="color:orange;">{{ $p->verifsoal->status1 }}</span>
                                                            <br>
                                                        @else
                                                            <span>Status : </span> <br>
                                                        @endif
                                                        Komentar : {{ $p->verifsoal->komentar1 }} <br>
                                                        Tanggal : {{ $p->verifsoal->tanggal1 }}
                                                    @endif
                                                </td>
                                                <td>
                                                    @if (!$p->verifsoal2->status2)
                                                        <span>{{ 'Belum diverifikasi' }}</span> <br>
                                                    @else
                                                        Nama
                                                        :{{ $p->verifsoal2->verif2->dosen->nama ?? 'Belum diverifikasi' }}
                                                        <br>
                                                        @if ($p->verifsoal->status2 == 'terima')
                                                            Status : <span
                                                                style="color:green;">{{ $p->verifsoal->status2 }}</span>
                                                            <br>
                                                        @elseif($p->verifsoal->status2 == 'tolak')
                                                            Status : <span
                                                                style="color:red;">{{ $p->verifsoal->status2 }}</span> <br>
                                                        @elseif($p->verifsoal->status2 == 'revisi')
                                                            Status : <span
                                                                style="color:orange;">{{ $p->verifsoal->status2 }}</span>
                                                            <br>
                                                        @else
                                                            <span>Status : </span> <br>
                                                        @endif
                                                        Komentar : {{ $p->verifsoal->komentar2 }} <br>
                                                        Tanggal : {{ $p->verifsoal->tanggal2 }}
                                                    @endif
                                                </td>
                                                <td>
                                                    <a
                                                        href="{{ route('verifikasi.soal.edit', ['id' => $p->id_soal]) }}"class="btn btn-primary"><i
                                                            class="fas fa-pen"></i> Edit</a>
                                                    <a data-toggle="modal" data-target="#modal-hapus{{ $p->id_soal }}"
                                                        class="btn btn-danger"><i class="fas fa-trash-alt"></i>
                                                        Hapus</a>
                                                </td>
                                            </tr>
                                            <div class="modal fade" id="modal-hapus{{ $p->id_soal }}">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title">Konfirmasi Hapus Data</h4>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p>Apakah kamu yakin ingin menghapus data soal
                                                                <b>{{ $p->matakuliah->nama_matakuliah }}</b>
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer justify-content-between">
                                                            <form
                                                                action="{{ route('verifikasi.soal.delete', ['id' => $p->id_soal]) }}"
                                                                method="POST">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal">Close</button>
                                                                <button type="submit" class="btn btn-primary">Ya,
                                                                    Hapus</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->
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