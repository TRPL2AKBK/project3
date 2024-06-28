@extends('layout.main')
@section('title', 'Pimpinan Jurusan')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Pimpinan Jurusan</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Pimpinan Jurusan</li>
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
                                <h3 class="card-title mt-2">Pimpinn Jurusan</h3>
                                <div class="card-title" style="float: right; margin-right: 10px;">
                                    <a href="{{ route('admin.kajur.api') }}" class="btn btn-primary">
                                        Perbarui Data
                                    </a>
                                </div>
                            </div>
                            <div class="card-body table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            <th>Nama</th>
                                            <th>Jabatan</th>
                                            <th>Jurusan</th>
                                            <th>Periode</th>
                                            <th>Status</th>
                                            {{-- <th>Action</th> --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($kajur as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $p->nama }} </td>
                                                <td> {{ $p->jabatan->jabatan_pimpinan }} </td>
                                                <td> {{ $p->jurusan->jurusan }} </td>
                                                <td> {{ $p->periode }} </td>
                                                <td>
                                                    @if (!$p->status == 1)
                                                        <span>{{ 'Tidak Aktif' }}</span> <br>
                                                    @else
                                                        {{ 'Aktif' }} <br>
                                                    @endif
                                                </td>
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
