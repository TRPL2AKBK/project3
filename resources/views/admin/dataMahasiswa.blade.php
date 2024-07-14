@extends('layout.main')
@section('title', 'Data Mahasiswa')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Mahasiswa</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Data Mahasiswa</li>
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
                        {{-- Table Mahasiswa --}}
                        <div class="card">
                            <div class="card-header mb-3">
                                <h3 class="card-title mt-2">Data Mahasiswa</h3>
                                <div class="card-title" style="float: right; margin-right: 10px;">
                                    <a href="{{ route('admin.mahasiswa.api') }}" class="btn btn-primary">
                                        Perbarui Data
                                    </a>
                                </div>
                            </div>
                            <div class="card-body ">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            {{-- <th>User ID</th> --}}
                                            <th>NIM</th>
                                            <th>Nama</th>
                                            {{-- <th>Jurusan</th>
                                            <th>Prodi</th>
                                            <th>Gender</th> --}}
                                            <th class="no-export">Aksi</th> {{-- New Column --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($mahasiswa as $m)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                {{-- <td> {{ $m->user_id }} </td> --}}
                                                <td> {{ $m->nim }} </td>
                                                <td> {{ $m->nama }} </td>
                                                {{-- <td> {{ $m->jurusan }} </td>
                                                <td> {{ $m->prodi }} </td>
                                                <td> {{ $m->gender }} </td> --}}
                                                <td>
                                                    <button type="button" class="btn btn-sm btn-info" data-toggle="modal"
                                                        data-target="#detailModal_{{ $m->id }}">
                                                        Detail
                                                    </button>
                                                </td> {{-- New Column --}}

                                                <!-- Modal -->
                                                <div class="modal fade" id="detailModal_{{ $m->id }}" tabindex="-1"
                                                    role="dialog" aria-labelledby="detailModalLabel_{{ $m->id }}"
                                                    aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title"
                                                                    id="detailModalLabel_{{ $m->id }}">Detail
                                                                    Mahasiswa</h5>
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p><strong>NIM:</strong> {{ $m->nim }}</p>
                                                                <p><strong>Nama:</strong> {{ $m->nama }}</p>
                                                                <p><strong>Jurusan:</strong> {{ $m->jurusan }}</p>
                                                                <p><strong>Prodi:</strong> {{ $m->prodi }}</p>
                                                                <p><strong>Gender:</strong> {{ $m->gender }}</p>
                                                                {{-- Add more details as needed --}}
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary"
                                                                    data-dismiss="modal">Close</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- End Modal -->
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        {{-- /Table Mahasiswa --}}
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
