@extends('layout.main')
@section('title', 'Edit Jurusan')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Jurusan</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Update Jurusan</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('admin.jurusan.update', ['id' => $jurusan->id_jurusan]) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Jurusan</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputName1">Kode Jurusan</label>
                                            <input type="text" class="form-control" id="exampleInputJurusan"
                                                name="kode_jurusan" value="{{ $jurusan->kode_jurusan }}"
                                                placeholder="Enter kode jurusan">
                                            @error('kode_jurusan')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputJurusan1">Jurusan</label>
                                            <input type="text" class="form-control" id="exampleInputJurusan2"
                                                name="jurusan" value="{{ $jurusan->jurusan }}" placeholder="Enter jurusan">
                                            @error('jurusan')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                    </div>
                                    <!-- /.card-body -->
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </form>
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
