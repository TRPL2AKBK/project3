@extends('layout.main')
@section('title', 'Edit KBK')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Kelompok Bidang Keahlian</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Update KBK</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <form action="{{ route('admin.kbk.update', ['id' => $kbk->id_kbk]) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">Form KBK</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="exampleInputName1">Nama KBK</label>
                                            <input type="text" class="form-control" id="exampleInputnama_kbk"
                                                name="nama_kbk" value="{{ $kbk->nama_kbk }}" placeholder="Enter nama kbk">
                                            @error('nama_kbk')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputName1">Kode KBK</label>
                                            <input type="text" class="form-control" id="exampleInputkode_kbk"
                                                name="kode_kbk" value="{{ $kbk->kode_kbk }}" placeholder="Enter kode kbk">
                                            @error('kode_kbk')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>

                                        {{-- <div class="form-group">
                                            <label for="exampleInputketua1">ID dosen KBK</label>
                                            <input type="text" class="form-control" id="exampleInputketua" name="ketua"
                                                value="{{ $kbk->ketua_kbk }}" placeholder="Enter id dosen kbk">
                                            @error('ketua')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div> --}}
                                        <div class="form-group">
                                            <label for="exampleRole">Ketua</label>
                                            <select name="ketua" class="form-control">
                                                <option value="" disabled
                                                    {{ old('ketua', $kbk->ketua_kbk) == '' ? 'selected' : '' }}>
                                                    Pilih Ketua</option>
                                                @foreach ($dosenkbk as $j)
                                                    <option value="{{ $j->id_dosenkbk }}"
                                                        {{ old('ketua', $kbk->ketua_kbk) == $j->id_dosenkbk ? 'selected' : '' }}>
                                                        {{ $j->dosen->nama }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            @error('ketua')
                                                <p style="color:red;"><small>{{ $message }}</small></p>
                                            @enderror
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleRole">Sekretaris</label>
                                            <select name="sekretaris" class="form-control">
                                                <option value="" disabled
                                                    {{ old('sekretaris', $kbk->sekretaris_kbk) == '' ? 'selected' : '' }}>
                                                    Pilih Sekretaris</option>
                                                @foreach ($dosenkbk as $k)
                                                    <option value="{{ $k->id_dosenkbk }}"
                                                        {{ old('sekretaris', $kbk->sekretaris_kbk) == $k->id_dosenkbk ? 'selected' : '' }}>
                                                        {{ $k->dosen->nama }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            @error('ketua')
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
