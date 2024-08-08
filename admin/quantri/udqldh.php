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
        <td>' . number_format(floatval($total), 0, ",", ".") . ' đ</td>
        <td>' . $ngaydat . '</td>
        <td><a href="admin.php?pg=ctls_sua&id=' . $id . '"><i class="fas fa-edit" style="color: #ff2600;"></i></a> <a href="admin.php?pg=chitietlichsu&id=' . $id . '"><i class="fas fa-eye" style="color: #ff0000;"></i></a></td>
    </tr>';
}
if ((isset($_GET['id'])) && ($_GET['id'] > 0)) {
    $id = $_GET['id'];
    $udqldh = getqldh($id);
    extract($udqldh);
}
?>

<div style="text-align: center;" class="content">
    <div class="form-loai">
        <form name="" action="admin.php?pg=sua_qldh" method="post" onsubmit="return validateForm()">
            <div class="group">
                <label for="">Mã đơn hàng: </label><br>
                <input type="text" name="madh" id="madh" value="#RS<?= $id; ?>">
                <div id="errTen"></div>
            </div>
            <div class="group">
                <label for="trangthai">Trạng thái đơn hàng:</label>
                <select name="trangthai" id="trangthai" value="<?= $trangthai; ?>">
                    <option value="Đang xử lý"> Đang xử lý</option>
                    <option value="Đã xác nhận"> Đã xác nhận</option>
                    <option value="Chuẩn bị giao hàng"> Chuẩn bị giao hàng</option>
                    <option value="Đang giao hàng"> Đang giao hàng</option>
                    <option value="Giao hàng thành công"> Giao hàng thành công</option>
                </select>
                <input type="hidden" name="id" value="<?= $id ?>"><br>
                <div id="errTrangthai"></div>
                <br>
                <input type="submit" name="suaqldh" value="Lưu" class="btn">
            </div>

        </form>
    </div>

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
/*     margin: 0 auto; */
    width: 90%;
}
.form-loai{
    max-width: 250px;
    width: 70%;
}
</style>
