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
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }

    .container {
        width: 80%;
        margin: 0 auto;
        text-align: center;
    }

    h1 {
        color: #333;
        margin-top: 100px;
    }

    p {
        color: #666;
        margin-bottom: 40px;
    }

    .cta-button {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border-radius: 5px;
        text-decoration: none;
    }

    .cta-button:hover {
        background-color: #0056b3;
    }

    @media (max-width: 768px) {

        /* Adjustments for smaller screens */
        .container {
            width: 90%;
        }

        h1 {
            font-size: 24px;
            margin-top: 50px;
        }

        p {
            font-size: 16px;
            margin-bottom: 20px;
        }
    }
</style>
</head>

<body>
    <div class="container">
        <h1>Selamat Datang di Website Sibeka</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident sequi molestias facere aliquam et quasi
            sapiente quas incidunt magnam perspiciatis.</p>
        <a href="<?php echo e(route('login')); ?>" class="cta-button">Get Started</a>
    </div>

</body>

</html>
<?php /**PATH C:\Users\Lenovo\Documents\GitHub\kbk\resources\views/landing.blade.php ENDPATH**/ ?>