@extends('layout.main')
@section('title', 'Tambah Matakuliah KBK')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Matakuliah KBK</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Tambah Matakuliah KBK</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('admin.matakuliahkbk.store') }}" method="POST">
                    @csrf
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Tambah Matakuliah KBK</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputMatakuliah1">Matakuliah</label>
                                            <select class="form-control" id="exampleInputMatakuliah1" name="id_matakuliah">
                                                <option value="" disabled selected>Select Matakuliah</option>
                                                @foreach ($matakuliah as $mk)
                                                    <option value="{{ $mk->id_matakuliah }}">
                                                        {{ $mk->nama_matakuliah }}</option>
                                                @endforeach
                                            </select>
                                            @error('id_matakuliah')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputkbk">KBK</label>
                                            <select class="form-control" id="" name="id_kbk">
                                                <option value="" disabled selected>Select KBK</option>
                                                @foreach ($kbk as $mk)
                                                    <option value="{{ $mk->id_kbk }}">
                                                        {{ $mk->nama_kbk }}</option>
                                                @endforeach
                                            </select>
                                            @error('id_kbk')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputkurikulum">Kurikulum</label>
                                            <select class="form-control" id="" name="id_kurikulum">
                                                <option value="" disabled selected>Select Kurikulum</option>
                                                @foreach ($kurikulum as $mk)
                                                    <option value="{{ $mk->id_kurikulum }}">
                                                        {{ $mk->nama_kurikulum }}</option>
                                                @endforeach
                                            </select>
                                            @error('id_kurikulum')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <!-- /.card-body -->
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                            <a href="{{ url()->previous() }}" class="btn btn-secondary">Cancel</a>
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
