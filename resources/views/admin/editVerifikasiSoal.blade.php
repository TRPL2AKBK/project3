@extends('layout.main')
@section('title', 'Verifikasi Soal')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Verifikasi Soal</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Verifikasi Soal</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('verifikasi.verifsoal.update', ['id' => $verifData->id_verif_soal]) }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <!-- left column -->
                        <div class="col-12">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Verifikasi Soal</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="exampleInputName1">Matakuliah</label>
                                        <input type="text" class="form-control" id="exampleInputid_matakuliah"
                                            name="id_matakuliah_kbk"
                                            value="{{ $verifData->soal->matakuliah->nama_matakuliah }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputName1">Tahun Akademik</label>
                                        <input type="text" class="form-control" id="exampleInputid_tahun_akademik"
                                            name="id_tahun_akademik" value="{{ $verifData->soal->id_tahun_akademik }}"
                                            readonly>
                                    </div>
                                    <div class="form-group">
                                        @if ($verifData->soal->dokumen)
                                            <div class="">
                                                <label>Document Soal:</label>
                                                <a href="{{ asset('storage/' . $verifData->soal->dokumen) }}"
                                                    target="_blank">{{ $verifData->soal->dokumen }}</a>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputKomentar1">Evaluasi</label>
                                        <input type="text" class="form-control" id="exampleInputkomentar" name="evaluasi"
                                            value="{{ $verifData->evaluasi }}" required>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                            <!-- /.card -->
                        </div>
                        <!--/.col (left) -->
                    </div>
                </form>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
