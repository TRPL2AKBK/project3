@extends('layout.main')

@section('title', 'Data Dosen')

@section('content')
    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dosen</h1>
                    </div>
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Data Dosen</li>
                    </ol> --}}
                    </div>
                </div>
            </div>
        </div>
        <section class="content">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header mb-3">
                                <h3 class="card-title mt-2">Data Dosen</h3>
                                <div class="card-title" style="float: right; margin-right: 10px;">
                                    <a href="{{ route('admin.dosen.api') }}" class="btn btn-primary">
                                        Perbarui data
                                    </a>
                                </div>
                            </div>
                            <div class="card-body table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            {{-- <th>ID Dosen</th> --}}
                                            <th>Nama</th>
                                            <th>NIDN</th>
                                            <th>NIP</th>
                                            {{-- <th>Gender</th> --}}
                                            {{-- <th>Jurusan</th> --}}
                                            <th>Prodi</th>
                                            <th>Email</th>
                                            <th style="width: 10rem">Aksi</th> {{-- Kolom untuk tombol aksi --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($dosen as $d)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                {{-- <td>{{ $d->id_dosen }}</td> --}}
                                                <td>{{ $d->nama }}</td>
                                                <td>{{ $d->nidn }}</td>
                                                <td>{{ $d->nip }}</td>
                                                {{-- <td>{{ $d->gender }}</td> --}}
                                                {{-- <td>{{ $d->jurusan }}</td> --}}
                                                <td>{{ $d->prodi }}</td>
                                                <td>{{ $d->email }}</td>
                                                <td>
                                                    {{-- Tombol detail untuk modal --}}
                                                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal"
                                                        data-target="#modalDetail{{ $d->id }}">
                                                        Detail
                                                    </button>
                                                </td>
                                            </tr>

                                            {{-- Modal untuk detail dosen --}}
                                            <div class="modal fade" id="modalDetail{{ $d->id }}" tabindex="-1"
                                                role="dialog" aria-labelledby="modalDetailLabel{{ $d->id }}"
                                                aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title"
                                                                id="modalDetailLabel{{ $d->id }}">Detail Data
                                                                Dosen</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p><strong>Nama:</strong> {{ $d->nama }}</p>
                                                            <p><strong>NIDN:</strong> {{ $d->nidn }}</p>
                                                            <p><strong>NIP:</strong> {{ $d->nip }}</p>
                                                            <p><strong>Gender:</strong> {{ $d->gender }}</p>
                                                            <p><strong>Jurusan:</strong> {{ $d->jurusan }}</p>
                                                            <p><strong>Prodi:</strong> {{ $d->prodi }}</p>
                                                            <p><strong>Email:</strong> {{ $d->email }}</p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary"
                                                                data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
