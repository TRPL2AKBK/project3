@extends('layout.main')
@section('title', 'Edit Matakuliah KBK')
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
                            <li class="breadcrumb-item active">Update Matakuliah KBK</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('admin.matakuliahkbk.update', ['id' => $matakuliahkbk->id_matakuliahkbk]) }}"
                    method="POST">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form Matakuliah KBK</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputMatakuliah1">Matakuliah</label>
                                            <select class="form-control" id="exampleInputMatakuliah1" name="id_matakuliah">
                                                <option value="" disabled>Select Matakuliah</option>
                                                @foreach ($matakuliah as $mk)
                                                    <option value="{{ $mk->id_matakuliah }}"
                                                        {{ $mk->id_matakuliah == $matakuliahkbk->id_matakuliah ? 'selected' : '' }}>
                                                        {{ $mk->nama_matakuliah }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            @error('id_matakuliah')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputkbk">KBK</label>
                                            <select class="form-control" id="exampleInputkbk" name="id_kbk">
                                                <option value="" disabled>Select KBK</option>
                                                @foreach ($kbk as $kb)
                                                    <option value="{{ $kb->id_kbk }}"
                                                        {{ $kb->id_kbk == $matakuliahkbk->id_kbk ? 'selected' : '' }}>
                                                        {{ $kb->nama_kbk }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            @error('id_kbk')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputkurikulum">Kurikulum</label>
                                            <select class="form-control" id="exampleInputkurikulum" name="id_kurikulum">
                                                <option value="" disabled>Select Kurikulum</option>
                                                @foreach ($kurikulum as $kur)
                                                    <option value="{{ $kur->id_kurikulum }}"
                                                        {{ $kur->id_kurikulum == $matakuliahkbk->id_kurikulum ? 'selected' : '' }}>
                                                        {{ $kur->nama_kurikulum }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            @error('id_kurikulum')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
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
