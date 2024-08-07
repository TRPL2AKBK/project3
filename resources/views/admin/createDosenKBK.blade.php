@extends('layout.main')
@section('title', 'Tambah Dosen KBK')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dosen KBK</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Tambah Dosen KBK</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('admin.dosenkbk.store') }}" method="POST">
                    @csrf
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Tambah Dosen KBK</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputNameKBK1">NIDN</label>
                                            <input type="text" class="form-control" id="exampleInputKBK1" name="nidn"
                                                placeholder="Masukan nidn">
                                            @error('nidn')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleRole">KBK</label>
                                            <select name="id_kbk" id="exampleRole" class="form-control">
                                                <option value="" disabled selected>Pilih KBK</option>
                                                @foreach ($kbk as $k)
                                                    <option value="{{ $k->id_kbk }}">{{ $k->kode_kbk }}</option>
                                                @endforeach
                                            </select>
                                            @error('id_kbk')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleRole">Jabatan</label>
                                            <select name="id_jabatan_kbk" id="exampleRole" class="form-control">
                                                <option value="" disabled selected>Pilih Jabatan</option>
                                                @foreach ($jabatan as $j)
                                                    <option value="{{ $j->id_jabatan_kbk }}">{{ $j->nama_jabatan_kbk }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            @error('id_jabatan_kbk')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
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
