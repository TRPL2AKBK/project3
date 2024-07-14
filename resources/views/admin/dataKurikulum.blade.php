@extends('layout.main')
@section('title', 'Kurikulum')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Kurikulum</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Kurikulum</li>
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
                            <div class="card-header mb-3">
                                <h3 class="card-title mt-2">Kurikulum</h3>
                                {{-- Tombol Insert --}}
                                {{-- <div class="card-title" style="float: right"><a href="{{ route('admin.kurikulum.create') }}"
                                        class="btn btn-primary" style="float: right">
                                        Insert</a>
                                </div> --}}
                                <div class="card-title" style="float: right; margin-right: 10px;">
                                    <a href="{{ route('admin.kurikulum.api') }}" class="btn btn-primary">
                                        Perbarui Data
                                    </a>
                                </div>
                            </div>
                            <div class="card-body table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            {{-- <th>Kode Kurikulum</th> --}}
                                            <th>Nama Kurikulum</th>
                                            {{-- <th>Tahun</th> --}}
                                            <th>Prodi</th>
                                            {{-- <th>Status</th> --}}
                                            <th class="no-export">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($kurikulum as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                {{-- <td> {{ $p->kode_kurikulum }} </td> --}}
                                                <td> {{ $p->nama_kurikulum }} </td>
                                                {{-- <td> {{ $p->tahun }} </td> --}}
                                                <td> {{ $p->prodi->prodi }} </td>
                                                {{-- <td> {{ $p->status }} </td> --}}
                                                <td>
                                                    <button class="btn btn-info" data-toggle="modal"
                                                        data-target="#detailModal"
                                                        data-id="{{ $p->id_kurikulum }}">Detail</button>
                                                </td>
                                            </tr>
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

        <!-- Detail Modal -->
        <div class="modal fade" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="detailModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="detailModalLabel">Detail Kurikulum</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p><strong>Kode Kurikulum:</strong> {{ $p->kode_kurikulum }}</p>
                        <p><strong>Nama Kurikulum:</strong> {{ $p->nama_kurikulum }}</p>
                        <p><strong>Tahun:</strong> {{ $p->tahun }}</p>
                        <p><strong>Prodi:</strong> {{ $p->prodi->prodi }}</p>
                        @if ($p->status == 1)
                            <p><strong>Status:</strong> Aktif</p>
                        @else
                            <p><strong>Status:</strong> Tidak aktif</p>
                        @endif
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
