<?php
$kq = '';
$stt = 0;
foreach ($showb as $value) {
    extract($value);
    $stt++;
    $kq .= '<tr>
        <td>' . $stt . '</td>
        <td>#RS' . $id . '</td>
        <td>' . $nguoidat_ten . '</td>
        <td>0'. $nguoidat_dienthoai . '</td>
        <td>' . $nguoidat_diachi . '</td>
        <td>' . $nguoidat_email . '</td>
        <td>' . $trangthai . '</td>
        <td>' . number_format(floatval($total), 0, ",", "."). ' đ</td>
        <td>' . $ngaydat . '</td>
        <td><a href="admin.php?pg=ctls_sua&id=' . $id . '"><i class="fas fa-edit" style="color: #ff2600;"></i></a> <a href="admin.php?pg=chitietlichsu&id=' . $id . '"><i class="fas fa-eye" style="color: #ff0000;"></i></a></td>
    </tr>';
}

?>

<div style="text-align: center;" class="content">


    <table border="1">
        <tr>
            <th>STT</th>
            <th>Mã đơn hàng</th>
            <th>Người đặt</th>
            <th>SĐT người đặt</th>
            <th>Địa chỉ người đặt</th>
            <th>Email người đặt</th>
            <th>Trạng thái</th>
            <th>Tổng tiền</th>
            <th>Ngày đặt</th>
            <th>Chi tiết đơn hàng</th>
        </tr>

        <?php echo $kq; ?>
    </table>
</div>

<style>
.content {
    display: flex;
    align-items: center;
    flex-direction: row;
}

table {
    margin: 0 auto;
    width: 90%;
}
</style>
