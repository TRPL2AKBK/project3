@extends('layout.main')
@section('title', 'Edit Tahun')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Tahun Akademik</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Update Prodi</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('admin.tahun.update', ['id' => $tahun->id_smt_thn_akd]) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Edit Tahun</h3>
                                </div>
                                <!-- form start -->
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="exampleInputName1">Tahun / Semester</label>
                                        <input type="text" class="form-control" id="exampleInputTahun" name="smt_thn_akd"
                                            value="{{ $tahun->smt_thn_akd }}" placeholder="Enter Tahun akademik">
                                        @error('smt_thn_akd')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div>
                                    {{-- <div class="form-group">
                                        <label for="exampleInputProdi1">Status</label>
                                        <input type="number" class="form-control" id="exampleInputProdi1" name="status"
                                            value="{{ $tahun->status }}" placeholder="Enter Status" min="0"
                                            max="1" step="1">
                                        @error('status')
                                            <p style="color:red;"><small>{{ $message }}</small></p>
                                        @enderror
                                    </div> --}}
                                    <div class="form-group">
                                        <label for="exampleInputProdi1">Status</label>
                                        <select class="form-control" id="exampleInputProdi1" name="status">
                                            <option value="1" {{ $tahun->status == 1 ? 'selected' : '' }}>Aktif
                                            </option>
                                            <option value="0" {{ $tahun->status == 0 ? 'selected' : '' }}>Tidak Aktif
                                            </option>
                                        </select>
                                        @error('status')
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
