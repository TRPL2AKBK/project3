@extends('layout.main')
@section('title', 'Pengurus KBK Dashboard')
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
                        {{-- <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard v1</li>
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
                    {{-- <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>{{ $dataRps->count() }}</h3>
                                <p>Jumlah RPS yang diupload</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-file"></i>
                            </div>
                            <a href="{{ route('verifikasi.rps') }}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>{{ $verifRps->count() }}</h3>

                                <p>Jumlah RPS diverifikasi</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-check-circle"></i>
                            </div>
                            <a href="{{ route('verifikasi.verifrps') }}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>{{ $dataSoal->count() }}</h3>
                                <p>Jumlah Soal diupload</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-file"></i>
                            </div>
                            <a href="{{ route('verifikasi.soal') }}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>{{ $verifSoal->count() }}</h3>

                                <p>Jumlah Soal diverifikasi</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-check-circle"></i>
                            </div>
                            <a href="{{ route('verifikasi.verifsoal') }}" class="small-box-footer">More info <i
                                    class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div> --}}

                    <div class="col-12 col-sm-6 col-md-3">
                        <div class="info-box">
                            <span class="info-box-icon bg-info elevation-1"><i class="fas fa-file"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">RPS diupload</span>
                                <span class="info-box-number">
                                    @if ($matakuliah > 0)
                                        {{ number_format(($dataRps->count() / $matakuliah) * 100) }} %<small> dari
                                            {{ $matakuliah }}</small>
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
                                    @if ($verifRps->count() > 0)
                                        {{ number_format(($verifRps->count() / $dataRps->count()) * 100) }} %<small> dari
                                            {{ $dataRps->count() }}</small>
                                    @else
                                        0 %
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
                                    @if ($matakuliah > 0)
                                        {{ number_format(($dataSoal->count() / $matakuliah) * 100) }}%<small> dari
                                            {{ $matakuliah }}</small>
                                    @else
                                        0%
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
                                    @if ($verifSoal->count() > 0)
                                        {{ number_format(($verifSoal->count() / $dataSoal->count()) * 100) }} %<small> dari
                                            {{ $dataSoal->count() }}</small>
                                    @else
                                        0 %
                                    @endif
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 mt-5">
                        {{-- Table Prodi --}}
                        <div class="card">
                            <div class="card-header mb-0">
                                <h4>Persentase Uplod dan Verifikasi Soal RPS</h4>
                            </div>
                            <div class="card-body">

                                <canvas id="myChart" width="auto" height="70"></canvas>
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
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var ctx = document.getElementById('myChart').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['RPS diupload', 'RPS diverifikasi', 'Soal diupload', 'Soal diverifikasi'],
                    datasets: [{
                        label: 'Persentase',
                        data: [
                            {{ $matakuliah > 0 ? number_format(($dataRps->count() / $matakuliah) * 100) : 0 }},
                            {{ $verifRps->count() > 0 ? number_format(($verifRps->count() / $dataRps->count()) * 100) : 0 }},
                            {{ $matakuliah > 0 ? number_format(($dataSoal->count() / $matakuliah) * 100) : 0 }},
                            {{ $verifSoal->count() > 0 ? number_format(($verifSoal->count() / $dataSoal->count()) * 100) : 0 }}
                        ],
                        backgroundColor: [
                            '#17A2B8',
                            '#28A745',
                            '#17A2B8',
                            '#28A745'

                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 1)', // Warna border untuk 'RPS diupload'
                            'rgba(75, 192, 192, 1)', // Warna border untuk 'RPS diverifikasi'
                            'rgba(54, 162, 235, 1)', // Warna border untuk 'Soal diupload'
                            'rgba(75, 192, 192, 1)' // Warna border untuk 'Soal diverifikasi'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                callback: function(value) {
                                    return value + '%'; // Menambahkan simbol persen ke nilai sumbu Y
                                }
                            }
                        }
                    },
                    plugins: {
                        tooltip: {
                            callbacks: {
                                label: function(tooltipItem) {
                                    return tooltipItem.raw +
                                        '%'; // Menambahkan simbol persen ke tooltip
                                }
                            }
                        }
                    }
                }
            });
        });
    </script>


@endsection
