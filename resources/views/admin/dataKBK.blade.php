@extends('layout.main')
@section('title', 'KBK')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">KBK</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">KBK</li>
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
                                <h3 class="card-title mt-2">KBK</h3>
                                {{-- Tombol Insert --}}
                                <div class="card-title" style="float: right"><a href="{{ route('admin.kbk.create') }}"
                                        class="btn btn-primary" style="float: right">
                                        Tambah</a>
                                </div>
                            </div>
                            <div class="card-body table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            {{-- <th>ID KBK</th> --}}
                                            <th>Nama KBK</th>
                                            <th>Kode KBK</th>
                                            <th>Ketua</th>
                                            <th>Sekretaris</th>
                                            <th class="no-export">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($kbk as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $p->nama_kbk }} </td>
                                                <td> {{ $p->kode_kbk }} </td>
                                                {{-- <td> {{ $p->ketua->dosen->nama }} </td>
                                                <td> {{ $p->sekretaris->dosen->nama }} </td> --}}
                                                <td> {{ $p->ketua->dosen->nama ?? 'Tidak ada data ketua' }} </td>
                                                <td> {{ $p->sekretaris->dosen->nama ?? 'Tidak ada data sekretaris' }} </td>

                                                <td>
                                                    <a
                                                        href="{{ route('admin.kbk.edit', ['id' => $p->id_kbk]) }}"class="btn btn-primary"><i
                                                            class="fas fa-pen"></i> Edit</a>
                                                    <a data-toggle="modal" data-target="#modal-hapus{{ $p->id_kbk }}"
                                                        class="btn btn-danger"><i class="fas fa-trash-alt"></i>
                                                        Hapus</a>
                                                </td>
                                            </tr>
                                            <div class="modal fade" id="modal-hapus{{ $p->id_kbk }}">
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
                                                            <p>Apakah kamu yakin ingin menghapus data KBK
                                                                <b>{{ $p->nama_kbk }}</b>
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer justify-content-between">
                                                            <form
                                                                action="{{ route('admin.kbk.delete', ['id' => $p->id_kbk]) }}"
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
