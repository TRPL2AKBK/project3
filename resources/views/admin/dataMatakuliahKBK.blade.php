@extends('layout.main')
@section('title', 'Matakuliah KBK')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Matakuliah KBK</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Matakuliah KBK</li>
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
                                <h3 class="card-title mt-2">Matakuliah KBK</h3>
                                {{-- Tombol Insert --}}
                                <div class="card-title" style="float: right"><a
                                        href="{{ route('admin.matakuliahkbk.create') }}" class="btn btn-primary"
                                        style="float: right">
                                        Insert</a>
                                </div>
                            </div>
                            <div class="card-body table-responsive ">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            {{-- <th>ID Matakuliah</th> --}}
                                            <th>Matakuliah</th>
                                            <th>KBK</th>
                                            <th>Kode Prodi</th>
                                            <th>Semester</th>
                                            <th>Kurikulum</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($matakuliahkbk as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $p->matakuliah->nama_matakuliah }} </td>
                                                <td> {{ $p->kbk->nama_kbk }} </td>
                                                <td> {{ $p->kurikulum->prodi->kode_prodi }} </td>
                                                <td> {{ $p->matakuliah->semester }} </td>
                                                <td> {{ $p->kurikulum->nama_kurikulum }} </td>
                                                <td>
                                                    <a
                                                        href="{{ route('admin.matakuliahkbk.edit', ['id' => $p->id_matakuliahkbk]) }}"class="btn btn-primary"><i
                                                            class="fas fa-pen"></i> Edit</a>
                                                    <a data-toggle="modal"
                                                        data-target="#modal-hapus{{ $p->id_matakuliahkbk }}"
                                                        class="btn btn-danger"><i class="fas fa-trash-alt"></i>
                                                        Hapus</a>
                                                </td>
                                            </tr>
                                            <div class="modal fade" id="modal-hapus{{ $p->id_matakuliahkbk }}">
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
                                                            <p>Apakah kamu yakin ingin menghapus data Matakuliah KBK
                                                                <b>{{ $p->kode_kbk }}</b>
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer justify-content-between">
                                                            <form
                                                                action="{{ route('admin.matakuliahkbk.delete', ['id' => $p->id_matakuliahkbk]) }}"
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
