<?php 

if (empty($_GET['p'])){
  $title= "Sistem Informasi Biaya Pendidikan";
  $konten="konten/home.php";
}
else if($_GET['p']=='produk'){
    $title= "Data produk";
    $konten="konten/produk.php";
  }
  else if($_GET['p']=='pelanggan'){
    $title= "Data pelanggan";
    $konten="konten/pelanggan.php";
  }
else if($_GET['p']=='user'){
  $title= "Data User";
  $konten="konten/user.php";
}
//Menu Untuk Transaksi

else if($_GET['p']=='tambah'){
  $title= "Tambah Penjualan Baru";
  $konten="konten/tambah.php";
}
else if($_GET['p']=='laporan'){
  $title= "laporan Sistem";
  $konten="konten/laporan.php";
}
else if($_GET['p']=='backup'){
  $title= "Backup Sistem";
  $konten="konten/backup.php";
}
else if($_GET['p']=='restore'){
  $title= "Restore Sistem";
  $konten="konten/restore.php";
}



else{
  $title= "Halaman Tidak Ditemukan";
  $konten="konten/404.php";
}
?>