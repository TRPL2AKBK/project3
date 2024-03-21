@extends('layout.main')
@section('title', 'Data Matkul')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Matkul</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Matkul</li>
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

                        {{-- Table Matkul --}}
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Data Mata Kuliah</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body table-responsive p-0">
                                <table id='example1' class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Mata Kuliah</th>
                                            <th>Bidang</th>
                                            <th>Dosen Pengampu</th>
                                            <th>Tahun</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {{-- @foreach ($dataDosen as $index => $d) --}}
                                        @foreach ($matkul as $m)
                                            <tr>
                                                {{-- <td> {{ $dataDosen->firstitem() + $index }} </td> --}}
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $m->matkul }} </td>
                                                <td> {{ $m->bidang->bidang_keahlian }} </td>
                                                <td> {{ $m->dosen->name }} </td>
                                                <td> {{ $m->tahun->thn_ajaran }} </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        {{-- /Tabel Matkul --}}
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
