@extends('layout.main')
@section('title', 'Data RPS')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Data RPS</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Data RPS</li>
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
                        {{-- Table Prodi --}}
                        <div class="card">
                            <div class="card-header mb-3">
                                <h3 class="card-title mt-2">Data Role</h3>
                                @can('crud rps')
                                    <div class="card-title" style="float: right"><a href="{{ route('verifikasi.rps.create') }}"
                                            class="btn btn-primary" style="float: right">
                                            Upload RPS</a>
                                    </div>
                                @endcan
                            </div>
                            <div class="card-body ">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            <th>Matakuliah</th>
                                            <th>Versi</th>
                                            <th>Dokumen</th>
                                            <th>Dosen Pengembang</th>
                                            <th>Evaluasi</th>
                                            @can('crud rps')
                                                <th>Aksi</th>
                                            @endcan

                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($rpsData as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td> {{ $p->dosenpengampu->matakuliah->nama_matakuliah }} </td>
                                                <td> {{ $p->versi_rps }} </td>
                                                <td> <a href={{ asset('storage/' . $p->dokumen) }} target="_blank"
                                                        class="btn btn-primary">view</a>
                                                </td>
                                                <td> {{ $p->pengembang->dosen->nama }} </td>
                                                <td>
                                                    @if (!$p->evaluasi)
                                                        <span>{{ 'Belum diverifikasi' }}</span> <br>
                                                    @else
                                                        {{ $p->evaluasi }} <br>
                                                    @endif
                                                </td>
                                                @can('crud rps')
                                                    <td>
                                                        <a
                                                            href="{{ route('verifikasi.rps.edit', ['id' => $p->id_rps]) }}"class="btn btn-primary"><i
                                                                class="fas fa-pen"></i> Edit</a>
                                                        <a data-toggle="modal" data-target="#modal-hapus{{ $p->id_rps }}"
                                                            class="btn btn-danger"><i class="fas fa-trash-alt"></i>
                                                            Hapus</a>
                                                    </td>
                                                @endcan
                                            </tr>
                                            <div class="modal fade" id="modal-hapus{{ $p->id_rps }}">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title">Konfirmasi Hapus Data</h4>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p>Apakah kamu yakin ingin menghapus data RPS
                                                                <b>{{ $p->dosenpengampu->matakuliah->nama_matakuliah }}</b>
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer justify-content-between">
                                                            <form
                                                                action="{{ route('verifikasi.rps.delete', ['id' => $p->id_rps]) }}"
                                                                method="POST">
                                                                @csrf
                                                                @method('DELETE')
                                                                <button type="button" class="btn btn-default"
                                                                    data-dismiss="modal">Close</button>
                                                                <button type="submit" class="btn btn-primary">Ya,
                                                                    Hapus</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->
                                        @endforeach
                                    </tbody>
                                </table>
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
