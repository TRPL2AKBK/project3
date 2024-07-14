@extends('layout.main')
@section('title', 'Kaprodi Dashboard')
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
                    <!-- ./col -->
                    {{-- <canvas id="myChart" width="auto" height="100"></canvas> --}}
                    {{-- <canvas id="rpsChart" width="auto" height="100"></canvas> --}}
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

    {{-- <script>
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
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(75, 192, 192, 0.2)'
                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(75, 192, 192, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        });
    </script> --}}
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
                            'rgba(54, 162, 235, 0.5)',
                            'rgba(75, 192, 192, 0.5)',
                            'rgba(255, 206, 86, 0.5)',
                            'rgba(153, 102, 255, 0.5)'
                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(153, 102, 255, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    plugins: {
                        title: {
                            display: true,
                            text: 'Persentase Upload dan Verifikasi RPS dan Soal'
                        },
                        tooltip: {
                            callbacks: {
                                label: function(context) {
                                    return context.dataset.label + ': ' + context.parsed.y + '%';
                                }
                            }
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                callback: function(value) {
                                    return value + '%';
                                }
                            },
                            grid: {
                                color: 'rgba(200, 200, 200, 0.3)'
                            }
                        },
                        x: {
                            grid: {
                                display: false
                            }
                        }
                    }
                }
            });
        });
    </script>


@endsection
