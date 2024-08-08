<?php
foreach ($_SESSION['giohang'] as $index => $value) {
    extract($value);
}

if (isset($_SESSION['s_user']) && (count($_SESSION['s_user']) > 0)) {
    extract($_SESSION['s_user']);
}
?>


<link rel="stylesheet" href="view/css/bill.css">
<div class="dh_top">
    <h2>ĐƠN HÀNG CỦA BẠN</h2>
    <div class="border">
        <div>
            <div class="ht">
                <a href="">1</a>
            </div>
            <p>GIỎ HÀNG</p>
        </div>

        <div>
            <div class="ht">
                <a href="">2</a>
            </div>
            <p>ĐẶT HÀNG</p>
        </div>

        <div>
            <div class="ht">
                <a href="">3</a>
            </div>
            <p>XÁC NHẬN</p>
        </div>
    </div>
</div>
<div class="donhang_bot">
    <!-- THÔNG TIN CHI TIET LEFT -->
    <div class="thongtin_left">
        <p>THÔNG TIN CHI TIẾT</p>

        <form action="index.php?pg=donhang" method="post" onsubmit="return validateForm()">

            <p>THÔNG TIN NGƯỜI ĐẶT HÀNG</p>
            <?php
            if (isset($_SESSION['s_user']) && (count($_SESSION['s_user']) > 0)) {
                extract($_SESSION['s_user']);

            ?>
            <div>
                <label for="tenNguoiDat">Tên người đặt</label>
                <input type="text" name="ten" id="tenNguoiDat" value="<?= $ten ?>" placeholder="Nhập tên">
                <span id="errorTen" class="error"></span>
            </div>

            <div>
                <label for="soDienThoai">SĐT</label>
                <input type="text" name="phone" id="soDienThoai" value="<?= $phone ?>" placeholder="Số điện thoại">
                <span id="errorPhone" class="error"></span>
            </div>

            <div>
                <label for="diaChi">Địa chỉ giao hàng</label>
                <input type="text" name="diachi" id="diaChi" placeholder="Nhập địa chỉ" value="<?= $diachi ?>">
                <span id="errorDiachi" class="error"></span>
            </div>

            <div>
                <label for="Email">Email:</label>
                <input type="text" name="email" id="email" placeholder="Nhập email" value="<?= $email ?>">
                <span id="errorEmail" class="error"></span>
            </div>


            <div class="ttdathang">
                <a id="showInfoLink" onclick="showttnh()">Thay đổi thông tin nhận hàng</a>
            </div>
            <?php
            } else {


            ?>
            <div>
                <label for="tenNguoiDat">Tên người đặt</label>
                <input type="text" name="ten" id="tenNguoiDat" value="<?= $ten ?>" placeholder="Nhập tên">
            </div>

            <div>
                <label for="soDienThoai">SĐT</label>
                <input type="text" name="phone" id="soDienThoai" value="<?= $phone ?>" placeholder="Số điện thoại">
            </div>

            <div>
                <label for="diaChi">Địa chỉ giao hàng</label>
                <input type="text" name="diachi" id="diaChi" placeholder="Nhập địa chỉ" value="<?= $diachi ?>">
            </div>

            <div>
                <label for="Email">Email:</label>
                <input type="text" name="email" id="email" placeholder="Nhập email" value="<?= $email ?>">
            </div>


            <div class="ttdathang">
                <a id="showInfoLink" onclick="showttnh()">Thay đổi thông tin nhận hàng</a>
            </div>
            <?php
            }
            ?>
            <div class="ttdathang" id="ttdathang">
                <p>THÔNG TIN NGƯỜI NHẬN HÀNG</p>
                <div>
                    <label for="tenNguoiDat">Tên người nhận</label>
                    <input type="text" name="nguoinhan_ten" id="" placeholder="Nhập tên">
                </div>

                <div>
                    <label for="soDienThoai">SĐT</label>
                    <input type="text" name="nguoinhan_dienthoai" id="" placeholder="Số điện thoại">
                </div>

                <div>
                    <label for="diaChi">Địa chỉ giao hàng</label>
                    <input type="text" name="nguoinhan_diachi" id="" placeholder="Nhập địa chỉ">
                </div>

            </div>






    </div>


    <!-- THÔNG TIN CHI TIET RIGHT-->
    <div class="thongtin_right">
        <div class="thongtin_right_1">
            <p>THÔNG TIN ĐƠN HÀNG</p>
            <!--  vòng lặp để hiện thị hết đơn hàng chứ không hiển thị 1 đơn -->
            <?php
            $totalAmount = 0;
            foreach ($_SESSION['giohang'] as $index => $value) {
                extract($value);
                $tt = (float)$gia * (int)$sl;
                $totalAmount += $tt;

            ?>
            <div class="thongtin_sp">
                <img src="<?= $hinh_sp ?>" alt="" width="103.196px" height="79px">
                <div class="thongtin_sp_1">
                    <p><?= $ten_sp ?></p>
                    <p><?= number_format(floatval($gia), 0, ",", ".") ?> đ</p>

                    <div class="thongtin_sp_2">
                        <p>Số lượng:</p>
                        <p><?= $sl ?></p>
                        <p>Kích cỡ: <?= $size ?></p>
                    </div>
                </div>
            </div>
            <?php
            }
            ?>
            <div class="thongtin_sp_2_voucher">
                <p>Voucher</p>
                <div>
                    <input type="text" name="" id="" placeholder="Nhập Voucher">
                    <input type="submit" value="Nhập">
                </div>
            </div>
            <p>Tổng tiền: <?php echo number_format($totalAmount, 0, ",", "."); ?> đ</p>

            
           
                        

            
            <p align="center">PHƯƠNG THỨC THANH TOÁN</p>
                <div class="ptthanhtoan">
                    
                    <form action="add_to_history.php" method="POST">
                        <div class="pttienmat">
                        <!-- <button class="thongtin_sp_2_datdon" name="thanhtoan" type="submit">thanh toán tiền mặt</button> -->
                        <button type="submit" class="ptttoan" name="thanhtoan"><a href=""><img src="layout/img/cod.svg" width="40px" height="40px"></a></button>
                        <label for="">COD</label>
                        </div>
                    </form>

                    <form action="https://sandbox.vnpayment.vn/paymentv2/vpcpay.html">
                        <!-- <input class="ptttoan" type="submit" name="vnpay" value="Thanh toán VNPAY"> -->
                        <button type="submit" class="ptttoan" name="redirect"><a href=""><img src="layout/img/vnpay.svg.svg" width="40px" height="40px"></a></button>
                        <label for="">VÍ VNPAY</label>
                    </form>

                    <form action="index.php?pg=thanhtoanmomo" method="POST" target="_blank" enctype="application/x-www-form-urlencoded">
                        <!-- <input class="ptttoan" type="submit" name="momo" value="Thanh toán MOMO"> -->
                        <button type="submit" class="ptttoan" name="momo"><a href=""><img src="layout/img/QRmomo.webp" width="40px" height="40px"></a></button>
                        <label for="">QR MOMO</label>
                    </form>

                    <form action="view/momoATM.php" method="POST" target="_blank" enctype="application/x-www-form-urlencoded">
                        <!-- <input class="ptttoan" type="submit" name="momo" value="Thanh toán momo ATM"> -->
                        <button type="submit" class="ptttoan" name="momo"><a href=""><img src="layout/img/iconmomo.webp" width="40px" height="40px"></a></button>
                        <label for="">MOMO</label>
                    </form>
                </div>
            </div>
            <!-- <form action="add_to_history.php" method="POST">
                 Các input của form (tên, điện thoại, địa chỉ, ...) -->
                <!-- ...
                <button class="thongtin_sp_2_datdon" name="thanhtoan" type="submit">ĐẶT ĐƠN</button>
            </form> -->
    </div>


