@extends('layout.main')
@section('title', 'Edit Prodi')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">User</h1>
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
                <form action="{{ route('admin.prodi.update', ['id' => $prodi->id_prodi]) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Prodi</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputName1">Kode Prodi</label>
                                            <input type="text" class="form-control" id="exampleInputProdi"
                                                name="kode_prodi" value="{{ $prodi->kode_prodi }}" placeholder="Enter nama">
                                            @error('kode_prodi')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputProdi1">Prodi</label>
                                            <input type="text" class="form-control" id="exampleInputProdi1"
                                                name="prodi" value="{{ $prodi->prodi }}" placeholder="Enter Prodi">
                                            @error('prodi')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">ID Jurusan</label>
                                            <input type="text" class="form-control" id="exampleInputProdi1"
                                                name="id_jurusan" value="{{ $prodi->id_jurusan }}"
                                                placeholder="New ID Jurusan">
                                            @error('id_jurusan')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Jenjang</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1"
                                                name="id_jenjang" value="{{ $prodi->id_jenjang }}"
                                                placeholder="Enter Jenjng">
                                            @error('jenjang')
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
