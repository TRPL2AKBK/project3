@extends('layout.main')
@section('title', 'Data Mahasiswa')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Data Mahasiswa</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Data Mahasiswa</li>
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
                                <h3 class="card-title mt-2">Data Mahasiswa</h3>
                            </div>
                            <div class="card-body ">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            {{-- <th>User ID</th> --}}
                                            <th>NoBP</th>
                                            <th>Nama</th>
                                            <th>Telp</th>
                                            <th>Alamat</th>
                                            <th>Prodi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($mahasiswa as $m)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                {{-- <td> {{ $m->user_id }} </td> --}}
                                                <td> {{ $m->nobp }} </td>
                                                <td> {{ $m->nama }} </td>
                                                <td> {{ $m->telp }} </td>
                                                <td> {{ $m->alamat }} </td>
                                                <td> {{ $m->prodi->prodi }} </td>
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
