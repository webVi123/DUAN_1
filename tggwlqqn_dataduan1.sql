-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 12, 2023 lúc 03:11 AM
-- Phiên bản máy phục vụ: 10.6.16-MariaDB-cll-lve-log
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tggwlqqn_dataduan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(4) NOT NULL,
  `id_us` int(4) NOT NULL,
  `nguoinhan_ten` varchar(100) NOT NULL,
  `nguoinhan_diachi` varchar(100) NOT NULL,
  `nguoinhan_dienthoai` int(11) NOT NULL,
  `nguoidat_ten` varchar(100) NOT NULL,
  `nguoidat_diachi` varchar(100) NOT NULL,
  `nguoidat_email` varchar(100) NOT NULL,
  `nguoidat_dienthoai` int(11) NOT NULL,
  `trangthai` varchar(100) NOT NULL,
  `total` int(15) NOT NULL,
  `ngaydat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `id_us`, `nguoinhan_ten`, `nguoinhan_diachi`, `nguoinhan_dienthoai`, `nguoidat_ten`, `nguoidat_diachi`, `nguoidat_email`, `nguoidat_dienthoai`, `trangthai`, `total`, `ngaydat`) VALUES
(120, 3, '', '', 0, 'Đạt', 'Quận 12', 'kimdat7000@gmail.com', 347343925, 'Giao hàng thành công', 249000, '2023-12-11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(4) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `noidung` varchar(100) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL,
  `idpro` int(4) NOT NULL,
  `id_us` int(4) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `ten`, `noidung`, `ngaybinhluan`, `idpro`, `id_us`, `email`) VALUES
(1, '', 'GO', '23/11/2023', 14, 5, ''),
(2, '', 'áoáo đẹp', '23/11/2023', 14, 5, ''),
(5, '', 'sản phẩm đẹp', '28/11/2023', 16, 5, ''),
(6, '', '123', '29/11/2023', 20, 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(4) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `hinh` varchar(100) NOT NULL,
  `size` varchar(9) NOT NULL,
  `sl` int(11) NOT NULL,
  `gia` int(10) NOT NULL,
  `idpro` int(4) NOT NULL,
  `idbill` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `ten`, `hinh`, `size`, `sl`, `gia`, `idpro`, `idbill`) VALUES
(154, 'QUẦN JOGGER JEAN NỮ - 10201', 'layout/img/20231108_jn6460DsSI.jpeg', 'M', 1, 249000, 21, 120);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `id` int(4) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `hinh` varchar(100) NOT NULL,
  `gia` int(11) NOT NULL,
  `idpro` int(4) NOT NULL,
  `mau` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(4) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `ma` int(11) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT 0,
  `stt` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten`, `ma`, `home`, `stt`) VALUES
