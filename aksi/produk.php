<?php
session_start();
include "../koneksi.php";
include "../function.php";

if($_POST){
    if($_POST['aksi']=='tambah'){
        $Barcode = $_POST['Barcode'];
        $NamaProduk = $_POST['NamaProduk'];
        $Harga = $_POST['Harga'];
        $Stok = $_POST['Stok'];  

        $sql ="INSERT INTO produk (ProdukID,Barcode,NamaProduk,Harga,Stok) VALUES (DEFAULT,'$Barcode', '$NamaProduk','$Harga','$Stok')";
        // echo $sql; //cek perintah
        mysqli_query($koneksi,$sql);
        notifikasi($koneksi);

        header('location:../index.php?p=produk');
    }
    else if($_POST['aksi']=='ubah'){
        $ProdukID = $_POST['ProdukID'];
        $Barcode = $_POST['Barcode'];
        $NamaProduk = $_POST['NamaProduk'];
        $Harga = $_POST['Harga'];
        $Stok = $_POST['Stok']; 

        $sql="UPDATE produk SET NamaProduk='$NamaProduk', Barcode='$Barcode', Harga='$Harga', Stok='$Stok' WHERE ProdukID=$ProdukID";
        // echo $sql; //cek perintah
        mysqli_query($koneksi,$sql);
        notifikasi($koneksi);

        header('location:../index.php?p=produk');
    }
}

if($_GET){
    if ($_GET['aksi']=='hapus'){
        $ProdukID=$_GET['ProdukID'];
        $sql="DELETE FROM produk WHERE ProdukID=$ProdukID";
        mysqli_query($koneksi,$sql);
        notifikasi($koneksi);

        header('location:../index.php?p=produk');
    }
}