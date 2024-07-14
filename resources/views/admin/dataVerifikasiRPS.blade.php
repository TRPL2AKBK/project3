@extends('layout.main')
@section('title', 'Verifikasi RPS')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Verifikasi RPS</h1>
                        {{-- {{ $id_prodi }} --}}
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Verifikasi RPS</li>
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
                                <h3 class="card-title mt-2">Data Verifikasi RPS</h3>
                                <button type="button" class="btn btn-primary" data-toggle="modal"
                                    data-target="#cetakBeritaModal" style="float: right">
                                    Cetak Berita
                                </button>

                                <!-- Modal untuk memilih KBK dan Prodi -->
                                <div class="modal fade" id="cetakBeritaModal" tabindex="-1" role="dialog"
                                    aria-labelledby="cetakBeritaModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <form action="{{ route('berita-rps.cetak') }}" method="POST">
                                                @csrf
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="cetakBeritaModalLabel">Pilih KBK dan Prodi
                                                    </h5>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="form-group">
                                                        {{-- <label for="kbk">Pilih KBK:</label> --}}
                                                        <select name="id_kbk" id="kbk" class="form-control" required>
                                                            <option disabled selected value="">Pilih KBK</option>
                                                            @foreach ($list_kbk as $kbk)
                                                                <option value="{{ $kbk->id_kbk }}">{{ $kbk->nama_kbk }}
                                                                </option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                    @if (auth()->user()->hasRole('pimpinan_prodi'))
                                                        <input name="kode_prodi" type="hidden" value="{{ $kode_prodi }}">
                                                    @else
                                                        <div class="form-group">
                                                            {{-- <label for="prodi">Pilih Prodi:</label> --}}
                                                            <select name="kode_prodi" id="prodi" class="form-control"
                                                                required>
                                                                <option disabled selected value="">Pilih Prodi
                                                                </option>
                                                                @foreach ($list_prodi as $prodi)
                                                                    <option value="{{ $prodi->kode_prodi }}">
                                                                        {{ $prodi->kode_prodi }}
                                                                    </option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    @endif
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-dismiss="modal">Batal</button>
                                                    <button type="submit" class="btn btn-primary">Cetak</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="card-body ">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1rem">No</th>
                                            <th>Matakuliah</th>
                                            <th>Pengembang</th>
                                            <th>Dokumen</th>
                                            <th>Status</th>
                                            <th class="no-export">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($verifData as $p)
                                            <tr>
                                                <td> {{ $loop->iteration }} </td>
                                                <td>{{ $p->rps->matakuliah->nama_matakuliah }}</td>
                                                <td>{{ $p->rps->pengembang->dosen->nama }}</td>
                                                <td> <a href={{ asset('storage/' . $p->rps->dokumen) }} target="_blank"
                                                        class="btn btn-sm btn-primary">Lihat dokumen</a> </td>
                                                <td>
                                                    @if (!$p->evaluasi)
                                                        <span class="text-info">{{ 'Belum diverifikasi' }}</span>
                                                        <br>
                                                    @elseif($p->evaluasi)
                                                        <span class="text-success">{{ 'Sudah diverifikasi' }}</span> <br>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a href="#" class="btn btn-info btn-sm" data-toggle="modal"
                                                        data-target="#modal-detail{{ $p->id_verif_rps }}">
                                                        <i class="fas fa-eye"></i> Detail
                                                    </a>
                                                    @can('crud verif rps')
                                                        <a
                                                            href="{{ route('verifikasi.verifrps.edit', ['id' => $p->id_verif_rps]) }}"class="btn btn-sm btn-primary">
                                                            Verifikasi </a>
                                                        <a data-toggle="modal" data-target="#modal-hapus{{ $p->id_verif_rps }}"
                                                            class="btn btn-sm btn-danger">Hapus
                                                        </a>
                                                    @endcan
                                                </td>
                                            </tr>
                                            {{-- modal --}}
                                            <div class="modal fade" id="modal-hapus{{ $p->id_verif_rps }}">
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
                                                            <p>Apakah kamu yakin ingin menghapus data Verifikasi
                                                                <b>{{ $p->rps->matakuliah->nama_matakuliah }}</b>
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer justify-content-between">
                                                            <form
                                                                action="{{ route('verifikasi.verifrps.delete', ['id' => $p->id_verif_rps]) }}"
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
                                            {{-- modal detai --}}
                                            <div class="modal fade" id="modal-detail{{ $p->id_verif_rps }}">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header bg-info">
                                                            <h4 class="modal-title">
                                                                {{ $p->rps->matakuliah->nama_matakuliah }}</h4>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p><strong>Pengembang:</strong>
                                                                {{ $p->rps->pengembang->dosen->nama }}</p>
                                                            <p><strong>Dokumen:</strong> <a
                                                                    href="{{ asset('storage/' . $p->rps->dokumen) }}"
                                                                    target="_blank">Lihat dokumen</a></p>
                                                            <p><strong>Evaluasi:</strong>
                                                                @if (!$p->evaluasi)
                                                                    Belum dievaluasi
                                                                @elseif ($p->evaluasi)
                                                                    {{ $p->evaluasi }}
                                                                @endif
                                                            </p>
                                                            <!-- Add other details as needed -->
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default"
                                                                data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->

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
