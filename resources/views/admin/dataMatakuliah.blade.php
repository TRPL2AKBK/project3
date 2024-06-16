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
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Matakuliah</li>
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
                                <h3 class="card-title mt-2">Matakuliah</h3>
                                {{-- Tombol Insert --}}
                                {{-- <div class="card-title" style="float: right"><a href="{{ route('admin.kurikulum.create') }}"
                                        class="btn btn-primary" style="float: right">
                                        Insert</a>
                                </div> --}}
                            </div>
                            <div class="card-body table-responsive">
                                <table id="example2" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            <th>ID Matakuliah</th>
                                            <th>Kode Matakuliah</th>
                                            <th>Nama Matakuliah</th>
                                            <th>TP</th>
                                            <th>SKS</th>
                                            <th>Jam</th>
                                            <th>SKS Teori</th>
                                            <th>SKS Praktek</th>
                                            <th>Jam Teori</th>
                                            <th>Jam Praktek</th>
                                            <th>Semester</th>
                                            <th>Kurikulum</th>
                                            {{-- <th>Action</th> --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($matakuliah as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $p->id_matakuliah }} </td>
                                                <td> {{ $p->kode_matakuliah }} </td>
                                                <td> {{ $p->nama_matakuliah }} </td>
                                                <td> {{ $p->TP }} </td>
                                                <td> {{ $p->sks }} </td>
                                                <td> {{ $p->jam }} </td>
                                                <td> {{ $p->sks_teori }} </td>
                                                <td> {{ $p->sks_praktek }} </td>
                                                <td> {{ $p->jam_teori }} </td>
                                                <td> {{ $p->jam_praktek }} </td>
                                                <td> {{ $p->semester }} </td>
                                                <td> {{ $p->kurikulum->nama_kurikulum }} </td>
                                                {{-- <td>
                                                    <a
                                                        href="{{ route('admin.kajur.edit', ['id' => $p->id_kurikulum]) }}"class="btn btn-primary"><i
                                                            class="fas fa-pen"></i> Edit</a>
                                                    <a data-toggle="modal" data-target="#modal-hapus{{ $p->id_kurikulum }}"
                                                        class="btn btn-danger"><i class="fas fa-trash-alt"></i>
                                                        Hapus</a>
                                                </td> --}}
                                            </tr>
                                            {{-- <div class="modal fade" id="modal-hapus{{ $p->id_kurikulum }}">
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
                                                            <p>Apakah kamu yakin ingin menghapus data Pimpinan Jurusan
                                                                <b>{{ $p->nama_kurikulum }}</b>
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer justify-content-between">
                                                            <form
                                                                action="{{ route('admin.kajur.delete', ['id' => $p->id_kurikulum]) }}"
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
                                            </div> --}}
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
