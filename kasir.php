<?php
session_start();
session_regenerate_id(true);

// if (empty($_SESSION['nama']) && empty($_SESSION['email'])) {
//     header("Location: index.php");
//     exit;
// }

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="bootstrap-5.3.3/dist/css/bootstrap.min.css">
    <!-- <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet"> -->
</head>

<body>
    <?php require_once "inc/navbar.php" ?>
    <div class="container justify-content-center">
        <div class="row">
            <div class="col-2"></div>
            <div class="col-8">
                <div class="card mt-3">
                    <div class="card-header text-center">
                        <h1>Manage Kasir</h1>
                    </div>
                    <div class="card-body">
                        <div class="table table-responsive">
                            <div class="mt-2 mb-2">
                                <a href="tambah-transaction.php" class="btn btn-primary btn-sm">Kasir</a>
                            </div>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Kode Transaksi</th>
                                        <th>Tanggal Transaksi</th>
                                        <th>Struk Pembayaran</th>
                                        <th>Status Pembayaran</th>
                                        <th>Settings</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-2"></div>

        </div>


    </div>
    <!-- <footer class="shadow-sm mt-5" style="background-color: #ADD8E6; min-height:65px">
        <div class="row">
            <div class="col-md-6 d-flex justify-content-between">
                <p class="text-center ps-4 pt-3">Copyright &copy 2024 PPKD -Jakarta Pusat</p>
            </div>
            <div class="col-md-6 d-flex justify-content-end">
                <p class="text-center pt-3 pe-4">Privacy Policy</p>
            </div>
        </div>
    </footer> -->
    <script src="bootstrap-5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>