@extends('layout.main')
@section('title', 'Data Soal')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Soal UAS</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Data Soal</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        {{-- Table Prodi --}}
                        <div class="card">
                            <div class="card-header mb-3">
                                <h3 class="card-title mt-2">Data Soal</h3>
                                @can('crud soal')
                                    <div class="card-title" style="float: right"><a href="{{ route('verifikasi.soal.create') }}"
                                            class="btn btn-primary" style="float: right">
                                            Upload Soal</a>
                                    </div>
                                @endcan
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
                                            <th>Status</th>
                                            @can('crud soal')
                                                <th class="no-export">Aksi</th>
                                            @endcan
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($soalData as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $p->matakuliah->nama_matakuliah }} </td>
                                                <td> <a href={{ asset('storage/' . $p->dokumen) }} target="_blank"
                                                        class="btn btn-sm btn-primary">Lihat dokumen</a>
                                                </td>
                                                <td> {{ $p->pengembang->dosen->nama }} </td>
                                                <td> {{ $p->tahun->smt_thn_akd }} </td>
                                                <td>
                                                    {{-- @if (!$p->evaluasi)
                                                        <span>{{ 'Belum diverifikasi' }}</span> <br>
                                                    @elseif($p->evaluasi)
                                                        <span>{{ 'Sudah diverifikasi' }}</span> <br>
                                                    @endif --}}
                                                    @if (!$p->evaluasi)
                                                        <span class="text-info">{{ 'Belum diverifikasi' }}</span>
                                                        <br>
                                                    @elseif($p->evaluasi)
                                                        <span class="text-success">{{ 'Sudah diverifikasi' }}</span> <br>
                                                    @endif
                                                </td>
                                                @can('crud soal')
                                                    <td>
                                                        <a href="#" class="btn btn-sm btn-info" data-toggle="modal"
                                                            data-target="#modal-detail{{ $p->id_soal }}">
                                                            <i class="fas fa-eye"></i> Detail
                                                        </a>
                                                        <a
                                                            href="{{ route('verifikasi.soal.edit', ['id' => $p->id_soal]) }}"class="btn btn-sm btn-primary">Edit</a>
                                                        <a data-toggle="modal" data-target="#modal-hapus{{ $p->id_soal }}"
                                                            class="btn btn-sm btn-danger">
                                                            Hapus</a>
                                                    </td>
                                                @endcan
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

                                            {{-- modal detail --}}
                                            <div class="modal fade" id="modal-detail{{ $p->id_soal }}">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header bg-info">
                                                            <h4 class="modal-title">
                                                                {{ $p->dosenpengampu->matakuliah->nama_matakuliah }}
                                                            </h4>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p><strong>Dokumen:</strong> <a
                                                                    href="{{ asset('storage/' . $p->dokumen) }}"
                                                                    target="_blank">Lihat dokumen</a></p>
                                                            <p><strong>Dosen Pengembang:</strong>
                                                                {{ $p->pengembang->dosen->nama }}</p>
                                                            <p><strong>Tahun Akademik:</strong>
                                                                {{ $p->tahun->smt_thn_akd }}</p>
                                                            <p><strong>Evaluasi:</strong>
                                                                @if (!$p->evaluasi)
                                                                    Belum dievaluasi
                                                                @else
                                                                    {{ $p->evaluasi }}
                                                                @endif
                                                            </p>
                                                            <!-- Add other details as needed -->
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default"
                                                                data-dismiss="modal">Close</button>
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
