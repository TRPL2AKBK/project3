@extends('layout.main')
@section('title', 'Matakuliah')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Matakuliah</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Matakuliah</li>
                        </ol> --}}
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
                                <h3 class="card-title mt-2">Matakuliah</h3>
                                {{-- Tombol Insert --}}
                                {{-- <div class="card-title" style="float: right"><a href="{{ route('admin.kurikulum.create') }}"
                                        class="btn btn-primary" style="float: right">
                                        Insert</a>
                                </div> --}}
                                <div class="card-title" style="float: right; margin-right: 10px;">
                                    <a href="{{ route('admin.matakuliah.api') }}" class="btn btn-primary">
                                        Perbarui Data
                                    </a>
                                </div>
                            </div>
                            <div class="card-body table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            {{-- <th>ID Matakuliah</th> --}}
                                            <th>Kode Matakuliah</th>
                                            <th>Nama Matakuliah</th>
                                            {{-- <th>TP</th>
                                            <th>SKS</th>
                                            <th>Jam</th>
                                            <th>SKS Teori</th>
                                            <th>SKS Praktek</th>
                                            <th>Jam Teori</th>
                                            <th>Jam Praktek</th> --}}
                                            <th>Semester</th>
                                            <th>Kurikulum</th>
                                            <th>Prodi</th>
                                            <th>Aksi</th> <!-- Kolom Aksi -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($matakuliah as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                {{-- <td> {{ $p->id_matakuliah }} </td> --}}
                                                <td> {{ $p->kode_matakuliah }} </td>
                                                <td> {{ $p->nama_matakuliah }} </td>
                                                {{-- <td> {{ $p->TP }} </td>
                                                <td> {{ $p->sks }} </td>
                                                <td> {{ $p->jam }} </td>
                                                <td> {{ $p->sks_teori }} </td>
                                                <td> {{ $p->sks_praktek }} </td>
                                                <td> {{ $p->jam_teori }} </td>
                                                <td> {{ $p->jam_praktek }} </td> --}}
                                                <td> {{ $p->semester }} </td>
                                                <td> {{ $p->kurikulum->nama_kurikulum }} </td>
                                                <td> {{ $p->kurikulum->prodi->prodi }} </td>
                                                <td>
                                                    <button class="btn btn-info" data-toggle="modal"
                                                        data-target="#detailModal{{ $p->id }}">
                                                        Detail
                                                    </button>
                                                </td>
                                            </tr>

                                            <!-- Modal -->
                                            <div class="modal fade" id="detailModal{{ $p->id }}" tabindex="-1"
                                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Detail Matakuliah
                                                            </h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p><strong>Kode Matakuliah:</strong> {{ $p->kode_matakuliah }}
                                                            </p>
                                                            <p><strong>Nama Matakuliah:</strong> {{ $p->nama_matakuliah }}
                                                            </p>
                                                            <p><strong>TP:</strong> {{ $p->TP }}</p>
                                                            <p><strong>SKS:</strong> {{ $p->sks }}</p>
                                                            <p><strong>Jam:</strong> {{ $p->jam }}</p>
                                                            <p><strong>SKS Teori:</strong> {{ $p->sks_teori }}</p>
                                                            <p><strong>SKS Praktek:</strong> {{ $p->sks_praktek }}</p>
                                                            <p><strong>Jam Teori:</strong> {{ $p->jam_teori }}</p>
                                                            <p><strong>Jam Praktek:</strong> {{ $p->jam_praktek }}</p>
                                                            <p><strong>Semester:</strong> {{ $p->semester }}</p>
                                                            <p><strong>Kurikulum:</strong>
                                                                {{ $p->kurikulum->nama_kurikulum }}</p>
                                                            <p><strong>Prodi:</strong> {{ $p->kurikulum->prodi->prodi }}
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
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
