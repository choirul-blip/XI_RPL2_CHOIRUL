<!DOCTYPE html>
<html>
<head>
    <title>Sistem Informasi Laundry</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
    <script type="text/javascript" src="../assets/js/jquery.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap.js"></script>
</head>
<body style="background: #f0f0f0;">
        <?php
           session_start();
             if ($_SESSION['status']!="login") {
             header("location:../index.php?pesan=belum_login");
              }
    ?>
    <nav class="navbar navbar-inverse" style="border-radius: 0px:">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded
                ="false"></button>               
                <a class="navbar-brand" href="index.php">LAUNDRY</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ui class="nav navbar-nav">
                    <li class="active"><a href="index.php"><i class="glypicon glypicon-home"></i>Dashboard</a></li>

                    <li><a href="pelanggan.php"><i class="glypicon glypicon-user"></i>Pelanggan</a></li>

                    <li><a href="transaksi.php"><i class="glypicon glypicon-random"></i>Transaksi</a></li>

                    <li><a href="laporan.php"><i class="glypicon glypicon-list-alt"></i>Laporan</a></li>

                    <ui class="dropdown">
                        <a href="#" class="dropdown-toggle" 
                        data-toggle="dropdown" role="button"
                        aria-haspopup="true" aria-expanded="false">
                            <i class="glypicon glypicon-wrench"></i>Pengaturan<span class="caret"></span></a>
                            <ui class="dropdown-menu">

                            <li><a href="harga.php"><i class="glypicon glypicon-usd"></i>Pengaturan Harga</a></li>

                        <li><a href="ganti_password.php"><i class="glypicon glypicon-lock"></i>Ganti Password</a></li>
                        </ui>
                    </li>
                    <li><a href="logout.php"><i class="glypicon glypicon-log-out"></i>LogOut</a></li>  
                </ui>
                <ui class="nav navbar-nav navbar-right">
                    <li><p class="nav navbar-text">Halo, <b>
                        <?php
                        echo $_SESSION['username']; ?></b></p></li>
                    </li>
                </ui>
            </div>
        </div>
    </nav>
</body>
</html>