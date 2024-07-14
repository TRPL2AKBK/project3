<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sibeka | Home</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            height: 100vh;
            background-image: url('img/bg3.png');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .img {
            width: 200px;
            position: absolute;
            top: 15px;
            left: 15px;
        }

        h1 {
            color: #333;
            font-size: 50px;
            text-transform: uppercase;
            font-weight: bold;

        }

        p {
            color: #666;
            font-size: 16px;
        }

        .btn-custom {
            background-color: #2E3951;
            color: #eef6ff;
            border-radius: 50px;
        }

        .btn-custom:hover {
            background-color: #4285b3;
        }

        .login-button {
            background-color: #eef6ff;
            color: #2E3951;
            border-radius: 50px;
        }

        .login-button:hover {
            background-color: #8f9294;
        }

        @media (max-width: 768px) {
            h1 {
                font-size: 35px;
            }

            p {
                font-size: 14px;
            }
        }

        .content-wrapper {
            margin-top: 100px;
            /* Geser ke bawah */
            margin-left: 100px;
            /* Geser ke kanan */
        }
    </style>
</head>

<body>
    <div class="container-fluid">
        <div class="d-flex justify-content-end align-items-center p-3">
            <a href="{{ route('login') }}" class="btn login-button ">Sign In</a>
            {{-- <a href="#" class="btn btn-custom">Sign Up</a> --}}
        </div>
    </div>
    <img src="img/logo1.png" class="img" alt="Sibeka">
    <div class="container-fluid content-wrapper">
        <div class="row">
            <div class="col-md-4">
                <h1>SISTEM INFORMASI KELOMPOK BIDANG KEAHLIAN</h1>
                <p>Kami membantu pekerjaan anda dengan mempermudah menyediakan informasi KBK, RPS dan Soal UAS</p>
                <a href="/sibeka" class="btn btn-custom mt-3">Pelajari Lebih Lanjut</a>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