(1, 'Áo thun', 1, 1, 1),
(2, 'Quần', 2, 1, 2),
(3, 'Áo khoác', 3, 0, 0),
(5, 'Phụ kiện', 4, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsu`
--

CREATE TABLE `lichsu` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `hinh` varchar(100) NOT NULL,
  `gia` int(11) NOT NULL,
  `id_us` int(11) NOT NULL,
  `idpro` int(11) NOT NULL,
  `idbill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `id` int(10) NOT NULL,
  `partner_Code` varchar(50) NOT NULL,
  `order_Id` int(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `order_Info` varchar(100) NOT NULL,
  `order_Type` varchar(100) NOT NULL,
  `trans_Id` int(11) NOT NULL,
  `pay_Type` varchar(50) NOT NULL,
  `code_Cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`id`, `partner_Code`, `order_Id`, `amount`, `order_Info`, `order_Type`, `trans_Id`, `pay_Type`, `code_Cart`) VALUES
(1, 'MOMOBKUN20180529', 1702134044, '20000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', '5841'),
(2, 'MOMOBKUN20180529', 1702134044, '20000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', '6692'),
(3, 'MOMOBKUN20180529', 1702134044, '20000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', '2521'),
(4, 'MOMOBKUN20180529', 1702134044, '20000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', '544'),
(5, 'MOMOBKUN20180529', 1702134044, '20000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', '837'),
(6, 'MOMOBKUN20180529', 1702134044, '20000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, 'napas', '137');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(4) NOT NULL,
  `ten_sp` varchar(100) NOT NULL,
  `hinh_sp` varchar(100) NOT NULL,
  `gia` int(10) NOT NULL,
  `iddm` int(4) NOT NULL,
  `mota` varchar(2000) NOT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 0,
  `giamgia` tinyint(4) NOT NULL DEFAULT 0,
  `soluong` tinyint(3) NOT NULL,
  `sodonhang` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten_sp`, `hinh_sp`, `gia`, `iddm`, `mota`, `trangthai`, `giamgia`, `soluong`, `sodonhang`) VALUES
(9, 'QUẦN TÂY NAM - BASIC BAGGY PANTS', 'layout/img/quan1.jpg', 395000, 2, '\r\nBộ sưu tập ENOUGHISM lấy cảm hứng niềm hạnh phúc khi bạn biết đủ và hài lòng với những gì mà mình đang có. Bạn sẽ tìm thấy sự hạnh phúc khi tập trung vào việc tận hưởng và trân trọng những thành tựu, mối quan hệ và trạng thái mà bạn đang có trong cuộc sống. Những chiếc quần tây sẽ là sự lựa chọn hàng đầu cho các Friends boy cần sự chỉn chu.</br>\r\n\r\n- Chất liệu 100% cotton nhập khẩu cao cấp kết hợp thêm một chút spandex để tạo độ co giãn nhẹ</br>\r\n- Form Slimfit vừa vặn, tôn dáng</br>\r\n- Vải mịn, có độ co giãn tốt tạo cảm giác thoải mái </br>\r\n- Đường may tỉ mỉ, chi tiết là yếu tố quan trọng để đảm bảo sản phẩm được ra mắt với phiên bản hoàn hảo và chất lượng nhất.</br>\r\n\r\nThông số sản phẩm:</br>\r\n- Chất liệu: Cotton</br>\r\n- Size: </br>\r\n+ 29: 1m50 - 1m60 - 50kg - 55kg</br>\r\n+ 30: 1m61 - 1m65 - 56kg - 60kg</br>\r\n+ 31: 1m66 - 1m70 61kg - 64kg</br>\r\n+ 32: 1m71 - 1m75 65kg - 69kg</br>\r\n+ 34: trên 1m75 76kg - 85kg</br>\r\n\r\n- Màu sắc: Đen</br>\r\n- Xuất xứ: Việt Nam</br>\r\n\r\nChính sách sản phẩm:</br>\r\n- Hỗ trợ đổi sản phẩm trong 30 ngày</br> \r\n- Bảo hành lên đến 90 ngày.</br>\r\n- Được kiểm tra hàng trước khi thanh toán (đối với đơn online)</br>', 0, 0, 0, 0),
(10, 'QUẦN JEAN NAM -  STRAIGHT - 10304', 'layout/img/quan2.jpg', 425000, 2, 'Quần jean ống rộng trend Y2K cá tính là kiểu quần được lấy cảm hứng từ những năm thập niên 90 và được biến tấu lại theo phong cách trẻ trung và hiện đại của giới trẻ hiện nay. Đây chính là một sự kết hợp hoàn hảo của hơi thở cổ điển với xu thế hiện đại tạo nên một sản phẩm trendy.</br>\r\n\r\n- Chất liệu jean dệt đôi hiện đại, sử dụng 100% sợi bông cotton dày dặn, bề mặt mềm mịn có bền cao. Vải được wash tạo hiệu ứng đẹp, bền bỉ theo thời gian.\r\n- Form Straight với đặc điểm suôn thẳng và có độ rộng vừa đủ phù hợp với mọi vóc dáng, đặc biệt có thể giúp bạn che đi khuyết điểm.</br>\r\n- Phần ống dài suôn thẳng kết hợp công nghệ acid wash để tạo hiệu ứng đẹp mắt cho sản phẩm. </br>\r\n- Đường may tỉ mỉ, chi tiết là yếu tố quan trọng để đảm bảo sản phẩm được ra mắt với phiên bản hoàn hảo và chất lượng nhất.</br>\r\n\r\nThông số sản phẩm:</br>\r\n- Chất liệu: Jean</br>\r\n- Size: </br>\r\n+ 29: 1m50 - 1m60 - 50kg - 55kg </br>\r\n+ 30: 1m61 - 1m65 - 56kg - 60kg </br>\r\n+ 31: 1m66 - 1m70 61kg - 64kg </br>\r\n+ 32: 1m71 - 1m75 65kg - 69kg </br>\r\n+ 34: trên 1m75 76kg - 85kg</br>\r\n- Màu sắc: Xanh</br>\r\n- Xuất xứ: Việt Nam</br>\r\n\r\nChính sách sản phẩm:</br>\r\n- Hỗ trợ đổi trả sản phẩm trong 30 ngày \r\n- Bảo hành lên đến 90 ngày.</br>\r\n- Được kiểm tra hàng trước khi thanh toán (đối với đơn online)</br>', 0, 1, 0, 0),
(11, 'QUẦN JEAN NAM  - ENOUGHISM AW 23/24 - COLOR SPRAYED JEANS', 'layout/img/quan3.jpg', 425000, 2, 'Bộ sưu tập ENOUGHISM lấy cảm hứng niềm hạnh phúc khi bạn biết đủ và hài lòng với những gì mà mình đang có. Bạn sẽ tìm thấy sự hạnh phúc khi tập trung vào việc tận hưởng và trân trọng những thành tựu, mối quan hệ và trạng thái mà bạn đang có trong cuộc sống. Thiết kế nổi bật với các điểm nhấn màu vô cùng khác biệt tạo nên điều mới lạ, đây chắc chắn sẽ là một sản phẩm đặc biệt mà bạn chưa từng có.</br>\r\n\r\n- Chất liệu jean dệt đôi hiện đại, sử dụng 100% sợi bông cotton dày dặn, bề mặt mềm mịn có bền cao. Vải được wash tạo hiệu ứng đẹp, bền bỉ theo thời gian.</br>\r\n- Form Wide Leg với phần eo và đùi được thiết kế ôm vừa vào cơ thể, cạp cao.</br>\r\n- Phần ống dài suôn thẳng kết hợp công nghệ acid wash để tạo hiệu ứng đẹp mắt cho sản phẩm. </br>\r\n- Đường may tỉ mỉ, chi tiết là yếu tố quan trọng để đảm bảo sản phẩm được ra mắt với phiên bản hoàn hảo và chất lượng nhất.</br>\r\n\r\nThông số sản phẩm:</br>\r\n- Chất liệu: Jeans</br>\r\n- Size: </br>\r\n+ 29: 1m50 - 1m60 - 50kg - 55kg</br>\r\n+ 30: 1m61 - 1m65 - 56kg - 60kg</br>\r\n+ 31: 1m66 - 1m70 61kg - 64kg</br>\r\n+ 32: 1m71 - 1m75 65kg - 69kg</br>\r\n+ 34: trên 1m75 76kg - 85kg</br>\r\n\r\n- Màu sắc: Xanh</br>\r\n- Xuất xứ: Việt Nam</br>\r\n\r\nChính sách sản phẩm:</br>\r\n- Hỗ trợ đổi sản phẩm trong 30 ngày </br>\r\n- Bảo hành lên đến 90 ngày.</br>\r\n- Được kiểm tra hàng trước khi thanh toán (đối với đơn online)', 0, 1, 0, 0),
(12, 'ÁO THUN NAM  - YOUTHFUL', 'layout/img/ao1.jpg', 350000, 1, 'Áo thun là một item khá phổ mang tính ứng dụng cao, thường được sử dụng trong thời trang thường ngày. Đặc biệt ở chiếc áo này được sử dụng công nghệ in IN CAO hiện đại theo trend chữ to in đầy áo.</br>\r\n- Chất liệu 100% cotton nhập khẩu cao cấp</br>\r\n- Form Oversize thời thượng cùng kiểu chữ in trend nổi bật</br>\r\n- Điểm nhấn của chiếc áo chính là sử dụng công nghệ in IN PET vô cùng đặc biệt</br>\r\n- Đường may tỉ mỉ, chi tiết là yếu tố quan trọng để đảm bảo sản phẩm được ra mắt với phiên bản hoàn hảo và chất lượng nhất.</br>\r\nThông số sản phẩm:</br>\r\n- Chất liệu: Cotton</br>\r\n- Size: </br>\r\n+ S: 1m55 - 1m60 - 45kg - 55kg</br>\r\n+ M: 1m61 - 1m70 - 56kg - 65kg </br>\r\n+ L: 1m71 - 1m80, 66kg - 75kg </br>\r\n+ XL: trên 1m80, 76kg - 85kg </br>\r\n- Màu sắc: Xanh Dương - Kem - Trắng</br>\r\n- Xuất xứ: Việt Nam</br>\r\nChính sách sản phẩm:</br>\r\n- Hỗ trợ đổi trả sản phẩm trong 30 ngày </br>\r\n- Bảo hành lên đến 90 ngày.</br>\r\n- Được kiểm tra hàng trước khi thanh toán (đối với đơn online)</br>', 0, 1, 0, 0),
(14, 'ÁO THUN NỮ - FEARLESS TOUR', 'layout/img/20231013_nd9Fdfj7Lg.jpeg', 215000, 1, 'Là kiểu áo thun luôn nhận được nhiều sự ưu chuộng của phái đẹp. Nhờ vào thiết kế đơn giản, vô cùng dễ mix&match cho các nàng có thể thoải mái sáng tạo phối ra những outfit đẹp và phù hợp với mình nhất.  </br> - Form áo regular thời thượng, cổ viền cứng cáp. </br> - Chất lượng cotton thoáng mát, thấm hút mồ hôi tốt. </br> - Đường may tỉ mỉ, hoàn thiện tốt. </br> - Đổi trả trong 30 ngày </br> - Bảo hành lên đến 90 ngày.  </br> - Mã: W2ATN08302 </br> - Chất liệu: COTTON </br> - Size: Freesize </br>  - Màu sắc: Đen - Trắng </br> - Kĩ thuật in: In dẻo', 0, 0, 100, 126),
(15, 'ÁO THUN NỮ - PRIVATE ROOM', 'layout/img/20231013_333m4bikXp.jpeg', 225000, 1, 'Với hoạ tiết được in chính giữa áo tạo nên điểm nhấn cho chiếc áo trở nên đặc biệt hơn.</br> Mang thiết kế Raglan ontrend tạo nên được sự mới lạ cho chiếc áo. </br>  - Form áo regular thời thượng, cổ viền cứng cáp.</br> - Chất lượng cotton thoáng mát, thấm hút mồ hôi tốt. </br>- Đường may tỉ mỉ, hoàn thiện tốt. </br>- Đổi trả trong 30 ngày </br>- Bảo hành lên đến 90 ngày. </br> - Mã: W2ATN08306 </br>- Chất liệu: COTTON </br>- Size: Freesize </br> - Màu sắc: Hồng - Đen - Đỏ - Xanh Lá</br> - Kĩ thuật in: In dẻo', 0, 0, 20, 0),
(16, 'ÁO THUN NỮ  - BROOKLYN', 'layout/img/20231013_N998KBLdEu.jpeg', 215000, 1, 'Là một trong những item cơ bản phổ biến trong thời trang thường ngày. </br>Với tổng thể đơn giản, thoải mái và tính ứng dụng cao, áo thun luôn là lựa chọn ưu tiên nhiều người.  </br>  - Form áo regular thời thượng, cổ viền cứng cáp. </br> - Chất lượng cotton thoáng mát, thấm hút mồ hôi tốt. </br> - Đường may tỉ mỉ, hoàn thiện tốt. </br> - Đổi trả trong 30 ngày </br> - Bảo hành lên đến 90 ngày.  </br> - Mã: W2ATN08303  </br>- Chất liệu: COTTON  </br>- Size: Freesize  </br> - Màu sắc: Trắng </br> - Kĩ thuật in: In dẻo', 0, 0, 60, 0),
(17, 'ÁO KHOÁC HOODIE ENOUGHISM', 'layout/img/20231108_OpDfzmxzWy.jpeg', 420000, 3, 'Bộ sưu tập ENOUGHISM lấy cảm hứng niềm hạnh phúc khi bạn biết đủ và hài lòng với những gì mà mình đang có. Bạn sẽ tìm thấy sự hạnh phúc khi tập trung vào việc tận hưởng và trân trọng những thành tựu, mối quan hệ và trạng thái mà bạn đang có trong cuộc sống. Một chiếc áo Hoodie đang được các FRIENDs yêu thích và dần trở thành xu hướng thời trang của giới trẻ hiện nay. Với thiết kế trẻ trung cùng kỹ thuật in/ thêu dập nổi vô cùng đặc biệt đã tạo nên một chiếc áo trendy. Vải được làm từ chất liệu cotton nên có độ mềm mịn cao cùng khả năng chống nắng, giữ ấm cực tốt mà vẫn thoáng mát khi mặc. </br>  - Chất liệu nỉ da cá dày dặn</br> - Form Oversize thời thượng. </br> - Màu sắc được phối lạ mắt đầy thu hút</br> - Đường may tỉ mỉ, chi tiết là yếu tố quan trọng để đảm bảo sản phẩm được ra mắt với phiên bản hoàn hảo và chất lượng nhất. </br>  Thông số sản phẩm: </br> - Chất liệu: Cotton</br> - Size: </br> + S: 1m55 - 1m60 - 45kg - 55kg</br> + M: 1m61 - 1m70 - 56kg - 65kg </br> + L: 1m71 - 1m80, 66kg - 75kg </br> + XL: trên 1m80, 76kg - 85kg </br>  - Màu sắc: Xanh - Nâu</br> - Xuất xứ: Việt Nam</br>  Chính sách sản phẩm: </br> - Hỗ trợ đổi sản phẩm trong 30 ngày </br> - Bảo hành lên đến 90 ngày. </br> - Được kiểm tra hàng trước khi thanh toán (đối với đơn online) </br>', 0, 0, 0, 0),
(18, 'ÁO HOODIE ZIP UNISEX - UP TO POWERFUL DAY', 'layout/img/20230323_ImKLAO8k60.jpeg', 315000, 3, 'Chất liệu: vải chân cua.</br> Kiểu dáng: oversize .</br> Thêu con giống. </br> Màu sắc: đen, xám, xanh, kem. </br> Khuynh đảo thời trang street-style với áo hoodie \"basic\" không thể thiếu trong tủ đồ của bạn. Thiết kế sở hữu những gam màu hiện đại, dễ dàng linh hoạt với mọi phong cách, kết hợp cùng kiểu dáng oversize trứ danh, hứa hẹn sẽ là món đồ mang đến cho bạn nhiều layout xuất sắc mùa Thu Đông này..</br>', 0, 0, 0, 0),
(19, 'ÁO HOODIE U1AKH02201BONTR', 'layout/img/20231013_9SymEzVlfH.jpeg', 199000, 3, 'Đã là một tín đồ thời trang thì chắc chắn bạn sẽ không thể nào bỏ lỡ những chiếc áo Hoodie như thế này. Một chiếc áo đang được các FRIENDs yêu thích và dần trở thành xu hướng thời trang của giới trẻ hiện nay. Với thiết kế trẻ trung cùng kỹ thuật in/ thêu dập nổi vô cùng đặc biệt đã tạo nên một chiếc áo trendy. Vải được làm từ chất liệu 100% cotton nên có độ mềm mịn cao cùng khả năng chống nắng, giữ ấm cực tốt mà vẫn thoáng mát khi mặc. </br>  - Được sản xuất bởi thương hiệu thời trang Việt Nam. </br> - Form oversize thời thượng. </br> - Chất liệu cotton thoáng mát, thấm hút mồ hôi tốt. </br> - Đường may tỉ mỉ, hoàn thiện tốt. </br> - Đổi trả trong 30 ngày </br> - Bảo hành lên đến 90 ngày. </br> - Mã: U1AKH10301 </br> - Chất liệu: cotton</br> - Size: </br> + S: 1m55 - 1m60 - 45kg - 55kg</br> + M: 1m61 - 1m70 - 56kg - 65kg </br> + L: 1m71 - 1m80, 66kg - 75kg </br> + XL: trên 1m80, 76kg - 85kg </br> - Màu sắc: Xanh Lá - Đen - Nâu - Xanh Dương</br> - Xuất xứ: Việt Nam </br>', 0, 1, 0, 30),
(20, 'ÁO HOODIE U1AKH11101SONHT', 'layout/img/20231004_lEq0WlwCnC.jpeg', 395000, 3, '', 0, 0, 0, 80),
(21, 'QUẦN JOGGER JEAN NỮ - 10201', 'layout/img/20231108_jn6460DsSI.jpeg', 249000, 2, 'Chất liệu: cotton</br> Kiểu dáng: straight-fit. </br>  Màu sắc: đen, xanh. </br>  Quần jogger mới nhất từ Totoday với chất liệu cotton cao cấp cùng đường may chắc chắn và tỉ mỉ giúp sản phẩm thêm đẳng cấp, chi tiết bo chun tạo nét cá tính và khỏe khoắn. Thiết kế hứa hẹn sẽ làm hài lòng các tín đồ đam mê phong cách thể thao, thỏa sức sáng tạo phong cách theo ý thích. </br>', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_us` int(4) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `hinh` varchar(100) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `vaitro` tinyint(4) NOT NULL DEFAULT 0,
  `reset_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_us`, `ten`, `username`, `diachi`, `hinh`, `password`, `phone`, `email`, `vaitro`, `reset_token`) VALUES
(1, 'Đăng', 'haidang', '', 'layout/img/5edf6662833a83a228942dfd053c9dd7.jpg', '567', 338815149, 'docaohaidang447@gmail.com', 1, '170139740978a492a44ce32bced144cca25b460aa5'),
(3, 'Đạt', 'kimdat7000', '', 'layout/img/413224ddfc9a874bbe2105529605f538.jpg', '1234', 347343925, 'kimdat7000@gmail.com', 0, '170232454600a330696751cf5fbe60baccc7e8d914'),
(4, 'Thẩm', 'chitham04', '', 'layout/img/wallhaven-o5w997_1920x1080.png', '123123', 327883144, 'chitham@gmail.com', 0, ''),
(5, 'vi', 'vi123', '', 'layout/img/Capture-removebg-preview.png', '123', 372291288, 'didi080504@gmail.com', 0, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bill_us` (`id_us`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bl_sp` (`idpro`),
  ADD KEY `fk_bl_us` (`id_us`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_sp` (`idpro`),
  ADD KEY `fk_cart_bill` (`idbill`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ct_sp` (`idpro`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lichsu`
--
ALTER TABLE `lichsu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ls_us` (`id_us`),
  ADD KEY `fk_ls_sp` (`idpro`),
  ADD KEY `fk_ls_bill` (`idbill`);

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sp_dm` (`iddm`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_us`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `lichsu`
--
ALTER TABLE `lichsu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_us` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_us` FOREIGN KEY (`id_us`) REFERENCES `user` (`id_us`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_bl_sp` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_bl_us` FOREIGN KEY (`id_us`) REFERENCES `user` (`id_us`);

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_cart_bill` FOREIGN KEY (`idbill`) REFERENCES `bill` (`id`),
  ADD CONSTRAINT `fk_cart_sp` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `fk_ct_sp` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `lichsu`
--
ALTER TABLE `lichsu`
  ADD CONSTRAINT `fk_ls_bill` FOREIGN KEY (`idbill`) REFERENCES `bill` (`id`),
  ADD CONSTRAINT `fk_ls_sp` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_ls_us` FOREIGN KEY (`id_us`) REFERENCES `user` (`id_us`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sp_dm` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
