<link rel="stylesheet" href="view/css/cart.css">
<?php
$kq = '';
$stt = 0;
// foreach ($_SESSION['giohang'] as $index => $value) {
//     extract($value);
// }
foreach ($showls as $value) {
    extract($value);
    $stt++;
    $kq .= ' <tr>
        <td>' . $stt . '</td>
        <td>#RS' . $idbill . '</td>
        <td>' . $ten . '</td>
      
        <td><img src="' . $hinh . '" width=100></td>
        <td>' .number_format(floatval($gia), 0, ",", "."). ' đ</td>
        <td>' . $size . '</td>
        <td>' . $sl . '</td>
        <td><a href="index.php?pg=sanphamchitiet&id=' . $idpro . '"><i class="fas fa-eye" style="color: #ff0000;"></i></a></td> 
    </tr>';
}

?>


<div class="cart">
    <div class="cart_left">
        <p>Lịch sử mua hàng</p>
        <table>
            <tr>
                <th>STT</th>
                <th>Đơn hàng</th>
                <th>Tên</th>
                <th>Hình</th>
                <!-- <th>Kích cỡ</th>
                <th>Số lượng</th> -->
                <th>Giá</th>
                <th>Size</th>
                <th>Số lượng</th>
                <th>Chi tiết</th>
            </tr>

            <?php echo $kq; ?>

        </table>

    </div>
</div>
