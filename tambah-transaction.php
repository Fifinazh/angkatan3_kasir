<?php
session_start();
session_regenerate_id();
date_default_timezone_set("Asia/Jakarta");
require_once "config/koneksi.php";

//waktu
$currentTime = date('Y-m-d');

//generateTransactionCode()
function generateTransactionCode()
{
    $kode = date('ymdHis');

    return $kode;
}
//click_count
if (empty($_SESSION['click_count'])) {
    $_SESSION['click_count'] = 0;
}
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
            <div class="col-1"></div>
            <div class="col-10">
                <form action="" method="post">
                    <div class="mb-1">
                        <label class="form-label" for="">Kode Transaksi</label>
                        <input class="form-control w-50" name="kode_transaksi" id="kode_transaksi" type="text" value="<?php echo "TR-" . generateTransactionCode() ?>" readOnly>
                    </div>
                    <div class="mb-1">
                        <label class="form-label" for="">Tanggal Transaksi</label>
                        <input class="form-control w-50" name="tanggal_transaksi" id="tanggal_transaksi" type="date" value="<?php echo $currentTime ?>" readOnly>
                    </div>
                    <div class="mb-1">
                        <button class="btn btn-primary btn-sm" type="button" id="counterBtn">Tambah</button>
                        <input class="form-control" type="number" style="width: 50px; display:inline" name="countDisplay" id="countDisplay" value="<?php echo $_SESSION['click_count'] ?>" readOnly>
                    </div>
                    <div class="table-table-responsive">
                        <table class="table table-bordered">
                            <thead class="text-center">
                                <tr>
                                    <th>No.</th>
                                    <th>Nama Kategori</th>
                                    <th>Nama Barang</th>
                                    <th>Jumlah</th>
                                    <th>Sisa Produk</th>
                                    <th>Harga</th>
                                </tr>
                            </thead>
                            <tbody id="tbody">
                                <!-- data ditambah disini -->
                            </tbody>
                            <tfoot class="text-center">
                                <tr>
                                    <th colspan="5">Total Harga</th>
                                    <td><input type="number" id="total_harga_keseluruhan" name="total_harga" class="form-control" readonly></td>
                                </tr>
                                <tr>
                                    <th colspan="5">Nominal Bayar</th>
                                    <td><input type="number" id="nominal_bayar_keseluruhan" name="nominal_bayar" class="form-control" required></td>
                                </tr>
                                <tr>
                                    <th colspan="5">Kembalian</th>
                                    <td><input type="number" id="kembalian_keseluruhan" name="kembalian" class="form-control" readonly></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <div class="mb-3">
                        <input type="submit" class="btn btn-primary" name="simpan" value="Hitung">
                        <a href="kasir.php" class="btn btn-danger">Kembali</a>
                    </div>
                </form>
            </div>
            <div class=" col-1">
            </div>

        </div>


    </div>
    <?php
    $query = mysqli_query($koneksi, "SELECT * FROM kategori_barang");
    $categories = mysqli_fetch_all($query, MYSQLI_ASSOC);
    ?>
    <script src="bootstrap-5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            //fungsi tambah baris
            const button = document.getElementById('counterBtn');
            const countDisplay = document.getElementById('countDisplay');
            const tbody = document.getElementById('tbody');

            button.addEventListener('click', function() {
                let currentCount = parseInt(countDisplay.value) || 0;
                currentCount++;
                countDisplay.value = currentCount;
                //fungsi tambah td
                let newRow = "<tr>";
                newRow += "<td>" + currentCount + "</td>";
                newRow += "<td><select class='form-control catgeory-select' nmae='id_kategori[]' required>" 
                newRow += "<option value=''>--Pilih Kategori--</option>";
                <?php foreach ($categories as $category) { ?>
                    newRow += "<option value='<?php echo $category['id'] ?>'><?php echo $category['nama_kategori'] ?></option>"
                <?php
                } ?>
                newRow += "</select></td>";
                newRow += "<td> <select class='form-control item=select' name='id_barang[]' required>";
                newRow += "<option value=''>--Pilih Barang--</option>";
                newRow += "</select></td>";
                newRow += "<td><input type='number' name='jumlah[]' class='form-control jumlah-input' value='0' required></td>";
                newRow += "<td></td>";
                newRow += "<td></td>";
                newRow += "</tr>";
                tbody.insertAdjacentHTML('beforeend', newRow); 
            })
        })
    </script>
</body>

</html>