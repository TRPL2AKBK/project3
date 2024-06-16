@extends('layout.main')
@section('title', 'Data Dosen')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dosen</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Data Dosen</li>
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

                        {{-- Table Dosen --}}
                        <div class="card">
                            <div class="card-header mb-3">
                                <h3 class="card-title">Data Dosen</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            <th>ID Dosen</th>
                                            <th>Nama</th>
                                            <th>NIDN</th>
                                            <th>NIP</th>
                                            <th>Gender</th>
                                            <th>Jurusan</th>
                                            <th>Prodi</th>
                                            <th>Email</th>
                                            <th>Image</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($dosen as $d)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $d->id_dosen }} </td>
                                                <td> {{ $d->nama }} </td>
                                                <td> {{ $d->nidn }} </td>
                                                <td> {{ $d->nip }} </td>
                                                <td> {{ $d->gender }} </td>
                                                <td> {{ $d->jurusan->jurusan }} </td>
                                                <td> {{ $d->prodi->prodi }} </td>
                                                <td> {{ $d->email }} </td>
                                                <td> {{ $d->image }} </td>
                                                <td> {{ $d->status }} </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.Table Dosen -->
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
