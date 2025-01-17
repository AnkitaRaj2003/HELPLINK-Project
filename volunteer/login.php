<?php

$showerror = false;
$showalert = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include "C:/xampp/htdocs/myCodes/Fiverr hackathon/db_con.php";
    $username = $_POST['name'];
    $password = $_POST['password'];
    
    $sql = "SELECT * FROM `volunteer` WHERE `name`='$username'";
    $result = mysqli_query($conn, $sql);
    $num = mysqli_num_rows($result);
    if ($num > 0) {
        $rows = mysqli_fetch_assoc($result);
        if (password_verify($password, $rows['password'])) {
            session_start(); // Initialize the session
            $_SESSION['volun_username'] = $username;
            $_SESSION['volun_loggedin'] = true;
            echo '<script>alert("'.$_SESSION['volun_username'].'")</script>';
            header("location: ../dashboard/volunteer/index.php");
            // echo '<script>window.location.href = "../dashboard/volunteer/index.php";</script>';
            exit;
        } else {
            $showerror = true;
        }
    } else {
        $showerror = true;
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <title>Daily UI | #001 - Sign Up</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style.css">
    <style>
        :root {
            --base-bgcolor: #354152;
            --base-color: #7e8ba3;
            --base-font-weight: 300;
            --base-font-size: 1rem;
            --base-line-height: 1.5;
            --base-font-family: 'Helvetica Neue', sans-serif;
            --input-placeholder-color: #7e8ba3;
            --link-color: #7e8ba3;
            --grid-max-width: 25rem;
            --grid-width: 100%;
        }

        * {
            box-sizing: border-box;
        }

        html {
            height: 100%;
        }

        body {
            background-color: var(--base-bgcolor);
            color: var(--base-color);
            font: var(--base-font-weight) var(--base-font-size)/var(--base-line-height) var(--base-font-family), var(--base-font-family-fallback);
            margin: 0;
            /* min-height: 100%; */
        }

        .align {
            align-items: center;
            display: flex;
            flex-direction: row;
            margin-top: 6rem;
        }

        .align__item--start {
            align-self: flex-start;
        }

        .align__item--end {
            align-self: flex-end;
        }

        .site__logo {
            margin-bottom: 2rem;
        }

        .form__field {
            margin-bottom: 1rem;
        }

        .form__field input {
            padding: 10px;
            font-size: 1rem;
            color: #ababab;
        }

        input {
            width: 100%;
        }

        .grid {
            margin: 0 auto;
            max-width: var(--grid-max-width);
            width: var(--grid-width);
        }

        h2 {
            font-size: 2.75rem;
            font-weight: 100;
            margin: 0 0 1rem;
            text-transform: uppercase;
        }

        svg {
            height: auto;
            max-width: 100%;
            vertical-align: middle;
        }

        .register {
            box-shadow: 0 0 250px #000;
            text-align: center;
            padding: 4rem 2rem;
        }

        .register input {
            border: 1px solid #242c37;
            border-radius: 999px;
            background-color: transparent;
            text-align: center;
        }

        .register input[type="text"] {
            background-image: url('data:image/svg+xml;charset=UTF-8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="#242c37"><path d="M256.017 273.436l-205.17-170.029h410.904l-205.734 170.029zm-.034 55.462l-205.983-170.654v250.349h412v-249.94l-206.017 170.245z"/></svg>');
            background-repeat: no-repeat;
            background-size: 1.5rem;
            background-position: 1rem 50%;
        }

        .register input[type="password"] {
            background-image: url('data:image/svg+xml;charset=UTF-8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="#242c37"><path d="M195.334 223.333h-50v-62.666c0-61.022 49.645-110.667 110.666-110.667 61.022 0 110.667 49.645 110.667 110.667v62.666h-50v-62.666c0-33.452-27.215-60.667-60.667-60.667-33.451 0-60.666 27.215-60.666 60.667v62.666zm208.666 30v208.667h-296v-208.667h296zm-121 87.667c0-14.912-12.088-27-27-27s-27 12.088-27 27c0 7.811 3.317 14.844 8.619 19.773 4.385 4.075 6.881 9.8 6.881 15.785v22.942h23v-22.941c0-5.989 2.494-11.708 6.881-15.785 5.302-4.93 8.619-11.963 8.619-19.774z"/></svg>');
            background-repeat: no-repeat;
            background-size: 1.5rem;
            background-position: 1rem 50%;
        }

        .register input[type="submit"] {
            /* background-image: linear-gradient(160deg, #8ceabb 0%, #378f7b 100%); */
            background-image: linear-gradient(160deg, #8cc9ff 0%, #0280f1 100%);
            color: #fff;
            margin-bottom: 6rem;
            width: 100%;
        }

        a {
            color: var(--link-color);
        }

        /* header code */
        .log-sig-btn button {
            border: 0;
            padding: 8px 22px;
            font-size: 1rem;
            margin: 1rem;
        }

        .log-sig-btn button:hover {
            background-color: #2B9BFF;
            color: white;
        }

        @media (max-width:400px) {
            .home .media-icons {
                position: initial;
                flex-direction: row;
                justify-content: space-evenly;
            }
        }
    </style>

</head>

<body>
    <header>
        <a href="../Index.html" class="brand">HELPLINK</a>
        <div class="menu-btn"></div>
        <div class="navigation">
            <div class="navigation-items">
                <a href="#">Home</a>
                <a href="#">Features</a>
                <a href="#">Testimonial</a>
                <a href="#">Contact</a>
            </div>
        </div>
    </header>
    <div class="align">
        <div class="grid align__item">

            <div class="register">

                <svg xmlns="http://www.w3.org/2000/svg" class="site__logo" width="56" height="84" viewBox="77.7 214.9 274.7 412">
                    <defs>
                        <linearGradient id="a" x1="0%" y1="0%" y2="0%">
                            <stop offset="0%" stop-color="#8ceabb" />
                            <stop offset="100%" stop-color="#378f7b" />
                        </linearGradient>
                    </defs>
                    <path fill="url(#a)" d="M215 214.9c-83.6 123.5-137.3 200.8-137.3 275.9 0 75.2 61.4 136.1 137.3 136.1s137.3-60.9 137.3-136.1c0-75.1-53.7-152.4-137.3-275.9z" />
                </svg>

                <h2>Log In</h2>

                <form action="" method="post" class="form">

                    <div class="form__field">
                        <input type="text" placeholder="Username" name="name">
                    </div>

                    <div class="form__field">
                        <input type="password" placeholder="Password" name="password">
                    </div>

                    <div class="form__field">
                        <input type="submit" name="submit" value="Login">
                    </div>

                </form>

                <p>Don't have an account? <a href="signup.php">SignUp</a></p>

            </div>

        </div>
    </div>

    <script src="../main.js"></script>
    <script>
        if (<?php echo ($showerror ? 'true' : 'false') ?>) {
            alert("Incorrect Username or Password");
        }
    </script>

</body>

</html>