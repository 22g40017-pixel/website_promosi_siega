<?php
$koneksi = new mysqli("localhost", "root", "", "pendaftaran_siega");
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}

$nama     = $_POST['nama'];
$email    = $_POST['email'];
$wa       = $_POST['wa'];
$program  = $_POST['program'];

$folder = "uploads/";

if (!is_dir($folder)) {
    mkdir($folder, 0777, true);
}

function uploadFile($field, $folder)
{
    if ($_FILES[$field]['error'] == 4) {
        return "";
    }

    $namaFile = time() . "_" . $field . "_" . basename($_FILES[$field]['name']);
    $pathFile = $folder . $namaFile;
    move_uploaded_file($_FILES[$field]['tmp_name'], $pathFile);
    return $pathFile;
}

$foto       = uploadFile('foto', $folder);
$ijazah     = uploadFile('ijazah', $folder);
$kk         = uploadFile('kk', $folder);
$ktp        = uploadFile('ktp', $folder);
$sertifikat = uploadFile('sertifikat', $folder);
$rapor      = uploadFile('rapor', $folder);

$sql = "INSERT INTO pendaftar 
        (nama, email, wa, program, foto, ijazah, kk, ktp, sertifikat, rapor)
        VALUES 
        ('$nama','$email','$wa','$program','$foto','$ijazah','$kk','$ktp','$sertifikat','$rapor')";

if ($koneksi->query($sql) === TRUE) {
    echo "<h2>Pendaftaran Berhasil!</h2>";
    echo "<a href='index.html'>Kembali</a>";
} else {
    echo "Error: " . $koneksi->error;
}

$koneksi->close();
