@extends('layout.main')
@section('title', 'Dosen Pengampu')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dosen Pengampu</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dosen Pengampu</li>
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
                                <h3 class="card-title mt-2">Dosen Pengampu</h3>
                                {{-- Tombol Insert --}}
                                {{-- <div class="card-title" style="float: right"><a href="{{ route('admin.kurikulum.create') }}"
                                        class="btn btn-primary" style="float: right">
                                        Insert</a>
                                </div> --}}
                            </div>
                            <div class="card-body table-responsive p-0">
                                <table id="example2" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Dosen</th>
                                            <th>Mata Kuliah</th>
                                            <th>Kelas</th>
                                            <th>Tahun/Semester</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($pengampu as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $p->dosen->nama }} </td>
                                                {{-- <td> {{ $p->matakuliah->nama_matakuliah }} </td> --}}
                                                <td>
                                                    @if ($p->matakuliah)
                                                        {{ $p->matakuliah->nama_matakuliah }}
                                                    @else
                                                        Data matakuliah kosong
                                                    @endif
                                                </td>

                                                <td> {{ $p->id_kelas }} </td>
                                                <td> {{ $p->tahun->smt_thn_akd }} </td>
                                            </tr>
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
