<link rel="stylesheet" href="view/css/form.css">
<script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
    integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc" crossorigin="anonymous">
</script>
<br>
<div class="form_lo">
    <p class="dk">ĐĂNG NHẬP</p>
    <form action="index.php?pg=login" method="post" onsubmit="return validateForm()">
        <div class="form_full">
            <div class="fo1">
                <label for="">Tên tài khoản</label>
                <input type="text" id="username" name="username" placeholder="Nhập tên tài khoản" >
                <div id="errUsername" class="error"></div>
            </div>
            <div class="fo1">
                <label for="">Mật khẩu</label>
                <div class="password-field">
                    <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" >
                    
                    <div class="toggle-password">
                        <svg xmlns="http://www.w3.org/2000/svg" class="eye eye-open" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                            <path stroke-linecap="round" stroke-linejoin="round" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                        </svg>

                        <svg xmlns="http://www.w3.org/2000/svg" class="eye eye-close" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"> 
                            <path stroke-linecap="round" stroke-linejoin="round" d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21" />
                        </svg>
                    </div>
                </div>
                <div id="errPass" class="error"></div>
            </div>

            <div class="form_sm">
                <input type="submit" name="dangnhap" value="ĐĂNG NHẬP">
                <?php 
                   if (isset($_SESSION['tb_dangnhap']) && ($_SESSION['tb_dangnhap'] != "")) {
                        echo '<h4 style="color:red;">' . $_SESSION['tb_dangnhap'] . '</h4>';
                        unset($_SESSION['tb_dangnhap']); // Xóa thông báo sau khi đã hiển thị
                    }
                ?>
                <div class="dnn">
                    <a href="index.php?pg=dangky">Bạn đã có tài khoản? Đăng ký ngay</a>
                </div>
                <a style="color: black; font-size: 15px; padding-left:250px; " href="index.php?pg=forgot">Forgot password!</a>
            </div>
        </div>
    </form>
</div>
<script>
function validateForm() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    var errors = 0;

    if (username.trim() === "") {
        document.getElementById("errUsername").innerHTML = "Vui lòng nhập tên tài khoản của bạn";
        errors++;
    } else {
        document.getElementById("errUsername").innerHTML = "";
    }

    if (password.trim() === "") {
        document.getElementById("errPass").innerHTML = "Vui lòng nhập mật khẩu của bạn";
        errors++;
    } else {
        document.getElementById("errPass").innerHTML = "";
    }

    return errors === 0;
}

document.getElementById("username").addEventListener("input", function(event) {
    var inputValue = event.target.value.trim();
    if (inputValue === "") {
        document.getElementById("errUsername").innerText = "Vui lòng nhập tên tài khoản.";
    } else {
        document.getElementById("errUsername").innerText = "";
    }
});

document.getElementById("password").addEventListener("input", function(event) {
    var inputValue = event.target.value.trim();
    if (inputValue === "") {
        document.getElementById("errPass").innerText = "Vui lòng nhập mật khẩu.";
    } else {
        document.getElementById("errPass").innerText = "";
    }
});

const togglePassword = document.querySelectorAll(".eye");
let activeClassName = "is-active";

togglePassword.forEach((item) => {
    item.addEventListener("click", handleTogglePassword);
});

function handleTogglePassword() {
    let inputType = "password";
    const input = this.parentNode?.previousElementSibling;
    if (this.matches(".eye-close")) {
        inputType = "text";
        const eyeOpen = this.previousElementSibling;
        eyeOpen && eyeOpen.classList.add(activeClassName);
    } else {
        inputType = "password";
        this.classList.remove(activeClassName);
    }
    input && input.setAttribute("type", inputType);
}



</script>