</div>
</div>






<style>
#ttdathang {
    display: none;
}
#showInfoLink {
    background-color: rgb(197, 52, 52);
    color: #fff;
    padding: 8px 12px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    text-decoration: none;
    width: 300px;
}

#showInfoLink:hover {
    background-color: #fff;
    color: rgb(197, 52, 52);
    border: 1px solid rgb(197, 52, 52);
}
</style>
<script>
function showttnh() {
    var infoSection = document.getElementById("ttdathang");
    if (infoSection.style.display === "none" || infoSection.style.display === "") {
        infoSection.style.display = "block";
    } else {
        infoSection.style.display = "none";
    }
}

function validateForm() {
        var ten = document.getElementById("tenNguoiDat").value;
        var phone = document.getElementById("soDienThoai").value;
        var diachi = document.getElementById("diaChi").value;
        var email = document.getElementById("email").value;

        var errors = [];

        if (ten.trim() === "") {
            document.getElementById("errorTen").innerText = "Tên người đặt không được để trống.";
            errors.push("ten");
        } else {
            document.getElementById("errorTen").innerText = "";
        }

        if (phone.trim() === "") {
            document.getElementById("errorPhone").innerText = "Số điện thoại không được để trống.";
            errors.push("phone");
        } else if (!/^\d{10,11}$/.test(phone.trim())) {
            document.getElementById("errorPhone").innerText = "Số điện thoại không hợp lệ.";
            errors.push("phone");
        } else {
            document.getElementById("errorPhone").innerText = "";
        }

        if (diachi.trim() === "") {
            document.getElementById("errorDiachi").innerText = "Địa chỉ giao hàng không được để trống.";
            errors.push("diachi");
        } else {
            document.getElementById("errorDiachi").innerText = "";
        }

        if (email.trim() === "") {
            document.getElementById("errorEmail").innerText = "Email không được để trống.";
            errors.push("email");
        } else if (!/\S+@\S+\.\S+/.test(email.trim())) {
            document.getElementById("errorEmail").innerText = "Email không hợp lệ.";
            errors.push("email");
        } else {
            document.getElementById("errorEmail").innerText = "";
        }

        if (errors.length > 0) {
            return false; // Prevent form submission
        }
        return true; // Proceed with form submission
    }



</script>

<style>
    .error {
        color: red;
        font-size: 12px;
    }
</style>