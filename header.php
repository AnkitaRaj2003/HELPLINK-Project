<style>
  @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap");

  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
  }

  /* Header code */
  header {
    z-index: 999;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 200px;
    transition: 0.5s ease;
  }

  header .brand {
    /* color: #fff; */
    font-size: 1.5rem;
    font-weight: 700;
    text-transform: uppercase;
    text-decoration: none;
  }

  header .brand:hover {
    color: #00b6f9;
  }

  header .navigation {
    position: relative;
  }

  header .navigation .navigation-items a {
    position: relative;
    /* color: #fff; */
    font-size: 1em;
    font-weight: 500;
    text-decoration: none;
    margin-left: 30px;
    transition: 0.3s ease;
  }

  header .navigation .navigation-items a:before {
    content: "";
    position: absolute;
    /* background: #fff; */
    width: 0;
    height: 3px;
    bottom: 0;
    left: 0;
    transition: 0.3s ease;
  }

  header .navigation .navigation-items a:hover:before {
    width: 100%;
    background: #00b6f9;
  }

  .brand,
  .navigation-items a {
    color: black;
  }

  @media (max-width: 1040px) {
    header {
      padding: 12px 20px;
    }

    section {
      padding: 100px 20px;
    }

    .home .media-icons {
      right: 15px;
    }

    header .navigation {
      display: none;
    }

    header .navigation.active {
      position: fixed;
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      background: rgba(1, 1, 1, 0.5);
    }

    header .navigation .navigation-items a {
      color: #222;
      font-size: 1.2em;
      margin: 20px;
    }

    header .navigation .navigation-items a:before {
      background: #222;
      height: 5px;
    }

    header .navigation.active .navigation-items {
      background: #00b6f9;
      width: 600px;
      max-width: 600px;
      margin: 20px;
      padding: 40px;
      display: flex;
      flex-direction: column;
      align-items: center;
      border-radius: 5px;
      box-shadow: 0 5px 25px rgb(1 1 1 / 20%);
    }

    .menu-btn {
      background: url(img/menu.png) no-repeat;
      background-size: 30px;
      background-position: center;
      width: 40px;
      height: 40px;
      cursor: pointer;
      transition: 0.3s ease;
    }

    .menu-btn.active {
      z-index: 999;
      background: url(img/close.png) no-repeat;
      background-size: 25px;
      background-position: center;
      transition: 0.3s ease;
    }
  }

  /* Dropdown Style */
/* Add this CSS to your stylesheet */
.navigation {
  display: flex;
  align-items: center;
}

.navigation-items {
  margin-right: 20px; /* Adjust spacing between navigation items */
}

.dropdown {
  position: relative;
  margin-right: 20px; /* Adjust spacing between "Login" and other items */
}

.dropdown-content {
  display: none;
  position: absolute;
  top: 100%;
  left: 0;
  background-color: #fff; /* Background color for the dropdown */
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); /* Box shadow for the dropdown */
}

.dropdown:hover .dropdown-content {
  display: block;
}

/* Optional: Style the dropdown items */
.dropdown-content a {
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  color: #333; /* Text color for dropdown items */
}

.dropdown-content a:hover {
  background-color: #f1f1f1; /* Background color on hover */
}


</style>
<header>
  <a href="#" class="brand">HELPLINK</a>
  <div class="menu-btn"></div>
  <div class="navigation">
    <div class="navigation-items">
      <a href="index.php">Home</a>
      <a href="features.php">Features</a>
      <a href="how-it-works.php">How It Works</a>
      <a href="testimonials.php">Testimonial</a>
      <a href="contact.php">Contact</a>
    </div>
    <!-- Dropdown Menu -->
    <div class="dropdown navigation-items">
      <a href="#" class="login">Login</a>
      <div class="dropdown-content">
        <a href="volunteer/login.php" style="color: black; margin-left:0;">Volunteer</a>
        <a href="organization/login.php" style="color: black; margin-left:0;">Organization</a>
      </div>
    </div>
  </div>
</header>

