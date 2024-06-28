<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sibeka | Landing Page</title>

</head>

<style>
    /* Styles for the landing page */
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

    .container {
        width: 80%;
        margin: 0 auto;
        text-align: left;

    }

    h1 {
        width: 30%;
        color: #333;
        position: absolute;
        top: 25%;
        left: 10%;
        font-size: 50px;
        text-transform: uppercase;
    }

    p {
        width: 25%;
        color: #666;
        position: absolute;
        top: 48%;
        left: 10%;
        font-size: 16px;
    }

    .login-button {
        background-color: #eef6ff;
        color: #2E3951;
        padding: 10px 20px;
        border-radius: 50px;
        text-decoration: none;
        position: absolute;
        top: 20px;
        /* Sesuaikan dengan jarak dari atas */
        right: 15px;
        /* Sesuaikan dengan jarak dari kanan */
    }

    .login-button:hover {
        background-color: #8f9294;
    }

    .register-button {
        font-style: initial;
        color: #eef6ff;
        padding: 10px 20px;
        border-radius: 50px;
        text-decoration: none;
        position: absolute;
        top: 20px;
        right: 106px;
    }

    .register-button:hover {
        background-color: #8f9294;
    }

    .button {
        background-color: #2E3951;
        color: #eef6ff;
        padding: 15px 20px;
        border-radius: 50px;
        text-decoration: none;
        position: absolute;
        top: 58%;
        left: 10%;
    }

    .button:hover {
        background-color: #4285b3;
    }

    @media (max-width: 768px) {

        /* Adjustments for smaller screens */
        .container {
            width: 50%;
        }
    }
</style>
</head>

<body>
    <div class="container">
        <div>
            <h1 class="h1">SISTEM INFORMASI KELOMPOK BIDANG KEAHLIAN</h1>
        </div>
        <div>
            <p>Kami membantu pekerjaan anda dengan mempermudah menyediakan informasi KBK, RPS dan Soal UAS</p>
        </div>
        <div class="button">
            Pelajari Lebih Lanjut
        </div>
        <a href="{{ route('login') }}" class="login-button">Sign In</a>
        {{-- <a href="#" class="register-button">Sign Up</a> --}}
        <img src="img/logo1.png" class="img" alt="">
    </div>

</body>

</html>
