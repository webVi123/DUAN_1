<?php
require_once 'pdo.php';

function bill_insert_id($id_us, $nguoinhan_ten, $nguoinhan_diachi, $nguoinhan_dienthoai, $nguoidat_ten, $nguoidat_diachi, $nguoidat_email, $nguoidat_dienthoai, $trangthai, $total)
{

    $sql = "INSERT INTO bill (id_us, nguoinhan_ten, nguoinhan_diachi, nguoinhan_dienthoai, nguoidat_ten, nguoidat_diachi, nguoidat_email, nguoidat_dienthoai,trangthai, total, ngaydat) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())";

    return pdo_execute_id($sql, $id_us, $nguoinhan_ten, $nguoinhan_diachi, $nguoinhan_dienthoai, $nguoidat_ten, $nguoidat_diachi, $nguoidat_email, $nguoidat_dienthoai, $trangthai, $total);
}


function lichsumh()
{
    $sql = "SELECT * FROM cart";
    return pdo_query($sql);
}

function history_insert($ten_sp, $hinh_sp, $gia, $idpro, $idbill, $id_us)
{
    $sql = "INSERT INTO lichsu (ten, hinh, gia, sl, size, idpro, idbill, id_us) VALUES (?,?,?,?,?,?);";
    pdo_execute($sql, $ten_sp, $hinh_sp, $gia, $idpro, $idbill, $id_us);
}

function get_order_historyadmin($idpro)
{
    $sql = "SELECT l.*, b.ngaydat FROM lichsu l JOIN bill b ON l.idbill = b.id WHERE l.id_us = ?";
    return pdo_query($sql, $idpro);
}

function get_order_history($id_us)
{
    $sql = "SELECT l.*, b.ngaydat FROM lichsu l JOIN bill b ON l.idbill = b.id WHERE l.id_us = ?";
    return pdo_query($sql, $id_us);
}
// insert vào cart
function cart_insert($ten_sp, $hinh_sp, $gia, $size, $sl,  $idpro, $idbill)
{
    $sql = "INSERT INTO cart (ten, hinh, gia, size, sl, idpro, idbill) VALUES (?,?,?,?,?,?,?);";
    pdo_execute($sql, $ten_sp, $hinh_sp, $gia, $size, $sl,  $idpro, $idbill);
}

function cart_ins($ten_sp, $hinh_sp, $gia, $size, $sl,  $idpro, $idbill,$code_Cart)
{
    $sql = "INSERT INTO cart (ten, hinh_sp, gia, size, sl, idpro, idbill, code_Cart) VALUES (?,?,?,?,?,?,?,?);";
    pdo_execute($sql, $ten_sp, $hinh_sp, $gia, $size, $sl,  $idpro, $idbill, $code_Cart);
}

function total()
{
    $totalAmount = 0;
    foreach ($_SESSION['giohang'] as $index => $value) {
        extract($value);
        $tt = (float)$gia * (int)$sl;
        $totalAmount += $tt;
    }
    return $totalAmount;
}
function loadall_thongke(){
    $sql="SELECT danhmuc.id as madm, danhmuc.ten as tendm, count(sanpham.id) as countsp, min(sanpham.gia) as minprice, max(sanpham.gia) as maxprice, avg(sanpham.gia) as avgprice";
    $sql.=" FROM sanpham LEFT JOIN danhmuc on danhmuc.id=sanpham.iddm";
    $sql.=" group by danhmuc.id order by danhmuc.id desc";
    $listtk=pdo_query($sql);
    return $listtk;
}
?>
