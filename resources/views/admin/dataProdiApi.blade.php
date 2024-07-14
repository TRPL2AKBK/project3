@extends('layout.main')
@section('title', 'Data Prodi')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Data Prodi</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Data Prodi</li>
                        </ol> --}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        {{-- Table Prodi --}}
                        <div class="card">
                            <div class="card-body table-responsive">
                                <table id="example2" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            <th>ID Prodi</th>
                                            <th>Kode Prodi</th>
                                            <th>Prodi</th>
                                            <th>ID Jurusan</th>
                                            <th>Jenjang</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($prodiData as $data)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $data['id_prodi'] }} </td>
                                                <td> {{ $data['kode_prodi'] }} </td>
                                                <td> {{ $data['prodi'] }} </td>
                                                <td> {{ $data['id_jurusan'] }} </td>
                                                <td> {{ $data['id_jenjang'] }} </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <form action="{{ route('admin.prodi.save') }}" method="POST">
                                    @csrf
                                    @foreach ($prodiData as $data)
                                        <input type="hidden" name="prodiData[{{ $loop->index }}][id_prodi]"
                                            value="{{ $data['id_prodi'] }}">
                                        <input type="hidden" name="prodiData[{{ $loop->index }}][kode_prodi]"
                                            value="{{ $data['kode_prodi'] }}">
                                        <input type="hidden" name="prodiData[{{ $loop->index }}][prodi]"
                                            value="{{ $data['prodi'] }}">
                                        <input type="hidden" name="prodiData[{{ $loop->index }}][id_jurusan]"
                                            value="{{ $data['id_jurusan'] }}">
                                        <input type="hidden" name="prodiData[{{ $loop->index }}][id_jenjang]"
                                            value="{{ $data['id_jenjang'] }}">
                                    @endforeach

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">Simpan</button>
                                        <button type="button" class="btn btn-secondary"
                                            onclick="location.href='{{ route('admin.prodis') }}';">Batal</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        {{-- /Table Prodi --}}
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
