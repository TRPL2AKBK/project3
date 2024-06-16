@extends('layout.main')
@section('title', 'Verifikasi RPS')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Verifikasi RPS</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Verifikasi RPS</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('verifikasi.verifrps.update', ['id' => $verifData->id_verif_rps]) }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <!-- left column -->
                        <div class="col-12">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Verifikasi RPS</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="exampleInputName1">Matakuliah</label>
                                        <input type="text" class="form-control" id="exampleInputid_matakuliah"
                                            name="id_matakuliah_kbk"
                                            value="{{ $verifData->rps->matakuliah->nama_matakuliah }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputName1">Versi</label>
                                        <input type="text" class="form-control" id="exampleInputversi" name="versi_rps"
                                            value="{{ $verifData->rps->versi_rps }}" readonly>
                                    </div>
                                    <div class="form-group">
                                        @if ($verifData->rps->dokumen)
                                            <div class="">
                                                <label>Document RPS:</label>
                                                <a href="{{ asset('storage/' . $verifData->rps->dokumen) }}"
                                                    target="_blank">{{ $verifData->rps->dokumen }}</a>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputStatus">Status</label>
                                        <select class="form-control" id="exampleInputStatus" name="status" required>
                                            <option value="terima" {{ $verifData->status == 'Terima' ? 'selected' : '' }}>
                                                Terima</option>
                                            <option value="tolak" {{ $verifData->status == 'Tolak' ? 'selected' : '' }}>
                                                Tolak</option>
                                            <option value="revisi" {{ $verifData->status == 'Revisi' ? 'selected' : '' }}>
                                                Revisi</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputKomentar1">Komentar (Optional)</label>
                                        <input type="text" class="form-control" id="exampleInputkomentar" name="komentar"
                                            value="{{ $verifData->komentar }}">
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
