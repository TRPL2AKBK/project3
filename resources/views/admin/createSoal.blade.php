@extends('layout.main')
@section('title', 'Data Soal')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Data Soal</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Data Soal</li>
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
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Upload Soal</h3>
                            </div>

                            <form action="{{ route('verifikasi.soal.store') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="card-body">
                                    <div class="form-group">
                                        {{-- <label for="exampleInputMatakuliah1">ID Matakuliah</label>
                                        <input type="number" class="form-control" id="exampleInputMatakuliah1"
                                            name="id_matakuliah_kbk" value="{{ old('id_matakuliah_kbk') }}"
                                            placeholder="Enter id matakuliah"> --}}
                                        <label for="exampleInputMatakuliah1">Matakuliah</label>
                                        <select class="form-control" id="exampleInputMatakuliah1" name="id_matakuliah_kbk">
                                            <option value="" disabled selected>Select Matakuliah</option>
                                            @foreach ($matakuliah as $mk)
                                                <option value="{{ $mk->id_matakuliahkbk }}">
                                                    {{ $mk->matakuliah->nama_matakuliah }}</option>
                                            @endforeach
                                        </select>
                                        @error('id_matakuliah_kbk')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputid_tahun_akademik1">ID Tahun Akademik</label>
                                        <input type="text" class="form-control" id="exampleInputVersi1"
                                            name="id_tahun_akademik" value="{{ old('id_tahun_akademik') }}"
                                            placeholder="tahun akademik">
                                        @error('id_tahun_akademik')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputFile">File input</label>
                                        <div class="input-group">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="exampleInputFile"
                                                    name="dokumen">
                                                <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                            </div>
                                            <div class="input-group-append">
                                                <span class="input-group-text">Upload</span>
                                            </div>
                                        </div>
                                        @error('dokumen')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                </div>

                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
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
