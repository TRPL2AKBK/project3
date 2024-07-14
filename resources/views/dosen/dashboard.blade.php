@section('notif')

    <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
            <i class="far fa-bell"></i>
            @if (count($notifications) == 0)
            @else
                <span class="badge badge-warning navbar-badge">{{ count($notifications) }}</span>
            @endif
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" aria-labelledby="navbarDropdown">
            <span class="dropdown-item dropdown-header">{{ count($notifications) }} Notifikasi</span>
            <div class="dropdown-divider"></div>
            @foreach ($notifications as $notification)
                @if ($notification->data['message'] === 'RPS Anda telah diverifikasi')
                    <a href="{{ route('verifikasi.rps') }}" class="dropdown-item">
                        <i class="fas fa-envelope mr-2"></i> {{ $notification->data['message'] }}
                        <span class="float-right text-muted text-sm">{{ $notification->created_at->diffForHumans() }}</span>
                    </a>
                    <div class="dropdown-divider"></div>
                @elseif ($notification->data['message'] === 'Soal Anda telah diverifikasi')
                    <a href="{{ route('verifikasi.soal') }}" class="dropdown-item">
                        <i class="fas fa-envelope mr-2"></i> {{ $notification->data['message'] }}
                        <span class="float-right text-muted text-sm">{{ $notification->created_at->diffForHumans() }}</span>
                    </a>
                    <div class="dropdown-divider"></div>
                @endif
            @endforeach
        </div>
    </li>

@endsection
@extends('layout.main')
@section('title', 'Dosen Dashboard')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Dashboard</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-12 col-sm-6 col-md-3 ">
                        <div class="info-box">
                            <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-book-open"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">Matakuliah Ampu</span>
                                <span class="info-box-number">
                                    @if ($matakuliah->count())
                                        {{ $matakuliah->count() }} Matakuliah
                                    @else
                                        0
                                    @endif
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box">
                            <span class="info-box-icon bg-info elevation-1"><i class="fas fa-file"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">RPS diupload</span>
                                <span class="info-box-number">
                                    @if ($matakuliah->count() > 0)
                                        {{ number_format(($dataRps / $matakuliah->count()) * 100) }} %<small> dari
                                            {{ $matakuliah->count() }}</small>
                                    @else
                                        0<small>%</small>
                                    @endif
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box">
                            <span class="info-box-icon bg-success elevation-1"><i class="fas fa-check-circle"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">RPS diverifikasi</span>
                                <span class="info-box-number">
                                    @if ($dataRps > 0)
                                        {{ number_format(($dataRps / $verifRps) * 100) }} %<small> dari
                                            {{ $dataRps }}</small>
                                    @else
                                        0<small>%</small>
                                    @endif
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box">
                            <span class="info-box-icon bg-info elevation-1"><i class="fas fa-file"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">Soal diupload</span>
                                <span class="info-box-number">
                                    @if ($matakuliah->count() > 0)
                                        {{ number_format(($dataSoal / $matakuliah->count()) * 100) }} %<small> dari
                                            {{ $matakuliah->count() }}</small>
                                    @else
                                        0<small>%</small>
                                    @endif
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box">
                            <span class="info-box-icon bg-success elevation-1"><i class="fas fa-check-circle"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">Soal diverifikasi</span>
                                <span class="info-box-number">
                                    @if ($dataSoal > 0)
                                        {{ number_format(($dataSoal / $verifSoal) * 100) }} %<small> dari
                                            {{ $dataSoal }}</small>
                                    @else
                                        0<small>%</small>
                                    @endif
                                </span>
                            </div>
                        </div>
                    </div>


                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
@endsection
