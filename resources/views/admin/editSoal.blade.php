@extends('layout.main')
@section('title', 'Edit Soal')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Soal</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Update soal</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">

                <form action="{{ route('verifikasi.soal.update', ['id' => $soalData->id_soal]) }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <!-- left column -->
                        <div class="col-12">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form soal</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <div class="card-body">
                                    <div class="form-group">
                                        @php
                                            $hasMatakuliah = false;
                                        @endphp
                                        <label for="exampleInputMatakuliah1">Matakuliah</label>
                                        <select class="form-control" id="exampleInputMatakuliah1" name="id_matakuliah">
                                            <option value="" disabled selected>Select Matakuliah</option>
                                            @foreach ($matakuliah as $mk)
                                                @if ($mk->nidn == Auth::user()->nidn)
                                                    <option value="{{ $mk->id_matakuliah }}"
                                                        {{ $mk->id_matakuliah == $soalData->id_matakuliah ? 'selected' : '' }}>

                                                        {{ $mk->matakuliah->nama_matakuliah }}</option>
                                                    @php
                                                        $hasMatakuliah = true;
                                                    @endphp
                                                @endif
                                            @endforeach
                                            @if (!$hasMatakuliah)
                                                <option value="" disabled>Tidak ada mata kuliah yang diampu</option>
                                            @endif
                                        </select>
                                        @error('id_matakuliah')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputid_tahun_akademik1">ID Tahun Akademik</label>
                                        <input type="text" class="form-control" id="exampleInputVersi1"
                                            name="id_tahun_akademik" value="{{ $soalData->id_tahun_akademik }}"
                                            placeholder="tahun akademik">
                                        @error('id_tahun_akademik')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <input type="hidden" name="oldDokumen" value="{{ $soalData->dokumen }}">
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
                                        @if ($soalData->dokumen)
                                            <div class="mt-2">
                                                <label>Current Document:</label>
                                                <a href="{{ asset('storage/' . $soalData->dokumen) }}"
                                                    target="_blank">{{ $soalData->dokumen }}</a>
                                            </div>
                                        @endif
                                        @error('dokumen')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
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
