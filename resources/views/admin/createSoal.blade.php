@extends('layout.main')
@section('title', 'Data Soal')
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
                            <li class="breadcrumb-item active">Data Soal</li>
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
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Upload Soal</h3>
                            </div>

                            <form action="{{ route('verifikasi.soal.store') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
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
                                                        data-id_prodi="{{ $mk->matakuliah->kurikulum->prodi->id_prodi }}">
                                                        {{ $mk->matakuliah->nama_matakuliah }}
                                                    </option>
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
                                    <input type="hidden" id="id_prodi" name="id_prodi" value="">
                                    <div class="form-group">
                                        <label for="exampleInputid_tahun_akademik1">Tahun Akademik</label>
                                        <input type="hidden" name="id_tahun_akademik" value="{{ $tahun->id_smt_thn_akd }}">
                                        <input type="text" class="form-control" name=""
                                            value="{{ $tahun->smt_thn_akd }}" readonly>
                                        @error('id_tahun_akademik')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputFile">Dokumen</label>
                                        <div class="input-group">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="exampleInputFile"
                                                    name="dokumen">
                                                <label class="custom-file-label" for="exampleInputFile">Pilih file</label>
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
                                    <button type="submit" class="btn btn-primary">Simpan</button>
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
    <script>
        document.getElementById('exampleInputMatakuliah1').addEventListener('change', function() {
            var selectedOption = this.options[this.selectedIndex];
            var idProdi = selectedOption.getAttribute('data-id_prodi');
            document.getElementById('id_prodi').value = idProdi;
        });
    </script>
@endsection
