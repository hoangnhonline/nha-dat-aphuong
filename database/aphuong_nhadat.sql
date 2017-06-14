-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2017 at 03:57 PM
-- Server version: 5.6.30-1+deb.sury.org~wily+2
-- PHP Version: 5.6.11-1ubuntu3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aphuong_nhadat`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `status`) VALUES
(1, 'Quảng cáo bên trái', 1),
(2, 'Quảng cáo bên phải', 1);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `value_from` double NOT NULL,
  `value_to` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`, `display_order`, `status`, `value_from`, `value_to`, `created_at`, `updated_at`) VALUES
(1, 'Dưới 30 m2', 1, 1, 0, 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '30 - 50 m2', 2, 1, 30.01, 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '50 - 70 m2', 3, 1, 50.01, 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '70 - 100 m2', 4, 1, 70.01, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '100 - 150 m2', 5, 1, 100.01, 150, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '150 - 200 m2', 6, 1, 150.01, 200, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '200 - 250 m2', 7, 1, 200.01, 250, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '250 - 300 m2', 8, 1, 250.01, 300, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '300 - 350 m2', 9, 1, 300.01, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '350 - 400 m2', 10, 1, 350.01, 400, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '400 - 600 m2', 11, 1, 400.01, 600, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '600 - 800 m2', 12, 1, 600.01, 800, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '800 - 1000 m2', 13, 1, 800.01, 1000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Trên 1000 m2', 14, 1, 1000.01, 1000000, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `cate_id` int(11) NOT NULL COMMENT '999 : landing page',
  `content` text,
  `is_hot` tinyint(1) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `tab_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(3, 'Thị trường đất nền TP.HCM có dấu hiệu hạ nhiệt', 'dat-nen-tphcm-ha-nhiet', 'Thi truong dat nen TP.HCM co dau hieu ha nhiet', 'Lãnh đạo thành phố dự định sửa đổi, ban hành quy định mới về diện tích đất ở tối thiểu được tách thửa, tạo điều kiện cho các hộ gia đình đông người có nhu cầu tách thửa ra riêng, nhưng cần có cơ chế quản lý chặt chẽ để tránh trường hợp bị giới đầu nậu và cò đất lợi dụng thực hiện tách thửa, phân lô bán nền tràn lan. Thế nên hoạt động kinh doanh đất nên khu vực HCM có dấu hiệu hạ nhiệt.', '2017/05/29/dat-nen-quan-9-dat-nen-ho-chi-minh-1496018697.jpg', 7, 'Kh&ocirc;ng c&ograve;n s&ocirc;i động như c&aacute;ch đ&acirc;y v&agrave;i tuần, giới đầu tư, m&ocirc;i giới đất nền đang chuyển sang thăm d&ograve;, &aacute;n binh bất động sau một loạt chỉ thị của th&agrave;nh phố nhằm chấn chỉnh t&igrave;nh trạng sốt đất ảo thời gian qua.\r\n<h3><br />\r\nHoạt động d&egrave; chừng</h3>\r\n<br />\r\nNgay sau khi UBND TP.HCM x&aacute;c nhận th&ocirc;ng tin một số huyện v&ugrave;ng ven như B&igrave;nh Ch&aacute;nh, Nh&agrave; B&egrave;, H&oacute;c M&ocirc;n chưa đủ điều kiện để l&ecirc;n quận, đồng thời c&oacute; những chỉ đạo y&ecirc;u cầu chấn chỉnh t&igrave;nh trạng c&ograve; đất thổi gi&aacute;, g&acirc;y sốt đất nền th&igrave; thị trường ph&acirc;n kh&uacute;c n&agrave;y bắt đầu c&oacute; dấu hiệu giảm nhiệt. Giới đầu tư, c&ograve; đất chuyển sang trạng th&aacute;i thăm d&ograve; thị trường thay v&igrave; giao dịch nhộn nhịp như l&uacute;c trước.<br />\r\n<br />\r\nGhi nhận tại quận 9 những ng&agrave;y gần đ&acirc;y, giao dịch đất nền đ&atilde; trầm lắng. Dọc c&aacute;c tuyến đường như Nguyễn Duy Trinh, L&atilde; Xu&acirc;n Oai, L&ograve; Lu, Nguyễn Xiển&hellip; t&igrave;nh trạng m&ocirc;i giới tụ th&agrave;nh nh&oacute;m, tr&agrave;n ra đường để ch&agrave;o mời kh&aacute;ch mua đất kh&ocirc;ng c&ograve;n t&aacute;i diễn. C&aacute;c qu&aacute;n caf&eacute; ven đường cũng thưa vắng b&oacute;ng nh&acirc;n vi&ecirc;n m&ocirc;i giới, c&aacute;c bảng quảng c&aacute;o cũng xuất hiện &iacute;t hơn.<br />\r\n<br />\r\nKhu vực v&ograve;ng xoay Nguyễn Duy Trinh (dưới ch&acirc;n cầu vượt cao tốc Long Th&agrave;nh &ndash; Giầu D&acirc;y) c&aacute;ch đ&acirc;y v&agrave;i tuần l&uacute;c n&agrave;o cũng c&oacute; v&agrave;i nh&oacute;m nh&acirc;n vi&ecirc;n m&ocirc;i giới tụ tập th&igrave; nay cũng chỉ một hai người đứng trực.<br />\r\n<br />\r\nMột nh&acirc;n vi&ecirc;n m&ocirc;i giới khu vực n&agrave;y cho biết, khoảng 1 tuần trở lại đ&acirc;y t&igrave;nh h&igrave;nh giao dịch, kh&aacute;ch hỏi mua đất nền giảm hẳn. Chủ yếu người đến hỏi để nắm th&ocirc;ng tin, thăm d&ograve; t&igrave;nh h&igrave;nh chứ kh&ocirc;ng xuống tiền ngay như l&uacute;c trước.<br />\r\n<br />\r\nTuy nhi&ecirc;n, theo nh&acirc;n vi&ecirc;n n&agrave;y, gi&aacute; b&aacute;n chưa bị t&aacute;c động nhiều, vẫn giữ mức tương đối so với l&uacute;c trước. Cụ thể, gi&aacute; đất mặt tiền đường Bưng &Ocirc;ng Tho&agrave;n vẫn đang ở mức tr&ecirc;n 30 triệu/m2, đường L&ograve; Lu, L&atilde; Xu&acirc;n Oai vẫn giao động từ 18 &ndash; 22 triệu/m2. &nbsp;<br />\r\n<br />\r\n&ldquo;Mặc d&ugrave; c&oacute; ảnh hưởng từ những quyết định của th&agrave;nh phố, nhưng gi&aacute; b&aacute;n vẫn chưa bị t&aacute;c động nhiều. Hiện nh&agrave; đầu tư đang c&oacute; động th&aacute;i găm h&agrave;ng, chờ t&igrave;nh h&igrave;nh sắp tới sẽ c&oacute; quyết định bung h&agrave;ng hay kh&ocirc;ng&rdquo;, người n&agrave;y cho biết.<br />\r\n<br />\r\nTại c&aacute;c khu vực của huyện B&igrave;nh Ch&aacute;nh, Nh&agrave; B&egrave; t&igrave;nh h&igrave;nh mua b&aacute;n đất nền cũng lắng xuống. Đặc biệt, t&igrave;nh trạng người người l&agrave;m c&ograve; đất, nh&agrave; nh&agrave; l&agrave;m c&ograve; đất cũng kh&ocirc;ng c&ograve;n t&aacute;i diễn nhiều như c&aacute;ch đ&acirc;y v&agrave;i tuần.<br />\r\n<br />\r\nChủ một qu&aacute;n nước tr&ecirc;n đường Nữ D&acirc;n C&ocirc;ng. x&atilde; Vĩnh Lộc A, huyện B&igrave;nh Ch&aacute;nh, cho biết, c&aacute;ch đ&acirc;y &iacute;t tuần qu&aacute;n của b&agrave; &ldquo;ăn n&ecirc;n l&agrave;m ra&rdquo; v&igrave; được nhiều c&ograve; đất chọn l&agrave;m &ldquo;văn ph&ograve;ng&rdquo; nơi gặp gỡ kh&aacute;ch h&agrave;ng. Tuy nhi&ecirc;n, mấy ng&agrave;y gần đ&acirc;y th&igrave; thưa vắng hẳn.<br />\r\n<br />\r\n&ldquo;Trước đ&acirc;y, nhiều người đến hỏi đất v&igrave; c&oacute; th&ocirc;ng tin B&igrave;nh Ch&aacute;nh sẽ được l&ecirc;n quận nhưng giờ th&igrave; kh&ocirc;ng c&ograve;n nhiều nữa. Việc c&ocirc;ng an sẽ điều tra những c&ograve; đất tung th&ocirc;ng tin, thổi gi&aacute; đất cũng khiến nhiều người hạn chế hơn. Nhưng quan trọng nhất, giới c&ograve; đất đang chờ đợi, xem x&eacute;t t&acirc;m l&yacute; của người mua&rdquo;, một m&ocirc;i giới nh&agrave; đất chia sẻ.\r\n<h3><br />\r\nChưa khẳng định gi&aacute; đất sẽ giảm</h3>\r\n<br />\r\nTheo đ&aacute;nh gi&aacute; của nhiều chuy&ecirc;n gia bất động sản, những chỉ đạo của th&agrave;nh phố về c&ocirc;ng khai th&ocirc;ng tin quy hoạch, hạ tầng đang t&aacute;c động t&iacute;ch cực l&ecirc;n thị trường đất nền. Động th&aacute;i n&agrave;y đ&atilde; l&agrave;m g&atilde;y &ldquo;cần trục&rdquo; đẩy gi&aacute; của giới đầu nậu, thổi gi&aacute;, thao t&uacute;ng thị trường suốt thời gian qua. Đồng thời, c&oacute; thể sẽ tạo n&ecirc;n mặt bằng gi&aacute; mới, s&aacute;t với thực tế, tạo điều kiện cho người mua, đặc biệt l&agrave; người mua ở thực.<br />\r\n<br />\r\n&Ocirc;ng V&otilde; Hữu Khoa, Tổng gi&aacute;m đốc C&ocirc;ng ty CP Đại Ph&uacute;c Land cho biết, những chỉ đạo mới đ&acirc;y của th&agrave;nh phố l&agrave; ho&agrave;n to&agrave;n cần thiết. Gi&aacute; đất tăng trong thời gian vừa qua c&oacute; nhiều nguy&ecirc;n do, trong đ&oacute; việc một số khu vực c&oacute; hạ tầng, giao th&ocirc;ng được đầu tư ho&agrave;n thiện l&agrave;m gi&aacute; đất tăng l&agrave; ch&iacute;nh đ&aacute;ng. Tuy nhi&ecirc;n, mức tăng gi&aacute; trong những khu vực n&agrave;y cũng kh&aacute;c nhau.<br />\r\n<br />\r\nPhần lớn c&ograve;n lại gi&aacute; đất tăng ảo l&agrave; c&oacute; sự nh&uacute;ng tay của giới c&ograve; đất, những đầu nậu. &ldquo;Việc ch&iacute;nh quyền địa phương một số quận huyện dễ d&atilde;i trong việc cấp ph&eacute;p chuyển mục đ&iacute;ch sử dụng đất đ&atilde; tạo điều kiện cho những người l&agrave;m bất động sản nhỏ lẻ đều tham gia được thị trường. Nh&oacute;m đối tượng n&agrave;y sau khi c&oacute; đất th&igrave; tạo n&ecirc;n những dự &aacute;n k&eacute;m chất lượng, kh&ocirc;ng đảm bảo quy chuẩn, g&acirc;y khan hiếm đất v&agrave; tạo n&ecirc;n c&aacute;c cơn sốt&rdquo;, &ocirc;ng Khoa ph&acirc;n t&iacute;ch.<br />\r\n<br />\r\nN&oacute;i về khả năng gi&aacute; đất sẽ giảm, &ocirc;ng Khoa cho rằng điều n&agrave;y phụ thuộc v&agrave;o khả năng t&agrave;i ch&iacute;nh của giới đầu tư gom đất. Nếu những người ngắn vốn, vay ng&acirc;n h&agrave;ng chịu &aacute;p lực về l&atilde;i vay th&igrave; c&oacute; thể sắp tới họ sẽ bung h&agrave;ng, chấp nhận gi&aacute; thấp hơn. Ngược lại, những người trường vốn, t&agrave;i ch&iacute;nh mạnh họ kh&ocirc;ng muốn hạ gi&aacute; để chịu lỗ th&igrave; sẽ găm h&agrave;ng chờ thời cơ, c&oacute; thể một hoặc v&agrave;i năm nữa khi thị trường tốt hơn sẽ b&aacute;n ra.<br />\r\n<br />\r\n&ldquo;Do đ&oacute;, sắp tới gi&aacute; c&oacute; thể điều chỉnh, kh&ocirc;ng tăng &agrave;o ạt như trước nữa nhưng giảm th&igrave; c&oacute; thể l&agrave; kh&ocirc;ng giảm&rdquo;, &ocirc;ng Khoa n&oacute;i.<br />\r\n<br />\r\nĐồng quan điểm, &ocirc;ng Nguyễn Văn Đực, Gi&aacute;m đốc C&ocirc;ng ty Địa ốc Đất L&agrave;nh cho rằng, những chỉ đạo của th&agrave;nh phố tuy hơi chậm nhưng cần thiết để siết lại t&igrave;nh trạng sốt đất ảo do giới đầu cơ, co đất tạo n&ecirc;n thời gian qua.<br />\r\n<br />\r\nTuy nhi&ecirc;n, &ocirc;ng Đực cho biết, đ&acirc;y kh&ocirc;ng phải l&agrave; chuyện ng&agrave;y một ng&agrave;y hai, nếu kh&ocirc;ng c&oacute; những biện ph&aacute;p quyết liệt v&agrave; l&acirc;u d&agrave;i th&igrave; t&igrave;nh trạng sốt đất sẽ chỉ x&igrave; trong một thời gian ngắn rồi sẽ sốt lại, gi&aacute; lại được n&acirc;ng l&ecirc;n, v&agrave; hậu quả sẽ đổ hết l&ecirc;n đầu của người mua.<br />\r\n<br />\r\nCh&uacute;ng t&ocirc;i sẽ tiếp tục cập nhật t&igrave;nh h&igrave;nh.', 0, NULL, NULL, 1, 0, 46, '2017-05-29 07:43:56', '2017-05-29 07:47:13', 1, 1),
(4, 'Đất Sài Gòn hạ nhiệt thì ở Hà Nội môi giới lại đẩy giá lên cao', 'dat-sai-gon-ha-nhiet-thi-o-ha-noi-moi-gioi-lai-day-gia-len-cao', 'Dat Sai Gon ha nhiet thi o Ha Noi moi gioi lai day gia len cao', 'Đất nền nhiều khu vực vùng ven TP.HCM hiện đang tăng giá bất thường. Tuy nhiên gần đây đã có dấu hiệu hạ nhiệt sau khi có sự can thiệp của UB thành phố. Dù vậy điều này không thống nhất trong cả nước, ở Hà Nội tình trạng đất bị đội giá vẫn còn xảy ra.', '2017/05/29/dat-nen-ho-chi-minh-giam-nhiet-1496076290.jpg', 7, 'Sau cơn sốt đất diễn ra trong mấy th&aacute;ng trở lại đ&acirc;y, hiện giao dịch tr&ecirc;n thị trường đất nền ở một số quận huyện v&ugrave;ng ven đ&atilde; chững lại. Những người mới mua c&aacute;ch đ&acirc;y v&agrave;i th&aacute;ng đang kh&oacute; khăn để tho&aacute;t h&agrave;ng.\r\n<h3><br />\r\nLoại bỏ c&ograve; đất l&agrave;m ăn chộp giựt</h3>\r\n<br />\r\nTrong cơn sốt đất v&ugrave;ng ven tại TP.HCM trong thời gian gần đ&acirc;y, quận 9 được xem l&agrave; điểm n&oacute;ng &nbsp;cả về mức độ tăng gi&aacute;, cũng như tần suất chạm mặt với c&ograve; đất. Dọc theo trục đường Nguyễn Duy Trinh, Đỗ Xu&acirc;n Hợp, Li&ecirc;n Phường, Bưng &Ocirc;ng Tho&agrave;n, L&atilde; Xu&acirc;n Oai, Đ&ocirc;ng Tăng Long&hellip; đ&acirc;u đ&acirc;u cũng thấy m&ocirc;i giới nh&agrave; đất.<br />\r\n<br />\r\nGiờ đ&acirc;y, số lượng người tham gia v&agrave;o cơn sốt gi&aacute; n&agrave;y bao gồm cả c&ograve; đất v&agrave; kh&aacute;ch h&agrave;ng đều giảm nhiệt. Nếu trước đ&acirc;y, cứ v&agrave;i chục m&eacute;t lại c&oacute; một nh&oacute;m người đứng ch&agrave;o h&agrave;ng, giới thiệu khu đất n&agrave;y, miếng đất kia th&igrave; nay c&ograve; đất thưa thớt hẳn.\r\n<div style="text-align:center"><img alt="dat nen quan 9 giam nhiet" src="/uploads/images/dat%20nen%20quan%209%20chung%20lai.jpg" style="height:349px; width:465px" /></div>\r\n<br />\r\nĐơn cử, như gi&aacute; đất tại dự &aacute;n gồm khoảng hơn 40 nền, nằm ngay tr&ecirc;n trục đường Li&ecirc;n Phường, đoạn c&aacute;ch đường V&agrave;nh Đai 2 chỉ 500m, xung quanh gần rất nhiều dự &aacute;n nh&agrave; phố, biệt thự &nbsp;như Villa Park, Lucasta, Mega Ruby, Mega Residence&hellip; c&aacute;ch đ&acirc;y chừng 2 th&aacute;ng được c&ograve; đất h&eacute;t với gi&aacute; 57 triệu đồng/m2. Nhưng cũng tại vị tr&iacute; n&agrave;y trong s&aacute;ng ng&agrave;y 24-5 đ&atilde; giảm nhẹ xuống c&ograve;n 56 triệu đồng/m2 đối với c&aacute;c l&ocirc; mặt tiền.<br />\r\n<br />\r\nTương tự những l&ocirc; đất trong khu vực đường Bưng &Ocirc;ng Tho&agrave;n, c&ugrave;ng thời điểm th&aacute;ng trước được nh&acirc;n vi&ecirc;n m&ocirc;i giới ch&agrave;o b&aacute;n với gi&aacute; khoảng 30 triệu đồng/m2 chưa ra sổ, th&igrave; nay hạ xuống khoảng 28,5-29 triệu đồng/m2.<br />\r\n<br />\r\nAnh Tấn, một nh&acirc;n vi&ecirc;n m&ocirc;i giới cho biết: C&aacute;c giao dịch đ&atilde; chững lại rất nhiều. Những người mua c&aacute;ch đ&acirc;y chừng 8-9 th&aacute;ng th&igrave; vẫn c&oacute; lời, song những ai đầu tư theo kiểu lướt s&oacute;ng, mua c&aacute;ch đ&acirc;y khoảng 2 th&aacute;ng m&agrave; giờ muốn b&aacute;n cũng kh&ocirc;ng dễ. Bởi t&acirc;m l&yacute; kh&aacute;ch h&agrave;ng giờ đ&acirc;y lại chờ đợi gi&aacute; sẽ giảm nữa.<br />\r\n<br />\r\n&Ocirc;ng Trần B&igrave;nh, nh&agrave; ở quận quận 2, một nh&agrave; đầu tư bất động sản cho rằng: Đầu tư bất động sản kh&ocirc;ng giống như v&agrave;ng, hay đ&ocirc;la, cứ muốn b&aacute;n l&agrave; c&oacute; người mua ngay. Nếu đầu tư theo kiểu t&acirc;m l&yacute; đ&aacute;m đ&ocirc;ng th&igrave; rất dễ &ldquo;chết&rdquo; nhưng nếu lựa chọn l&ocirc; đất tại những nơi c&oacute; kết nối hạ tầng ph&aacute;t triển, c&oacute; nhiều dự &aacute;n lớn xung quanh&hellip; th&igrave; vẫn c&oacute; cơ hội để gia tăng gi&aacute; trị.\r\n<h3><br />\r\nM&ocirc;i giới H&agrave; Nội giở tr&ograve; h&eacute;t gi&aacute;</h3>\r\n<br />\r\nNếu như cơn sốt ở TP HCM đ&atilde; bắt đầu hạ nhiệt th&igrave; tại H&agrave; Nội m&ocirc;i giới vẫn đang miệt m&agrave;i đẩy gi&aacute; đất. Đơn cử như tại dự &aacute;n Thanh H&agrave; Cienco 5, nhiều người c&oacute; nhu cầu b&aacute;n đất nền liền kề tại đ&acirc;y đang rao b&aacute;n 18 - 24 triệu đồng/m2 t&ugrave;y l&ocirc;. Tại một số vị tr&iacute; đẹp, gi&aacute; đất được đẩy l&ecirc;n đến 31 triệu đồng/m2. Nhưng theo lời anh Ng&ocirc; Văn Long, chủ một tin rao vặt đất tại Thanh H&agrave; Cienco 5, kh&aacute;ch hầu như đều trả gi&aacute; thấp hơn mức rao b&aacute;n nhiều. V&igrave; vậy, rao tin cả v&agrave;i th&aacute;ng nhưng anh vẫn chưa b&aacute;n được mảnh đất diện t&iacute;ch hơn 80m2 của m&igrave;nh.<br />\r\n<br />\r\nTheo t&igrave;m hiểu, gi&aacute; đất dự &aacute;n Thanh H&agrave; Cienco 5 đang bị đẩy l&ecirc;n kh&aacute; mạnh. C&oacute; khu vực rao gi&aacute; gấp 1,5 - 2 lần so với gi&aacute; tr&ecirc;n hợp đồng mua b&aacute;n ban đầu. Thậm ch&iacute; một số người l&agrave;m m&ocirc;i giới tại văn ph&ograve;ng nh&agrave; đất quanh khu vực n&agrave;y b&aacute;o gi&aacute; 50 - 55 triệu đồng/m2 (gi&aacute; hợp đồng 24 triệu đồng/m2 cho l&ocirc; đẹp cạnh đường). C&ograve;n khu vực gần hồ, đất đang được đẩy l&ecirc;n mức gi&aacute; khoảng 25 - 28 triệu đồng/m2 so với gi&aacute; hợp đồng 16 triệu đồng/m2.<br />\r\n<br />\r\nM&ocirc;i giới t&ecirc;n Xu&acirc;n cho biết, nếu nh&agrave; đầu tư kh&ocirc;ng quyết nhanh, gi&aacute; đất c&ograve;n tăng l&ecirc;n từng ng&agrave;y. Nhằm thuyết phục kh&aacute;ch &quot;xuống tiền&quot;, c&ograve; đất n&agrave;y đưa ra một số chi&ecirc;u thức hết sức hiệu quả l&agrave; mua b&aacute;n sang tay nhanh hưởng ch&ecirc;nh lệch. Xu&acirc;n ph&acirc;n t&iacute;ch: &quot;Đ&aacute;ng ra phải v&agrave;o ngay 50% tổng gi&aacute; trị hợp đồng nhưng c&oacute; thể xin l&ugrave;i đ&oacute;ng 2/3 với l&yacute; do phải xoay tiền. Trong thời gian chờ đ&oacute;ng tiếp số c&ograve;n lại sẽ t&igrave;m c&aacute;ch đẩy đi với gi&aacute; cao hơn, cũng ăn ch&ecirc;nh được một khoản.<br />\r\n<br />\r\nTuy nhi&ecirc;n tr&ecirc;n thực tế mọi chuyện kh&ocirc;ng &quot;dễ ăn&quot; như vậy. Một người mua đất đang bị &quot;sa lầy&quot; v&igrave; chi&ecirc;u thức n&agrave;y cho hay, việc đẩy h&agrave;ng đi rất kh&oacute; khăn bởi nh&agrave; đầu tư n&agrave;o c&oacute; ch&uacute;t kinh nghiệm th&igrave; đều biết l&agrave; đất ở đ&acirc;y đang bị thổi gi&aacute;, giao dịch thật kh&ocirc;ng c&oacute; nhiều.<br />\r\n<br />\r\nKh&ocirc;ng &iacute;t nh&agrave; đầu tư đến thăm mua đất tại dự &aacute;n n&agrave;y cũng thuộc đội qu&acirc;n &quot;thổi gi&aacute;&quot;. Khi biết ch&uacute;ng t&ocirc;i c&oacute; nhu cầu &quot;lướt s&oacute;ng&quot; đất tại Thanh H&agrave; Cienco 5, một nh&agrave; đầu tư giới thiệu t&ecirc;n Tuấn Anh cho biết, nếu ngại mua đơn lẻ, c&oacute; thể gom tiền chung với một số người kh&aacute;c, sau đ&oacute; c&ugrave;ng nhau thổi gi&aacute;. Đến mức hợp l&yacute; l&agrave; c&ugrave;ng bảo nhau chốt, đẩy đi, thu tiền về.<br />\r\n<br />\r\nĐiều đ&aacute;ng n&oacute;i l&agrave; mặc d&ugrave; gi&aacute; bị thổi tăng v&ugrave;n vụt, nhưng hạ tầng dự &aacute;n n&agrave;y hầu như chưa c&oacute; g&igrave;. Đến nay, dự &aacute;n vẫn mới chỉ c&oacute; 3 t&ograve;a nh&agrave; ho&agrave;n thiện, hạ tầng c&acirc;y xanh chưa c&oacute;. Phần hồ theo như thiết kế cũng chưa c&oacute; nhưng gi&aacute; b&aacute;n đ&atilde; bị đội l&ecirc;n gấp 1,5 - 2 lần so với gi&aacute; v&agrave;o hợp đồng. Trước đ&oacute;, dự &aacute;n n&agrave;y c&oacute; kh&aacute; nhiều tai tiếng. Đơn cử, v&agrave;o th&aacute;ng 6/2016, cơ quan an ninh điều tra thuộc Bộ C&ocirc;ng an đ&atilde; y&ecirc;u cầu dừng hoạt động huy động vốn li&ecirc;n quan kinh doanh bất động sản thuộc dự &aacute;n n&agrave;y. Được biết, nhiều năm liền, dự &aacute;n cũng li&ecirc;n quan đến tranh chấp, kiện c&aacute;o, kh&ocirc;ng đưa v&agrave;o hoạt động. B&ecirc;n cạnh Thanh H&agrave; Cieco 5, đất ở một số khu vực kh&aacute;c tại H&agrave; Nội cũng bị &quot;thổi gi&aacute;&quot; mạnh như ở P. Dương Nội (Q.H&agrave; Đ&ocirc;ng) điểm gần dự &aacute;n Trung t&acirc;m thương mại Aeon Mall sắp đầu tư, P. Mỗ Lao (Q.H&agrave; Đ&ocirc;ng), khu đ&ocirc; thị Văn Ph&uacute; (Q.H&agrave; Đ&ocirc;ng)...\r\n<div style="text-align:right"><br />\r\n<em>Theo NLĐ</em></div>\r\n', 1, NULL, NULL, 1, 0, 47, '2017-05-29 23:45:57', '2017-05-29 23:47:02', 1, 1),
(5, 'Bất động sản Bình Dương sắp hồi sinh trở thành nơi đáng đầu tư', 'bat-dong-san-binh-duong-sap-hoi-sinh-tro-thanh-noi-dang-dau-tu', 'Bat dong san Binh Duong sap hoi sinh tro thanh noi dang dau tu', 'Nhằm thực hiện mục tiêu xây dựng Bình Dương trở thành một đô thị công nghiệp xanh - sạch - đẹp; là một trung tâm chính trị, kinh tế, văn hóa - xã hội và đầu mối giao thông vùng kinh tế trọng điểm phía Nam và vùng TP.HCM. Các động thái của chính quyền tỉnh Bình Dương  đã giúp cho bất động sản hồi sinh trong giai đoạn sắp tới.', '2017/05/30/thi-truong-bat-dong-san-binh-duong-1496101370.jpg', 7, 'Gần 3 năm trở lại đ&acirc;y, trong khi c&aacute;c thị trường bất động sản ph&iacute;a Nam như TP.HCM, Đồng Nai, Long An đ&atilde; s&ocirc;i động trở lại, th&igrave; &ldquo;người h&agrave;ng x&oacute;m&rdquo; B&igrave;nh Dương vẫn chưa chịu nh&uacute;c nh&iacute;ch.&nbsp;<br />\r\n<br />\r\nHầu hết c&aacute;c dự &aacute;n tại Khu đ&ocirc; thị th&agrave;nh phố mới B&igrave;nh Dương được ph&aacute;t triển trong thời kỳ thị trường bất động sản s&ocirc;i động nhất (2007-2009) v&agrave; hiện chỉ xuất hiện những giao dịch nhỏ theo dạng mua đi b&aacute;n lại. Những giao dịch ch&iacute;nh của thị trường lại nằm ở c&aacute;c dự &aacute;n ph&acirc;n l&ocirc; b&aacute;n nền nhỏ lẻ do c&aacute;c chủ đầu tư thứ cấp thực hiện, tại c&aacute;c khu vực khu c&ocirc;ng nghiệp như Dĩ An, Thuận An&hellip;, với gi&aacute; b&aacute;n khoảng 300 triệu đồng/nền 60 m2.\r\n<div style="text-align:center"><img alt="thi truong bat dong san binh duong" src="/uploads/images/bat%20dong%20san%20binh%20duong%281%29.jpg" style="height:416px; width:650px" /></div>\r\n<br />\r\nTrong bối cảnh thị trường bất động sản của những &ldquo;người h&agrave;ng x&oacute;m&rdquo; như Long An, Đồng Nai, TP.HCM ph&aacute;t triển rầm rộ, Hiệp hội Bất động sản tỉnh B&igrave;nh Dương đ&atilde; họp b&agrave;n nhằm đưa ra phương hướng th&uacute;c đẩy thị trường tỉnh nh&agrave;. &ldquo;Đ&acirc;y được cho l&agrave; một động th&aacute;i t&iacute;ch cực cho thị trường bất động sản tỉnh B&igrave;nh Dương, bởi trước đ&oacute; việc ph&aacute;t triển v&agrave; quản l&yacute; thị trường thuộc tr&aacute;ch nhiệm của Sở X&acirc;y dựng, thậm ch&iacute; được thả nổi, khiến thị trường thiếu đi đầu t&agrave;u định hướng ph&aacute;t triển&rdquo;, đại diện một th&agrave;nh vi&ecirc;n Hiệp hội Bất động sản B&igrave;nh Dương cho biết.<br />\r\n<br />\r\nKinh tế ph&aacute;t triển tốt c&ugrave;ng với chiến lược quy hoạch giao th&ocirc;ng v&agrave; mở rộng kh&ocirc;ng gian đ&ocirc; thị hợp l&yacute; đ&atilde; đưa B&igrave;nh Dương trở th&agrave;nh điểm đến đầy triển vọng cho giới kinh doanh bất động sản.&nbsp;<br />\r\n<br />\r\nĐ&ograve;n bẩy từ quy hoạch ho&agrave;n chỉnh<br />\r\n<br />\r\nĐể thực hiện mục ti&ecirc;u x&acirc;y dựng Bình Dương trở thành m&ocirc;̣t đ&ocirc; thị c&ocirc;ng nghi&ecirc;̣p xanh - sạch - đẹp; là m&ocirc;̣t trung t&acirc;m chính trị, kinh t&ecirc;́, văn hóa - xã h&ocirc;̣i và đ&acirc;̀u m&ocirc;́i giao th&ocirc;ng vùng kinh t&ecirc;́ trọng đi&ecirc;̉m phía Nam và vùng TP.HCM; một thành ph&ocirc;́ trực thu&ocirc;̣c Trung ương trước năm 2020, từ năm 2013 ch&iacute;nh quyền tỉnh B&igrave;nh Dương đ&atilde; từng bước quy hoạch, x&acirc;y dựng c&aacute;c đ&ocirc; thị theo hướng văn minh, hiện đại gồm th&agrave;nh phố mới B&igrave;nh Dương - th&agrave;nh phố Thủ Dầu Một, thị x&atilde; Dĩ An, thị x&atilde; Thuận An, thị x&atilde; T&acirc;n Uy&ecirc;n v&agrave; thị x&atilde; Bến C&aacute;t. Gắn với quy hoạch n&agrave;y l&agrave; những ti&ecirc;u ch&iacute; cụ thể về ph&aacute;t triển cơ sở hạ tầng, tiện &iacute;ch x&atilde; hội, ph&aacute;t triển kinh tế&hellip;<br />\r\n<br />\r\nNhờ quy hoạch cụ thể, chỉ trong một thời gian ngắn, diện mạo c&aacute;c đ&ocirc; thị mới tại B&igrave;nh Dương đ&atilde; thay đổi r&otilde; n&eacute;t, hệ thống hạ tầng giao th&ocirc;ng đồng bộ, khang trang. Ngo&agrave;i việc ph&aacute;t triển hệ thống giao th&ocirc;ng đường bộ như quốc lộ 13, đại lộ Mỹ Phước - T&acirc;n Vạn - Nhơn Trạch, v&agrave;nh đai 3, v&agrave;nh đai 4,... gần đ&acirc;y B&igrave;nh Dương c&ograve;n x&uacute;c tiến kế hoạch x&acirc;y dựng tuyến metro nối với TP.HCM.<br />\r\n<br />\r\nHệ thống giao th&ocirc;ng n&agrave;y gi&uacute;p B&igrave;nh Dương kết nối thuận lợi c&aacute;c c&aacute;c tỉnh, th&agrave;nh trong v&ugrave;ng kinh tế trọng điểm ph&iacute;a Nam, gi&uacute;p lưu th&ocirc;ng h&agrave;ng h&oacute;a diễn ra nhanh hơn.<br />\r\n<br />\r\nTrong tương lai, B&igrave;nh Dương c&ograve;n ưu ti&ecirc;n ph&aacute;t triển hệ thống đường sắt, mở rộng cảng s&ocirc;ng, cảng cạn (ICD), nhằm đ&aacute;p ứng nhu cầu ph&aacute;t triển to&agrave;n diện kinh tế - x&atilde; hội.<br />\r\n<br />\r\nC&ugrave;ng với sự ph&aacute;t triển của hạ tầng giao th&ocirc;ng, c&aacute;c tiện &iacute;ch dịch vụ như trung t&acirc;m thương mại, kh&aacute;ch sạn 5 sao, trung t&acirc;m hội nghị - triển l&atilde;m, khu vui chơi giải tr&iacute;, bệnh viện, trường học quốc tế&hellip;cũng đ&atilde; ph&aacute;t triển ho&agrave;n chỉnh.\r\n<div style="text-align:center"><img alt="co so ha tang thi truong bat dong san binh duong" src="/uploads/images/thi%20truong%20bat%20dong%20san%20binh%20duong%281%29.jpg" style="height:365px; width:650px" /></div>\r\n<br />\r\nC&oacute; thể kể đến như Trung t&acirc;m hội nghị v&agrave; triển l&atilde;m, t&ograve;a th&aacute;p 21 tầng trung t&acirc;m h&agrave;nh ch&iacute;nh tập trung, trường Đại học Quốc tế Miền Đ&ocirc;ng, Đại học Quốc tế Việt Đức, trường mầm non quốc tế Kinder World, si&ecirc;u thị Nhật Bản Hikary, khu c&ocirc;ng nghệ cao Maple Tree, nh&agrave; thi đấu đa năng, s&acirc;n golf Twin Doves&hellip;<br />\r\n<br />\r\nĐặc biệt xung quanh khu vực th&agrave;nh phố mới B&igrave;nh Dương, hiện nay đ&atilde; h&igrave;nh th&agrave;nh đầy đủ hệ thống tiện &iacute;ch dịch vụ từ gi&aacute;o dục, y tế, văn h&oacute;a, thương mại cho đến vui chơi giải tr&iacute; đ&aacute;p ứng nhu cầu của người d&acirc;n địa phương v&agrave; cả lực lượng chuy&ecirc;n gia, doanh nh&acirc;n trong v&agrave; ngo&agrave;i nước đến l&agrave;m việc, sinh sống.<br />\r\n<br />\r\nC&ugrave;ng với đ&oacute;, c&aacute;c khu vực đ&ocirc; thị của th&agrave;nh phố Thủ Dầu Một v&agrave; thị x&atilde; Dĩ An, Thuận An, T&acirc;n Uy&ecirc;n, Bến C&aacute;t cũng xuất hiện nhiều dự &aacute;n quy m&ocirc; lớn như tổ hợp Gouco Land, trung t&acirc;m mua sắm AEON Mall, si&ecirc;u thị Lotte Mart, Metro, khu đ&ocirc; thị Tokyu&hellip;<br />\r\n<br />\r\nTất cả g&oacute;p phần l&agrave;m n&ecirc;n đẹp mỹ quan đ&ocirc; thị B&igrave;nh Dương v&agrave; gi&uacute;p cho gi&aacute; trị bất động sản tăng cao.&nbsp;<br />\r\n<br />\r\nTrong những năm qua, nền kinh tế của B&igrave;nh Dương lu&ocirc;n tăng trưởng ổn định ở mức cao nhất cả nước. Năm 2016 tổng sản phẩm trong tỉnh (GRDP) tăng 8,5% so với năm 2015; GRDP b&igrave;nh qu&acirc;n đầu người đạt 108,6 triệu đồng; cơ cấu kinh tế c&ocirc;ng nghiệp - dịch vụ - n&ocirc;ng nghiệp đạt tỷ trọng tương ứng l&agrave; 63% - 23,5% - 4,3%.<br />\r\n<br />\r\nNăm 2016, B&igrave;nh Dương đ&atilde; thu h&uacute;t được 2,4 tỉ USD vốn đầu tư nước ngo&agrave;i. Đến nay, B&igrave;nh Dương l&agrave; một trong năm địa phương thu h&uacute;t đầu tư vượt mốc 20 tỉ USD. T&iacute;nh đến năm 2016 to&agrave;n tỉnh c&oacute; 28 khu c&ocirc;ng nghiệp v&agrave; 10 cụm c&ocirc;ng nghiệp; trong đ&oacute; c&oacute; những khu c&ocirc;ng nghiệp ti&ecirc;u biểu về x&acirc;y dựng kết cấu hạ tầng, tốc độ thu h&uacute;t đầu tư, quản l&yacute; sản xuất v&agrave; bảo vệ m&ocirc;i trường như VSIP 1, 2, Mỹ Phước, Đồng An&hellip;&nbsp;\r\n<h3><br />\r\nBất động sản gi&agrave;u tiềm năng</h3>\r\n<br />\r\nTheo giới đầu tư bất động sản, quyết t&acirc;m đưa B&igrave;nh Dương trở th&agrave;nh đ&ocirc; thị trực thuộc Trung ương v&agrave;o năm 2020 sẽ l&agrave; điểm tựa cho thị trường bất động sản ph&aacute;t triển mạnh mẽ trong thời gian tới.<br />\r\n<br />\r\nĐ&acirc;y cũng ch&iacute;nh l&agrave; thời điểm l&yacute; tưởng để c&aacute;c nh&agrave; đầu tư &ldquo;r&oacute;t&rdquo; tiền v&agrave;o lĩnh vực bất động sản tại B&igrave;nh Dương. Bởi chỉ trong v&agrave;i năm nữa, c&ugrave;ng với qu&aacute; tr&igrave;nh đ&ocirc; thị h&oacute;a, c&aacute;c sản phẩm bất động sản nơi đ&acirc;y sẽ trở th&agrave;nh &ldquo;g&agrave; đẻ trứng v&agrave;ng&rdquo; với tiềm năng rất lớn.<br />\r\n<br />\r\nĐ&aacute;nh gi&aacute; về sức hấp dẫn của thị trường n&agrave;y, b&agrave; Đặng Thị Kim Oanh, Tổng gi&aacute;m đốc C&ocirc;ng ty Cổ phần Địa ốc Kim Oanh, cho rằng đất nền v&agrave; nh&agrave; x&acirc;y sẵn đang l&agrave; những sản phẩm chủ lực của thị trường B&igrave;nh Dương bởi mức gi&aacute; chỉ từ 600-800 triệu đồng/nh&agrave; x&acirc;y sẵn, ph&ugrave; hợp với khả năng t&agrave;i ch&iacute;nh của đ&ocirc;ng đảo người d&acirc;n v&agrave; c&oacute; bi&ecirc;n độ lợi nhuận tốt.<br />\r\n<br />\r\nKhảo s&aacute;t cho thấy, d&ugrave; kh&ocirc;ng sốt n&oacute;ng như TP.HCM nhưng t&iacute;nh từ năm 2017 đến nay bất động sản B&igrave;nh Dương vẫn đạt bi&ecirc;n độ tăng gi&aacute; 15-25%. Một số dự &aacute;n tốt hơn tọa lạc ở gi&aacute;p ranh TP.HCM hay c&aacute;c đ&ocirc; thị đang mở rộng như thị x&atilde; Bến C&aacute;t mức tăng l&ecirc;n đến 30-50%.<br />\r\n<br />\r\nChẳng hạn như dự &aacute;n The Mall City (Dĩ An) tăng hơn 50%; The Mall City 2 (T&acirc;n Uy&ecirc;n) tăng 30%; Golden Center City v&agrave; Golden Center City 2 tăng từ &nbsp;15- 20%...<br />\r\n<br />\r\nTuy nhi&ecirc;n, thị trường bất động sản B&igrave;nh Dương vẫn được nhận định c&ograve;n tiềm năng ph&aacute;t triển xa hơn khi mỗi năm thu h&uacute;t h&agrave;ng chục ng&agrave;n người lao động trong v&agrave; ngo&agrave;i nước đến l&agrave;m việc, sinh sống.<br />\r\n<br />\r\nTheo thống k&ecirc;, mỗi năm B&igrave;nh Dương cần th&ecirc;m khoảng 30.000 - 40.000 lao động l&agrave; c&aacute;c chuy&ecirc;n gia, kỹ sư v&agrave; c&ocirc;ng nh&acirc;n kỹ thuật cao. Đ&acirc;y ch&iacute;nh l&agrave; động lực để thị trường bất động sản ph&aacute;t triển, kh&ocirc;ng chỉ ở ph&acirc;n kh&uacute;c gi&aacute; vừa t&uacute;i tiền đ&aacute;p ứng nhu cầu của số đ&ocirc;ng người d&acirc;n m&agrave; cả ph&acirc;n kh&uacute;c cao cấp như biệt thự, khu phức hợp...&nbsp;<br />\r\n<br />\r\nMặc d&ugrave; c&oacute; nhiều triển vọng v&agrave; tiềm năng lớn, nhưng kh&ocirc;ng v&igrave; thế m&agrave; người mua dễ d&atilde;i lướt s&oacute;ng như trước đ&acirc;y m&agrave; bắt đầu c&oacute; sự s&agrave;ng lọc kỹ lưỡng trước khi ra quyết định đầu tư.<br />\r\n<br />\r\nTheo b&agrave; Oanh, chỉ những dự &aacute;n quy m&ocirc; lớn được đầu tư b&agrave;i bản, hạ tầng đồng bộ, tiện &iacute;ch kh&eacute;p k&iacute;n v&agrave; được ph&aacute;t triển bởi c&aacute;c chủ đầu tư hay đơn vị m&ocirc;i giới uy t&iacute;n mới được nhiều kh&aacute;ch h&agrave;ng quan t&acirc;m.<br />\r\n<br />\r\n&ldquo;Người mua bất động sản tại B&igrave;nh Dương quan t&acirc;m nhiều đến những dự &aacute;n ở trung t&acirc;m c&aacute;c đ&ocirc; thị, gần c&aacute;c trục giao th&ocirc;ng huyết mạch hay khu c&ocirc;ng nghiệp để dễ khai th&aacute;c kinh doanh, x&acirc;y nh&agrave; cho thu&ecirc; v&agrave; cũng nhiều tiềm năng tăng gi&aacute; hơn. Mặt kh&aacute;c, họ khảo s&aacute;t rất kỹ về quy hoạch xung quanh dự &aacute;n, t&igrave;nh trạng ph&aacute;p l&yacute; v&agrave; đến tận nơi để đảm bảo rằng dự &aacute;n được thi c&ocirc;ng đ&uacute;ng tiến độ&rdquo;, b&agrave; Oanh cho hay.\r\n<div style="text-align:right"><br />\r\n<em>Theo Tuổi Trẻ Online</em></div>\r\n', 0, NULL, NULL, 1, 0, 49, '2017-05-30 06:44:35', '2017-05-30 06:54:01', 1, 1),
(6, 'Những lĩnh vực bất động sản đang được chú ý thu hút vốn đầu tư', 'nhung-linh-vuc-bat-dong-san-dang-duoc-chu-y-thu-hut-von-dau-tu', 'Nhung linh vuc bat dong san dang duoc chu y thu hut von dau tu', 'Với tầm nhìn chiến lược các chuyên gia phân tích thị trường đã thấy tiềm năng ở các miếng bánh như văn phòng cho thuê, kho vận và bất động sản dành cho start-up - giáo dục tại TP HCM. Vì thế họ đã cân nhắc nhà đầu tư nên đẩy vốn đầu tư vào các mảng này.', '2017/05/31/van-phong-cho-thue-thu-hut-von-dau-tu-1496163693.jpg', 7, 'Trong b&aacute;o c&aacute;o &quot;Lời khuy&ecirc;n đầu tư bất động sản ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh Dương&quot; vừa được Savills Việt Nam c&ocirc;ng bố &nbsp;đ&atilde;&nbsp;nhấn mạnh đến sự chậm lại của thị trường bất động sản ch&acirc;u &Aacute; v&agrave; c&aacute;c th&agrave;nh phố hạng nhất đang dần kh&ocirc;ng c&ograve;n đem đến cơ hội sinh lời l&yacute; tưởng.<br />\r\n<br />\r\nSavills Việt Nam đ&aacute;nh gi&aacute;, c&aacute;c nh&agrave; đầu tư đang c&oacute; nhu cầu t&igrave;m kiếm cơ hội kh&aacute;c tại c&aacute;c thị trường mới mẻ hơn. Nghi&ecirc;n cứu chỉ ra, c&aacute;c d&ograve;ng vốn đầu tư đang t&igrave;m vị tr&iacute; của c&aacute;c thị trường mới nổi như Việt Nam (dẫn đầu l&agrave; TP HCM), Malaysia, Philippines v&agrave; Indonesia dựa tr&ecirc;n sự c&acirc;n đối 2 ti&ecirc;u ch&iacute;: rủi ro thấp v&agrave; tỷ suất lợi nhuận cao.<br />\r\n<br />\r\nLời khuy&ecirc;n d&agrave;nh cho c&aacute;c nh&agrave; đầu tư t&igrave;m kiếm cơ hội tại thị trường bất động sản TP HCM trong năm 2017 l&agrave; c&oacute; thể c&acirc;n nhắc 3 h&igrave;nh thức đầu tư, đại diện cho 3 nh&oacute;m sản phẩm c&aacute; biệt.\r\n<h3><br />\r\nVăn ph&ograve;ng cho thu&ecirc;</h3>\r\n<br />\r\nĐ&acirc;y l&agrave; h&igrave;nh thức đầu tư t&agrave;i sản mang lại gi&aacute; trị cốt l&otilde;i. Thị trường văn ph&ograve;ng TP HCM đang l&agrave; một trong những thị trường văn ph&ograve;ng n&oacute;ng nhất trong khu vực với c&ocirc;ng suất cho thu&ecirc; l&yacute; tưởng, qu&yacute; IV/2016 đạt mức 97%. Nguồn cầu của thị trường vẫn đang duy tr&igrave; ở mức kh&aacute; lớn. Kh&aacute;ch thu&ecirc; ng&agrave;y c&agrave;ng nhiều c&oacute; những y&ecirc;u cầu cao hơn về chất lượng. C&aacute;c lĩnh vực h&uacute;t kh&aacute;ch thu&ecirc; nhiều gồm: t&agrave;i ch&iacute;nh, bảo hiểm v&agrave; ng&agrave;nh bất động sản.\r\n<div style="text-align:center"><img alt="van phong cho thue thu hut von dau tu" src="/uploads/images/van%20phong%20cho%20thue%20thu%20hut%20von%20dau%20tu.jpg" style="height:400px; width:650px" /></div>\r\n\r\n<h3>Bất động sản kho vận</h3>\r\n<br />\r\nC&aacute;c t&agrave;i sản kho b&atilde;i, trạm trung chuyển h&agrave;ng h&oacute;a được đ&aacute;nh gi&aacute; l&agrave; h&igrave;nh thức đầu tư t&agrave;i sản t&igrave;m kiếm cơ hội tiềm năng. Khối ngoại đang quan t&acirc;m đến nh&oacute;m bất động sản n&agrave;y do sức h&uacute;t của ng&agrave;nh kho vận, b&aacute;n lẻ tại TP HCM đang hoạt động kh&aacute; s&ocirc;i động. Một trong những yếu tố then chốt của k&ecirc;nh đầu tư n&agrave;y được nh&agrave; đầu tư ngoại ch&uacute; trọng l&agrave; đặt kho h&agrave;ng ở vị tr&iacute; hợp l&yacute; v&agrave; dịch vụ kho vận hiệu quả để c&oacute; được chuỗi cung ứng hiệu quả v&agrave; dịch vụ giao h&agrave;ng tận nơi chất lượng.\r\n<h3>Bất động sản d&agrave;nh cho start-up v&agrave; gi&aacute;o dục</h3>\r\n<br />\r\nĐầu tư v&agrave;o nh&oacute;m t&agrave;i sản dịch vụ hỗ trợ gi&aacute;o dục v&agrave; khởi nghiệp được xem l&agrave; h&igrave;nh thức đầu tư t&agrave;i sản mang lại gi&aacute; trị gia tăng. Song h&agrave;nh với sự ph&aacute;t triển của tầng lớp trung lưu, nhu cầu về gi&aacute;o dục chất lượng cao trong nước đang ph&aacute;t triển mạnh v&agrave; bất động sản phục vụ ng&agrave;nh n&agrave;y cũng hứa hẹn nhiều cơ hội. Hiện nhu cầu n&agrave;y đ&atilde; phần n&agrave;o đ&aacute;p ứng nhưng đ&acirc;y vẫn l&agrave; một lĩnh vực s&ocirc;i động v&agrave; sẽ c&ograve;n thay đổi theo định hướng của Việt Nam. B&ecirc;n cạnh đ&oacute;, bất động sản phục vụ c&aacute;c doanh nghiệp startup - đặc biệt l&agrave; phong tr&agrave;o khởi nghiệp đang b&ugrave;ng nổ tại TP HCM được kỳ vọng sẽ l&agrave; điểm dừng ch&acirc;n l&yacute; tưởng cho c&aacute;c d&ograve;ng vốn ngoại.', 0, NULL, NULL, 1, 0, 52, '2017-05-31 00:06:52', '2017-05-31 00:06:52', 1, 1),
(7, 'Đầu tư vào căn hộ office-tel: tiến thoái lưỡng nan', 'dau-tu-vao-can-ho-office-tel-tien-thoai-luong-nan', 'Dau tu vao can ho office-tel: tien thoai luong nan', 'Dạng căn hộ office-tel có rất nhiều tiềm năng phát triển. Tuy nhiên ẩn số về mặt pháp lý đang khiến khách hàng nghi ngại với loại hình này. ', '2017/05/31/dau-tu-vao-can-ho-office-tel-tien-thoai-luong-nan-1496189330.jpg', 7, 'Lo lắng trước khoảng trống ph&aacute;p l&yacute; của loại h&igrave;nh office-tel, nhiều kh&aacute;ch h&agrave;ng chọn c&aacute;ch b&aacute;n ra c&aacute;c suất căn hộ dạng n&agrave;y thay v&igrave; ki&ecirc;n tr&igrave; cho thu&ecirc; như ban đầu. Tuy nhi&ecirc;n cũng c&oacute; một số người đầu tư nhỏ vẫn chấp nhận chịu mạo hiểm v&igrave; b&aacute;n ra sẽ lỗ. Đ&uacute;ng l&agrave; tiến tho&aacute;i lưỡng nan.<br />\r\n<br />\r\n<strong>Đi t&igrave;m lời giải cho b&agrave;i to&aacute;n kh&oacute;: &nbsp;giải quyết đầu ra cho căn hộ office-tel</strong><br />\r\n<br />\r\nC&aacute;ch đ&acirc;y 1 năm tức khoảng giữa năm 2006, l&agrave; thời điểm m&agrave; cơn s&oacute;ng office-tel b&ugrave;ng ph&aacute;t mạnh mẽ. Hầu như tất cả c&aacute;c dự &aacute;n căn hộ cao-trung cấp triển khai gần khu vực trung t&acirc;m TP.HCM đều c&oacute; k&egrave;m loại h&igrave;nh căn hộ dạng n&agrave;y. Với lợi thế gi&aacute; th&agrave;nh thấp, khả năng cho thu&ecirc; cao, office -tel trở th&agrave;nh miếng b&aacute;nh b&eacute;o bở đối với cả người b&aacute;n v&agrave; người mua.\r\n<div style="text-align:center"><img alt="dau tu vao can ho office-tel tien thoai luong nan" src="/uploads/images/dau%20tu%20vao%20can%20ho%20office-tel%20tien%20thoai%20luong%20nan.jpg" style="height:400px; width:650px" /></div>\r\n<br />\r\nTuy nhi&ecirc;n, trước quy định cấm sử dụng chung cư l&agrave;m văn ph&ograve;ng, office-tel nhanh ch&oacute;ng bị đặt v&agrave;o thế kh&oacute; khi chưa c&oacute; chế t&agrave;i ph&aacute;p l&yacute; r&otilde; r&agrave;ng. Kh&ocirc;ng &iacute;t nh&agrave; đầu tư d&ugrave; chưa nắm r&otilde; t&igrave;nh h&igrave;nh nhưng để tr&aacute;nh gặp kh&oacute; khăn đ&atilde; quyết định chuyển suất đầu tư cho thu&ecirc; d&agrave;i hạn th&agrave;nh giao dịch mua b&aacute;n ngắn hạn.<br />\r\n<br />\r\n&Ocirc;ng Trần Văn Dũng, GĐ C&ocirc;ng ty BĐS Trường Ph&aacute;t nh&igrave;n nhận, ở một th&agrave;nh phố như TP.HCM, căn hộ office-tel c&oacute; rất nhiều tiềm năng ph&aacute;t triển. Tuy nhi&ecirc;n ẩn số về mặt ph&aacute;p l&yacute; đang khiến kh&aacute;ch h&agrave;ng nghi ngại với loại h&igrave;nh n&agrave;y.&nbsp;<br />\r\n<br />\r\nThực tế, cho đến thời điểm n&agrave;y, chưa c&oacute; dự &aacute;n căn hộ office-tel n&agrave;o tại TP.HCM được cấp giấy chủ quyền. C&aacute;c căn cứ để cấp ph&eacute;p sử dụng, cho ph&eacute;p lưu tr&uacute; như thế n&agrave;o, việc xuất hiện xen kẽ giữa căn hộ văn ph&ograve;ng v&agrave; căn hộ ở c&oacute; vi phạm Luật Nh&agrave; ở hay kh&ocirc;ng&hellip; vẫn chưa c&oacute; quy định cụ thể.&nbsp;<br />\r\n<br />\r\nNgo&agrave;i ra, việc người d&acirc;n lo ngại căn hộ office-tel kh&ocirc;ng được cấp sổ đỏ, sổ hồng như căn hộ chung cư v&igrave; chưa được c&aacute;c cơ quan quản l&yacute; nh&agrave; nước ch&iacute;nh thức c&ocirc;ng nhận c&agrave;ng khiến giao dịch office-tel gặp kh&oacute;.&nbsp;<br />\r\n<br />\r\n&Ocirc;ng Nguyễn Văn Ph&uacute;, một nh&agrave; đầu tư H&agrave; Nội vội rao b&aacute;n cắt lỗ 2 căn hộ officetel với gi&aacute; 1,3 tỉ/căn. Hai căn hộ n&agrave;y c&oacute; diện t&iacute;ch 25m2 v&agrave; đều thuộc dự &aacute;n River Gate (quận 4). &Ocirc;ng Ph&uacute; cho biết, v&igrave; muốn b&aacute;n xong nhanh, &ocirc;ng chấp nhận gi&aacute; thấp hơn gi&aacute; ni&ecirc;m yết của CĐT hơn 80 triệu. Tuy kh&ocirc;ng lo lắng về khả năng sinh lời từ cho thu&ecirc; của dự &aacute;n, nhưng vấn đề ph&aacute;p l&yacute; mơ hồ trong việc ra sổ cũng như những bất cập về xếp loại đối với loại h&igrave;nh căn hộ n&agrave;y khiến &ocirc;ng quyết định r&uacute;t lui trong an to&agrave;n.<br />\r\n<br />\r\n&ldquo;<em>Nếu l&agrave; văn ph&ograve;ng th&igrave; kh&ocirc;ng thể ở, c&ograve;n nếu l&agrave; chung cư th&igrave; theo Luật Nh&agrave; ở c&aacute;c c&aacute; nh&acirc;n, tổ chức kh&ocirc;ng được sử dụng căn hộ chung cư l&agrave;m văn ph&ograve;ng... Như vậy, việc mang căn hộ ra cho thu&ecirc; l&agrave;m văn ph&ograve;ng liệu c&oacute; được ph&eacute;p kh&ocirc;ng</em>&rdquo;, &ocirc;ng Ph&uacute; cho hay.<br />\r\n<br />\r\nTương tự &ocirc;ng Ph&uacute;, b&agrave; Trần Mỹ Lan, một nh&agrave; đầu tư tại Nguyễn Ch&iacute; Thanh, quận 5 đang rao b&aacute;n c&ugrave;ng l&uacute;c 5 căn hộ office-tel tại dự &aacute;n The Manor (Nguyễn Hữu Cảnh, B&igrave;nh Thạnh). Những căn hộ n&agrave;y được b&agrave; Loan mua từ cuối năm 2015, diện t&iacute;ch mỗi căn 38m2, hiện b&agrave; Lan rao b&aacute;n với gi&aacute; 1.9 tỷ.<br />\r\n<br />\r\nT&iacute;nh theo l&atilde;i suất ng&acirc;n h&agrave;ng hiện nay, đ&acirc;y l&agrave; mức gi&aacute; huề vốn cho một khoảng đầu tư 2 năm. L&yacute; do rao b&aacute;n của b&agrave; Lan cũng giống như &ocirc;ng Ph&uacute;, nhưng nh&agrave; đầu tư n&agrave;y cho biết th&ecirc;m, ngay từ đầu b&agrave; đ&atilde; kh&ocirc;ng c&oacute; &yacute; định đầu tư cho thu&ecirc; m&agrave; chỉ t&iacute;nh b&aacute;n lại.<br />\r\n<br />\r\nĐến cuối 2016, thấy nguồn cung dự &aacute;n office-tel mới tăng mạnh, t&acirc;m l&yacute; người mua bắt đầu nghi ngại, b&agrave; Lan vội rao b&aacute;n ra. Tuy nhi&ecirc;n đến thời điểm hiện tại b&agrave; mới chỉ b&aacute;n được duy nhất một căn với gi&aacute; thấp hơn dự kiến 100 triệu.<br />\r\n<br />\r\nThực tế, thời gian gần đ&acirc;y, ph&acirc;n kh&uacute;c office-tel c&oacute; phần trầm lắng, c&aacute;c CĐT kh&aacute; rối khi t&igrave;m hướng giải quyết vấn đề ph&aacute;p l&yacute; khiến người mua nh&agrave; lo lắng về thanh khoản tương lai của loại h&igrave;nh n&agrave;y. V&igrave; vậy, thị trường li&ecirc;n tục xuất hiện t&igrave;nh trạng nh&agrave; đầu tư r&uacute;t tiền cọc hay rao b&aacute;n lại căn hộ đ&atilde; mua.<br />\r\n<br />\r\nCụm từ b&aacute;n gấp căn office- tel đang tr&agrave;n đầy tr&ecirc;n c&aacute;c trang giao dịch nh&agrave; đất. Loạt căn hộ Office-tel thuộc c&aacute;c dự &aacute;n như Sky Center (quận T&acirc;n B&igrave;nh), Richmond City, S&agrave;i G&ograve;n Mia, Florita (quận 7), Charmington La Pointe (quận 10), Centana Thủ Thi&ecirc;m (quận 2), Luxcity, Orchard Garden (Ph&uacute; Nhuận), Sun Avalue (quận 2)&hellip;<br />\r\n<br />\r\nkh&ocirc;ng chỉ được c&aacute;c CĐT ch&agrave;o b&aacute;n m&agrave; c&aacute;c suất giao dịch thứ cấp từ nh&agrave; đầu tư cũng rầm rộ bung ra với số lượng lớn, gi&aacute; từ 1 -1,4 tỉ/căn.<br />\r\n<br />\r\nTuy nhi&ecirc;n, rao b&aacute;n nhiều kh&ocirc;ng c&oacute; nghĩa l&agrave; người mua cũng nhiều v&agrave; b&aacute;n ra dễ d&agrave;ng. Anh Phan Ho&agrave;ng Nam, ngụ tại quận T&acirc;n B&igrave;nh cho biết, anh rao b&aacute;n căn hộ office-tel ngay trung t&acirc;m quận 2 tại thời điểm dự &aacute;n mới xong m&oacute;ng, cho đến nay đ&atilde; sắp giao nh&agrave; m&agrave; vẫn chưa b&aacute;n được.<br />\r\n<br />\r\nCăn n&agrave;y CĐT ch&agrave;o b&aacute;n gi&aacute; 1,8 tỉ, do c&oacute; suất ưu đ&atilde;i anh Nam được mua gi&aacute; 1,6 tỉ v&agrave; giờ b&aacute;n lại 1,7 tỉ. Được biết, hiện dự &aacute;n n&agrave;y cũng c&ograve;n kh&aacute; nhiều căn office-tel tồn đọng m&agrave; CĐT chưa b&aacute;n hết. V&igrave; vậy khi nh&agrave; đầu tư c&oacute; &yacute; k&yacute; gửi sản, sale c&aacute;c s&agrave;n cũng kh&ocirc;ng mấy mặn m&agrave; nhận b&aacute;n.<br />\r\n<br />\r\nTheo t&igrave;m hiểu của PV tại một số s&agrave;n m&ocirc;i giới nhỏ tr&ecirc;n địa b&agrave;n TP.HCM, hầu hết c&aacute;c sale cho biết, s&agrave;n hiện kh&ocirc;ng nhận ph&acirc;n phối c&aacute;c căn office-tel, chỉ nhận k&yacute; gửi từ một số nh&agrave; đầu tư c&oacute; nhu cầu.\r\n<div style="text-align:center"><img alt="ky gui bat dong san office-tel" src="/uploads/images/ky%20gui%20bat%20dong%20san%20office-tel.jpg" style="height:400px; width:650px" /></div>\r\n<br />\r\nNguy&ecirc;n nh&acirc;n chủ yếu l&agrave; do lượng kh&aacute;ch mua rất thấp, gần 4 th&aacute;ng nay hầu như kh&ocirc;ng c&oacute; mấy người hỏi. C&ograve;n theo nh&acirc;n vi&ecirc;n kinh doanh của c&aacute;c s&agrave;n lớn, c&ocirc;ng ty đang tạm ngưng quảng b&aacute; cho office-tel n&ecirc;n giao dịch loại h&igrave;nh n&agrave;y kh&ocirc;ng được đẩy mạnh.&nbsp;<br />\r\n<br />\r\nAnh Phạm Xu&acirc;n Phước, m&ocirc;i giới một SGĐ tr&ecirc;n địa b&agrave;n quận 2 cho biết, kh&ocirc;ng chỉ nh&agrave; đầu tư thứ cấp c&ograve;n nhiều h&agrave;ng do kh&oacute; b&aacute;n ra m&agrave; nguồn cung sơ cấp căn hộ office-tel cũng c&ograve;n rất nhiều.<br />\r\n<br />\r\nLoại căn hộ n&agrave;y b&aacute;n kh&ocirc;ng tốt bằng căn hộ ở, l&yacute; do ch&iacute;nh vẫn l&agrave; do thời hạn sử dụng chỉ c&oacute; 50 năm. Ngo&agrave;i ra, v&igrave; kh&ocirc;ng c&oacute; chức năng ở, người mua lại kh&ocirc;ng chắc c&oacute; được d&ugrave;ng căn hộ l&agrave;m văn ph&ograve;ng hay kh&ocirc;ng n&ecirc;n việc ti&ecirc;u thụ loại bất động sản n&agrave;y gặp kh&oacute;.&nbsp;\r\n<div style="text-align:right"><br />\r\n<em>Theo tuổi trẻ online</em></div>\r\n', 0, NULL, NULL, 1, 0, 53, '2017-05-31 07:10:40', '2017-05-31 07:10:40', 1, 1),
(8, 'Thiết kết nhà cấp 4 đẹp với phong cách trẻ trung hiện đại', 'nha-cap-4-dep-tien-nghi-va-hien-dai-danh-cho-gia-dinh-tre', 'Thiet ket nha cap 4 dep voi phong cach tre trung hien dai', 'Chi phí thiết kế và thi công căn nhà cấp 4 phù hơp hơn trong điều kiện tài chính vừa phải. Dù vậy mẫu thiết kế dưới đây dù tiêu chuẩn cấp 4 nhưng thực sự rất sang trọng với các khu vực chức năng tiện nghi, hiện đại.', '2017/05/31/thiet-ke-nha-cap-4-dep-1496190479.jpg', 6, 'Mẫu nh&agrave; cấp 4 n&agrave;y được x&acirc;y dựng tr&ecirc;n một mảnh đất rộng r&atilde;i v&agrave; vu&ocirc;ng vức. Ch&iacute;nh ưu thế n&agrave;y đ&atilde; gi&uacute;p cho chủ nh&agrave; c&ugrave;ng kiến tr&uacute;c sư cảm thấy kh&aacute; dễ d&agrave;ng khi ph&acirc;n chia c&aacute;c khu vực chức năng. Th&ecirc;m nữa, ng&ocirc;i nh&agrave; c&oacute; chiều cao kh&aacute; ấn tượng gi&uacute;p cho việc tăng th&ecirc;m diện t&iacute;ch kh&ocirc;ng c&ograve;n l&agrave; phương &aacute;n qu&aacute; kh&oacute;.<br />\r\n<br />\r\nĐối với một gia đ&igrave;nh trẻ năng động th&igrave; căn nh&agrave; l&agrave; chốn đi về b&igrave;nh y&ecirc;n, gi&uacute;p họ thư gi&atilde;n sau một ng&agrave;y l&agrave;m việc mệt nhọc. Với mong muốn mọi nội thất trong nh&agrave; đều tiện dụng cho việc sinh hoạt, gi&uacute;p mở rộng tối đa kh&ocirc;ng gian, chủ nh&acirc;n đ&atilde; chọn c&aacute;ch kết hợp m&agrave;u sắc v&agrave; lựa chọn nội thất đơn giản nhất c&oacute; thể. G&oacute;c ph&ograve;ng kh&aacute;ch được đặt sofa m&agrave;u ghi x&aacute;m, b&agrave;n tr&agrave; nhỏ xinh nổi bật tr&ecirc;n tấm thảm m&agrave;u s&aacute;ng. Th&ecirc;m kệ đặt ti vi để tạo điểm nhấn đặc biệt cho khu vực n&agrave;y.<br />\r\n&nbsp;\r\n<div style="text-align:center">\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><img src="http://dothi9.com/uploads//post/2017/05/31/mau-nha-cap-4-dep-01-1496189748.jpg" style="max-width:600px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">Ph&ograve;ng kh&aacute;ch đơn giản nhưng&nbsp;rất ấn tượng</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><img src="http://dothi9.com/uploads//post/2017/05/31/mau-nha-cap-4-dep-02-1496189748.jpg" style="max-width:600px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">M&agrave;u sắc trung t&iacute;nh gi&uacute;p đ&egrave;n ch&ugrave;m v&agrave; những chi tiết trang tr&iacute; nhỏ nhất trở n&ecirc;n nổi bật.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><img src="http://dothi9.com/uploads//post/2017/05/31/mau-nha-cap-4-dep-03-1496189748.jpg" style="max-width:600px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">&Aacute;nh s&aacute;ng lu&ocirc;n l&agrave; yếu tố tạo n&ecirc;n sự th&agrave;nh c&ocirc;ng cho căn ph&ograve;ng tiếp kh&aacute;ch. Sự h&agrave;i h&ograve;a giữa &aacute;nh s&aacute;ng trắng với m&agrave;u sắc trung t&iacute;nh của căn hộ đ&atilde; mang đến vẻ đẹp xinh xắn, hiện đại.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><img src="http://dothi9.com/uploads//post/2017/05/31/mau-nha-cap-4-dep-04-1496189748.jpg" style="max-width:600px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">Cạnh ph&ograve;ng kh&aacute;ch l&agrave; cầu thang kim loại được thiết kế s&aacute;t tường, vừa gọn vừa tiện gi&uacute;p mọi người thoải m&aacute;i đi lại khi muốn sử dụng bất kỳ kh&ocirc;ng gian n&agrave;o trong căn hộ.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><img src="http://dothi9.com/uploads//post/2017/05/31/mau-nha-cap-4-dep-05-1496189748.jpg" style="max-width:600px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">&Aacute;nh s&aacute;ng từ m&aacute;i hỗ trợ đắc lực cho việc tăng s&aacute;ng cho kh&ocirc;ng gian.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><img src="http://dothi9.com/uploads//post/2017/05/31/mau-nha-cap-4-dep-06-1496189748.jpg" style="max-width:600px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">G&oacute;c bếp được bố tr&iacute; ph&iacute;a sau sofa. Ng&ocirc;i nh&agrave; cấp 4 được ph&acirc;n chia th&agrave;nh hai khu vực dọc theo chiều s&acirc;u của mảnh đất. Ph&ograve;ng bếp được bố tr&iacute; với hệ thống tủ bếp m&agrave;u ghi x&aacute;m dọc theo bức tường nơi c&oacute; &aacute;nh s&aacute;ng thi&ecirc;n nhi&ecirc;n ngập tr&agrave;n.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><img src="http://dothi9.com/uploads//post/2017/05/31/mau-nha-cap-4-dep-07-1496189748.jpg" style="max-width:600px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">B&agrave;n ăn được chọn lựa kiểu d&aacute;ng đơn giản. Chọn ghế ăn với m&agrave;u sắc bắt mắt tạo điểm nhấn sinh động cho kh&ocirc;ng gian.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><img src="http://dothi9.com/uploads//post/2017/05/31/mau-nha-cap-4-dep-08-1496189748.jpg" style="max-width:600px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">Kh&ocirc;ng gian c&oacute; sự tiếp nối liền mạch với ph&ograve;ng kh&aacute;ch nhờ bảng m&agrave;u sắc tương đồng.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><img src="http://dothi9.com/uploads//post/2017/05/31/mau-nha-cap-4-dep-011-1496189748.jpg" style="max-width:600px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">Ph&ograve;ng tắm rộng tho&aacute;ng với m&agrave;u nền l&agrave; gạch b&ocirc;ng trắng ốp tường.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="text-align:center"><img src="http://dothi9.com/uploads//post/2017/05/31/mau-nha-cap-4-dep-020-1496189748.jpg" style="max-width:600px" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p style="text-align:center">Những gam m&agrave;u ghi, đen, x&aacute;m được sử dụng linh hoạt cho tường b&ecirc;n trong, nội thất v&agrave; s&agrave;n ph&ograve;ng tắm, đủ để mọi người c&oacute; thể cảm nhận được n&eacute;t ấn tượng v&agrave; c&aacute; t&iacute;nh khi bước v&agrave;o ph&ograve;ng.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div style="text-align:right"><br />\r\n<em>Theo Tr&iacute; Thức Trẻ</em></div>\r\n</div>\r\n', 0, NULL, NULL, 0, 0, 54, '2017-05-31 07:28:06', '2017-05-31 07:28:06', 1, 1);
INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(9, 'Đất nền vùng ven Sài Gòn: Đầu tư không đúng chỗ các nhà đầu tư lỗ to', 'dat-nen-vung-ven-sai-gon-dau-tu-khong-dung-cho-cac-nha-dau-tu-lo-to', 'Dat nen vung ven Sai Gon: Dau tu khong dung cho cac nha dau tu lo to', 'Đầu tư vào đất nền nếu chọn đúng thời điểm, địa điểm sẽ sinh lời tốt. Ngược lại thì lỗ to nhất là các nhà đầu tư non tay, đầu tư quá nhiều vào một chỗ thậm chí vay ngân hàng để đầu tư, các giải pháp này thiếu an toàn và vô cùng nguy hiểm.', '2017/06/01/cac-nha-dau-tu-dat-vao-vung-ven-sai-gon-lo-nang-1496251228-1496307733.jpg', 7, 'Kh&ocirc;ng kh&iacute; mua b&aacute;n giao dịch bất động sản tại v&ugrave;ng ven TP HCM đang c&oacute; sự thay đổi rất nhanh trong những ng&agrave;y gần đ&acirc;y. Nếu th&aacute;ng trước, mọi thứ tấp nập tr&ecirc;n c&aacute;c trục đường lớn ở quận 9, Nh&agrave; B&egrave;, H&oacute;c M&ocirc;n, B&igrave;nh Ch&aacute;nh, thậm ch&iacute; l&agrave; huyện xa Cần Giờ, Củ Chi th&igrave; mọi thứ giờ lại đ&igrave;u hiu.<br />\r\n<br />\r\nChỉ trong v&ograve;ng 6 th&aacute;ng qua, nhiều người mua đất nền ở khu v&ugrave;ng ven TP.HCM c&oacute; thể đ&atilde; bị lỗ h&agrave;ng trăm triệu đến cả tỷ đồng.\r\n<h3><br />\r\nCơn sốt đi qua, lỗ ở lại</h3>\r\n<br />\r\nSau khi ch&iacute;nh quyền TP.HCM c&ocirc;ng bố c&ocirc;ng khai, cộng với sự v&agrave;o cuộc mạnh mẽ của cơ quan chức năng dẹp loạn &ldquo;c&ograve;&rdquo; đất &ldquo;thổi&rdquo; gi&aacute;, cơn sốt đất tại TP.HCM đ&atilde; chững lại. Điều n&agrave;y cũng khiến kh&ocirc;ng &iacute;t nh&agrave; đầu tư &ldquo;tay mơ&rdquo; đối mặt với lỗ nặng.<br />\r\n<br />\r\nTại huyện Nh&agrave; B&egrave;, nơi c&aacute;ch đ&acirc;y v&agrave;i th&aacute;ng từng l&agrave; điểm n&oacute;ng của đầu tư đất nền, anh H&ugrave;ng một nh&acirc;n vi&ecirc;n văn ph&ograve;ng m&ocirc;i giới BĐS cho biết, khoảng 1 tuần trở lại đ&acirc;y, số lượng người điện thoại đến hỏi mua đất nền tại khu vực n&agrave;y giảm mạnh. Thậm ch&iacute; một số chủ đầu tư, lo ngại gi&aacute; nh&agrave; đất lao dốc n&ecirc;n đ&atilde; k&yacute; gửi b&aacute;n lại với gi&aacute; giảm khoảng 2-5 triệu đồng/m2.<br />\r\n<br />\r\nSau một hồi lang thang tại khu vực n&agrave;y trong vai người đi mua nh&agrave;, PV B&aacute;o Giao th&ocirc;ng được giới thiệu đến chủ đầu tư một miếng đất 200m2 tại khu vực n&agrave;y l&agrave; anh Nguyễn Văn Trung. Anh Trung n&oacute;i cuối năm 2016, nghe bạn b&egrave; n&oacute;i gi&aacute; đất sẽ tăng mạnh v&igrave; đường băng qua khu vực n&agrave;y sẽ mở rộng n&ecirc;n anh đ&atilde; mua với gi&aacute; 22 triệu/m2. Tổng gi&aacute; trị miếng đất l&agrave; 4,4 tỷ đồng. Chờ m&atilde;i gi&aacute; kh&ocirc;ng thấy l&ecirc;n, giờ muốn b&aacute;n kh&ocirc;ng c&oacute; ai hỏi mua. Hiện, gi&aacute; đất khu vực n&agrave;y đ&atilde; giảm xuống mức dưới 20 triệu đồng. Coi như chỉ v&agrave;i th&aacute;ng anh Trung đ&atilde; lỗ khoảng 800 triệu đồng.<br />\r\n<br />\r\nTương tự, khảo s&aacute;t ở khu vực đất nền huyện B&igrave;nh Ch&aacute;nh thuộc khu vực xa trung t&acirc;m TP.HCM, gi&aacute; đất c&aacute;ch đ&acirc;y 2 th&aacute;ng được rao b&aacute;n khoảng 4 triệu đồng/m2. Tuy nhi&ecirc;n, hiện nay hỏi lại nhiều vị tr&iacute; b&aacute;n chưa đến 2 triệu đồng/m2. Anh Dũng, nh&agrave; ở G&ograve; Vấp cho hay, miếng đất anh mua ở khu vực Nh&agrave; B&egrave; tiếp gi&aacute;p về khu vực Cần Giờ l&agrave; 1.000m2 mua được từ 2 năm trước của người d&acirc;n địa phương. C&aacute;ch đ&acirc;y nửa năm cũng c&oacute; kh&aacute;ch hỏi mua, nhưng thỏa thuận gi&aacute; kh&ocirc;ng ph&ugrave; hợp n&ecirc;n kh&ocirc;ng b&aacute;n. Nay muốn b&aacute;n th&igrave;&hellip; kh&ocirc;ng ai hỏi mua. &ldquo;Giờ đất th&agrave;nh bỏ hoang, n&ecirc;n t&ocirc;i cho ch&iacute;nh người đ&atilde; b&aacute;n đất cho m&igrave;nh sử dụng để nu&ocirc;i g&agrave; nu&ocirc;i vịt. Coi như lỗ&rdquo;, anh Dũng n&oacute;i.\r\n<div style="text-align:center"><img alt="cac nha dau tu dat vao vung ven sai gon lo nang" src="/uploads/images/cac%20nha%20dau%20tu%20dat%20vao%20vung%20ven%20sai%20gon%20lo%20nang.jpg" style="height:400px; width:650px" /></div>\r\n\r\n<p style="text-align:center"><em>Cơn sốt đất v&ugrave;ng ven TP HCM đ&atilde; hạ nhiệt.</em></p>\r\n\r\n<p>&Ocirc;ng Nguyễn Xu&acirc;n Lộc - tổng gi&aacute;m đốc C&ocirc;ng ty bất động sản Techcomreal, nhận định sau khi c&oacute; th&ocirc;ng tin chấn chỉnh, người đầu tư sẽ thận trọng hơn, kh&ocirc;ng bằng mọi gi&aacute; để mua đất. Họ sẽ s&agrave;ng lọc bất động sản n&agrave;o ph&aacute;p l&yacute; ho&agrave;n chỉnh, c&oacute; kết nối hạ tầng, c&oacute; yếu tố sinh v&agrave;o để đầu tư.</p>\r\n\r\n<p>Đặc biệt khi mức gi&aacute; kh&ocirc;ng tăng l&ecirc;n, c&ugrave;ng với &aacute;p lực về chốt lời v&agrave; việc đ&oacute;ng tiền theo tiến độ c&aacute;c đợt sau, th&igrave; giới đầu cơ &ldquo;gom đất thổi gi&aacute;&rdquo; sẽ buộc phải tung h&agrave;ng ra. Khi đ&oacute;, thị trường sẽ h&igrave;nh th&agrave;nh mặt bằng gi&aacute; mới.</p>\r\n\r\n<h3>Bất động sảnTP.HCM: Dư nợ 164.000 tỷ đồng</h3>\r\n<br />\r\nTại những khu vực n&agrave;y v&agrave;o năm 2015 chỉ c&oacute; gi&aacute; 10 triệu đồng thậm ch&iacute; thấp hơn nhưng đỉnh điểm c&oacute; l&uacute;c l&ecirc;n đến 20 triệu m2. Anh Phạm Văn Long, c&aacute;n bộ thẩm định gi&aacute; bất động sản một ng&acirc;n h&agrave;ng ở TP.HCM cho biết, từ giữa năm 2016, nhiều người đổ x&ocirc; bu&ocirc;n đất ở khu vực v&ugrave;ng ven như huyện Củ Chi, huyện B&igrave;nh Ch&aacute;nh v&agrave; x&atilde; Vĩnh Lộc A, Vĩnh Lộc B&hellip; &ldquo;C&ograve;&rdquo; thổi gi&aacute; đất nền ở khắp nơi n&ecirc;n gi&aacute; đất khu vực n&agrave;y tăng vọt.&nbsp;Đến nay, thị trường đất nền lại c&oacute; dấu hiệu x&igrave; hơi, gi&aacute; đất đang quay đầu giảm mạnh khiến kh&ocirc;ng &iacute;t người đau khổ v&igrave; lỗ nặng.&nbsp;<br />\r\n<br />\r\nThống k&ecirc; của Ng&acirc;n h&agrave;ng Nh&agrave; nước (NHNN) chi nh&aacute;nh TP.HCM cho thấy, qu&yacute; I/2017, trong tổng dư nợ của to&agrave;n TP.HCM tr&ecirc;n 1,5 triệu tỷ đồng th&igrave; c&oacute; 164.000 tỷ đồng cho bất động sản, chiếm 10,88%. Trước cảnh b&aacute;o thị trường BĐS c&oacute; dấu hiệu &ldquo;sốt&rdquo; ảo, đặc biệt l&agrave; đất tại c&aacute;c khu vực v&ugrave;ng ven tr&ecirc;n địa b&agrave;n TP.HCM, c&aacute;c ng&acirc;n h&agrave;ng hiện đang kiểm so&aacute;t chặt hơn khi cho vay lĩnh vực n&agrave;y.<br />\r\n<br />\r\nB&agrave;i học về tăng trưởng t&iacute;n dụng n&oacute;ng v&agrave;o bất động sản giai đoạn 2007 - 2010 c&ograve;n nguy&ecirc;n gi&aacute; trị. &ldquo;G&aacute;nh nặng nợ xấu thời điểm đ&oacute; đ&atilde; v&agrave; đang c&ograve;n g&acirc;y &aacute;p lực về xử l&yacute; cho ng&agrave;nh Ng&acirc;n h&agrave;ng n&ecirc;n hiện c&aacute;c ng&acirc;n h&agrave;ng kh&ocirc;ng đẩy vốn ồ ạt v&agrave;o lĩnh vực n&agrave;y, v&igrave; rất ngại bong b&oacute;ng bất động sản.<br />\r\n<br />\r\n&Ocirc;ng Nguyễn Ho&agrave;ng Minh, Ph&oacute; gi&aacute;m đốc NHNN chi nh&aacute;nh TP.HCM cho biết, việc r&oacute;t vốn v&agrave;o lĩnh vực bất động sản của c&aacute;c ng&acirc;n h&agrave;ng thương mại được tiến h&agrave;nh rất chặt chẽ v&agrave; thận trọng nhằm đảm bảo nguồn vốn an to&agrave;n, hiệu quả, tr&aacute;nh rủi ro nợ xấu. Việc c&ograve; đất d&ugrave;ng chi&ecirc;u tr&ograve; để n&acirc;ng gi&aacute; l&ecirc;n, thổi phồng l&ecirc;n chỉ c&oacute; ở những dự &aacute;n v&ugrave;ng ven l&agrave; đất nền, nhỏ lẻ của c&aacute; nh&acirc;n địa phương. Chứ hầu như c&aacute;c dự &aacute;n thực sự ng&acirc;n h&agrave;ng thẩm định hồ sơ rất kỹ&rdquo;, &ocirc;ng Minh n&oacute;i.&nbsp;<br />\r\n<br />\r\nChủ tịch Hiệp hội Bất động sản TP.HCM L&ecirc; Ho&agrave;ng Ch&acirc;u cũng cho rằng, c&aacute;c ng&acirc;n h&agrave;ng cần kiểm so&aacute;t tốt d&ograve;ng vốn v&agrave;o lĩnh vực n&agrave;y, nhất l&agrave; ph&acirc;n kh&uacute;c nh&agrave; ở cao cấp. Bởi ph&acirc;n kh&uacute;c n&agrave;y c&oacute; khi kh&ocirc;ng xuất ph&aacute;t từ nhu cầu thực của người ti&ecirc;u d&ugrave;ng, m&agrave; phần nhiều l&agrave; từ mục đ&iacute;ch mua đi b&aacute;n lại kiếm lời của nh&agrave; đầu tư thứ cấp. Qua đ&oacute;, hạn chế h&agrave;ng tồn kho v&agrave; nợ xấu trong tương lai.\r\n<div style="text-align:right"><em>Theo b&aacute;o giao th&ocirc;ng</em></div>\r\n', 0, NULL, NULL, 1, 0, 56, '2017-06-01 00:21:23', '2017-06-01 16:02:17', 1, 1),
(10, 'Cách trang trí đầu giường cho phòng ngủ thêm mới mẻ và hấp dẫn', 'cach-trang-tri-dau-giuong-cho-phong-ngu-them-quyen-ru', 'Cach trang tri dau giuong cho phong ngu them moi me va hap dan', 'Trang trí đầu giường, chỉ đơn giản là khoảng diện tích tường phía đầu giường. Những ý tưởng trang trí đầu giường nhỏ bé, đơn giản, dễ thực hiện này sẽ giúp bạn sở hữu một căn phòng ngủ đẹp hết ý.', '2017/06/01/cach-trang-tri-dau-giuong-dep-1496276111.jpg', 6, 'C&oacute; thể bạn đang nghĩ, kh&ocirc;ng gian nghỉ ngơi của gia đ&igrave;nh v&ocirc; c&ugrave;ng chật chội v&agrave; bức bối. Bạn đ&atilde; t&igrave;m được những &yacute; tưởng hợp l&yacute; gi&uacute;p ph&ograve;ng ngủ rộng hơn, gi&uacute;p mọi người cảm thấy sảng kho&aacute;i v&agrave; dễ chịu hơn khi sống trong kh&ocirc;ng gian hẹp?<br />\r\n<br />\r\nSự thật l&agrave; bạn vẫn c&oacute; thể tăng diện t&iacute;ch đ&aacute;ng kể cho ph&ograve;ng ngủ, v&agrave; gi&uacute;p kh&ocirc;ng gian đẹp lạ nhờ những &yacute; tưởng trang tr&iacute; đầu giường độc đ&aacute;o được gợi &yacute; trong b&agrave;i viết dưới đ&acirc;y.<br />\r\n<br />\r\n<strong>1. Sơn h&igrave;nh c&acirc;y cỏ</strong><br />\r\n<br />\r\nSơn lại đầu giường cùng màu với tường nhưng với t&ocirc;ng đ&acirc;̣m hơn v&agrave; th&ecirc;m một ch&uacute;t hoa cỏ. Trước hết d&ugrave;ng giấy nh&aacute;m ch&agrave; qua phần gỗ v&agrave; phủ một lớp sơn nước l&ecirc;n l&agrave;m nền rồi thỏa sức đưa thi&ecirc;n nhi&ecirc;n v&agrave;o ph&ograve;ng ngủ với những n&eacute;t cọ. Đầu giường của bạn sẽ trở n&ecirc;n tươi m&aacute;t hơn.\r\n<div style="text-align:center"><img alt="thiet ke dau giuong ve tranh" src="/uploads/images/thiet%20ke%20dau%20giuong%20ve%20tranh.jpg" style="height:422px; width:650px" /></div>\r\n<br />\r\n<strong>2. Tấm đầu giường cỡ lớn</strong><br />\r\n<br />\r\nBạn c&oacute; thể tạo ra những tấm đầu giường từ những chất liệu kh&aacute;c nhau như gỗ, vải,&hellip; với k&iacute;ch thước kh&aacute;c nhau để tạo n&ecirc;n điểm nhấn cho khu vực n&agrave;y. Những tấm đầu giường c&oacute; m&agrave;u sắc tương phản sẽ mang đến hiệu quả thị gi&aacute;c rất tốt với người nh&igrave;n.<br />\r\n<br />\r\n<strong>3. Trang tr&iacute; với những chữ c&aacute;i</strong><br />\r\n<br />\r\nBiến đầu giường th&agrave;nh một bảng chữ c&aacute;i, nguy&ecirc;n liệu c&oacute; thể kiếm từ những cửa h&agrave;ng văn ph&ograve;ng phẩm. Bạn c&oacute; thể chọn những kiểu chữ v&agrave; k&iacute;ch cỡ kh&aacute;c để biến đầu giường th&agrave;nh một bảng chữ c&aacute;i th&uacute; vị, t&ugrave;y v&agrave;o &yacute; th&iacute;ch m&agrave; bạn c&oacute; thể sắp xếp c&aacute;c chữ c&aacute;i theo thứ tự hay lộn xộn.\r\n<div style="text-align:center"><img alt="chu cai dau giuong" src="/uploads/images/chu%20cai%20dau%20giuong.jpg" style="height:693px; width:650px" /></div>\r\n<br />\r\n<strong>4. Thiết kế đầu giường độc đ&aacute;o</strong><br />\r\n<br />\r\nNhững năm gần đ&acirc;y, những thiết kế đầu giường đầy ấn tượng như thế n&agrave;y đ&atilde; trở n&ecirc;n kh&aacute; phổ biến. Nhưng bạn kh&ocirc;ng thể n&agrave;o phủ nhận được cảm gi&aacute;c đầy ấn tượng m&agrave; n&oacute; tạo ra.<br />\r\n<br />\r\n<strong>5. Treo tranh hai b&ecirc;n tường đầu giường</strong><br />\r\n<br />\r\nKh&ocirc;ng chọn vị tr&iacute; trung t&acirc;m của đầu giường, bạn cũng c&oacute; thể treo tranh ở hai b&ecirc;n tường đầu giường. Những bức tranh tự sử dụng ch&iacute;nh những vật lưu niệm trong nh&agrave;, th&ecirc;m khung v&agrave; k&iacute;nh để bức tranh đẹp sắc n&eacute;t.\r\n<div style="text-align:center"><img alt="tranh hai ben giuong thiet ke" src="/uploads/images/tranh%20hai%20ben%20giuong%20thiet%20ke.jpg" style="height:531px; width:650px" /></div>\r\n<br />\r\nTranh kh&ocirc;ng chỉ gi&uacute;p ph&ograve;ng ngủ đẹp hơn, m&agrave; c&ograve;n gi&uacute;p bạn lu&ocirc;n cảm thấy dễ chịu khi nghĩ đến những kỷ niệm đẹp trong những chuyến đi đ&aacute;ng nhớ trong cuộc đời.<br />\r\n<br />\r\n<strong>6. &Aacute;nh s&aacute;ng</strong><br />\r\n<br />\r\n&Aacute;nh s&aacute;ng lu&ocirc;n l&agrave; yếu tố mang đến sự l&atilde;ng mạn cho kh&ocirc;ng gian, v&agrave; với một kh&ocirc;ng gian như ph&ograve;ng ngủ th&igrave; n&oacute; c&agrave;ng kh&ocirc;ng thể thiếu được. Bạn c&oacute; thể lựa chọn những mẫu đ&egrave;n gắn tường c&aacute; t&iacute;nh hay kiểu đ&egrave;n d&acirc;y d&ugrave;ng để trang tr&iacute; cho g&oacute;c đầu giường.<br />\r\n<br />\r\n<strong>7. Kệ mở</strong><br />\r\n<br />\r\nThiết kế những chiếc kệ mang đến t&iacute;nh tiện dụng hơn cho khu vực đầu giường. Đ&acirc;y sẽ l&agrave; nơi bạn lưu trữ s&aacute;ch b&aacute;o, tạp ch&iacute; hay đặt trưng b&agrave;y những m&oacute;n phụ kiện bắt mắt.\r\n<div style="text-align:center"><img alt="cach trang tri dau giuong hop ly 01" src="/uploads/images/cach%20trang%20tri%20dau%20giuong%20hop%20ly%2001.jpg" style="height:824px; width:660px" /></div>\r\n<br />\r\n<strong>8. Những tr&aacute;i tim l&atilde;ng mạn</strong><br />\r\n<br />\r\nĐơn giản nhưng kh&ocirc;ng k&eacute;m phần l&atilde;ng mạn, bạn chỉ cần cắt những tr&aacute;i tim t&ugrave;y theo m&agrave;u bạn th&iacute;ch v&agrave; x&acirc;u lại th&agrave;nh một d&acirc;y rồi treo ở đầu giường với một d&acirc;y ruy băng.\r\n<div style="text-align:center"><img alt="trai tim dau giuong thiet ke" src="/uploads/images/trai%20tim%20dau%20giuong%20thiet%20ke.jpg" style="height:419px; width:650px" /></div>\r\n<br />\r\n<strong>9. Ốp gỗ cho bức tường đầu giường ngủ</strong><br />\r\n<br />\r\nC&aacute;ch đơn giản v&agrave; mang lại hiệu quả kh&ocirc;ng k&eacute;m trong việc l&agrave;m mới căn ph&ograve;ng nghỉ ngơi của gia đ&igrave;nh bạn đ&oacute; ch&iacute;nh l&agrave; ốp gỗ cho một phần tường ph&iacute;a đầu giường. Bức tường ốp gỗ sẽ tạo n&ecirc;n điểm nhấn nền n&atilde;, gần gũi, tạo sự thoải m&aacute;i, kh&ocirc;ng kh&iacute; dễ chịu cho mọi người khi nghỉ ngơi tại đ&acirc;y.', 0, NULL, NULL, 1, 0, 57, '2017-06-01 07:15:58', '2017-06-01 07:15:58', 1, 1),
(11, 'Làm sao để mua căn hộ chung cư trả góp mà không bị lừa?', 'lam-sao-de-mua-can-ho-chung-cu-tra-gop-ma-khong-bi-lua', 'Lam sao de mua can ho chung cu tra gop ma khong bi lua', 'Lợi thế cạnh tranh của căn hộ chung cư chính là trả góp. Tuy nhiên thời gian qua đã không ít vụ việc các chủ đầu tư dùng chiêu trò để lừa đảo khách hàng nên khi mua căn hộ chung người ta rất hoang mang. Vậy làm sao mua căn hộ chung cư trả góp mà không bị lừa?', '2017/06/02/lam-sao-de-mua-can-ho-chung-cu-ma-khong-bi-lua-1496336320.jpg', 5, 'Khi mua căn hộ chung cư trả g&oacute;p để kh&ocirc;ng rơi v&agrave;o t&igrave;nh trạng dở kh&oacute;c dở cười với c&aacute;c dự &aacute;n nh&agrave; ở h&igrave;nh th&agrave;nh trong tương lai, người c&oacute; nhu cầu mua căn hộ cần ch&uacute; &yacute; những vấn đề sau.\r\n<h3><br />\r\nH&igrave;nh thức&nbsp;mua căn hộ chung cư trả g&oacute;p l&agrave; như thế n&agrave;o?</h3>\r\n<br />\r\nMua chung cư trả g&oacute;p l&agrave; kh&ocirc;ng cần phải thanh to&aacute;n 100% gi&aacute; trị căn nh&agrave; tại thời điểm mua m&agrave; ng&acirc;n h&agrave;ng hoặc tổ chức t&iacute;n dụng sẽ cho người mua vay khoảng 70% gi&aacute; trị căn nh&agrave; bằng c&aacute;ch thế chấp ch&iacute;nh căn nh&agrave; định mua hoặc d&ugrave;ng t&agrave;i sản thế chấp để đảm bảo khoản vay. Số tiền vay gốc v&agrave; l&atilde;i vay sẽ được trả dần theo thời gian thanh to&aacute;n c&ugrave;ng với mức l&atilde;i suất do hai b&ecirc;n cho vay v&agrave; đi vay thỏa thuận.\r\n<h3><br />\r\nĐể kh&ocirc;ng bị lừa khi mua căn hộ chung cư&nbsp;trả g&oacute;p</h3>\r\n\r\n<p><br />\r\n&Ocirc;ng Ho&agrave;ng Khải, Chủ tịch Tập đo&agrave;n Khai Silk khuy&ecirc;n, để kh&ocirc;ng bị mắc kẹt với c&aacute;c dự &aacute;n nh&agrave; ở h&igrave;nh th&agrave;nh trong tương lai, người c&oacute; nhu cầu mua căn hộ c&oacute; thể thỏa thuận với chủ đầu tư v&agrave; ng&acirc;n h&agrave;ng l&agrave;m hợp đồng bảo l&atilde;nh ng&acirc;n h&agrave;ng. Hợp đồng n&agrave;y thể hiện, khi n&agrave;o chủ đầu tư x&acirc;y nh&agrave; xong th&igrave; ng&acirc;n h&agrave;ng sẽ trả hết tiền 1 lần cho chủ đầu tư.<br />\r\n<br />\r\nVới hợp đồng bảo l&atilde;nh n&agrave;y, người mua nh&agrave; kh&ocirc;ng cần phải trả tiền theo từng đợt cho chủ đầu tư, m&agrave; mang tiền đ&oacute; gửi tiết kiệm. Tuy nhi&ecirc;n, người mua nh&agrave; sẽ phải trả cho ng&acirc;n h&agrave;ng một khoảng ph&iacute; l&atilde;i suất tượng trưng cho c&aacute;i bảo l&atilde;nh ng&acirc;n h&agrave;ng đ&atilde; k&yacute;. Điều n&agrave;y gi&uacute;p người mua nh&agrave; kh&ocirc;ng phải mất tiền nếu dự &aacute;n rơi v&agrave;o tranh chấp, cũng kh&ocirc;ng phải sốt ruột nếu dự &aacute;n chậm tiến độ, v&igrave; trong khoảng thời gian dự &aacute;n k&eacute;o d&agrave;i th&igrave; số tiền mua nh&agrave; vẫn ph&aacute;t sinh l&atilde;i từ ng&acirc;n h&agrave;ng.<br />\r\n<br />\r\nChuy&ecirc;n gia B&ugrave;i Quang T&iacute;n th&igrave; cho rằng, những tranh chấp cũng c&oacute; lỗi từ ch&iacute;nh kh&aacute;ch h&agrave;ng. Đi mua nh&agrave;, người mua phải t&igrave;m hiểu xem chủ đầu tư dự &aacute;n l&agrave; ai, cần xem kỹ lịch sử kinh doanh của họ, qu&aacute; tr&igrave;nh x&acirc;y dựng c&aacute;c dự &aacute;n trước đ&oacute; ra sao. &quot;Ch&uacute;ng ta kh&ocirc;ng thể cộng c&aacute;c chủ đầu tư v&agrave;o một rổ được. Tr&ecirc;n thị trường hiện nay, c&oacute; khoảng 70% c&aacute;c chủ đầu tư b&agrave;i bản, l&agrave;m ăn đ&agrave;ng ho&agrave;ng, họ muốn x&acirc;y dựng thương hiệu, nhưng cũng c&oacute; rất nhiều chủ đầu tư chụp giựt, l&agrave;m theo phong tr&agrave;o, b&aacute;n 1 dự &aacute;n xong l&agrave; đ&oacute;ng cửa c&ocirc;ng ty&quot;, &ocirc;ng T&iacute;n n&oacute;i.<br />\r\n<br />\r\nNgo&agrave;i ra, chuy&ecirc;n gia n&agrave;y c&ograve;n khuy&ecirc;n người mua nh&agrave; phải t&igrave;m hiểu chủ quyền đất, t&igrave;m hiểu xem dự &aacute;n đ&atilde; được ph&eacute;p b&aacute;n chưa, ng&acirc;n h&agrave;ng thương mại n&agrave;o đứng ra bảo l&atilde;nh... Điều quan trọng nữa kh&aacute;ch h&agrave;ng cần nhớ l&agrave; hợp đồng mua b&aacute;n rất cần c&oacute; tham vấn ph&aacute;p l&yacute; của luật sư.</p>\r\n\r\n<div style="text-align:center"><img alt="lam sao de mua can ho chung cu ma khong bi lua" src="/uploads/images/lam%20sao%20de%20mua%20can%20ho%20chung%20cu%20ma%20khong%20bi%20lua.jpg" style="height:400px; width:650px" /></div>\r\n\r\n<h3>Dưới đ&acirc;y l&agrave; những lưu &yacute; khi mua căn hộ chung cư&nbsp;trả g&oacute;p</h3>\r\n<br />\r\n<strong>Mua của chủ đầu tư c&oacute; năng lực</strong><br />\r\n<br />\r\nTh&ocirc;ng tin tr&ecirc;n b&aacute;o Ph&aacute;p luật TPHCM, nhiều đơn vị kinh doanh bất động sản nh&igrave;n nhận c&oacute; hiện tượng chủ đầu tư kh&ocirc;ng đ&agrave;ng ho&agrave;ng b&aacute;n một căn hộ chung cư cho nhiều người.<br />\r\n<br />\r\n&Ocirc;ng Nguyễn Văn Đực, Ph&oacute; Gi&aacute;m đốc C&ocirc;ng ty Đất L&agrave;nh, cho hay để tr&aacute;nh t&igrave;nh trạng n&agrave;y, trước khi mua người d&acirc;n n&ecirc;n t&igrave;m hiểu kỹ th&ocirc;ng tin. Hợp đồng mua b&aacute;n phải đ&uacute;ng t&ecirc;n m&igrave;nh với chủ đầu tư. Nếu l&agrave; hợp đồng g&oacute;p vốn, người d&acirc;n cần kiểm tra tiến độ thi c&ocirc;ng dự &aacute;n, nếu đ&oacute;ng tiền theo từng giai đoạn th&igrave; khối lượng x&acirc;y dựng phải tương ứng.<br />\r\n<br />\r\nTrong c&aacute;c hợp đồng thường r&agrave;ng buộc rất kỹ nghĩa vụ thanh to&aacute;n tiền của kh&aacute;ch h&agrave;ng theo tiến độ dự &aacute;n nhưng nghĩa vụ của chủ đầu tư về b&agrave;n giao căn hộ lại rất chung chung.Do đ&oacute;, người mua cần thỏa thuận cụ thể về thời hạn dự kiến giao nh&agrave;, thời điểm giao nh&agrave; cụ thể, chế t&agrave;i nếu vi phạm. Nếu chủ đầu tư kh&ocirc;ng ho&agrave;n th&agrave;nh th&igrave; người d&acirc;n cần y&ecirc;u cầu thanh l&yacute; hợp đồng.<br />\r\n<br />\r\n<strong>Cần c&oacute; cơ quan gi&aacute;m s&aacute;t</strong><br />\r\n<br />\r\nMột c&aacute;n bộ Sở X&acirc;y dựng cũng nh&igrave;n nhận trước khi quyết định mua một căn hộ, người d&acirc;n cần t&igrave;m hiểu kỹ dự &aacute;n, năng lực của chủ đầu tư. Nếu kh&ocirc;ng t&igrave;m hiểu kỹ những vấn đề n&agrave;y, khi chủ đầu tư x&acirc;y dựng nửa chừng rồi bỏ th&igrave; người mua nh&agrave; l&atilde;nh đủ.<br />\r\n<br />\r\nHiện Sở X&acirc;y dựng chỉ l&agrave; cơ quan quản l&yacute; h&agrave;nh ch&iacute;nh chứ kh&ocirc;ng quản l&yacute; việc mua b&aacute;n giữa chủ đầu tư v&agrave; người d&acirc;n. Do đ&oacute; khi gặp chuyện, người d&acirc;n phải gửi đơn khởi kiện ra t&ograve;a hoặc cơ quan c&ocirc;ng an nếu thấy c&oacute; dấu hiệu lừa đảo&hellip; để bảo vệ quyền lợi.<br />\r\n<br />\r\nLuật sư Phạm Minh T&acirc;m, Đo&agrave;n Luật sư TP.HCM, g&oacute;p &yacute; cần c&oacute; th&ecirc;m quy định bắt c&aacute;c chủ đầu tư c&ocirc;ng khai tiến độ x&acirc;y dựng dự &aacute;n v&agrave; qu&aacute; tr&igrave;nh giao dịch. Cơ quan n&agrave;o ph&ecirc; duyệt dự &aacute;n th&igrave; th&agrave;nh lập ra bộ phận gi&aacute;m s&aacute;t nhằm kiểm tra, đ&ocirc;n đốc v&agrave; hạn chế rủi ro cho người d&acirc;n. Đa phần dự &aacute;n do UBND quận, huyện hoặc UBND tỉnh, th&agrave;nh ph&ecirc; duyệt th&igrave; cơ quan n&agrave;y phải giao cho Sở hoặc Ph&ograve;ng TN&amp;MT gi&aacute;m s&aacute;t, kiểm tra.<br />\r\n<br />\r\nNgo&agrave;i ra đảm bảo v&agrave; siết chặt nguy&ecirc;n tắc chủ đầu tư muốn b&aacute;n căn hộ th&igrave; phải c&ocirc;ng khai th&ocirc;ng tin qua s&agrave;n giao dịch bất động sản. Tuy nhi&ecirc;n, phần chủ động vẫn ở người d&acirc;n, h&atilde;y chủ động t&igrave;m những nh&agrave; đầu tư c&oacute; uy t&iacute;n để giao kết hợp đồng nhằm hạn chế rủi ro.<br />\r\n<br />\r\n<strong>Phải c&oacute; bảo l&atilde;nh của ng&acirc;n h&agrave;ng</strong><br />\r\n<br />\r\nTheo luật sư Nguyễn Văn Hậu, một căn hộ kh&ocirc;ng thể b&aacute;n cho nhiều người, nếu xảy ra t&igrave;nh trạng n&agrave;y, r&otilde; r&agrave;ng chủ đầu tư đ&atilde; cố t&igrave;nh vi phạm ph&aacute;p luật. Tuy nhi&ecirc;n, ở đ&acirc;y cũng c&oacute; một phần tr&aacute;nh nhiệm của c&aacute;c cơ quan chức năng do c&ocirc;ng t&aacute;c hậu kiểm qu&aacute; lỏng lẻo. Trước khi ph&ecirc; duyệt dự &aacute;n những đơn vị n&agrave;y c&oacute; kiểm tra năng lực t&agrave;i ch&iacute;nh của chủ đầu tư hay kh&ocirc;ng? Rồi c&ocirc;ng t&aacute;c kiểm tra tiến độ dự &aacute;n như thế n&agrave;o&hellip;<br />\r\n<br />\r\nSắp tới, Ch&iacute;nh phủ c&oacute; quy định đối với một dự &aacute;n bất động sản h&igrave;nh th&agrave;nh trong tương lai th&igrave; phải c&oacute; sự bảo l&atilde;nh của ng&acirc;n h&agrave;ng. Như vậy việc n&agrave;y đảm bảo quyền lợi của người mua. V&iacute; dụ nếu căn hộ 1 tỉ đồng th&igrave; chủ đầu tư phải đ&oacute;ng 1 tỉ đồng đ&oacute; v&agrave;o ng&acirc;n h&agrave;ng. Trong trường hợp chủ đầu tư kh&ocirc;ng đủ khả năng tiếp tục thực hiện dự &aacute;n th&igrave; ng&acirc;n h&agrave;ng sẽ giải ng&acirc;n số tiền đ&oacute; để bồi thường cho người d&acirc;n. Sau khi nghị định n&agrave;y c&oacute; hiệu lực th&igrave; tất cả chủ đầu tư bắt buộc phải thực hiện đ&uacute;ng theo y&ecirc;u cầu, từ đ&oacute; quyền lợi của người mua nh&agrave; sẽ được đảm bảo.<br />\r\n<br />\r\n<strong>Kiểm tra nội dung hợp đồng</strong><br />\r\n<br />\r\nTrước khi đặt b&uacute;t k&yacute; v&agrave;o bản hợp đồng mua nh&agrave; bạn n&ecirc;n xem x&eacute;t kỹ lưỡng c&aacute;c điều khoản quy định trong hợp đồng mua nh&agrave;. Gi&aacute; cả v&agrave; thời gian thanh to&aacute;n phải được quy định r&otilde; r&agrave;ng, cụ thể. Tr&aacute;nh để ph&aacute;t sinh th&ecirc;m c&aacute;c chi ph&iacute; kh&ocirc;ng hợp l&yacute; cũng như những mốc thời gian thanh to&aacute;n kh&ocirc;ng ph&ugrave; hợp với khả năng t&agrave;i ch&iacute;nh hiện tại của bạn.<br />\r\n<br />\r\nBạn cũng c&oacute; thể y&ecirc;u cầu điều chỉnh bổ sung một số th&ocirc;ng tin xem l&agrave; kh&ocirc;ng ph&ugrave; hợp, g&acirc;y bất lợi cho người mua m&agrave; phải c&oacute; lợi cho đ&ocirc;i b&ecirc;n. Bạn cũng c&oacute; thể y&ecirc;u cầu chủ đầu tư hỗ trợ một phần chi ph&iacute; li&ecirc;n quan như chiết khấu, ph&iacute; quản l&yacute; chung cư, ph&iacute; mua sắm nội thất&hellip; N&ecirc;n tham khảo th&ecirc;m &yacute; kiến của luật sư về c&aacute;c điều khoản hợp đồng để c&oacute; những lời tư vấn th&iacute;ch hợp v&agrave; kh&ocirc;ng n&ecirc;n đặt cọc trước khi thương lượng.\r\n<h3>Ngo&agrave;i sự an to&agrave;n ph&aacute;p l&yacute; ch&uacute;ng ta cũng n&ecirc;n lưu &yacute; đến khả năng chi trả an to&agrave;n</h3>\r\n<br />\r\nTổng gi&aacute;m đốc C&ocirc;ng ty Việt An H&ograve;a, Trần Kh&aacute;nh Quang cho biết, gần 20 năm tư vấn t&agrave;i ch&iacute;nh - đầu tư địa ốc, &ocirc;ng đ&atilde; chứng kiến kh&ocirc;ng &iacute;t trường hợp người mua nh&agrave; chật vật xoay tiền từng th&aacute;ng hoặc b&aacute;n đổ b&aacute;n th&aacute;o v&igrave; mua bất động sản trả g&oacute;p chưa đ&uacute;ng c&aacute;ch. &Ocirc;ng Quang chia sẻ 8 bước cơ bản cần chuẩn bị trước khi đưa ra quyết định vay tiền ng&acirc;n h&agrave;ng mua nh&agrave;. Cẩm nang n&agrave;y giả định trong điều kiện kh&aacute;ch h&agrave;ng đ&atilde; s&agrave;ng lọc được vị tr&iacute; dự &aacute;n ưng &yacute;, chủ đầu tư uy t&iacute;n.<br />\r\n<br />\r\n<strong>Thứ nhấ</strong>t: Chuẩn bị sẵn một khoản tiền t&iacute;ch lũy hiện tại tối thiểu 30% gi&aacute; trị t&agrave;i sản. L&yacute; tưởng nhất khoản tiền t&iacute;ch lũy n&agrave;y n&ecirc;n đạt mức 50% gi&aacute; trị căn nh&agrave;. Tỷ lệ vay 50% gi&aacute; trị t&agrave;i sản được xem l&agrave; &aacute;p lực t&agrave;i ch&iacute;nh vừa phải, kh&ocirc;ng qu&aacute; căng thẳng.<br />\r\n<br />\r\n<strong>Thứ hai</strong>: Thuộc l&ograve;ng quy tắc v&agrave;ng - vốn cố định nhưng l&atilde;i vay th&igrave; ng&acirc;n h&agrave;ng thường bị thả nổi, &aacute;p dụng bi&ecirc;n độ thay đổi định kỳ 6-12 th&aacute;ng một lần. Hiện nay nhiều ng&acirc;n h&agrave;ng ch&agrave;o l&atilde;i suất ưu đ&atilde;i hấp dẫn: 8,5-9% một năm nhưng chỉ &aacute;p dụng trong 6-12 th&aacute;ng đầu ti&ecirc;n. Từ th&aacute;ng thứ 13 trở đi, kh&aacute;ch h&agrave;ng sẽ bị điều chỉnh l&atilde;i suất mới, cao hơn mức cũ 4%.<br />\r\n<br />\r\nTr&ecirc;n thực tế, khoản vay mua nh&agrave; được ng&acirc;n h&agrave;ng xem l&agrave; khoản cho vay ti&ecirc;u d&ugrave;ng n&ecirc;n l&atilde;i suất kh&aacute; cao, trừ một số trường hợp đặc biệt chủ đầu tư c&oacute; quan hệ th&acirc;n thiết với ng&acirc;n h&agrave;ng n&ecirc;n l&atilde;i suất thấp. Do vậy trước khi vay mua nh&agrave; phải xem kỹ l&atilde;i suất thay đổi cho c&aacute;c năm sau theo hợp đồng t&iacute;n dụng.<br />\r\n<br />\r\n<strong>Thứ ba</strong>: Duy tr&igrave; thu nhập ổn định nhằm tạo cơ sở t&agrave;i ch&iacute;nh vững v&agrave;ng để trả nợ ng&acirc;n h&agrave;ng (bao gồm vốn v&agrave; l&atilde;i vay). Song song đ&oacute;, nh&agrave; đầu tư, người mua nh&agrave; v&agrave; gia đ&igrave;nh cần gia tăng thu nhập từ c&aacute;c nguồn phụ để để đảm bảo d&ugrave; l&atilde;i suất tăng l&ecirc;n cũng c&oacute; thể trả nổi nợ gốc v&agrave; l&atilde;i vay.<br />\r\n<br />\r\n<strong>Thứ tư</strong>: Một khi đ&atilde; vay tiền ng&acirc;n h&agrave;ng để mua nh&agrave;, đừng v&igrave; sĩ diện m&agrave; mua cho bằng được căn nh&agrave; lớn. Ng&ocirc;i nh&agrave; hợp l&yacute; nhất trong ho&agrave;n cảnh n&agrave;y l&agrave; c&oacute; diện t&iacute;ch vừa phải, đủ cho c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh sử dụng. Mua trả g&oacute;p một căn nh&agrave; qu&aacute; rộng, thừa nhiều diện t&iacute;ch, đồng nghĩa với việc gia đ&igrave;nh phải c&ograve;ng lưng trả những khoản nợ gốc v&agrave; l&atilde;i vay kh&ocirc;ng cần thiết.<br />\r\n<br />\r\n<strong>Thứ năm</strong>: Chọn mốc thời gian vay ng&acirc;n h&agrave;ng c&agrave;ng d&agrave;i c&agrave;ng tốt. Khi bạn đ&atilde; vay ng&acirc;n h&agrave;ng th&igrave; vay tr&ecirc;n 5 năm đều c&oacute; l&atilde;i suất như nhau. Do đ&oacute; bạn n&ecirc;n chọn thời gian vay d&agrave;i nhất c&oacute; thể để giảm số vốn gốc h&agrave;ng th&aacute;ng xuống thấp nhất.<br />\r\n<br />\r\n<strong>Thứ s&aacute;u</strong>: Chủ động đối ph&oacute; với bẫy l&atilde;i suất thả nổi. Để thực hiện được điều n&agrave;y, người mua nh&agrave; phải ước t&iacute;nh trong giả định rằng l&atilde;i suất c&oacute; thể tăng đến 30% cũng như lường trước một số chi ph&iacute; đột biến bất ngờ. Như vậy, sau khi trừ chi ti&ecirc;u gia đ&igrave;nh h&agrave;ng th&aacute;ng th&igrave; số tiền c&ograve;n lại phải đảm bảo 150% số tiền phải trả ng&acirc;n h&agrave;ng. V&iacute; dụ bạn trả ng&acirc;n h&agrave;ng 8,8 triệu đồng th&igrave; bạn phải c&oacute; số tiền dư h&agrave;ng th&aacute;ng l&agrave; 13,2 triệu đồng để đề ph&ograve;ng t&igrave;nh huống l&atilde;i suất c&oacute; thể bất ngờ tăng l&ecirc;n.<br />\r\n<br />\r\n<strong>Thứ bảy</strong>: Lưu &yacute; c&aacute;c điều khoản l&atilde;i suất phạt trả nợ trước hạn. Th&ocirc;ng thường khi vay mua nh&agrave;, c&oacute; đến 80% kh&aacute;ch h&agrave;ng thường thanh to&aacute;n dứt nợ trong 5 năm đầu, n&ecirc;n thường bị phạt trả trước. Khoản n&agrave;y người vay mua nh&agrave; &iacute;t để &yacute; v&agrave; phạt kh&aacute; nặng từ 1-3% tr&ecirc;n số tiền trả nợ trước hạn. Một khi ng&acirc;n h&agrave;ng ch&agrave;o l&atilde;i suất thấp họ thường đi k&egrave;m mức phạt cao để b&ugrave; lỗ l&atilde;i suất ưu đ&atilde;i ban đầu.<br />\r\n<br />\r\n<strong>Thứ t&aacute;m</strong>: Mua bảo hiểm căn nh&agrave;. Điều n&agrave;y rất quan trọng, đặc biệt trong t&igrave;nh huống bạn đang vay vốn ng&acirc;n h&agrave;ng nhằm để đảm bảo rủi ro bất ngờ về bất động sản. Ph&iacute; mua bảo hiểm tương đối thấp, khoảng 0,14%. Lấy v&iacute; dụ: với căn nh&agrave; 1,2 tỷ đồng th&igrave; mức ph&iacute; n&agrave;y tương ứng 1,68 triệu đồng/năm.&nbsp;<br />\r\n<br />\r\nB&agrave;i to&aacute;n&nbsp;<strong>l&agrave;m sao để mua căn hộ chung cư trả g&oacute;p m&agrave; kh&ocirc;ng bị lừa</strong> đ&atilde; c&oacute; lời giải. Quan trọng l&agrave; c&aacute;ch vận dụng linh hoạt của qu&yacute; vị. Ch&uacute;c qu&yacute; vị c&oacute; những thương vụ th&agrave;nh c&ocirc;ng.', 0, NULL, NULL, 1, 0, 59, '2017-06-02 00:00:01', '2017-06-02 00:02:47', 1, 1),
(12, '15 lỗi sai cần tránh để trang trí nhà đẹp hơn và tránh lãng phí', '15-loi-sai-can-tranh-de-trang-tri-nha-dep-hon-va-tranh-lang-phi', '15 loi sai can tranh de trang tri nha dep hon va tranh lang phi', 'Khi trang trí nhà chúng ta thường hay mắc phải những sai lầm cơ bản. Bài viết này sẽ chỉ ra 15 lỗi sai thường gặp để bạn có thể trang trí nhà một cách đẹp mắt và tiết kiêm nhất, tránh lãng phí.', '2017/06/02/15-loi-trang-tri-nha-can-tranh-de-tranh-lang-phi-dai-dien-1496363208.jpg', 6, 'Thiết kế vốn l&agrave; một lập trường c&aacute; nh&acirc;n, bạn c&oacute; thể thấy ch&uacute;ng đẹp, nhưng người kh&aacute;c lại kh&ocirc;ng v&agrave; ngược lại. Tuy nhi&ecirc;n, trang tr&iacute; nh&agrave; cũng c&oacute; những nguy&ecirc;n tắc cơ bản lu&ocirc;n ph&ugrave; hợp với mọi kh&ocirc;ng gian m&agrave; bạn cần phải ghi nhớ, v&igrave; c&oacute; rất nhiều người đ&atilde; gặp phải những lỗi sai kh&ocirc;ng đ&aacute;ng c&oacute; trong khi trang tr&iacute; nh&agrave;.<br />\r\n<br />\r\nCh&uacute;ng ta đều rất dễ mắc lỗi khi trang tr&iacute; nh&agrave; m&igrave;nh. Thậm ch&iacute; ngay cả những nh&agrave; thiết kế chuy&ecirc;n nghiệp cũng vậy, v&igrave; vậy kh&ocirc;ng cần phải cảm thấy qu&aacute; tệ. Điều quan trọng l&agrave; nhận ra bạn đang mắc sai lầm. Tất nhi&ecirc;n, đ&ocirc;i khi điều n&agrave;y trở n&ecirc;n rất kh&oacute; khăn. Vậy mẹo n&agrave;o sẽ gi&uacute;p bạn tr&aacute;nh được mắc những lỗi n&agrave;y? H&atilde;y thử kiểm tra danh s&aacute;ch những l&ocirc;i trang tr&iacute; phổ biến v&agrave; t&igrave;m ra bạn đang mắc lỗi n&agrave;o v&agrave; l&agrave;m c&aacute;ch n&agrave;o để c&oacute; thể tr&aacute;nh n&oacute; trong tương lai. Sẽ chẳng bao giờ l&agrave; qu&aacute; muộn để cải thiện việc trang tr&iacute; của ng&ocirc;i nh&agrave; bạn.<br />\r\n<br />\r\n<strong>Tr&aacute;nh sơn ph&ograve;ng m&agrave; kh&ocirc;ng thử m&agrave;u trước</strong><br />\r\n<br />\r\nBạn c&oacute; bao giờ đi mua quần &aacute;o, v&agrave; thấy rằng m&agrave;u m&igrave;nh th&iacute;ch thực tế lại chẳng hợp với phong c&aacute;ch ăn mặc hay nước da của m&igrave;nh ch&uacute;t n&agrave;o kh&ocirc;ng? Nh&agrave; của bạn cũng vậy, ch&uacute;ng ta thường sắp xếp đồ nội thất trước khi sơn nh&agrave;, thay v&igrave; sơn to&agrave;n bộ ng&ocirc;i nh&agrave; rồi mới nh&igrave;n lại v&agrave; b&igrave;nh luận n&oacute; hợp hay kh&ocirc;ng, h&atilde;y thử sơn một ch&uacute;t m&agrave;u sơn trước khi quyết định c&oacute; sơn ho&agrave;n to&agrave;n căn ph&ograve;ng hoặc ng&ocirc;i nh&agrave; bạn m&agrave;u g&igrave;.<br />\r\n<br />\r\n<strong>Trang tr&iacute; mỗi ph&ograve;ng theo một phong c&aacute;ch</strong><br />\r\n<br />\r\nViệc trang tr&iacute; mỗi ph&ograve;ng kh&aacute;c lạ v&agrave; độc đ&aacute;o chẳng c&oacute; g&igrave; l&agrave; sai. Tuy nhi&ecirc;n, đừng ph&oacute;ng đại v&agrave; trang tr&iacute; mỗi kh&ocirc;ng gian m&agrave; chẳng c&oacute; g&igrave; tương đồng với phần c&ograve;n lại của c&aacute;c ph&ograve;ng kh&aacute;c. Bạn cần đảm bảo mức độ gắn kết nhất định bằng m&agrave;u sắc, nội thất hay bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.\r\n<div style="text-align:center"><img alt="cac loi trang tri nha can tranh de tranh lang phi" src="/uploads/images/cac%20loi%20trang%20tri%20nha%20can%20tranh%20de%20tranh%20lang%20phi.jpg" style="height:433px; width:650px" /></div>\r\n<br />\r\n<strong>Theo đuổi xu hướng</strong><br />\r\n<br />\r\nDễ hiểu l&agrave; ai trong ch&uacute;ng ta cũng đều muốn cập nhật những xu hướng mới nhất. Tuy nhi&ecirc;n, xu hướng đến v&agrave; đi nhanh như gi&oacute;, v&agrave; bạn sẽ nhận ra rằng chỉ v&agrave;i th&aacute;ng sau đ&oacute;, bạn đ&atilde; kh&ocirc;ng c&ograve;n th&iacute;ch ng&ocirc;i nh&agrave; của m&igrave;nh nữa. Ch&iacute;nh v&igrave; vậy, thay v&igrave; chọn thứ g&igrave; đ&oacute; &quot;xu hướng&quot;, h&atilde;y chọn thứ g&igrave; đ&oacute; bền vững, v&agrave; m&atilde;i tồn tại c&ugrave;ng thời gian.<br />\r\n<br />\r\n<strong>Sử dụng m&agrave;u y&ecirc;u th&iacute;ch của bạn l&agrave;m m&agrave;u chủ đạo</strong><br />\r\n<br />\r\nBạn c&oacute; thể sẽ cảm thấy quan điểm n&agrave;y thật v&ocirc; l&yacute;. Nếu bạn th&iacute;ch m&agrave;u n&agrave;y, tại sao lại kh&ocirc;ng muốn thấy n&oacute; trong ng&ocirc;i nh&agrave; bạn chứ? Thực tế, điều n&agrave;y kh&ocirc;ng c&oacute; nghĩa l&agrave; kh&ocirc;ng sử dụng ch&uacute;ng trong nh&agrave; bạn, chỉ l&agrave; kh&ocirc;ng sử dụng ch&uacute;ng l&agrave;m gam m&agrave;u ch&iacute;nh. Bởi v&igrave; đ&acirc;y kh&ocirc;ng phải l&agrave; c&aacute;ch tốt nhất để l&agrave;m nổi bật gam m&agrave;u y&ecirc;u th&iacute;ch của bạn. H&atilde;y thử chia ch&uacute;ng th&agrave;nh những mảng nhỏ, v&agrave; bố tr&iacute; để ch&uacute;ng kh&ocirc;ng khiến bạn &quot;ngợp&quot; mắt.<br />\r\n<br />\r\n<strong>Sử dụng thảm trải s&agrave;n kh&ocirc;ng đ&uacute;ng k&iacute;ch thước</strong><br />\r\n<br />\r\nChọn một chiếc thảm nhỏ v&agrave; đặt ở giữa một căn ph&ograve;ng lớn sẽ khiến căn ph&ograve;ng c&oacute; cảm gi&aacute;c yếu đuối, nh&uacute;t nh&aacute;t v&agrave; kệch cỡm &ndash; thậm ch&iacute; th&agrave; bạn bỏ thảm đi c&ograve;n tuyệt hơn. Những chiếc thảm cho khu vực lớn hơn c&oacute; thể sẽ đắt, nhưng đ&ocirc;i khi lựa chọn nhỏ hơn một ch&uacute;t sẽ ph&ugrave; hợp với ng&acirc;n s&aacute;ch của bạn.<br />\r\n<br />\r\n<strong>Bỏ qua cửa sổ</strong><br />\r\n<br />\r\n13 lỗi sai cần tr&aacute;nh trong trang tr&iacute; nh&agrave; để giảm thiểu l&atilde;ng ph&iacute; kh&ocirc;ng đ&aacute;ng c&oacute; - Ảnh 4.<br />\r\nCửa sổ l&agrave; nguồn &aacute;nh s&aacute;ng tự nhi&ecirc;n ch&iacute;nh v&agrave; c&oacute; lẽ l&agrave; duy nhất cho ng&ocirc;i nh&agrave; bạn, vậy th&igrave; tại sao lại bỏ lơ ch&uacute;ng? Cửa sổ cũng gi&uacute;p nh&agrave; bạn c&oacute; tầm nh&igrave;n đẹp v&agrave; bạn c&oacute; thể tận dụng được việc n&agrave;y.<br />\r\n<br />\r\n<strong>Qu&aacute; nhiều ảnh ở một chỗ</strong><br />\r\n<br />\r\nThay v&igrave; trưng b&agrave;y cả đống ảnh tr&ecirc;n bệ bếp sưởi, tr&ecirc;n kệ trong nh&agrave;, h&atilde;y thử c&acirc;n nhắc việc thay thế bằng một mảng tường trưng b&agrave;y ảnh. C&aacute;ch n&agrave;y sẽ gi&uacute;p bạn tiết kiệm kh&ocirc;ng gian v&agrave; bạn sẽ c&oacute; thể trưng b&agrave;y c&aacute;c bức ảnh phong c&aacute;ch v&agrave; c&oacute; tổ chức hơn, sử dụng những chiếc khung ảnh ph&ugrave; hợp hoặc tạo những họa tiết th&uacute; vị.\r\n<div style="text-align:center"><img alt="loi trang tri nha can tranh" src="/uploads/images/loi%20trang%20tri%20nha%20can%20tranh.jpg" style="height:430px; width:650px" /></div>\r\n<br />\r\n<strong>Qu&aacute; nhiều gối tựa</strong><br />\r\n<br />\r\nDễ hiểu rằng bạn muốn kh&ocirc;ng gian nh&agrave; c&oacute; cảm gi&aacute;c ấm &aacute;p v&agrave; thoải m&aacute;i bằng c&aacute;ch bỏ thật nhiều gối tựa lưng. Nhưng những chiếc gối n&agrave;y sẽ chiếm hết cả kh&ocirc;ng gian ngồi, v&agrave; khiến cho chiếc ghế sofa nh&agrave; bạn trở n&ecirc;n b&iacute; b&aacute;ch. H&atilde;y sử dụng gối như những họa tiết trang tr&iacute;, v&agrave; nhớ đừng đặt qu&aacute; nhiều tr&ecirc;n ghế.<br />\r\n<br />\r\n<strong>Thiếu họa tiết</strong><br />\r\n<br />\r\nĐ&ocirc;i khi ch&uacute;ng ta qu&ecirc;n rằng họa tiết cũng tồn tại, chứ kh&ocirc;ng phải chỉ c&oacute; m&agrave;u sắc. Họa tiết gi&uacute;p việc trang tr&iacute; nh&agrave; bạn tr&ocirc;ng bớt đơn điệu hơn. Tương tự, đ&ocirc;i khi ch&uacute;ng ta cũng lờ đi c&aacute;c kết cấu, trong khi những kết cấu th&uacute; vị c&oacute; thể mang lại những hiệu ứng th&uacute; vị trong việc trang tr&iacute;.<br />\r\n<br />\r\nTuy nhi&ecirc;n, khi sử dụng họa tiết, ch&uacute;ng ta rất dễ sử dụng qu&aacute; nhiều. V&igrave; vậy h&atilde;y lu&ocirc;n nhớ rằng qu&aacute; nhiều họa tiết c&oacute; thể khiến cho kh&ocirc;ng gian trở n&ecirc;n lộn xộn. Điều n&agrave;y cũng khiến cho bạn kh&oacute; c&oacute; thể kết hợp v&agrave; dễ mắc sai lầm.<br />\r\n<br />\r\n<strong>Kh&ocirc;ng r&egrave;m cửa</strong><br />\r\n<br />\r\nC&oacute; thể bạn kh&ocirc;ng muốn phủ r&egrave;m cửa sổ, v&igrave; bạn th&iacute;ch để &aacute;nh s&aacute;ng tự nhi&ecirc;n chiếu v&agrave;o ph&ograve;ng. Điều n&agrave;y kh&ocirc;ng c&oacute; nghĩa l&agrave; bạn phải để trống cửa sổ m&agrave; kh&ocirc;ng d&ugrave;ng r&egrave;m. C&oacute; rất nhiều kiểm r&egrave;m, v&agrave; rất nhiều phong c&aacute;ch để bạn chọn. Ch&uacute;ng c&oacute; thể gi&uacute;p kh&ocirc;ng gian tr&ocirc;ng ho&agrave;n chỉnh kh&ocirc;ng, v&agrave; sẽ gi&uacute;p mang th&ecirc;m m&agrave;u sắc, kết cấu v&agrave;o cho căn ph&ograve;ng của bạn.<br />\r\n<br />\r\n<strong>Sử dụng sai chủ đề</strong><br />\r\n<br />\r\nH&atilde;y thử chia sẻ th&agrave;nh thật n&agrave;o. Bạn c&oacute; thể muốn c&oacute; một ph&ograve;ng kh&aacute;ch theo phong c&aacute;ch biển, nhưng kết quả đạt được lại kh&ocirc;ng đ&uacute;ng như mơ ước, khi căn hộ của bạn kh&ocirc;ng thể c&oacute; tầm nh&igrave;n rộng tuyệt đẹp trong một th&agrave;nh phố chật chội. V&igrave; vậy, h&atilde;y lựa chọn chủ đề ph&ugrave; hợp cho ng&ocirc;i nh&agrave; bạn, v&agrave; h&atilde;y đảm bảo rằng bạn c&oacute; thể c&oacute; đủ nguy&ecirc;n liệu để đạt được điều n&agrave;y.<br />\r\n<br />\r\n<strong>Tr&aacute;nh sử dụng m&agrave;u s&aacute;ng hoặc tối</strong><br />\r\n<br />\r\nChắc chắn rằng những m&agrave;u rất s&aacute;ng hoặc tối c&oacute; thể rất đ&aacute;ng sợ, v&agrave; kh&ocirc;ng phải ai cũng thoải m&aacute;i khi sử dụng ch&uacute;ng trong thiết kế nội thất nh&agrave; của m&igrave;nh. Tuy nhi&ecirc;n, nếu bạn chỉ sử dụng những m&agrave;u trung t&iacute;nh, ng&ocirc;i nh&agrave; của bạn sẽ kh&ocirc;ng c&ograve;n nổi bật, v&agrave; sẽ thiếu c&aacute; t&iacute;nh. V&igrave; vậy đừng e ngại những gam m&agrave;u mạnh.\r\n<div style="text-align:center"><img alt="cac loi trang tri nha can tranh" src="/uploads/images/cac%20loi%20trang%20tri%20nha%20can%20tranh.jpg" style="height:488px; width:650px" /></div>\r\n<br />\r\n<strong>Ham rẻ</strong><br />\r\n<br />\r\nC&oacute; một ch&uacute;t kh&aacute;c biệt giữa &quot;rẻ&quot; v&agrave; &quot;kh&ocirc;ng đắt&quot;. Một v&agrave;i thứ c&oacute; thể kh&ocirc;ng đắt nhưng kh&ocirc;ng c&oacute; nghĩa l&agrave; rẻ v&agrave; ngược lại. Tất nhi&ecirc;n sẽ chẳng c&oacute; g&igrave; l&agrave; sai khi bạn săn l&ugrave;ng nwhnxg sản phẩm giảm gi&aacute; v&agrave; muốn tiết kiệm tiền, nhưng đừng h&agrave; tiện về chất lượng với những m&oacute;n đồ rẻ. Sẽ tốt hơn nếu bạn đầu tư v&agrave;o những m&oacute;n đồ chất lượng thay v&igrave; d&ugrave;ng những m&oacute;n đồ rẻ v&agrave; sớm phải thay ch&uacute;ng v&igrave; nhanh bị hỏng.<br />\r\n<br />\r\n<strong>L&atilde;ng qu&ecirc;n tiền sảnh hay lối v&agrave;o nh&agrave;</strong><br />\r\n<br />\r\nTiền sảnh hay h&agrave;nh lang dẫn v&agrave;o nh&agrave; l&agrave; một kh&ocirc;ng gian v&ocirc; c&ugrave;ng quan trọng. Khu vực n&agrave;y tạo ấn tượng đầu ti&ecirc;n cho ng&ocirc;i nh&agrave; bạn v&agrave; l&agrave; thứ đầu ti&ecirc;n m&agrave; mỗi vị kh&aacute;ch gh&eacute; thăm nh&agrave; bạn nh&igrave;n thấy khi bước v&agrave;o nh&agrave;. V&igrave; vậy, h&atilde;y trang tr&iacute; khu vực n&agrave;y thay v&igrave; bỏ qu&ecirc;n n&oacute;. H&atilde;y tạp một kh&ocirc;ng gian mang lại cảm gi&aacute;c ch&agrave;o đ&oacute;n v&agrave; đ&aacute;ng y&ecirc;u nhất c&oacute; thể, v&agrave; đừng ngại thể hiện c&aacute; t&iacute;nh của m&igrave;nh qua g&oacute;c n&agrave;y.<br />\r\n<br />\r\n<strong>Để d&acirc;y điện, d&acirc;y mạng tr&agrave;n lan khắp nh&agrave;</strong><br />\r\n<br />\r\nKh&ocirc;ng ai muốn thấy đống d&acirc;y điện, d&acirc;y mạng nằm dưới gầm b&agrave;n hay b&ecirc;n cạnh TV. Vậy th&igrave; c&oacute; thể l&agrave;m g&igrave; với ch&uacute;ng đ&acirc;y? H&atilde;y sắp xếp, d&aacute;n nh&atilde;n cho ch&uacute;ng v&agrave; dấu ch&uacute;ng trong hộp hay biến ch&uacute;ng th&agrave;nh ch&iacute;nh những nguy&ecirc;n liệu để trang tr&iacute; tường.', 0, NULL, NULL, 1, 0, 60, '2017-06-02 07:29:28', '2017-06-02 07:32:30', 1, 1),
(13, 'Đất chưa xây dựng nhà thì có được cấp sổ đỏ không?', 'dat-chua-xay-dung-nha-thi-co-duoc-cap-so-do-khong', 'Dat chua xay dung nha thi co duoc cap so do khong', 'Hiện nay có rất nhiều người tác thủa để bán đất. Tất nhiên đất của họ là đất trống và để bán thì phải có sổ đỏ. Vậy đất chưa xây dựng nhà có được cấp sổ đỏ không?', '2017/06/04/dat-chua-xay-nha-co-duoc-cap-so-do-khong-1496534404.jpg', 5, 'Theo quy định tại điều 100 Luật đất đai 2013 quy định c&aacute;c trường hợp được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nh&agrave; ở v&agrave; t&agrave;i sản kh&aacute;c gắn liền với đất cho hộ gia đ&igrave;nh, c&aacute; nh&acirc;n, cộng đồng d&acirc;n cư đang sử dụng đất c&oacute; giấy tờ về quyền sử dụng đất:<br />\r\n<br />\r\nĐiều 100. Cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nh&agrave; ở v&agrave; t&agrave;i sản kh&aacute;c gắn liền với đất cho hộ gia đ&igrave;nh, c&aacute; nh&acirc;n, cộng đồng d&acirc;n cư đang sử dụng đất c&oacute; giấy tờ về quyền sử H<br />\r\n<br />\r\n1. Hộ gia đ&igrave;nh, c&aacute; nh&acirc;n đang sử dụng đất ổn định m&agrave; c&oacute; một trong c&aacute;c loại giấy tờ sau đ&acirc;y th&igrave; được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nh&agrave; ở v&agrave; t&agrave;i sản kh&aacute;c gắn liền với đất v&agrave; kh&ocirc;ng phải nộp tiền sử dụng đất:<br />\r\n<br />\r\na) Những giấy tờ về quyền được sử dụng đất trước ng&agrave;y 15 th&aacute;ng 10 năm 1993 do cơ quan c&oacute; thẩm quyền cấp trong qu&aacute; tr&igrave;nh thực hiện ch&iacute;nh s&aacute;ch đất đai của Nh&agrave; nước Việt Nam d&acirc;n chủ Cộng h&ograve;a, Ch&iacute;nh phủ C&aacute;ch mạng l&acirc;m thời Cộng h&ograve;a miền Nam Việt Nam v&agrave; Nh&agrave; nước Cộng h&ograve;a x&atilde; hội chủ nghĩa Việt Nam;<br />\r\n<br />\r\nb) Giấy chứng nhận quyền sử dụng đất tạm thời được cơ quan nh&agrave; nước c&oacute; thẩm quyền cấp hoặc c&oacute; t&ecirc;n trong Sổ đăng k&yacute; ruộng đất, Sổ địa ch&iacute;nh trước ng&agrave;y 15 th&aacute;ng 10 năm 1993;<br />\r\n<br />\r\nc) Giấy tờ hợp ph&aacute;p về thừa kế, tặng cho quyền sử dụng đất hoặc t&agrave;i sản gắn liền với đất; giấy tờ giao nh&agrave; t&igrave;nh nghĩa, nh&agrave; t&igrave;nh thương gắn liền với đất;<br />\r\n<br />\r\nd) Giấy tờ chuyển nhượng quyền sử dụng đất, mua b&aacute;n nh&agrave; ở gắn liền với đất ở trước ng&agrave;y 15 th&aacute;ng 10 năm 1993 được Ủy ban nh&acirc;n d&acirc;n cấp x&atilde; x&aacute;c nhận l&agrave; đ&atilde; sử dụng trước ng&agrave;y 15 th&aacute;ng 10 năm 1993;<br />\r\n<br />\r\nđ) Giấy tờ thanh l&yacute;, h&oacute;a gi&aacute; nh&agrave; ở gắn liền với đất ở; giấy tờ mua nh&agrave; ở thuộc sở hữu nh&agrave; nước theo quy định của ph&aacute;p luật;<br />\r\n<br />\r\ne) Giấy tờ về quyền sử dụng đất do cơ quan c&oacute; thẩm quyền thuộc chế độ cũ cấp cho người sử dụng đất;<br />\r\n<br />\r\ng) C&aacute;c loại giấy tờ kh&aacute;c được x&aacute;c lập trước ng&agrave;y 15 th&aacute;ng 10 năm 1993 theo quy định của Ch&iacute;nh phủ.\r\n<div style="text-align:center"><img alt="dat chua xay nha co duoc cap so do khong" src="/uploads/images/dat%20chua%20xay%20nha%20co%20duoc%20cap%20so%20do%20khong.jpg" style="height:400px; width:650px" /></div>\r\n<br />\r\n2. Hộ gia đ&igrave;nh, c&aacute; nh&acirc;n đang sử dụng đất c&oacute; một trong c&aacute;c loại giấy tờ quy định tại khoản 1 Điều n&agrave;y m&agrave; tr&ecirc;n giấy tờ đ&oacute; ghi t&ecirc;n người kh&aacute;c, k&egrave;m theo giấy tờ về việc chuyển quyền sử dụng đất c&oacute; chữ k&yacute; của c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan, nhưng đến trước ng&agrave;y Luật n&agrave;y c&oacute; hiệu lực thi h&agrave;nh chưa thực hiện thủ tục chuyển quyền sử dụng đất theo quy định của ph&aacute;p luật v&agrave; đất đ&oacute; kh&ocirc;ng c&oacute; tranh chấp th&igrave; được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nh&agrave; ở v&agrave; t&agrave;i sản kh&aacute;c gắn liền với đất v&agrave; kh&ocirc;ng phải nộp tiền sử dụng đất.<br />\r\n<br />\r\n3. Hộ gia đ&igrave;nh, c&aacute; nh&acirc;n được sử dụng đất theo bản &aacute;n hoặc quyết định của T&ograve;a &aacute;n nh&acirc;n d&acirc;n, quyết định thi h&agrave;nh &aacute;n của cơ quan thi h&agrave;nh &aacute;n, văn bản c&ocirc;ng nhận kết quả h&ograve;a giải th&agrave;nh, quyết định giải quyết tranh chấp, khiếu nại, tố c&aacute;o về đất đai của cơ quan nh&agrave; nước c&oacute; thẩm quyền đ&atilde; được thi h&agrave;nh th&igrave; được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nh&agrave; ở v&agrave; t&agrave;i sản kh&aacute;c gắn liền với đất; trường hợp chưa thực hiện nghĩa vụ t&agrave;i ch&iacute;nh th&igrave; phải thực hiện theo quy định của ph&aacute;p luật.<br />\r\n<br />\r\n4. Hộ gia đ&igrave;nh, c&aacute; nh&acirc;n đang sử dụng đất được Nh&agrave; nước giao đất, cho thu&ecirc; đất từ ng&agrave;y 15 th&aacute;ng 10 năm 1993 đến ng&agrave;y Luật n&agrave;y c&oacute; hiệu lực thi h&agrave;nh m&agrave; chưa được cấp Giấy chứng nhận th&igrave; được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nh&agrave; ở v&agrave; t&agrave;i sản kh&aacute;c gắn liền với đất; trường hợp chưa thực hiện nghĩa vụ t&agrave;i ch&iacute;nh th&igrave; phải thực hiện theo quy định của ph&aacute;p luật.<br />\r\n<br />\r\n5. Cộng đồng d&acirc;n cư đang sử dụng đất c&oacute; c&ocirc;ng tr&igrave;nh l&agrave; đ&igrave;nh, đền, miếu, am, từ đường, nh&agrave; thờ họ; đất n&ocirc;ng nghiệp quy định tại khoản 3 Điều 131 của Luật n&agrave;y v&agrave; đất đ&oacute; kh&ocirc;ng c&oacute; tranh chấp, được Ủy ban nh&acirc;n d&acirc;n cấp x&atilde; nơi c&oacute; đất x&aacute;c nhận l&agrave; đất sử dụng chung cho cộng đồng th&igrave; được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nh&agrave; ở v&agrave; t&agrave;i sản kh&aacute;c gắn liền với đất.&quot;<br />\r\n<br />\r\nNhư vậy, nếu chủ sở hữu c&oacute; đầy đủ giấy tờ về mua đất v&agrave; mảnh đất kh&ocirc;ng c&oacute; tranh chấp th&igrave; d&ugrave; chưa x&acirc;y dựng nh&agrave; vẫn được ph&eacute;p cấp giấy chứng nhận quyền sử dụng đất (sổ đỏ).', 0, NULL, NULL, 1, 0, 61, '2017-06-04 07:01:09', '2017-06-04 07:01:09', 1, 1);
INSERT INTO `articles` (`id`, `title`, `slug`, `alias`, `description`, `image_url`, `cate_id`, `content`, `is_hot`, `project_id`, `tab_id`, `status`, `display_order`, `meta_id`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(14, 'Huyện cấp chứng nhận quyền sử dụng đất có đúng  luật không?', 'huyen-cap-so-do-dung-phap-luat-khong', 'Huyen cap chung nhan quyen su dung dat co dung  luat khong', 'Huyện đã cấp quyền sử dụng đất cho gia chủ mới trong đó có đất và đường đi. Nhà hàng xóm trước khi cấp  sổ vẫn đi chung con đường này, nay có đường mới khác lại cứ vẫn tùy tiện sử dụng con đường cũ nên xảy ra cãi vã. Tình huống này xử lý sao đây?', '2017/06/05/huyen-cap-so-do-co-dung-luat-phap-khong-1496620345.jpg', 5, 'Năm 1995, &ocirc;ng Quyết c&oacute; b&aacute;n cho gia đ&igrave;nh t&ocirc;i một ng&ocirc;i nh&agrave; tr&ecirc;n khoảnh đất vườn của &ocirc;ng. Trong khoảnh đất đ&oacute; c&oacute; lối đi của gia đ&igrave;nh &ocirc;ng Quyết đi từ nh&agrave; ra đường nhựa ch&iacute;nh m&agrave; l&acirc;u nay &ocirc;ng Quyết để cho b&agrave; H&ograve;a (người b&agrave; con của &ocirc;ng Quyết) c&ugrave;ng đi.<br />\r\n<br />\r\nC&ugrave;ng thời gian n&agrave;y, &ocirc;ng Quyết chuyển nh&agrave; ra gần đường nhựa ch&iacute;nh n&ecirc;n kh&ocirc;ng đi lối đi đ&oacute; nữa, nhưng vẫn để cho gia đ&igrave;nh b&agrave; H&ograve;a đi. Do đ&oacute;, khi chuyển nhượng cả khoảnh đất v&agrave; lối đi cho gia đ&igrave;nh t&ocirc;i, &ocirc;ng Quyết đ&atilde; chuyển đổi lối đi (rộng 2m) đ&oacute; l&ecirc;n ph&iacute;a tr&ecirc;n khoảnh đất đ&atilde; chuyển nhượng cho gia đ&igrave;nh t&ocirc;i để gia đ&igrave;nh b&agrave; H&ograve;a đi.<br />\r\n<br />\r\nĐến năm 2007 UBND huyện Mộ Đức cấp giấy chứng nhận quyền sử dụng đất (sổ đỏ) trong đ&oacute; c&oacute; hợp nhất vườn nh&agrave; t&ocirc;i đang ở với khoảnh đất v&agrave; lối đi do &ocirc;ng Quyết chuyển nhượng cho gia đ&igrave;nh t&ocirc;i.\r\n<div style="text-align:center"><img alt="huyen cap so do co hop phap khong" src="/uploads/images/huyen%20cap%20so%20do%20co%20dung%20luat%20phap%20khong.jpg" style="height:400px; width:650px" /></div>\r\n<br />\r\nNhư v&acirc;y sau khi chuyển nhượng cả khoảnh đất v&agrave; lối đi cho gia đ&igrave;nh t&ocirc;i, &ocirc;ng Quyết đ&atilde; mở lối đi mới thuận tiện cho gia đ&igrave;nh b&agrave; H&ograve;a v&agrave; gia đ&igrave;nh anh H&ugrave;ng (mới chuyển đến năm 2008) c&ugrave;ng đi, nhưng gia đ&igrave;nh b&agrave; H&ograve;a v&agrave; gia đ&igrave;nh anh H&ugrave;ng kh&ocirc;ng chịu đi đường mới m&agrave; cứ đi ngang qua vườn nh&agrave; t&ocirc;i (theo lối đi cũ).<br />\r\n<br />\r\nCho t&ocirc;i được hỏi luật sư: H&agrave;nh động của b&agrave; H&ograve;a đ&uacute;ng kh&ocirc;ng ? Huyện cấp giấy chứng nhận quyền sử dụng đất đ&uacute;ng ph&aacute;p luật kh&ocirc;ng?<br />\r\n<br />\r\nT&ocirc;i xin cảm ơn.<br />\r\n<br />\r\n<strong>C&ocirc;ng ty Luật TNHH Đất Luật trả lời:</strong><br />\r\n<br />\r\nTheo quy định ph&aacute;p luật hiện h&agrave;nh th&igrave; việc cấp Giấy chứng nhận quyền sử dụng đất tr&ecirc;n cơ sở hợp nhất đất vườn của &ocirc;ng/b&agrave; v&agrave; đất nhận chuyển nhượng của &ocirc;ng Quyết l&agrave; ho&agrave;n to&agrave;n hợp ph&aacute;p .&nbsp;<br />\r\n<br />\r\nV&igrave; vậy &ocirc;ng/b&agrave; c&oacute; to&agrave;n quyền định đoạt đối với t&agrave;i sản l&agrave; quyền sử dụng đất của m&igrave;nh theo quy định của ph&aacute;p luật. &Ocirc;ng/B&agrave; c&oacute; quyền y&ecirc;u cầu b&agrave; H&ograve;a v&agrave; &ocirc;ng H&ugrave;ng kh&ocirc;ng được đi qua thửa đất của &ocirc;ng/b&agrave; nữa hoặc thực hiện c&aacute;c biện ph&aacute;p cần thiết để bảo vệ quyền lợi hợp ph&aacute;p của m&igrave;nh như r&agrave;o, chắn,...\r\n<div style="text-align:right"><em>Theo Đất Luật</em></div>\r\n', 0, NULL, NULL, 1, 0, 62, '2017-06-05 06:58:29', '2017-06-05 06:58:50', 1, 1),
(15, 'Mua căn hộ chung cư cần những loại giấy tờ gì?', 'mua-can-ho-chung-cu-can-nhung-loai-giay-to-gi', 'Mua can ho chung cu can nhung loai giay to gi', 'Mua căn hộ chung cư tuy tỷ lệ rỉ ro thấp hơn mua bán nhà riêng nhưng nguyên tắc "cẩn tắc vô áy náy" vẫn phải ưu tiên. Để đảm quá trình mua bán hợp pháp thì khi mua căn hộ chung cư cần những loại giấy tờ gì? Mời quý vị tham khảo.', '2017/06/05/mua-can-ho-chung-cu-can-nhung-loai-giay-to-gi-day-du-nhat-1496621772.jpg', 5, 'Th&ocirc;ng thường c&aacute;c chủ đầu tư sẽ ph&acirc;n phối dự &aacute;n căn hộ chung cư cho c&aacute;c s&agrave;n giao dịch, rồi từ s&agrave;n sẽ ph&acirc;n phối tiếp cho c&aacute;c c&ocirc;ng ty m&ocirc;i giới hoặc nếu dự &aacute;n kh&ocirc;ng qu&aacute; lớn th&igrave; ph&acirc;n phối trực tiếp cho cho một c&ocirc;ng ty m&ocirc;i giới n&agrave;o đ&oacute; lu&ocirc;n. Để tr&aacute;nh c&aacute;c kiểu l&agrave;m ăn chộp giật. Qu&yacute; vị lưu &yacute; phải l&agrave;m đ&uacute;ng luật khi mua b&aacute;n căn hộ chung cư.\r\n<h3>Mua căn hộ chung cư cần những loại giấy tờ g&igrave;?</h3>\r\n<br />\r\nTheo quy định của Khoản 1, Điều 118 Luật Nh&agrave; ở năm 2014, khi giao dịch mua b&aacute;n nh&agrave; ở (căn hộ chung cư) phải c&oacute; c&aacute;c loại giấy tờ dưới đ&acirc;y:<br />\r\n<br />\r\na) C&oacute; giấy chứng nhận theo quy định của ph&aacute;p luật;<br />\r\n<br />\r\nb) Kh&ocirc;ng thuộc diện đang c&oacute; khiếu nại, tranh chấp, khiếu kiện về quyền sở hữu; hoặc đang trong thời hạn sở hữu nh&agrave; ở đối với trường hợp sở hữu nh&agrave; ở c&oacute; thời hạn;<br />\r\n<br />\r\nc) Kh&ocirc;ng bị k&ecirc; bi&ecirc;n để chấp h&agrave;nh quyết định h&agrave;nh ch&iacute;nh đ&atilde; c&oacute; hiệu lực ph&aacute;p luật của cơ quan nh&agrave; nước c&oacute; thẩm quyền hoặc kh&ocirc;ng bị k&ecirc; bi&ecirc;n để thi h&agrave;nh &aacute;n;<br />\r\n<br />\r\nd) Kh&ocirc;ng thuộc diện đ&atilde; c&oacute; quyết định thu hồi đất, hay c&oacute; th&ocirc;ng b&aacute;o ph&aacute; dỡ, giải tỏa nh&agrave; ở của cơ quan c&oacute; thẩm quyền. B&ecirc;n cạnh đ&oacute;, tờ khai lệ ph&iacute; trước bạ t&ecirc;n người trong giấy chứng nhận quyền sở hữu nh&agrave; ở phải ph&ugrave; hợp với giấy chứng minh nh&acirc;n d&acirc;n v&agrave; hộ khẩu.<br />\r\n<br />\r\nKhi đ&atilde; c&oacute; đủ c&aacute;c loại giấy tờ kể tr&ecirc;n, b&ecirc;n mua v&agrave; b&ecirc;n b&aacute;n cần k&egrave;m theo giấy chứng minh nh&acirc;n d&acirc;n, hộ khẩu của người chuyển nhượng v&agrave; người nhận chuyển nhượng mang đến Ph&ograve;ng c&ocirc;ng chứng (hoặc Văn ph&ograve;ng c&ocirc;ng chứng) để l&agrave;m hợp đồng chuyển nhượng. Tiếp đ&oacute;, đến Ph&ograve;ng thuế trước bạ để l&agrave;m nghĩa vụ thuế v&agrave; đến Ph&ograve;ng T&agrave;i nguy&ecirc;n - M&ocirc;i trường để &nbsp;thay đổi chủ sở hữu.<br />\r\n<br />\r\n<strong>Việc mua lại căn hộ chug cư đ&atilde; c&oacute; sổ đỏ rồi th&igrave; thủ tục cơ bản như sau:</strong><br />\r\n<br />\r\n- Sau khi kiểm tra th&ocirc;ng tin căn hộ đ&atilde; kỹ, hai b&ecirc;n đồng &yacute; tiến h&agrave;nh mua b&aacute;n th&igrave; trước ti&ecirc;n sẽ đến ph&ograve;ng c&ocirc;ng chứng để c&ocirc;ng chứng HĐMB (hợp đồng mua b&aacute;n). Hồ sơ mang theo (cả b&ecirc;n b&aacute;n lẫn b&ecirc;n mua) gồm sổ hồng căn hộ, sổ hộ khẩu, chứng minh thư nh&acirc;n d&acirc;n, giấy chứng nhận đăng k&iacute; kết h&ocirc;n (trường hợp độc th&acirc;n phải c&oacute; giấy chứng nhận độc th&acirc;n, trường hợp khước từ t&agrave;i sản phải c&oacute; giấy khước từ t&agrave;i sản). Hai loại giấy tờ cần khai đ&atilde; c&oacute; mẫu sẵn đ&oacute; l&agrave;: Lệ ph&iacute; trước bạ (b&ecirc;n chuyển nhượng khai v&agrave; nộp khoản ph&iacute; n&agrave;y, th&ocirc;ng tin phải khớp với CMTND v&agrave; Sổ hộ khẩu) v&agrave; thuế thu nhập c&aacute; nh&acirc;n (b&ecirc;n nhận chuyển nhượng khai v&agrave; nộp khoản ph&iacute; n&agrave;y).<br />\r\n<br />\r\n- Hồ sơ sang t&ecirc;n sổ đầy đủ c&aacute;c giấy tờ tr&ecirc;n sẽ được nộp tại Văn ph&ograve;ng 1 cửa của quận huyện li&ecirc;n quan v&agrave; người d&acirc;n sẽ nhận được giấy hẹn đến nộp thuế đồng thời nhận sổ đ&atilde; sang t&ecirc;n ngay.<br />\r\n<br />\r\nTrường hợp mua căn hộ thuộc dự &aacute;n mới chưa c&oacute; giấy chứng nhận quyền sở hữu căn hộ th&igrave; điều khoản cam kết trong hợp đồng của chủ đầu tư cần r&otilde; r&agrave;ng, sau bao l&acirc;u sẽ tiến h&agrave;nh l&agrave;m sổ cho d&acirc;n nếu kh&ocirc;ng sẽ chịu mức phạt như thế n&agrave;o... C&oacute; như vậy để tr&aacute;nh trường hợp CĐT ch&acirc;y ỳ trong việc l&agrave;m sổ cho từng hộ d&acirc;n trong t&ograve;a nh&agrave;.\r\n<h3 style="text-align:center"><img alt="mua can ho chung cu can nhung loai giay to gi day du nhat" src="/uploads/images/mua%20can%20ho%20chung%20cu%20can%20nhung%20loai%20giay%20to%20gi%20day%20du%20nhat.jpg" style="height:400px; width:650px" /></h3>\r\n\r\n<h3><br />\r\n5 lưu &yacute; ph&aacute;p l&yacute; khi mua nh&agrave; căn hộ chung cư</h3>\r\n<br />\r\nMột l&agrave;, cần t&igrave;m hiểu kỹ về tr&igrave;nh trạng dự &aacute;n cũng như về năng lực của chủ đầu tư. Chung cư đ&oacute; đ&atilde; ho&agrave;n tất x&acirc;y dựng v&agrave; xin cấp ph&eacute;p x&acirc;y dựng đầy đủ hay chưa, khu vực của chung cư c&oacute; nằm trong quy hoạch hay kh&ocirc;ng...<br />\r\n<br />\r\nMột số loại giấy tờ m&agrave; người mua cần kiểm tra, đ&oacute; l&agrave;: giấy chứng nhận đăng k&yacute; kinh doanh của chủ đầu tư, giấy ph&eacute;p đầu tư, giấy ph&eacute;p x&acirc;y dựng, sổ đỏ khu đất,...<br />\r\n<br />\r\nHai l&agrave;, người mua chung cư cần lưu &yacute; đặc biệt đến bản thảo hợp đồng mua b&aacute;n căn hộ chung cư, đảm bảo rằng c&aacute;c điều khoản trong hợp đồng l&agrave; đủ chặt chẽ v&agrave; r&agrave;ng buộc tr&aacute;ch nhiệm của b&ecirc;n b&aacute;n.<br />\r\n<br />\r\nBa l&agrave;, b&ecirc;n mua cần thẩm định v&agrave; quan t&acirc;m đến c&aacute;c thỏa thuận về c&aacute;c khoản chi ph&iacute; kh&aacute;c ngo&agrave;i tiền mua nh&agrave; v&agrave; c&aacute;c khoản chi trong tương lai. Chẳng hạn như chi ph&iacute; quản l&yacute; chung cư, ph&iacute; dịch vụ bảo vệ, ph&iacute; giữ xe, ph&iacute; bảo tr&igrave;, mức gi&aacute; cung ứng điện, nước,...<br />\r\n<br />\r\nBốn l&agrave;, b&ecirc;n b&aacute;n phải c&oacute; nghĩa vụ bảo h&agrave;nh nh&agrave; ở chung cư cho b&ecirc;n mua trong thời hạn tối thiểu l&agrave; 60 th&aacute;ng kể từ ng&agrave;y ho&agrave;n th&agrave;nh x&acirc;y dựng v&agrave; nghiệm thu đưa v&agrave;o x&acirc;y dựng.<br />\r\n<br />\r\nNội dung bảo h&agrave;nh bao gồm sửa chữa, khắc phục c&aacute;c hư hỏng li&ecirc;n quan đến c&aacute;c bộ phận nh&agrave; ở (s&agrave;n, tường, trần, cầu thang bộ...) v&agrave; cả những hệ thống phục vụ sinh hoạt (điện, nước...).<br />\r\n<br />\r\nNăm l&agrave;, hợp đồng mua b&aacute;n nh&agrave; chung cư phải c&oacute; c&ocirc;ng chứng hoặc chứng thực th&igrave; mới c&oacute; gi&aacute; trị ph&aacute;p l&yacute;. C&ograve;n trong trường hợp mua b&aacute;n nh&agrave; chung cư với chủ đầu tư th&igrave; hợp đồng kh&ocirc;ng nhất thiết phải qua c&ocirc;ng chứng.<br />\r\n<br />\r\nTuy nhi&ecirc;n, người mua nh&agrave; vẫn c&oacute; quyền y&ecirc;u cầu c&ocirc;ng chứng hoặc lập vi bằng (một h&igrave;nh thức chứng thực được thực hiện bởi đơn vị thừa ph&aacute;t lại) đối với hợp đồng n&agrave;y để bảo vệ tốt hơn quyền lợi của m&igrave;nh.', 0, NULL, NULL, 1, 0, 63, '2017-06-05 07:17:23', '2017-06-05 07:17:23', 1, 1),
(16, 'Người nước ngoài có được mua nhà ở tại Việt Nam không?', 'nguoi-nuoc-ngoai-co-duoc-mua-nha-o-tai-viet-nam-khong', 'Nguoi nuoc ngoai co duoc mua nha o tai Viet Nam khong', 'Theo xu hướng hội nhập, chuyển giao công nghệ. Hiện nay có rất nhiều chuyên gia, người lao động làm việc tại Việt Nam. Không ít trong số họ muốn mua nhà ở Việt Nam để lập gia đình hoặc đón người thân sang ở. Một số thì đầu tư, có người muốn mua với số lượng lớn. Vậy người nước ngoài có được mua nhà ở tại Việt Nam không và mua được bao nhiêu?', '2017/06/06/hoi-dap-nguoi-nuoc-ngoai-duoc-mua-nha-o-viet-nam-khong-1496708352.jpg', 5, '<strong>Hỏi</strong>: Sếp em l&agrave; người Đ&agrave;i Loan đang l&agrave;m tại một c&ocirc;ng Việt Nam, &ocirc;ng c&oacute; bằng đại học, c&oacute; giấy ph&eacute;p lao động, c&oacute; giấy tạm tr&uacute; 2 năm rồi. B&acirc;y giờ &ocirc;ng muốn mua đất v&agrave; nh&agrave; ở Việt Nam th&igrave; c&oacute; mua được kh&ocirc;ng ạ, v&agrave; cần những điều kiện g&igrave;. Mong luật sư giải đ&aacute;p gi&uacute;p em ạ. (Thanh V&acirc;n, B&igrave;nh Dương)<br />\r\n<br />\r\n<br />\r\n<strong>Trả lời:</strong><br />\r\n<br />\r\nC&aacute;c c&acirc;u hỏi li&ecirc;n quan tới vấn đề &quot;<strong>Người nước ngo&agrave;i c&oacute; được mua nh&agrave; ở tại Việt Nam kh&ocirc;ng?</strong>&quot; hiện dang được độc giả hỏi rất nhiều với nhiều t&igrave;nh huống kh&aacute;c nhau. Với trường hợp của bạn ch&uacute;ng t&ocirc;i xin giải đ&aacute;p như sau:<br />\r\n<br />\r\nTheo những th&ocirc;ng tin bạn tr&igrave;nh b&agrave;y, ch&uacute;ng t&ocirc;i x&aacute;c định rằng sếp bạn l&agrave; người c&oacute; quốc tịch nước ngo&agrave;i, qua Việt Nam l&agrave;m việc nhưng kh&ocirc;ng phải đầu tư dự &aacute;n nh&agrave; ở tại Việt Nam.<br />\r\n<br />\r\nViệc sở hữu nh&agrave; ở của người nước ngo&agrave;i tại Việt Nam được quy định từ Điều 159 &ndash; Điều 162 Luật nh&agrave; ở v&agrave; được hướng dẫn bởi Nghị định 99/2015/NĐ-CP. Theo đ&oacute;:<br />\r\n<br />\r\n1.Đối tượng được sở hữu nh&agrave; ở: c&aacute; nh&acirc;n nước ngo&agrave;i được ph&eacute;p nhập cảnh v&agrave;o Việt Nam (điểm c Khoản 1 Điều 159 Luật nh&agrave; ở 2014);<br />\r\n<br />\r\n2.H&igrave;nh thức sở hữu: mua, thu&ecirc; mua, nhận tặng cho, nhận thừa kế nh&agrave; ở thương mại bao gồm căn hộ chung cư v&agrave; nh&agrave; ở ri&ecirc;ng lẻ trong dự &aacute;n đầu tư x&acirc;y dựng nh&agrave; ở, trừ khu vực bảo đảm quốc ph&ograve;ng, an ninh theo quy định của Ch&iacute;nh phủ (điểm b Khoản 2 Điều 159). Tuy nhi&ecirc;n, Khoản 2 Điều 76 Nghị định 99/2015/NĐ-CP lại giới hạn trong trường hợp mua/thu&ecirc; mua nh&agrave; ở th&igrave; c&aacute; nh&acirc;n nước ngo&agrave;i chỉ được mua, thu&ecirc; mua nh&agrave; ở của chủ đầu tư dự &aacute;n x&acirc;y dựng nh&agrave; ở, mua nh&agrave; ở của tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i kh&aacute;c đang sở hữu nh&agrave; ở tại Việt Nam v&agrave; c&ograve;n thời hạn sở hữu.<br />\r\n<br />\r\n3.Điều kiện được sở hữu nh&agrave; ở: phải được ph&eacute;p nhập cảnh v&agrave;o Việt Nam v&agrave; kh&ocirc;ng thuộc diện được hưởng quyền ưu đ&atilde;i, miễn trừ ngoại giao, l&atilde;nh sự theo quy định của ph&aacute;p luật (Khoản 3 Điều 160 Luật nh&agrave; ở).<br />\r\n<br />\r\n4.Giấy tờ chứng minh đối tượng, điều kiện c&aacute; nh&acirc;n nước ngo&agrave;i thuộc diện được sở hữu nh&agrave; ở tại Việt Nam: phải c&oacute; hộ chiếu c&ograve;n gi&aacute; trị c&oacute; đ&oacute;ng dấu kiểm chứng nhập cảnh của cơ quan quản l&yacute; xuất, nhập cảnh Việt Nam v&agrave; kh&ocirc;ng thuộc diện được quyền ưu đ&atilde;i, miễn trừ ngoại giao theo quy định của Ph&aacute;p lệnh về quyền ưu đ&atilde;i, miễn trừ d&agrave;nh cho cơ quan Đại diện ngoại giao, cơ quan L&atilde;nh sự v&agrave; cơ quan Đại diện của Tổ chức quốc tế tại Việt Nam (Điều 74 Nghị định 99/2015/NĐ-CP).<br />\r\n<br />\r\n<strong>5.Giới hạn quyền sở hữu: quy định tại Điều 161 Luật nh&agrave; ở v&agrave; Điều 76 Nghị định 99/2015/NĐ-CP, cụ thể:</strong>\r\n<h3>i. Về số lượng:</h3>\r\n<br />\r\n&middot; Đối với nh&agrave; chung cư: Kh&ocirc;ng qu&aacute; 30% số lượng căn hộ trong một t&ograve;a nh&agrave; chung cư;<br />\r\n&middot; Đối với nh&agrave; ở ri&ecirc;ng lẻ bao gồm nh&agrave; biệt thự, nh&agrave; ở liền kề: tr&ecirc;n một khu vực c&oacute; số d&acirc;n tương đương một đơn vị h&agrave;nh ch&iacute;nh cấp phường chỉ sở hữu kh&ocirc;ng qu&aacute; 250 căn nh&agrave;.<br />\r\n&middot; Trường hợp trong một khu vực c&oacute; số d&acirc;n tương đương một đơn vị h&agrave;nh ch&iacute;nh cấp phường m&agrave; c&oacute; nhiều nh&agrave; chung cư hoặc đối với nh&agrave; ở ri&ecirc;ng lẻ tr&ecirc;n một tuyến phố th&igrave; Ch&iacute;nh phủ quy định, cụ thể số lượng căn hộ, số lượng nh&agrave; ở ri&ecirc;ng lẻ m&agrave; tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i được mua, thu&ecirc; mua, nhận tặng cho, nhận thừa kế v&agrave; sở hữu;\r\n<h3>ii. Về thời hạn sở hữu:</h3>\r\n<br />\r\n&middot; Tối đa kh&ocirc;ng qu&aacute; 50 năm, kể từ ng&agrave;y được cấp Giấy chứng nhận v&agrave; c&oacute; thể được gia hạn th&ecirc;m theo quy định của Ch&iacute;nh phủ nếu c&oacute; nhu cầu.<br />\r\n&middot; Trường hợp c&aacute; nh&acirc;n nước ngo&agrave;i kết h&ocirc;n với c&ocirc;ng d&acirc;n Việt Nam hoặc kết h&ocirc;n với người Việt Nam định cư ở nước ngo&agrave;i th&igrave; được sở hữu nh&agrave; ở ổn định, l&acirc;u d&agrave;i v&agrave; c&oacute; c&aacute;c quyền của chủ sở hữu nh&agrave; ở như c&ocirc;ng d&acirc;n Việt Nam.<br />\r\n<br />\r\nTheo đ&oacute;, nếu sếp bạn c&oacute; hộ chiếu c&ograve;n gi&aacute; trị c&oacute; đ&oacute;ng dấu kiểm chứng nhập cảnh của cơ quan quản l&yacute; xuất, nhập cảnh Việt Nam tại thời điểm k&yacute; kết hợp đồng th&igrave; được quyền mua nh&agrave; ở tại Việt Nam. Đối tượng nh&agrave; ở được mua v&agrave; quyền lợi được hưởng như ch&uacute;ng t&ocirc;i đ&atilde; đề cập ở tr&ecirc;n.<br />\r\nQua thực tế hỗ trợ kh&aacute;ch h&agrave;ng l&agrave; tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i mua nh&agrave; ở tại Việt Nam v&agrave; đại diện thực hiện thủ tục xin cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nh&agrave; ở v&agrave; t&agrave;i sản kh&aacute;c gắn liền với đất (Giấy chứng nhận) cho kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; một số chia sẻ với bạn như sau:<br />\r\nLuật cho ph&eacute;p tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i mua nh&agrave; ở tại Việt Nam nếu đ&aacute;p ứng điều kiện luật định. Do đ&oacute;, tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i được quyền k&yacute; kết hợp đồng mua nh&agrave; ở. Tuy nhi&ecirc;n,&nbsp;<br />\r\n<br />\r\n<strong>Khoản 2 Điều 78 Nghị định 99/2015/NĐ-CP quy định:</strong><br />\r\n<br />\r\nTrước khi k&yacute; hợp đồng mua b&aacute;n, thu&ecirc; mua, tặng cho nh&agrave; ở, chủ đầu tư, b&ecirc;n tặng cho phải kiểm tra th&ocirc;ng tin tr&ecirc;n Cổng th&ocirc;ng tin điện tử của Sở X&acirc;y dựng hoặc đề nghị Sở X&acirc;y dựng cung cấp th&ocirc;ng tin để x&aacute;c định số lượng nh&agrave; ở được b&aacute;n, cho thu&ecirc; mua, được tặng cho, Sở X&acirc;y dựng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin trong ng&agrave;y. Chủ đầu tư dự &aacute;n x&acirc;y dựng nh&agrave; ở chỉ được b&aacute;n, cho thu&ecirc; mua nh&agrave; ở, b&ecirc;n tặng cho chỉ được tặng cho nh&agrave; ở cho tổ chức, c&aacute; nh&acirc;n nước ngo&agrave;i theo đ&uacute;ng số lượng quy định tại Điều 76 của Nghị định n&agrave;y.\r\n<div style="text-align:center"><img alt="hoi dap nguoi nuoc ngoai duoc mua nha o viet nam khong" src="/uploads/images/hoi%20dap%20nguoi%20nuoc%20ngoai%20duoc%20mua%20nha%20o%20viet%20nam%20khong.jpg" style="height:400px; width:650px" /></div>\r\n<br />\r\nTuy nhi&ecirc;n, đến nay Sở x&acirc;y dựng vẫn chưa c&ocirc;ng bố danh mục dự &aacute;n, số lượng nh&agrave; ở tại mỗi dự &aacute;n, chung cư người nước ngo&agrave;i được quyền sở hữu. Do đ&oacute;, Sở t&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường chưa c&oacute; cơ sở cấp Giấy chứng nhận n&ecirc;n hồ sơ vẫn c&ograve;n bị tr&igrave; ho&atilde;n.<br />\r\n<br />\r\nViệc k&yacute; kết hợp đồng mua nh&agrave; ở tại thời điểm n&agrave;y cũng c&oacute; những rủi ro nhất định: nếu sau khi c&oacute; c&ocirc;ng bố của Sở x&acirc;y dựng m&agrave; căn nh&agrave; đ&atilde; mua thuộc diện người nước ngo&agrave;i được sở hữu v&agrave; thời điểm k&yacute; kết hợp đồng c&ocirc;ng chứng chưa vượt qu&aacute; số lượng luật định th&igrave; sếp bạn được cấp Giấy chứng nhận; nếu kh&ocirc;ng đ&aacute;p ứng điều kiện n&ecirc;u tr&ecirc;n th&igrave; giao dịch v&ocirc; hiệu v&agrave; sếp bạn kh&ocirc;ng được cấp Giấy chứng nhận, sếp bạn vừa tốn chi ph&iacute; giao kết hợp đồng, tiền thuế, tốn thời gian v&agrave; chi ph&iacute; đ&ograve;i lại tiền từ người b&aacute;n.<br />\r\n<br />\r\nNếu b&acirc;y giờ kh&ocirc;ng k&yacute; kết hợp đồng th&igrave; c&oacute; thể mất cơ hội v&igrave; khi Sở x&acirc;y dựng c&ocirc;ng bố th&igrave; tại nơi sếp bạn muốn sở hữu, những đối tượng kh&aacute;c đ&atilde; k&yacute; kết hợp đồng mua đủ số lượng căn hộ theo giới hạn luật định.<br />\r\n<br />\r\nBạn v&agrave; sếp xem x&eacute;t những th&ocirc;ng tin ch&uacute;ng t&ocirc;i cung cấp n&ecirc;u tr&ecirc;n để c&acirc;n nhắc, c&oacute; giải ph&aacute;p ph&ugrave; hợp.\r\n<div style="text-align:right"><br />\r\n<em>Tham khảo luật nh&agrave; đất</em></div>\r\n', 0, NULL, NULL, 1, 0, 68, '2017-06-06 07:21:32', '2017-06-06 07:23:20', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles_cate`
--

CREATE TABLE `articles_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_cate`
--

INSERT INTO `articles_cate` (`id`, `name`, `slug`, `alias`, `description`, `image_url`, `created_at`, `updated_at`, `created_user`, `updated_user`, `status`, `display_order`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(1, 'Phân Tích Dự Án', 'phan-tich-du-an', 'Phan Tich Du An', '', '', '2016-07-24 06:34:20', '2017-05-28 09:56:36', 1, 1, 1, 0, 'Phân tích dự án nhà đất khách quan, chân thật nhất', 'Phân Tích Dự Án', 'phan tich du an, du an', ''),
(4, 'Phong thủy', 'phong-thuy', 'Phong thuy', '', '', '2016-10-05 16:32:26', '2017-05-20 09:12:43', 1, 1, 1, 0, 'Phong thủy', 'Phong thủy', 'Phong thủy', ''),
(5, 'Tư vấn luật', 'tu-van-luat', 'Tu van luat', '', '', '2017-05-05 14:33:12', '2017-05-20 09:12:51', 1, 1, 1, 0, 'Tư vấn luật', 'Tư vấn luật', 'Tư vấn luật', ''),
(6, 'Tư vấn thiết kế', 'tu-van-thiet-ke', 'Tu van thiet ke', '', '', '2017-05-05 14:33:41', '2017-05-20 09:12:58', 1, 1, 1, 0, 'Tư vấn thiết kế', 'Tư vấn thiết kế', 'Tư vấn thiết kế', ''),
(7, 'Tin thị trường', 'tin-thi-truong', 'Tin thi truong', '', '', '2017-05-05 14:54:21', '2017-05-20 09:13:06', 1, 1, 1, 0, 'Tin thị trường', 'Tin thị trường', 'Tin thị trường', '');

-- --------------------------------------------------------

--
-- Table structure for table `auto`
--

CREATE TABLE `auto` (
  `id` int(11) NOT NULL,
  `date_auto` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auto`
--

INSERT INTO `auto` (`id`, `date_auto`) VALUES
(1, '2016-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `ads_url` varchar(255) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_type` tinyint(1) NOT NULL COMMENT '1 : danh muc cha , 2 : danh mục con',
  `type` int(11) NOT NULL COMMENT '1 : không liên kết, 2 : trỏ đến 1 trang, 3',
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image_url`, `ads_url`, `time_start`, `time_end`, `object_id`, `object_type`, `type`, `display_order`, `status`, `created_at`, `updated_at`, `created_user`, `updated_user`) VALUES
(1, '2017/05/27/banner-ngoai-giao-doan-1495861910.png', '', 0, 0, 1, 3, 1, 0, 1, '2017-05-05 18:52:31', '2017-05-27 12:11:52', 1, 8),
(4, '2017/05/27/banner-slideshow-batdongsan2-1920x400-1495861916.jpg', '', 0, 0, 1, 3, 1, 0, 1, '2017-05-05 18:53:03', '2017-05-27 12:11:57', 1, 8),
(5, '2017/05/27/banxehoicom-bannertop-1495861971.gif', '', 0, 0, 4, 3, 1, 0, 1, '2017-05-20 08:23:15', '2017-05-27 12:12:52', 1, 8),
(6, '2017/05/27/banner-dothi-apps-100x300-1495861950.gif', '', 0, 0, 2, 3, 1, 0, 1, '2017-05-20 08:23:51', '2017-05-27 12:12:32', 1, 8),
(7, '2017/05/27/cq-na-huongnt-161028-dt-100x300-1495861960.gif', '', 0, 0, 3, 3, 1, 0, 1, '2017-05-20 08:24:07', '2017-05-27 12:12:41', 1, 8),
(8, '2017/05/20/1-1493985148-1495282873.jpg', '', 0, 0, 1, 4, 1, 0, 1, '2017-05-20 19:20:08', '2017-05-20 19:21:23', 1, 1),
(9, '2017/05/23/banner-slideshow-batdongsan4-1920x400-1495554794.jpg', '', 0, 0, 3, 4, 1, 0, 1, '2017-05-21 15:53:43', '2017-05-23 22:53:16', 1, 1),
(10, '2017/05/23/img-vision-1495554801.jpg', '', 0, 0, 3, 4, 1, 0, 1, '2017-05-21 15:57:11', '2017-05-23 22:53:23', 1, 1),
(11, '2017/05/24/phoi-canh-him-lam-cho-lon-1495606414.jpg', '', 0, 0, 4, 4, 1, 0, 1, '2017-05-24 13:13:37', '2017-05-24 13:13:37', 8, 8),
(12, '2017/05/24/tong-quan-du-an-can-ho-centana-thu-thiem1-1495606424.jpg', 'http://dothi9.com/du-an/du-an-can-ho-the-eastern-quan-9-3', 0, 0, 4, 4, 2, 0, 1, '2017-05-24 13:13:55', '2017-05-24 13:13:55', 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`id`, `name`, `status`) VALUES
(3, 'BDS cho thuê', 1),
(4, 'Dự án BĐS Mỹ Phú', 1),
(5, 'BĐS Hưng Phước', 1),
(6, 'Dự án Sky Garden', 1),
(7, 'BDS Panorama', 1),
(8, 'Dự án BĐS ParkView', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `display_order` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `code`, `name`, `alias`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'SG', 'Hồ Chí Minh', 'ho-chi-minh', 1, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(2, 'HN', 'Hà Nội', 'hà-nọi', 2, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(3, 'BD', 'Bình Dương', 'binh-duong', 3, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(4, 'DDN', 'Đà Nẵng', 'da-nang', 4, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(5, 'HP', 'Hải Phòng', 'hai-phong', 5, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(6, 'LA', 'Long An', 'long-an', 6, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(7, 'VT', 'Bà Rịa Vũng Tàu', 'ba-ria-vung-tau', 7, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(8, 'AG', 'An Giang', 'an-giang', 8, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(9, 'BG', 'Bắc Giang', 'bac-giang', 9, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(10, 'BK', 'Bắc Kạn', 'bac-kan', 10, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(11, 'BL', 'Bạc Liêu', 'bac-lieu', 11, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(12, 'BN', 'Bắc Ninh', 'bac-ninh', 12, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(13, 'BTR', 'Bến Tre', 'ben-tre', 13, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(14, 'BDD', 'Bình Định', 'binh-dinh', 14, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(15, 'BP', 'Bình Phước', 'binh-phuoc', 15, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(16, 'BTH', 'Bình Thuận  ', 'binh-thuan', 16, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(17, 'CM', 'Cà Mau', 'ca-mau', 17, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(18, 'CT', 'Cần Thơ', 'can-tho', 18, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(19, 'CB', 'Cao Bằng', 'cao-bang', 19, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(20, 'DDL', 'Đắk Lắk', 'dak-lak', 20, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(21, 'DNO', 'Đắk Nông', 'dak-nong', 21, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(22, 'DDB', 'Điện Biên', 'dien-bien', 22, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(23, 'DNA', 'Đồng Nai', 'dong-nai', 23, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(24, 'DDT', 'Đồng Tháp', 'dong-thap', 24, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(25, 'GL', 'Gia Lai', 'gia-lai', 25, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(26, 'HG', 'Hà Giang', 'ha-giang', 26, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(27, 'HNA', 'Hà Nam', 'ha-nam', 27, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(28, 'HT', 'Hà Tĩnh', 'ha-tinh', 28, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(29, 'HD', 'Hải Dương', 'hai-duong', 29, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(30, 'HGI', 'Hậu Giang', 'hau-giang', 30, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(31, 'HB', 'Hòa Bình', 'hoa-binh', 31, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(32, 'HY', 'Hưng Yên', 'hung-yen', 32, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(33, 'KH', 'Khánh Hòa', 'khanh-hoa', 33, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(34, 'KG', 'Kiên Giang', 'kien-giang', 34, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(35, 'KT', 'Kon Tum', 'kon-tum', 35, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(36, 'LCH', 'Lai Châu', 'lai-chau', 36, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(37, 'LDD', 'Lâm Đồng', 'lam-dong', 37, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(38, 'LS', 'Lạng Sơn', 'lang-son', 38, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(39, 'LCA', 'Lào Cai', 'lao-cai', 39, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(40, 'NDD', 'Nam Định', 'nam-dinh', 40, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(41, 'NA', 'Nghệ An', 'nghe-an', 41, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(42, 'NB', 'Ninh Bình', 'ninh-binh', 42, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(43, 'NT', 'Ninh Thuận', 'ninh-thuan', 43, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(44, 'PT', 'Phú Thọ', 'phu-tho', 44, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(45, 'PY', 'Phú Yên', 'phu-yen', 45, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(46, 'QB', 'Quảng Bình', 'quang-binh', 46, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(47, 'QNA', 'Quảng Nam', 'quang-nam', 47, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(48, 'QNG', 'Quảng Ngãi', 'quang-ngai', 48, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(49, 'QNI', 'Quảng Ninh', 'quang-ninh', 49, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(50, 'QT', 'Quảng Trị', 'quang-tri', 50, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(51, 'ST', 'Sóc Trăng', 'soc-trang', 51, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(52, 'SL', 'Sơn La', 'son-la', 52, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(53, 'TNI', 'Tây Ninh', 'tay-ninh', 53, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(54, 'TB', 'Thái Bình', 'thai-binh', 54, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(55, 'TN', 'Thái Nguyên', 'thai-nguyen', 55, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(56, 'TH', 'Thanh Hóa', 'thanh-hoa', 56, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(57, 'TTH', 'Thừa Thiên Huế', 'thua-thien-hue', 57, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(58, 'TG', 'Tiền Giang', 'tien-giang', 58, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(59, 'TV', 'Trà Vinh', 'tra-vinh', 59, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(60, 'TQ', 'Tuyên Quang', 'tuyen-quang', 60, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(61, 'VL', 'Vĩnh Long', 'vinh-long', 61, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(62, 'VP', 'Vĩnh Phúc', 'vinh-phuc', 62, '2017-04-27 13:26:09', '2017-04-27 13:26:09'),
(63, 'YB', 'Yên Bái', 'yen-bai', 63, '2017-04-27 13:26:09', '2017-04-27 13:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `cmnd` varchar(20) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_link`
--

CREATE TABLE `custom_link` (
  `id` int(11) NOT NULL,
  `link_text` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `block_id` int(11) NOT NULL COMMENT '1 : lien ket noi bat'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_link`
--

INSERT INTO `custom_link` (`id`, `link_text`, `link_url`, `display_order`, `block_id`) VALUES
(1, 'Cho thuê nhà riêng', 'http://dothi9.com/cho-thue-nha-rieng.html', 1, 1),
(2, 'Bán căn hộ chung cư', 'http://dothi9.com/ban-can-ho-chung-cu.html', 3, 1),
(3, 'Bán nhà mặt phố', 'http://dothi9.com/ban-nha-mat-pho.html', 2, 1),
(4, 'Tin tức', '#', 0, 2),
(5, 'Quy chế hoạt động', '#', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `direction`
--

CREATE TABLE `direction` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `direction`
--

INSERT INTO `direction` (`id`, `name`, `slug`, `status`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'Đông', 'dong', 1, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(2, 'Tây', 'tay', 1, 2, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(3, 'Nam', 'nam', 1, 3, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(4, 'Bắc', 'bac', 1, 4, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(5, 'Đông-Nam', 'dong-nam', 1, 5, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(6, 'Đông-Bắc', 'dong-bac', 1, 6, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(7, 'Tây-Nam', 'tay-nam', 1, 7, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(8, 'Tây-Bắc', 'tay-bac', 1, 8, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(9, 'KXĐ', 'kxd', 1, 9, '2017-04-01 00:00:00', '2017-04-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_id` int(11) DEFAULT NULL,
  `id_dothi` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `slug`, `meta_id`, `id_dothi`, `city_id`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Quận 1', 'quan-1', NULL, 53, 1, 1, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(2, 'Quận 2', 'quan-2', NULL, 54, 1, 2, 1, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(3, 'Quận 3', 'quan-3', NULL, 55, 1, 3, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(4, 'Quận 4', 'quan-4', NULL, 56, 1, 4, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(5, 'Quận 5', 'quan-5', NULL, 57, 1, 5, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(6, 'Quận 6', 'quan-6', NULL, 58, 1, 6, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(7, 'Quận 7', 'quan-7', NULL, 59, 1, 7, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(8, 'Quận 8', 'quan-8', NULL, 60, 1, 8, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(9, 'Quận 9', 'quan-9', NULL, 61, 1, 9, 1, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(10, 'Quận 10', 'quan-10', NULL, 62, 1, 10, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(11, 'Quận 11', 'quan-11', NULL, 63, 1, 11, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(12, 'Quận 12', 'quan-12', NULL, 64, 1, 12, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(13, 'Bình Tân', 'binh-tan', NULL, 65, 1, 13, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(14, 'Bình Thạnh', 'binh-thanh', NULL, 66, 1, 14, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(15, 'Gò Vấp', 'go-vap', NULL, 67, 1, 15, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(16, 'Phú Nhuận', 'phu-nhuan', NULL, 68, 1, 16, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(17, 'Tân Bình', 'tan-binh', NULL, 69, 1, 17, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(18, 'Tân Phú', 'tan-phu', NULL, 70, 1, 18, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(19, 'Thủ Đức', 'thu-duc', NULL, 71, 1, 19, 1, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(20, 'Bình Chánh', 'binh-chanh', NULL, 72, 1, 20, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(21, 'Cần Giờ', 'can-gio', NULL, 73, 1, 21, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(22, 'Củ Chi', 'cu-chi', NULL, 74, 1, 22, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(23, 'Hóc Môn', 'hoc-mon', NULL, 75, 1, 23, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(24, 'Nhà Bè', 'nha-be', NULL, 76, 1, 24, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(25, 'Hoàn Kiếm', 'hoan-kiem', NULL, 1, 2, 1, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(26, 'Ba Đình', 'ba-dinh', NULL, 2, 2, 2, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(27, 'Đống Đa', 'dong-da', NULL, 3, 2, 3, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(28, 'Hai Bà Trưng', 'hai-ba-trung', NULL, 4, 2, 4, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(29, 'Thanh Xuân', 'thanh-xuan', NULL, 5, 2, 5, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(30, 'Tây Hồ', 'tay-ho', NULL, 6, 2, 6, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(31, 'Cầu Giấy', 'cau-giay', NULL, 7, 2, 7, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(32, 'Hoàng Mai', 'hoang-mai', NULL, 8, 2, 8, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(33, 'Long Biên', 'long-bien', NULL, 9, 2, 9, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(34, 'Đông Anh', 'dong-anh', NULL, 10, 2, 10, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(35, 'Gia Lâm', 'gia-lam', NULL, 11, 2, 11, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(36, 'Sóc Sơn', 'soc-son', NULL, 12, 2, 12, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(37, 'Thanh Trì', 'thanh-tri', NULL, 13, 2, 13, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(38, 'Bắc Từ Liêm', 'bac-tu-liem', NULL, 718, 2, 14, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(39, 'Nam Từ Liêm', 'nam-tu-liem', NULL, 14, 2, 15, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(40, 'Hà Đông', 'ha-dong', NULL, 15, 2, 16, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(41, 'Sơn Tây', 'son-tay', NULL, 16, 2, 17, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(42, 'Mê Linh', 'me-linh', NULL, 17, 2, 18, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(43, 'Ba Vì', 'ba-vi', NULL, 18, 2, 19, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(44, 'Phúc Thọ', 'phuc-tho', NULL, 19, 2, 20, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(45, 'Đan Phượng', 'dan-phuong', NULL, 20, 2, 21, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(46, 'Hoài Đức', 'hoai-duc', NULL, 21, 2, 22, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(47, 'Quốc Oai', 'quoc-oai', NULL, 22, 2, 23, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(48, 'Thạch Thất', 'thach-that', NULL, 23, 2, 24, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(49, 'Chương Mỹ', 'chuong-my', NULL, 24, 2, 25, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(50, 'Thanh Oai', 'thanh-oai', NULL, 25, 2, 26, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(51, 'Thường Tín', 'thuong-tin', NULL, 26, 2, 27, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(52, 'Phú Xuyên', 'phu-xuyen', NULL, 27, 2, 28, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(53, 'Ứng Hòa', 'ung-hoa', NULL, 28, 2, 29, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(54, 'Mỹ Đức', 'my-duc', NULL, 29, 2, 30, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(55, 'Bến Cát', 'ben-cat', NULL, 156, 3, 1, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(56, 'Dầu Tiếng', 'dau-tieng', NULL, 157, 3, 2, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(57, 'Dĩ An', 'di-an', NULL, 158, 3, 3, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(58, 'Phú Giáo', 'phu-giao', NULL, 159, 3, 4, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(59, 'Tân Uyên', 'tan-uyen', NULL, 160, 3, 5, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(60, 'Thuận An', 'thuan-an', NULL, 161, 3, 6, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(61, 'Thủ Dầu Một', 'thu-dau-mot', NULL, 163, 3, 7, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(62, 'Bàu Bàng', 'bau-bang', NULL, 716, 3, 8, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(63, 'Cẩm Lệ', 'cam-le', NULL, 45, 4, 1, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(64, 'Hải Châu', 'hai-chau', NULL, 46, 4, 2, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(65, 'Liên Chiểu', 'lien-chieu', NULL, 47, 4, 3, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(66, 'Ngũ Hành Sơn', 'ngu-hanh-son', NULL, 48, 4, 4, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(67, 'Sơn Trà', 'son-tra', NULL, 49, 4, 5, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(68, 'Thanh Khê', 'thanh-khe', NULL, 50, 4, 6, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(69, 'Hòa Vang', 'hoa-vang', NULL, 51, 4, 7, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(70, 'Hoàng Sa', 'hoang-sa', NULL, 52, 4, 8, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(71, 'Đồ Sơn', 'do-son', NULL, 30, 5, 1, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(72, 'Dương Kinh', 'duong-kinh', NULL, 31, 5, 2, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(73, 'Hải An', 'hai-an', NULL, 32, 5, 3, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(74, 'Hồng Bàng', 'hong-bang', NULL, 33, 5, 4, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(75, 'Kiến An', 'kien-an', NULL, 34, 5, 5, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(76, 'Lê Chân', 'le-chan', NULL, 35, 5, 6, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(77, 'Ngô Quyền', 'ngo-quyen', NULL, 36, 5, 7, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(78, 'An Dương', 'an-duong', NULL, 37, 5, 8, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(79, 'An Lão', 'an-lao', NULL, 38, 5, 9, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(80, 'Bạch Long Vĩ', 'bach-long-vi', NULL, 39, 5, 10, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(81, 'Cát Hải', 'cat-hai', NULL, 40, 5, 11, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(82, 'Kiến Thụy', 'kien-thuy', NULL, 41, 5, 12, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(83, 'Thủy Nguyên', 'thuy-nguyen', NULL, 42, 5, 13, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(84, 'Tiên Lãng', 'tien-lang', NULL, 43, 5, 14, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(85, 'Vĩnh Bảo', 'vinh-bao', NULL, 44, 5, 15, 0, '2017-04-27 13:46:49', '2017-04-27 13:46:49'),
(86, 'Bến Lức', 'ben-luc', NULL, 415, 6, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(87, 'Cần Đước', 'can-duoc', NULL, 416, 6, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(88, 'Cần Giuộc', 'can-giuoc', NULL, 417, 6, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(89, 'Châu Thành', 'chau-thanh', NULL, 418, 6, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(90, 'Đức Hòa', 'duc-hoa', NULL, 419, 6, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(91, 'Đức Huệ', 'duc-hue', NULL, 420, 6, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(92, 'Mộc Hóa', 'moc-hoa', NULL, 421, 6, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(93, 'Tân Hưng', 'tan-hung', NULL, 422, 6, 8, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(94, 'Tân Thạnh', 'tan-thanh', NULL, 423, 6, 9, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(95, 'Tân Trụ', 'tan-tru', NULL, 424, 6, 10, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(96, 'Thạnh Hóa', 'thanh-hoa', NULL, 425, 6, 11, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(97, 'Thủ Thừa', 'thu-thua', NULL, 426, 6, 12, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(98, 'Vĩnh Hưng', 'vinh-hung', NULL, 427, 6, 13, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(99, 'Tân An', 'tan-an', NULL, 429, 6, 14, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(100, 'Kiến Tường', 'kien-tuong', NULL, 724, 6, 15, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(101, 'Châu Đức', 'chau-duc', NULL, 96, 7, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(102, 'Côn Đảo', 'con-dao', NULL, 97, 7, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(103, 'Đất Đỏ', 'dat-do', NULL, 98, 7, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(104, 'Long Điền', 'long-dien', NULL, 99, 7, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(105, 'Tân Thành', 'tan-thanh', NULL, 100, 7, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(106, 'Xuyên Mộc', 'xuyen-moc', NULL, 101, 7, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(107, 'Vũng Tàu', 'vung-tau', NULL, 102, 7, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(108, 'Bà Rịa', 'ba-ria', NULL, 103, 7, 8, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(109, 'An Phú', 'an-phu', NULL, 85, 8, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(110, 'Châu Phú', 'chau-phu', NULL, 86, 8, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(111, 'Châu Thành', 'chau-thanh', NULL, 87, 8, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(112, 'Chợ Mới', 'cho-moi', NULL, 88, 8, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(113, 'Tri Tôn', 'tri-ton', NULL, 89, 8, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(114, 'Phú Tân', 'phu-tan', NULL, 90, 8, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(115, 'Tân Châu', 'tan-chau', NULL, 91, 8, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(116, 'Thoại Sơn', 'thoai-son', NULL, 92, 8, 8, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(117, 'Tịnh Biên', 'tinh-bien', NULL, 93, 8, 9, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(118, 'Long Xuyên', 'long-xuyen', NULL, 94, 8, 10, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(119, 'Châu Đốc', 'chau-doc', NULL, 95, 8, 11, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(120, 'Hiệp Hòa', 'hiep-hoa', NULL, 104, 9, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(121, 'Lạng Giang', 'lang-giang', NULL, 105, 9, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(122, 'Lục Nam', 'luc-nam', NULL, 106, 9, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(123, 'Lục Ngạn', 'luc-ngan', NULL, 107, 9, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(124, 'Sơn Động', 'son-dong', NULL, 108, 9, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(125, 'Tân Yên', 'tan-yen', NULL, 109, 9, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(126, 'Việt Yên', 'viet-yen', NULL, 110, 9, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(127, 'Yên Dũng', 'yen-dung', NULL, 111, 9, 8, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(128, 'Yên Thế', 'yen-the', NULL, 112, 9, 9, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(129, 'Bắc Giang', 'bac-giang', NULL, 113, 9, 10, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(130, 'Ba Bể', 'ba-be', NULL, 114, 10, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(131, 'Bạch Thông', 'bach-thong', NULL, 115, 10, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(132, 'Chợ Đồn', 'cho-don', NULL, 116, 10, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(133, 'Chợ Mới', 'cho-moi', NULL, 117, 10, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(134, 'Na Rì', 'na-ri', NULL, 118, 10, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(135, 'Ngân Sơn', 'ngan-son', NULL, 119, 10, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(136, 'Pác Nặm', 'pac-nam', NULL, 120, 10, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(137, 'Bắc Kạn', 'bac-kan', NULL, 121, 10, 8, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(138, 'Đông Hải', 'dong-hai', NULL, 122, 11, 1, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(139, 'Giá Rai', 'gia-rai', NULL, 123, 11, 2, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(140, 'Hòa Bình', 'hoa-binh', NULL, 124, 11, 3, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(141, 'Hồng Dân', 'hong-dan', NULL, 125, 11, 4, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(142, 'Phước Long', 'phuoc-long', NULL, 126, 11, 5, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(143, 'Vĩnh Lợi', 'vinh-loi', NULL, 127, 11, 6, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(144, 'Bạc Liêu', 'bac-lieu', NULL, 128, 11, 7, 0, '2017-04-27 13:46:50', '2017-04-27 13:46:50'),
(145, 'Gia Bình', 'gia-binh', NULL, 129, 12, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(146, 'Lương Tài', 'luong-tai', NULL, 130, 12, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(147, 'Quế Võ', 'que-vo', NULL, 131, 12, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(148, 'Thuận Thành', 'thuan-thanh', NULL, 132, 12, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(149, 'Tiên Du', 'tien-du', NULL, 133, 12, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(150, 'Từ Sơn', 'tu-son', NULL, 134, 12, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(151, 'Yên Phong', 'yen-phong', NULL, 135, 12, 7, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(152, 'Bắc Ninh', 'bac-ninh', NULL, 136, 12, 8, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(153, 'Ba Tri', 'ba-tri', NULL, 137, 13, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(154, 'Bình Đại', 'binh-dai', NULL, 138, 13, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(155, 'Châu Thành', 'chau-thanh', NULL, 139, 13, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(156, 'Chợ Lách', 'cho-lach', NULL, 140, 13, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(157, 'Giồng Trôm', 'giong-trom', NULL, 141, 13, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(158, 'Thạnh Phú', 'thanh-phu', NULL, 143, 13, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(159, 'Bến Tre', 'ben-tre', NULL, 144, 13, 7, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(160, 'Mỏ Cày Bắc', 'mo-cay-bac', NULL, 705, 13, 8, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(161, 'Mỏ Cày Nam', 'mo-cay-nam', NULL, 706, 13, 9, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(162, 'An Lão', 'an-lao', NULL, 145, 14, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(163, 'An Nhơn', 'an-nhon', NULL, 146, 14, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(164, 'Hoài Ân', 'hoai-an', NULL, 147, 14, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(165, 'Hoài Nhơn', 'hoai-nhon', NULL, 148, 14, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(166, 'Phù Cát', 'phu-cat', NULL, 149, 14, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(167, 'Phù Mỹ', 'phu-my', NULL, 150, 14, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(168, 'Tây Sơn', 'tay-son', NULL, 151, 14, 7, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(169, 'Tuy Phước', 'tuy-phuoc', NULL, 152, 14, 8, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(170, 'Vân Canh', 'van-canh', NULL, 153, 14, 9, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(171, 'Vĩnh Thạnh', 'vinh-thanh', NULL, 154, 14, 10, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(172, 'Quy Nhơn', 'quy-nhon', NULL, 155, 14, 11, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(173, 'Bình Long', 'binh-long', NULL, 164, 15, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(174, 'Bù Đăng', 'bu-dang', NULL, 165, 15, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(175, 'Bù Đốp', 'bu-dop', NULL, 166, 15, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(176, 'Chơn Thành', 'chon-thanh', NULL, 167, 15, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(177, 'Đồng Phú', 'dong-phu', NULL, 168, 15, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(178, 'Lộc Ninh', 'loc-ninh', NULL, 169, 15, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(179, 'Phước Long', 'phuoc-long', NULL, 170, 15, 7, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(180, 'Đồng Xoài', 'dong-xoai', NULL, 171, 15, 8, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(181, 'Hớn Quản', 'hon-quan', NULL, 698, 15, 9, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(182, 'Bù Gia Mập', 'bu-gia-map', NULL, 699, 15, 10, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(183, 'Bắc Bình', 'bac-binh', NULL, 172, 16, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(184, 'Đảo Phú Quý', 'dao-phu-quy', NULL, 173, 16, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(185, 'Đức Linh', 'duc-linh', NULL, 174, 16, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(186, 'Hàm Tân', 'ham-tan', NULL, 175, 16, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(187, 'Hàm Thuận Bắc', 'ham-thuan-bac', NULL, 176, 16, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(188, 'Hàm Thuận Nam', 'ham-thuan-nam', NULL, 177, 16, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(189, 'Tánh Linh', 'tanh-linh', NULL, 178, 16, 7, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(190, 'Tuy Phong', 'tuy-phong', NULL, 179, 16, 8, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(191, 'Phan Thiết', 'phan-thiet', NULL, 181, 16, 9, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(192, 'La Gi', 'la-gi', NULL, 182, 16, 10, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(193, 'Cái Nước', 'cai-nuoc', NULL, 183, 17, 1, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(194, 'Đầm Dơi', 'dam-doi', NULL, 184, 17, 2, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(195, 'Năm Căn', 'nam-can', NULL, 185, 17, 3, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(196, 'Ngọc Hiển', 'ngoc-hien', NULL, 186, 17, 4, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(197, 'Phú Tân', 'phu-tan', NULL, 187, 17, 5, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(198, 'Thới Bình', 'thoi-binh', NULL, 188, 17, 6, 0, '2017-04-27 13:46:51', '2017-04-27 13:46:51'),
(199, 'Trần Văn Thời', 'tran-van-thoi', NULL, 189, 17, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(200, 'U Minh', 'u-minh', NULL, 190, 17, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(201, 'Cà Mau', 'ca-mau', NULL, 191, 17, 9, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(202, 'Cờ Đỏ', 'co-do', NULL, 77, 18, 1, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(203, 'Phong Điền', 'phong-dien', NULL, 78, 18, 2, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(204, 'Thốt Nốt', 'thot-not', NULL, 79, 18, 3, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(205, 'Vĩnh Thạnh', 'vinh-thanh', NULL, 80, 18, 4, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(206, 'Bình Thủy', 'binh-thuy', NULL, 81, 18, 5, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(207, 'Cái Răng', 'cai-rang', NULL, 82, 18, 6, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(208, 'Ninh Kiều', 'ninh-kieu', NULL, 83, 18, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(209, 'Ô Môn', 'o-mon', NULL, 84, 18, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(210, ' Thới Lai', 'thoi-lai', NULL, 704, 18, 9, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(211, 'Bảo Lạc', 'bao-lac', NULL, 192, 19, 1, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(212, 'Bảo Lâm', 'bao-lam', NULL, 193, 19, 2, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(213, 'Hạ Lang', 'ha-lang', NULL, 194, 19, 3, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(214, 'Hà Quảng', 'ha-quang', NULL, 195, 19, 4, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(215, 'Hòa An', 'hoa-an', NULL, 196, 19, 5, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(216, 'Nguyên Bình', 'nguyen-binh', NULL, 197, 19, 6, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(217, 'Phục Hòa', 'phuc-hoa', NULL, 198, 19, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(218, 'Quảng Uyên', 'quang-uyen', NULL, 199, 19, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(219, 'Thạch An', 'thach-an', NULL, 200, 19, 9, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(220, 'Thông Nông', 'thong-nong', NULL, 201, 19, 10, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(221, 'Trà Lĩnh', 'tra-linh', NULL, 202, 19, 11, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(222, 'Trùng Khánh', 'trung-khanh', NULL, 203, 19, 12, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(223, 'Cao Bằng', 'cao-bang', NULL, 204, 19, 13, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(224, 'Buôn Đôn', 'buon-don', NULL, 205, 20, 1, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(225, 'Cư Kuin', 'cu-kuin', NULL, 206, 20, 2, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(226, 'Cư M\'gar', 'cu-mgar', NULL, 207, 20, 3, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(227, 'Ea H\'Leo', 'ea-hleo', NULL, 208, 20, 4, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(228, 'Ea Kar', 'ea-kar', NULL, 209, 20, 5, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(229, 'Ea Súp', 'ea-sup', NULL, 210, 20, 6, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(230, 'Krông Ana', 'krong-ana', NULL, 211, 20, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(231, 'Krông Bông', 'krong-bong', NULL, 212, 20, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(232, 'Krông Buk', 'krong-buk', NULL, 213, 20, 9, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(233, 'Krông Năng', 'krong-nang', NULL, 214, 20, 10, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(234, 'Krông Pắc', 'krong-pac', NULL, 215, 20, 11, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(235, 'Lăk', 'lak', NULL, 216, 20, 12, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(236, 'M\'Đrăk', 'mdrak', NULL, 217, 20, 13, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(237, 'Buôn Ma Thuột', 'buon-ma-thuot', NULL, 218, 20, 14, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(238, 'Buôn Hồ', 'buon-ho', NULL, 697, 20, 15, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(239, 'Cư Jút', 'cu-jut', NULL, 219, 21, 1, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(240, 'Dăk GLong', 'dak-glong', NULL, 220, 21, 2, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(241, 'Dăk Mil', 'dak-mil', NULL, 221, 21, 3, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(242, 'Dăk R\'Lấp', 'dak-rlap', NULL, 222, 21, 4, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(243, 'Dăk Song', 'dak-song', NULL, 223, 21, 5, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(244, 'Krông Nô', 'krong-no', NULL, 224, 21, 6, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(245, 'Tuy Đức', 'tuy-duc', NULL, 225, 21, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(246, 'Gia Nghĩa', 'gia-nghia', NULL, 226, 21, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(247, 'Điện Biên', 'dien-bien', NULL, 227, 22, 1, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(248, 'Điện Biên Đông', 'dien-bien-dong', NULL, 228, 22, 2, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(249, 'Mường Ảng', 'muong-ang', NULL, 229, 22, 3, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(250, 'Mường Chà', 'muong-cha', NULL, 230, 22, 4, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(251, 'Mường Nhé', 'muong-nhe', NULL, 231, 22, 5, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(252, 'Tủa Chùa', 'tua-chua', NULL, 232, 22, 6, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(253, 'Tuần Giáo', 'tuan-giao', NULL, 233, 22, 7, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(254, 'Điện Biên Phủ', 'dien-bien-phu', NULL, 234, 22, 8, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(255, 'Mường Lay', 'muong-lay', NULL, 235, 22, 9, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(256, 'Nậm Pồ', 'nam-po', NULL, 711, 22, 10, 0, '2017-04-27 13:46:52', '2017-04-27 13:46:52'),
(257, 'Cẩm Mỹ', 'cam-my', NULL, 236, 23, 1, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(258, 'Định Quán', 'dinh-quan', NULL, 237, 23, 2, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(259, 'Long Thành', 'long-thanh', NULL, 238, 23, 3, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(260, 'Nhơn Trạch', 'nhon-trach', NULL, 239, 23, 4, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(261, 'Tân Phú', 'tan-phu', NULL, 240, 23, 5, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(262, 'Thống Nhất', 'thong-nhat', NULL, 241, 23, 6, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(263, 'Trảng Bom', 'trang-bom', NULL, 242, 23, 7, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(264, 'Vĩnh Cửu', 'vinh-cuu', NULL, 243, 23, 8, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(265, 'Xuân Lộc', 'xuan-loc', NULL, 244, 23, 9, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(266, 'Biên Hòa', 'bien-hoa', NULL, 245, 23, 10, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(267, 'Long Khánh', 'long-khanh', NULL, 246, 23, 11, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(268, 'Huyện Cao Lãnh', 'huyen-cao-lanh', NULL, 247, 24, 1, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(269, 'Châu Thành', 'chau-thanh', NULL, 248, 24, 2, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(270, 'Thị xã Hồng Ngự', 'thi-xa-hong-ngu', NULL, 249, 24, 3, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(271, 'Lai Vung', 'lai-vung', NULL, 250, 24, 4, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(272, 'Lấp Vò', 'lap-vo', NULL, 251, 24, 5, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(273, 'Tam Nông', 'tam-nong', NULL, 252, 24, 6, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(274, 'Tân Hồng', 'tan-hong', NULL, 253, 24, 7, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(275, 'Thanh Bình', 'thanh-binh', NULL, 254, 24, 8, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(276, 'Tháp Mười', 'thap-muoi', NULL, 255, 24, 9, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(277, 'Sa Đéc', 'sa-dec', NULL, 257, 24, 10, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(278, 'Tp. Cao Lãnh', 'tp-cao-lanh', NULL, 721, 24, 11, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(279, 'Huyện Hồng Ngự', 'huyen-hong-ngu', NULL, 722, 24, 12, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(280, 'AYun Pa', 'ayun-pa', NULL, 258, 25, 1, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(281, 'Chư Păh', 'chu-pah', NULL, 259, 25, 2, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(282, 'Chư Sê', 'chu-se', NULL, 260, 25, 3, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(283, 'ChưPRông', 'chuprong', NULL, 261, 25, 4, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(284, 'Đăk Đoa', 'dak-doa', NULL, 262, 25, 5, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(285, 'Đăk Pơ', 'dak-po', NULL, 263, 25, 6, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(286, 'Đức Cơ', 'duc-co', NULL, 264, 25, 7, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(287, 'Ia Grai', 'ia-grai', NULL, 265, 25, 8, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(288, 'Ia Pa', 'ia-pa', NULL, 266, 25, 9, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(289, 'KBang', 'kbang', NULL, 267, 25, 10, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(290, 'Kông Chro', 'kong-chro', NULL, 268, 25, 11, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(291, 'Krông Pa', 'krong-pa', NULL, 269, 25, 12, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(292, 'Mang Yang', 'mang-yang', NULL, 270, 25, 13, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(293, 'Phú Thiện', 'phu-thien', NULL, 271, 25, 14, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(294, 'Plei Ku', 'plei-ku', NULL, 272, 25, 15, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(295, 'An Khê', 'an-khe', NULL, 273, 25, 16, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(296, 'Chư Pưh', 'chu-puh', NULL, 710, 25, 17, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(297, 'Bắc Mê', 'bac-me', NULL, 274, 26, 1, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(298, 'Bắc Quang', 'bac-quang', NULL, 275, 26, 2, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(299, 'Đồng Văn', 'dong-van', NULL, 276, 26, 3, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(300, 'Hoàng Su Phì', 'hoang-su-phi', NULL, 277, 26, 4, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(301, 'Mèo Vạc', 'meo-vac', NULL, 278, 26, 5, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(302, 'Quản Bạ', 'quan-ba', NULL, 279, 26, 6, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(303, 'Quang Bình', 'quang-binh', NULL, 280, 26, 7, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(304, 'Vị Xuyên', 'vi-xuyen', NULL, 281, 26, 8, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(305, 'Xín Mần', 'xin-man', NULL, 282, 26, 9, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(306, 'Yên Minh', 'yen-minh', NULL, 283, 26, 10, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(307, 'Hà Giang', 'ha-giang', NULL, 284, 26, 11, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(308, 'Bình Lục', 'binh-luc', NULL, 285, 27, 1, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(309, 'Duy Tiên', 'duy-tien', NULL, 286, 27, 2, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(310, 'Kim Bảng', 'kim-bang', NULL, 287, 27, 3, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(311, 'Lý Nhân', 'ly-nhan', NULL, 288, 27, 4, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(312, 'Thanh Liêm', 'thanh-liem', NULL, 289, 27, 5, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(313, 'Phủ Lý', 'phu-ly', NULL, 290, 27, 6, 0, '2017-04-27 13:46:53', '2017-04-27 13:46:53'),
(314, 'Cẩm Xuyên', 'cam-xuyen', NULL, 291, 28, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(315, 'Can Lộc', 'can-loc', NULL, 292, 28, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(316, 'Đức Thọ', 'duc-tho', NULL, 293, 28, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(317, 'Hương Khê', 'huong-khe', NULL, 294, 28, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(318, 'Hương Sơn', 'huong-son', NULL, 295, 28, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(319, 'Kỳ Anh', 'ky-anh', NULL, 296, 28, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(320, 'Lộc Hà', 'loc-ha', NULL, 297, 28, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(321, 'Nghi Xuân', 'nghi-xuan', NULL, 298, 28, 8, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(322, 'Thạch Hà', 'thach-ha', NULL, 299, 28, 9, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(323, 'Vũ Quang', 'vu-quang', NULL, 300, 28, 10, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(324, 'Hà Tĩnh', 'ha-tinh', NULL, 301, 28, 11, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(325, 'Hồng Lĩnh', 'hong-linh', NULL, 302, 28, 12, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(326, 'Bình Giang', 'binh-giang', NULL, 303, 29, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(327, 'Cẩm Giàng', 'cam-giang', NULL, 304, 29, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(328, 'Chí Linh', 'chi-linh', NULL, 305, 29, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(329, 'Gia Lộc', 'gia-loc', NULL, 306, 29, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(330, 'Kim Thành', 'kim-thanh', NULL, 307, 29, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(331, 'Kinh Môn', 'kinh-mon', NULL, 308, 29, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(332, 'Nam Sách', 'nam-sach', NULL, 309, 29, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(333, 'Ninh Giang', 'ninh-giang', NULL, 310, 29, 8, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(334, 'Thanh Hà', 'thanh-ha', NULL, 311, 29, 9, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(335, 'Thanh Miện', 'thanh-mien', NULL, 312, 29, 10, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(336, 'Tứ Kỳ', 'tu-ky', NULL, 313, 29, 11, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(337, 'Hải Dương', 'hai-duong', NULL, 314, 29, 12, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(338, 'Châu Thành', 'chau-thanh', NULL, 315, 30, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(339, 'Châu Thành A', 'chau-thanh-a', NULL, 316, 30, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(340, 'Long Mỹ', 'long-my', NULL, 317, 30, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(341, 'Phụng Hiệp', 'phung-hiep', NULL, 318, 30, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(342, 'Vị Thủy', 'vi-thuy', NULL, 319, 30, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(343, 'Ngã Bảy', 'nga-bay', NULL, 320, 30, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(344, 'Vị Thanh', 'vi-thanh', NULL, 321, 30, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(345, 'Cao Phong', 'cao-phong', NULL, 322, 31, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(346, 'Đà Bắc', 'da-bac', NULL, 323, 31, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(347, 'Kim Bôi', 'kim-boi', NULL, 324, 31, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(348, 'Kỳ Sơn', 'ky-son', NULL, 325, 31, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(349, 'Lạc Sơn', 'lac-son', NULL, 326, 31, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(350, 'Lạc Thủy', 'lac-thuy', NULL, 327, 31, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(351, 'Lương Sơn', 'luong-son', NULL, 328, 31, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(352, 'Mai Châu', 'mai-chau', NULL, 329, 31, 8, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(353, 'Tân Lạc', 'tan-lac', NULL, 330, 31, 9, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(354, 'Yên Thủy', 'yen-thuy', NULL, 331, 31, 10, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(355, 'Hòa Bình', 'hoa-binh', NULL, 332, 31, 11, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(356, 'Ân Thi', 'an-thi', NULL, 333, 32, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(357, 'Khoái Châu', 'khoai-chau', NULL, 334, 32, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(358, 'Kim Động', 'kim-dong', NULL, 335, 32, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(359, 'Mỹ Hào', 'my-hao', NULL, 336, 32, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(360, 'Phù Cừ', 'phu-cu', NULL, 337, 32, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(361, 'Tiên Lữ', 'tien-lu', NULL, 338, 32, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(362, 'Văn Giang', 'van-giang', NULL, 339, 32, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(363, 'Văn Lâm', 'van-lam', NULL, 340, 32, 8, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(364, 'Yên Mỹ', 'yen-my', NULL, 341, 32, 9, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(365, 'Hưng Yên', 'hung-yen', NULL, 342, 32, 10, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(366, 'Cam Lâm', 'cam-lam', NULL, 343, 33, 1, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(367, 'Diên Khánh', 'dien-khanh', NULL, 344, 33, 2, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(368, 'Khánh Sơn', 'khanh-son', NULL, 345, 33, 3, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(369, 'Khánh Vĩnh', 'khanh-vinh', NULL, 346, 33, 4, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(370, 'Ninh Hòa', 'ninh-hoa', NULL, 347, 33, 5, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(371, 'Trường Sa', 'truong-sa', NULL, 348, 33, 6, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(372, 'Vạn Ninh', 'van-ninh', NULL, 349, 33, 7, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(373, 'Nha Trang', 'nha-trang', NULL, 350, 33, 8, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(374, 'Cam Ranh', 'cam-ranh', NULL, 351, 33, 9, 0, '2017-04-27 13:46:54', '2017-04-27 13:46:54'),
(375, 'An Biên', 'an-bien', NULL, 352, 34, 1, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(376, 'An Minh', 'an-minh', NULL, 353, 34, 2, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(377, 'Châu Thành', 'chau-thanh', NULL, 354, 34, 3, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(378, 'Giồng Riềng', 'giong-rieng', NULL, 355, 34, 4, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(379, 'Gò Quao', 'go-quao', NULL, 356, 34, 5, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(380, 'Hòn Đất', 'hon-dat', NULL, 357, 34, 6, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(381, 'Kiên Hải', 'kien-hai', NULL, 358, 34, 7, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(382, 'Kiên Lương', 'kien-luong', NULL, 359, 34, 8, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(383, 'Phú Quốc', 'phu-quoc', NULL, 360, 34, 9, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(384, 'Tân Hiệp', 'tan-hiep', NULL, 361, 34, 10, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(385, 'U minh Thượng', 'u-minh-thuong', NULL, 362, 34, 11, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(386, 'Vĩnh Thuận', 'vinh-thuan', NULL, 363, 34, 12, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(387, 'Rạch Giá', 'rach-gia', NULL, 364, 34, 13, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(388, 'Hà Tiên', 'ha-tien', NULL, 365, 34, 14, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(389, 'Giang Thành', 'giang-thanh', NULL, 723, 34, 15, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(390, 'Đăk Glei', 'dak-glei', NULL, 366, 35, 1, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(391, 'Đăk Hà', 'dak-ha', NULL, 367, 35, 2, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(392, 'Đăk Tô', 'dak-to', NULL, 368, 35, 3, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(393, 'Kon Plông', 'kon-plong', NULL, 369, 35, 4, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(394, 'Kon Rẫy', 'kon-ray', NULL, 370, 35, 5, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(395, 'Ngọc Hồi', 'ngoc-hoi', NULL, 371, 35, 6, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(396, 'Sa Thầy', 'sa-thay', NULL, 372, 35, 7, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(397, 'Tu Mơ Rông', 'tu-mo-rong', NULL, 373, 35, 8, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(398, 'KonTum', 'kontum', NULL, 374, 35, 9, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(399, 'Mường Tè', 'muong-te', NULL, 375, 36, 1, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(400, 'Phong Thổ', 'phong-tho', NULL, 376, 36, 2, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(401, 'Sìn Hồ', 'sin-ho', NULL, 377, 36, 3, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(402, 'Tam Đường', 'tam-duong', NULL, 378, 36, 4, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(403, 'Than Uyên', 'than-uyen', NULL, 379, 36, 5, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(404, 'Lai Châu', 'lai-chau', NULL, 380, 36, 6, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(405, 'Tân Uyên', 'tan-uyen', NULL, 691, 36, 7, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(406, 'Nậm Nhùn', 'nam-nhun', NULL, 709, 36, 8, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(407, 'Bảo Lâm', 'bao-lam', NULL, 381, 37, 1, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(408, 'Cát Tiên', 'cat-tien', NULL, 382, 37, 2, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(409, 'Đạ Huoai', 'da-huoai', NULL, 383, 37, 3, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(410, 'Đạ Tẻh', 'da-teh', NULL, 384, 37, 4, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(411, 'Đam Rông', 'dam-rong', NULL, 385, 37, 5, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(412, 'Di Linh', 'di-linh', NULL, 386, 37, 6, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(413, 'Đơn Dương', 'don-duong', NULL, 387, 37, 7, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(414, 'Đức Trọng', 'duc-trong', NULL, 388, 37, 8, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(415, 'Lạc Dương', 'lac-duong', NULL, 389, 37, 9, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(416, 'Lâm Hà', 'lam-ha', NULL, 390, 37, 10, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(417, 'Đà Lạt', 'da-lat', NULL, 391, 37, 11, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(418, 'Bảo Lộc', 'bao-loc', NULL, 392, 37, 12, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(419, 'Bắc Sơn', 'bac-son', NULL, 393, 38, 1, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(420, 'Bình Gia', 'binh-gia', NULL, 394, 38, 2, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(421, 'Cao Lộc', 'cao-loc', NULL, 395, 38, 3, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(422, 'Chi Lăng', 'chi-lang', NULL, 396, 38, 4, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(423, 'Đình Lập', 'dinh-lap', NULL, 397, 38, 5, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(424, 'Hữu Lũng', 'huu-lung', NULL, 398, 38, 6, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(425, 'Lộc Bình', 'loc-binh', NULL, 399, 38, 7, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(426, 'Tràng Định', 'trang-dinh', NULL, 400, 38, 8, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(427, 'Văn Lãng', 'van-lang', NULL, 401, 38, 9, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(428, 'Văn Quan', 'van-quan', NULL, 402, 38, 10, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(429, 'Lạng Sơn', 'lang-son', NULL, 403, 38, 11, 0, '2017-04-27 13:46:55', '2017-04-27 13:46:55'),
(430, 'Bắc Hà', 'bac-ha', NULL, 404, 39, 1, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(431, 'Bảo Thắng', 'bao-thang', NULL, 405, 39, 2, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(432, 'Bảo Yên', 'bao-yen', NULL, 406, 39, 3, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(433, 'Bát Xát', 'bat-xat', NULL, 407, 39, 4, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(434, 'Mường Khương', 'muong-khuong', NULL, 408, 39, 5, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(435, 'Sa Pa', 'sa-pa', NULL, 409, 39, 6, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(436, 'Văn Bàn', 'van-ban', NULL, 410, 39, 7, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(437, 'Xi Ma Cai', 'xi-ma-cai', NULL, 411, 39, 8, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(438, 'Lào Cai', 'lao-cai', NULL, 414, 39, 9, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(439, 'Giao Thủy', 'giao-thuy', NULL, 430, 40, 1, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(440, 'Hải Hậu', 'hai-hau', NULL, 431, 40, 2, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(441, 'Mỹ Lộc', 'my-loc', NULL, 432, 40, 3, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(442, 'Nam Trực', 'nam-truc', NULL, 433, 40, 4, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(443, 'Nghĩa Hưng', 'nghia-hung', NULL, 434, 40, 5, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(444, 'Trực Ninh', 'truc-ninh', NULL, 435, 40, 6, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(445, 'Vụ Bản', 'vu-ban', NULL, 436, 40, 7, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(446, 'Xuân Trường', 'xuan-truong', NULL, 437, 40, 8, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(447, 'Ý Yên', 'y-yen', NULL, 438, 40, 9, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(448, 'Nam Định', 'nam-dinh', NULL, 439, 40, 10, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(449, 'Anh Sơn', 'anh-son', NULL, 440, 41, 1, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(450, 'Con Cuông', 'con-cuong', NULL, 441, 41, 2, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(451, 'Diễn Châu', 'dien-chau', NULL, 442, 41, 3, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(452, 'Đô Lương', 'do-luong', NULL, 443, 41, 4, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(453, 'Hưng Nguyên', 'hung-nguyen', NULL, 444, 41, 5, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(454, 'Kỳ Sơn', 'ky-son', NULL, 445, 41, 6, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(455, 'Nam Đàn', 'nam-dan', NULL, 446, 41, 7, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(456, 'Nghi Lộc', 'nghi-loc', NULL, 447, 41, 8, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(457, 'Nghĩa Đàn', 'nghia-dan', NULL, 448, 41, 9, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(458, 'Quế Phong', 'que-phong', NULL, 449, 41, 10, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(459, 'Quỳ Châu', 'quy-chau', NULL, 450, 41, 11, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(460, 'Quỳ Hợp', 'quy-hop', NULL, 451, 41, 12, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(461, 'Quỳnh Lưu', 'quynh-luu', NULL, 452, 41, 13, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(462, 'Tân Kỳ', 'tan-ky', NULL, 453, 41, 14, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(463, 'Thanh Chương', 'thanh-chuong', NULL, 454, 41, 15, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(464, 'Tương Dương', 'tuong-duong', NULL, 455, 41, 16, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(465, 'Yên Thành', 'yen-thanh', NULL, 456, 41, 17, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(466, 'Vinh', 'vinh', NULL, 457, 41, 18, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(467, 'Cửa Lò', 'cua-lo', NULL, 458, 41, 19, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(468, 'Thái Hòa', 'thai-hoa', NULL, 692, 41, 20, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(469, 'Hoàng Mai', 'hoang-mai', NULL, 725, 41, 21, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(470, 'Gia Viễn', 'gia-vien', NULL, 459, 42, 1, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(471, 'Hoa Lư', 'hoa-lu', NULL, 460, 42, 2, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(472, 'Kim Sơn', 'kim-son', NULL, 461, 42, 3, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(473, 'Nho Quan', 'nho-quan', NULL, 462, 42, 4, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(474, 'Yên Khánh', 'yen-khanh', NULL, 463, 42, 5, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(475, 'Yên Mô', 'yen-mo', NULL, 464, 42, 6, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(476, 'Ninh Bình', 'ninh-binh', NULL, 465, 42, 7, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(477, 'Tam Điệp', 'tam-diep', NULL, 466, 42, 8, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(478, 'Bác Ái', 'bac-ai', NULL, 467, 43, 1, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(479, 'Ninh Hải', 'ninh-hai', NULL, 468, 43, 2, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(480, 'Ninh Phước', 'ninh-phuoc', NULL, 469, 43, 3, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(481, 'Ninh Sơn', 'ninh-son', NULL, 470, 43, 4, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(482, 'Thuận Bắc', 'thuan-bac', NULL, 471, 43, 5, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(483, 'Phan Rang - Tháp Chàm', 'phan-rang-thap-cham', NULL, 472, 43, 6, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(484, 'Thuận Nam', 'thuan-nam', NULL, 693, 43, 7, 0, '2017-04-27 13:46:56', '2017-04-27 13:46:56'),
(485, 'Cẩm Khê', 'cam-khe', NULL, 473, 44, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(486, 'Đoan Hùng', 'doan-hung', NULL, 474, 44, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(487, 'Hạ Hòa', 'ha-hoa', NULL, 475, 44, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(488, 'Lâm Thao', 'lam-thao', NULL, 476, 44, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(489, 'Phù Ninh', 'phu-ninh', NULL, 477, 44, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(490, 'Tam Nông', 'tam-nong', NULL, 478, 44, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(491, 'Tân Sơn', 'tan-son', NULL, 479, 44, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(492, 'Thanh Ba', 'thanh-ba', NULL, 480, 44, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(493, 'Thanh Sơn', 'thanh-son', NULL, 481, 44, 9, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(494, 'Thanh Thủy', 'thanh-thuy', NULL, 482, 44, 10, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(495, 'Yên Lập', 'yen-lap', NULL, 483, 44, 11, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(496, 'Việt Trì', 'viet-tri', NULL, 485, 44, 12, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(497, 'Phú Thọ', 'phu-tho', NULL, 486, 44, 13, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(498, 'Đông Hòa', 'dong-hoa', NULL, 487, 45, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(499, 'Đồng Xuân', 'dong-xuan', NULL, 488, 45, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(500, 'Phú Hòa', 'phu-hoa', NULL, 489, 45, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(501, 'Sơn Hòa', 'son-hoa', NULL, 490, 45, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(502, 'Sông Cầu', 'song-cau', NULL, 491, 45, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(503, 'Sông Hinh', 'song-hinh', NULL, 492, 45, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(504, 'Tây Hòa', 'tay-hoa', NULL, 493, 45, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(505, 'Tuy An', 'tuy-an', NULL, 494, 45, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(506, 'Tuy Hòa', 'tuy-hoa', NULL, 495, 45, 9, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(507, 'Bố Trạch', 'bo-trach', NULL, 496, 46, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(508, 'Lệ Thủy', 'le-thuy', NULL, 497, 46, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(509, 'Minh Hóa', 'minh-hoa', NULL, 498, 46, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(510, 'Quảng Ninh', 'quang-ninh', NULL, 499, 46, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(511, 'Quảng Trạch', 'quang-trach', NULL, 500, 46, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(512, 'Tuyên Hóa', 'tuyen-hoa', NULL, 501, 46, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(513, 'Đồng Hới', 'dong-hoi', NULL, 502, 46, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(514, 'Ba Đồn', 'ba-don', NULL, 720, 46, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(515, 'Bắc Trà My', 'bac-tra-my', NULL, 503, 47, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(516, 'Đại Lộc', 'dai-loc', NULL, 504, 47, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(517, 'Điện Bàn', 'dien-ban', NULL, 505, 47, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(518, 'Đông Giang', 'dong-giang', NULL, 506, 47, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(519, 'Duy Xuyên', 'duy-xuyen', NULL, 507, 47, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(520, 'Hiệp Đức', 'hiep-duc', NULL, 508, 47, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57');
INSERT INTO `district` (`id`, `name`, `slug`, `meta_id`, `id_dothi`, `city_id`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(521, 'Nam Giang', 'nam-giang', NULL, 509, 47, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(522, 'Nam Trà My', 'nam-tra-my', NULL, 510, 47, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(523, 'Núi Thành', 'nui-thanh', NULL, 511, 47, 9, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(524, 'Phú Ninh', 'phu-ninh', NULL, 512, 47, 10, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(525, 'Phước Sơn', 'phuoc-son', NULL, 513, 47, 11, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(526, 'Quế Sơn', 'que-son', NULL, 514, 47, 12, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(527, 'Tây Giang', 'tay-giang', NULL, 515, 47, 13, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(528, 'Thăng Bình', 'thang-binh', NULL, 516, 47, 14, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(529, 'Tiên Phước', 'tien-phuoc', NULL, 517, 47, 15, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(530, 'Tam Kỳ', 'tam-ky', NULL, 519, 47, 16, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(531, 'Hội An', 'hoi-an', NULL, 520, 47, 17, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(532, 'Nông Sơn', 'nong-son', NULL, 694, 47, 18, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(533, 'Ba Tơ', 'ba-to', NULL, 521, 48, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(534, 'Bình Sơn', 'binh-son', NULL, 522, 48, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(535, 'Đức Phổ', 'duc-pho', NULL, 523, 48, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(536, 'Lý Sơn', 'ly-son', NULL, 524, 48, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(537, 'Minh Long', 'minh-long', NULL, 525, 48, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(538, 'Mộ Đức', 'mo-duc', NULL, 526, 48, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(539, 'Nghĩa Hành', 'nghia-hanh', NULL, 527, 48, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(540, 'Sơn Hà', 'son-ha', NULL, 528, 48, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(541, 'Sơn Tây', 'son-tay', NULL, 529, 48, 9, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(542, 'Sơn Tịnh', 'son-tinh', NULL, 530, 48, 10, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(543, 'Tây Trà', 'tay-tra', NULL, 531, 48, 11, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(544, 'Trà Bồng', 'tra-bong', NULL, 532, 48, 12, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(545, 'Tư Nghĩa', 'tu-nghia', NULL, 533, 48, 13, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(546, 'Quảng Ngãi', 'quang-ngai', NULL, 534, 48, 14, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(547, 'Ba Chẽ', 'ba-che', NULL, 535, 49, 1, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(548, 'Bình Liêu', 'binh-lieu', NULL, 536, 49, 2, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(549, 'Cô Tô', 'co-to', NULL, 537, 49, 3, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(550, 'Đầm Hà', 'dam-ha', NULL, 538, 49, 4, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(551, 'Đông Triều', 'dong-trieu', NULL, 539, 49, 5, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(552, 'Hải Hà', 'hai-ha', NULL, 540, 49, 6, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(553, 'Hoành Bồ', 'hoanh-bo', NULL, 541, 49, 7, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(554, 'Tiên Yên', 'tien-yen', NULL, 542, 49, 8, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(555, 'Vân Đồn', 'van-don', NULL, 543, 49, 9, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(556, 'Hạ Long', 'ha-long', NULL, 546, 49, 10, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(557, 'Cẩm Phả', 'cam-pha', NULL, 547, 49, 11, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(558, 'Móng Cái', 'mong-cai', NULL, 548, 49, 12, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(559, 'Uông Bí', 'uong-bi', NULL, 549, 49, 13, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(560, 'Quảng Yên', 'quang-yen', NULL, 708, 49, 14, 0, '2017-04-27 13:46:57', '2017-04-27 13:46:57'),
(561, 'Cam Lộ', 'cam-lo', NULL, 550, 50, 1, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(562, 'Đăk Rông', 'dak-rong', NULL, 551, 50, 2, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(563, 'Đảo Cồn cỏ', 'dao-con-co', NULL, 552, 50, 3, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(564, 'Gio Linh', 'gio-linh', NULL, 553, 50, 4, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(565, 'Hải Lăng', 'hai-lang', NULL, 554, 50, 5, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(566, 'Hướng Hóa', 'huong-hoa', NULL, 555, 50, 6, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(567, 'Triệu Phong', 'trieu-phong', NULL, 556, 50, 7, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(568, 'Vĩnh Linh', 'vinh-linh', NULL, 557, 50, 8, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(569, 'Đông Hà', 'dong-ha', NULL, 558, 50, 9, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(570, 'Quảng Trị', 'quang-tri', NULL, 559, 50, 10, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(571, 'Cù Lao Dung', 'cu-lao-dung', NULL, 560, 51, 1, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(572, 'Kế Sách', 'ke-sach', NULL, 561, 51, 2, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(573, 'Long Phú', 'long-phu', NULL, 562, 51, 3, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(574, 'Mỹ Tú', 'my-tu', NULL, 563, 51, 4, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(575, 'Mỹ Xuyên', 'my-xuyen', NULL, 564, 51, 5, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(576, 'Ngã Năm', 'nga-nam', NULL, 565, 51, 6, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(577, 'Thạnh Trị', 'thanh-tri', NULL, 566, 51, 7, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(578, 'Vĩnh Châu', 'vinh-chau', NULL, 567, 51, 8, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(579, 'Sóc Trăng', 'soc-trang', NULL, 568, 51, 9, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(580, 'Châu Thành', 'chau-thanh', NULL, 695, 51, 10, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(581, 'Trần Đề', 'tran-de', NULL, 707, 51, 11, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(582, 'Bắc Yên', 'bac-yen', NULL, 569, 52, 1, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(583, 'Mai Sơn', 'mai-son', NULL, 570, 52, 2, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(584, 'Mộc Châu', 'moc-chau', NULL, 571, 52, 3, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(585, 'Mường La', 'muong-la', NULL, 572, 52, 4, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(586, 'Phù Yên', 'phu-yen', NULL, 573, 52, 5, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(587, 'Quỳnh Nhai', 'quynh-nhai', NULL, 574, 52, 6, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(588, 'Sông Mã', 'song-ma', NULL, 575, 52, 7, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(589, 'Sốp Cộp', 'sop-cop', NULL, 576, 52, 8, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(590, 'Thuận Châu', 'thuan-chau', NULL, 577, 52, 9, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(591, 'Yên Châu', 'yen-chau', NULL, 578, 52, 10, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(592, 'Sơn La', 'son-la', NULL, 579, 52, 11, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(593, 'Vân Hồ', 'van-ho', NULL, 726, 52, 12, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(594, 'Bến Cầu', 'ben-cau', NULL, 580, 53, 1, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(595, 'Châu Thành', 'chau-thanh', NULL, 581, 53, 2, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(596, 'Dương Minh Châu', 'duong-minh-chau', NULL, 582, 53, 3, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(597, 'Gò Dầu', 'go-dau', NULL, 583, 53, 4, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(598, 'Hòa Thành', 'hoa-thanh', NULL, 584, 53, 5, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(599, 'Tân Biên', 'tan-bien', NULL, 585, 53, 6, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(600, 'Tân Châu', 'tan-chau', NULL, 586, 53, 7, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(601, 'Trảng Bàng', 'trang-bang', NULL, 587, 53, 8, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(602, 'Tây Ninh', 'tay-ninh', NULL, 588, 53, 9, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(603, 'Đông Hưng', 'dong-hung', NULL, 589, 54, 1, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(604, 'Hưng Hà', 'hung-ha', NULL, 590, 54, 2, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(605, 'Kiến Xương', 'kien-xuong', NULL, 591, 54, 3, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(606, 'Quỳnh Phụ', 'quynh-phu', NULL, 592, 54, 4, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(607, 'Thái Thuỵ', 'thai-thuy', NULL, 593, 54, 5, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(608, 'Tiền Hải', 'tien-hai', NULL, 594, 54, 6, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(609, 'Vũ Thư', 'vu-thu', NULL, 595, 54, 7, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(610, 'Thái Bình', 'thai-binh', NULL, 596, 54, 8, 0, '2017-04-27 13:46:58', '2017-04-27 13:46:58'),
(611, 'Đại Từ', 'dai-tu', NULL, 597, 55, 1, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(612, 'Định Hóa', 'dinh-hoa', NULL, 598, 55, 2, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(613, 'Đồng Hỷ', 'dong-hy', NULL, 599, 55, 3, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(614, 'Phổ Yên', 'pho-yen', NULL, 600, 55, 4, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(615, 'Phú Bình', 'phu-binh', NULL, 601, 55, 5, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(616, 'Phú Lương', 'phu-luong', NULL, 602, 55, 6, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(617, 'Võ Nhai', 'vo-nhai', NULL, 603, 55, 7, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(618, 'Thái Nguyên', 'thai-nguyen', NULL, 604, 55, 8, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(619, 'Sông Công', 'song-cong', NULL, 605, 55, 9, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(620, 'Bá Thước', 'ba-thuoc', NULL, 606, 56, 1, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(621, 'Cẩm Thủy', 'cam-thuy', NULL, 607, 56, 2, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(622, 'Đông Sơn', 'dong-son', NULL, 608, 56, 3, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(623, 'Hà Trung', 'ha-trung', NULL, 609, 56, 4, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(624, 'Hậu Lộc', 'hau-loc', NULL, 610, 56, 5, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(625, 'Hoằng Hóa', 'hoang-hoa', NULL, 611, 56, 6, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(626, 'Lang Chánh', 'lang-chanh', NULL, 612, 56, 7, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(627, 'Mường Lát', 'muong-lat', NULL, 613, 56, 8, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(628, 'Nga Sơn', 'nga-son', NULL, 614, 56, 9, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(629, 'Ngọc Lặc', 'ngoc-lac', NULL, 615, 56, 10, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(630, 'Như Thanh', 'nhu-thanh', NULL, 616, 56, 11, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(631, 'Như Xuân', 'nhu-xuan', NULL, 617, 56, 12, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(632, 'Nông Cống', 'nong-cong', NULL, 618, 56, 13, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(633, 'Quan Hóa', 'quan-hoa', NULL, 619, 56, 14, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(634, 'Quan Sơn', 'quan-son', NULL, 620, 56, 15, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(635, 'Quảng Xương', 'quang-xuong', NULL, 621, 56, 16, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(636, 'Thạch Thành', 'thach-thanh', NULL, 622, 56, 17, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(637, 'Thiệu Hóa', 'thieu-hoa', NULL, 623, 56, 18, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(638, 'Thọ Xuân', 'tho-xuan', NULL, 624, 56, 19, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(639, 'Thường Xuân', 'thuong-xuan', NULL, 625, 56, 20, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(640, 'Tĩnh Gia', 'tinh-gia', NULL, 626, 56, 21, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(641, 'Triệu Sơn', 'trieu-son', NULL, 627, 56, 22, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(642, 'Vĩnh Lộc', 'vinh-loc', NULL, 628, 56, 23, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(643, 'Yên Định', 'yen-dinh', NULL, 629, 56, 24, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(644, 'Thanh Hóa', 'thanh-hoa', NULL, 630, 56, 25, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(645, 'Bỉm Sơn', 'bim-son', NULL, 631, 56, 26, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(646, 'Sầm Sơn', 'sam-son', NULL, 632, 56, 27, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(647, 'A Lưới', 'a-luoi', NULL, 633, 57, 1, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(648, 'Hương Thủy', 'huong-thuy', NULL, 634, 57, 2, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(649, 'Hương Trà', 'huong-tra', NULL, 635, 57, 3, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(650, 'Nam Đông', 'nam-dong', NULL, 636, 57, 4, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(651, 'Phong Điền', 'phong-dien', NULL, 637, 57, 5, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(652, 'Phú Lộc', 'phu-loc', NULL, 638, 57, 6, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(653, 'Phú Vang', 'phu-vang', NULL, 639, 57, 7, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(654, 'Quảng Điền', 'quang-dien', NULL, 640, 57, 8, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(655, 'Huế', 'hue', NULL, 641, 57, 9, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(656, 'Cái Bè', 'cai-be', NULL, 642, 58, 1, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(657, 'Huyện Cai Lậy', 'huyen-cai-lay', NULL, 643, 58, 2, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(658, 'Châu Thành', 'chau-thanh', NULL, 644, 58, 3, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(659, 'Chợ Gạo', 'cho-gao', NULL, 645, 58, 4, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(660, 'Gò Công Đông', 'go-cong-dong', NULL, 646, 58, 5, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(661, 'Gò Công Tây', 'go-cong-tay', NULL, 647, 58, 6, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(662, 'Tân Phước', 'tan-phuoc', NULL, 648, 58, 7, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(663, 'Tân Phú Đông', 'tan-phu-dong', NULL, 649, 58, 8, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(664, 'Mỹ Tho', 'my-tho', NULL, 650, 58, 9, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(665, 'Gò Công', 'go-cong', NULL, 651, 58, 10, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(666, 'Thị Xã Cai Lậy', 'thi-xa-cai-lay', NULL, 727, 58, 11, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(667, 'Càng Long', 'cang-long', NULL, 652, 59, 1, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(668, 'Cầu Kè', 'cau-ke', NULL, 653, 59, 2, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(669, 'Cầu Ngang', 'cau-ngang', NULL, 654, 59, 3, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(670, 'Châu Thành', 'chau-thanh', NULL, 655, 59, 4, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(671, 'Duyên Hải', 'duyen-hai', NULL, 656, 59, 5, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(672, 'Tiểu Cần', 'tieu-can', NULL, 657, 59, 6, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(673, 'Trà Cú', 'tra-cu', NULL, 658, 59, 7, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(674, 'Trà Vinh', 'tra-vinh', NULL, 659, 59, 8, 0, '2017-04-27 13:46:59', '2017-04-27 13:46:59'),
(675, 'Chiêm Hóa', 'chiem-hoa', NULL, 660, 60, 1, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(676, 'Hàm Yên', 'ham-yen', NULL, 661, 60, 2, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(677, 'Na Hang', 'na-hang', NULL, 662, 60, 3, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(678, 'Sơn Dương', 'son-duong', NULL, 663, 60, 4, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(679, 'Yên Sơn', 'yen-son', NULL, 664, 60, 5, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(680, 'Tuyên Quang', 'tuyen-quang', NULL, 665, 60, 6, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(681, 'Lâm Bình', 'lam-binh', NULL, 712, 60, 7, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(682, 'Bình Minh', 'binh-minh', NULL, 666, 61, 1, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(683, 'Bình Tân', 'binh-tan', NULL, 667, 61, 2, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(684, 'Long Hồ', 'long-ho', NULL, 668, 61, 3, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(685, 'Mang Thít', 'mang-thit', NULL, 669, 61, 4, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(686, 'Tam Bình', 'tam-binh', NULL, 670, 61, 5, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(687, 'Trà Ôn', 'tra-on', NULL, 671, 61, 6, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(688, 'Vũng Liêm', 'vung-liem', NULL, 672, 61, 7, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(689, 'Vĩnh Long', 'vinh-long', NULL, 673, 61, 8, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(690, 'Bình Xuyên', 'binh-xuyen', NULL, 674, 62, 1, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(691, 'Lập Thạch', 'lap-thach', NULL, 675, 62, 2, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(692, 'Tam Đảo', 'tam-dao', NULL, 676, 62, 3, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(693, 'Tam Dương', 'tam-duong', NULL, 677, 62, 4, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(694, 'Vĩnh Tường', 'vinh-tuong', NULL, 678, 62, 5, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(695, 'Yên Lạc', 'yen-lac', NULL, 679, 62, 6, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(696, 'Vĩnh Yên', 'vinh-yen', NULL, 680, 62, 7, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(697, 'Phúc Yên', 'phuc-yen', NULL, 681, 62, 8, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(698, 'Sông Lô', 'song-lo', NULL, 696, 62, 9, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(699, 'Lục Yên', 'luc-yen', NULL, 682, 63, 1, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(700, 'Mù Cang Chải', 'mu-cang-chai', NULL, 683, 63, 2, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(701, 'Trạm Tấu', 'tram-tau', NULL, 684, 63, 3, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(702, 'Trấn Yên', 'tran-yen', NULL, 685, 63, 4, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(703, 'Văn Chấn', 'van-chan', NULL, 686, 63, 5, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(704, 'Văn Yên', 'van-yen', NULL, 687, 63, 6, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(705, 'Yên Bình', 'yen-binh', NULL, 688, 63, 7, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(706, 'Yên Bái', 'yen-bai', NULL, 689, 63, 8, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00'),
(707, 'Nghĩa Lộ', 'nghia-lo', NULL, 713, 63, 9, 0, '2017-04-27 13:47:00', '2017-04-27 13:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `estate_type`
--

CREATE TABLE `estate_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 : ban 2 : cho thue',
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `meta_id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estate_type`
--

INSERT INTO `estate_type` (`id`, `name`, `slug`, `type`, `display_order`, `status`, `meta_id`, `created_at`, `updated_at`) VALUES
(1, 'Bán căn hộ chung cư', 'ban-can-ho-chung-cu', 1, 1, 1, 19, '2017-04-01 00:00:00', '2017-05-20 09:11:59'),
(2, 'Bán nhà riêng', 'ban-nha-rieng', 1, 2, 1, 1, '2017-04-01 00:00:00', '2017-05-05 15:39:06'),
(3, 'Bán nhà biệt thự, liền kề', 'ban-nha-biet-thu-lien-ke', 1, 3, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(4, 'Bán nhà mặt phố', 'ban-nha-mat-pho', 1, 4, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(5, 'Bán đất nền dự án', 'ban-dat-nen-du-an', 1, 5, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(6, 'Bán đất', 'ban-dat', 1, 6, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(7, 'Bán trang trại, khu nghỉ dưỡng', 'ban-trang-trai-khu-nghi-duong', 1, 7, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(8, 'Bán kho, nhà xưởng', 'ban-kho-nha-xuong', 1, 8, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(9, 'Bán loại bất động sản khác', 'ban-loai-bat-dong-san-khac', 1, 9, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(10, 'Cho thuê căn hộ chung cư', 'cho-thue-can-ho-chung-cu', 2, 1, 1, 0, '2017-04-01 00:00:00', '2017-05-05 15:38:19'),
(11, 'Cho thuê nhà riêng', 'cho-thue-nha-rieng', 2, 2, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(12, 'Cho thuê nhà mặt phố', 'cho-thue-nha-mat-pho', 2, 3, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(13, 'Cho thuê nhà trọ, phòng trọ', 'cho-thue-nha-tro-phong-tro', 2, 4, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(14, 'Cho thuê văn phòng', 'cho-thue-van-phong', 2, 5, 1, 55, '2017-04-01 00:00:00', '2017-05-31 14:38:37'),
(15, 'Cho thuê cửa hàng, ki ốt', 'cho-thue-cua-hang-ki-ot', 2, 6, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(16, 'Cho thuê kho, nhà xưởng, đất', 'cho-thue-kho-nha-xuong-dat', 2, 7, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(17, 'Cho thuê bất động sản khác', 'cho-thue-bat-dong-san-khac', 2, 8, 1, 0, '2017-04-01 00:00:00', '2017-04-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `content`) VALUES
(1, 'Nhà TB - tầng 2', '007324141425'),
(2, 'Nhà PN - tầng trệt', '0918345334');

-- --------------------------------------------------------

--
-- Table structure for table `info_seo`
--

CREATE TABLE `info_seo` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `custom_text` text NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `landing_projects`
--

CREATE TABLE `landing_projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `slug` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_id` int(11) DEFAULT NULL,
  `address_contact` varchar(255) DEFAULT NULL,
  `phone_contact` varchar(100) DEFAULT NULL,
  `email_contact` varchar(150) DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `legal`
--

CREATE TABLE `legal` (
  `legal_id` int(11) NOT NULL,
  `legal_name` varchar(100) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `legal`
--

INSERT INTO `legal` (`legal_id`, `legal_name`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Sổ đỏ/ sổ hồng', 1, 1, 1417164620, 1417164620),
(2, 'Giấy tờ hợp lệ', 2, 1, 1417164620, 1417164620),
(3, 'Giấy phép XD', 3, 1, 1417164620, 1417164620),
(4, 'Giấy phép KD', 4, 1, 1417164620, 1417164620);

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `custom_text` text,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `title`, `description`, `keywords`, `custom_text`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Bán nhà riêng', 'Bán nhà riêng', 'Bán nhà riêng', '', 1, 1, '2017-05-05 15:39:06', '2017-05-20 09:12:21'),
(2, 'fsdgdsfhsdf', 'dfsh', 'sdfhdfh', 'dfhsdfhsdfhdfh', 1, 1, '2017-05-05 17:39:09', '2017-05-05 17:41:34'),
(3, '', '', '', '', 1, 1, '2017-05-05 17:45:59', '2017-05-05 17:45:59'),
(4, '', '', '', '', 1, 1, '2017-05-05 18:02:08', '2017-05-05 18:02:08'),
(5, NULL, NULL, NULL, '', 0, 0, '2017-05-09 22:15:04', '2017-05-09 22:15:04'),
(6, '', '', '', '', 1, 1, '2017-05-09 22:38:11', '2017-05-09 22:38:11'),
(7, 'dgadsga', 'dgadsgadgádga', 'ádgasdgádgas', 'gádgsdg', 1, 1, '2017-05-09 22:38:28', '2017-05-10 08:45:39'),
(8, 'áf', 'SFA', 'Ấ', 'À', 1, 1, '2017-05-10 09:30:13', '2017-05-10 09:30:13'),
(9, '', '', '', '', 5, 5, '2017-05-13 09:34:52', '2017-05-13 09:34:52'),
(10, NULL, NULL, NULL, '', 0, 0, '2017-05-13 10:32:31', '2017-05-13 10:32:31'),
(11, 'afa', 'fasfAFS', 'ASFas', 'asfS', 1, 1, '2017-05-18 21:29:42', '2017-05-18 21:29:42'),
(12, 'ASDFSD', 'FSAD', 'SDGSD', 'SDG', 1, 1, '2017-05-18 21:30:01', '2017-05-18 21:30:01'),
(13, 'sdgasdgs', 'sdgas', 'sdgasd', 'dgfasgsdgasd', 1, 1, '2017-05-18 21:49:30', '2017-05-18 21:49:30'),
(14, '', '', '', '', 1, 1, '2017-05-18 22:01:37', '2017-05-18 22:01:37'),
(15, '', '', '', '', 1, 1, '2017-05-18 22:01:59', '2017-05-18 22:01:59'),
(16, 'dsgasd', 'gádgads', 'gádgs', 'dsgasdgs', 1, 1, '2017-05-18 22:02:16', '2017-05-18 22:11:42'),
(17, '', '', '', '', 1, 1, '2017-05-20 06:11:38', '2017-05-20 06:11:38'),
(18, '', '', '', '', 1, 1, '2017-05-20 06:21:00', '2017-05-20 06:21:00'),
(19, 'Bán căn hộ chung cư', 'Bán căn hộ chung cư', 'Bán căn hộ chung cư', '', 1, 1, '2017-05-20 09:11:59', '2017-05-20 09:11:59'),
(20, '', '', '', '', 1, 1, '2017-05-20 21:09:38', '2017-05-20 21:09:38'),
(21, '', '', '', '', 1, 1, '2017-05-21 15:39:59', '2017-05-21 15:39:59'),
(22, '', '', '', '', 1, 1, '2017-05-21 15:45:59', '2017-05-21 15:45:59'),
(23, '', '', '', '', 1, 1, '2017-05-21 15:47:27', '2017-05-21 15:47:27'),
(24, '', '', '', '', 1, 1, '2017-05-21 15:51:31', '2017-05-21 15:51:31'),
(25, '', '', '', '', 1, 1, '2017-05-21 16:04:29', '2017-05-21 16:04:29'),
(26, '', '', '', '', 1, 1, '2017-05-21 19:04:52', '2017-05-21 19:04:52'),
(27, '', '', '', '', 1, 1, '2017-05-22 15:03:41', '2017-05-22 15:03:41'),
(28, '', '', '', '', 1, 1, '2017-05-22 16:15:47', '2017-05-22 16:15:47'),
(29, '', '', '', '', 8, 8, '2017-05-24 06:26:26', '2017-05-24 06:26:26'),
(30, NULL, NULL, NULL, '', 0, 0, '2017-05-24 06:43:56', '2017-05-24 06:43:56'),
(31, NULL, NULL, NULL, '', 0, 0, '2017-05-24 06:45:06', '2017-05-24 06:45:06'),
(32, NULL, NULL, NULL, '', 0, 0, '2017-05-24 09:29:02', '2017-05-24 09:29:02'),
(33, '', '', '', '', 8, 8, '2017-05-24 12:36:59', '2017-05-24 12:36:59'),
(34, '', '', '', '', 8, 8, '2017-05-24 13:12:22', '2017-05-24 13:12:22'),
(35, 'Cần bán nhà góc 2 MT đường 359 (1 lầu, 1 trệt) tại Phước Long B, Quận 9, 55m2 giá 2,1tỷ', 'Cần tiền bán gấp căn nhà 2 mặt tiền đường 359, Phước Long B, Quận 9. Nhà 1 trệt 1 lầu. DT: 55m2 (DT: 4,1 x 13,35m). Giá : 2,1 tỷ đồng.', 'bán nhà mặt tiền quận 9, nhà bán mặt tiền quận 9, nhà trung tâm quận 9, nhà mặt tiền kinh doanh quận 9, nhà 2 mặt tiền quận 9, nha mat tien quan 9, nha trung tam quan 9', 'Cần tiền bán gấp căn nhà 2 mặt tiền đường 359, Phước Long B, Quận 9\r\n- DT: 55m2 (DT: 4,1 x 13,35m). \r\n- Giá : 2,1 tỷ đồng.\r\n- Vị trí đắc địa, cách đường Đỗ Xuân Hợp 500m và cách đường Dương Đình Hội 50m.\r\n- Nhà nằm trên mặt tiền đường nhựa 8m , mặt tiền xe cộ qua lại tấp nập\r\n- Nằm ngay trung tâm quận 9, khu vực dân cư hiện hữu nên tiện ích xung quanh khu vực đầy đủ.\r\n- Nhà hướng Đông mát mẻ, thích hợp để ở hoặc cho thuê, kinh doanh buôn bán\r\n- Pháp lí : sổ hồng chính chủ sang tên công chứng ngay  \r\n- Hiện tại đang cho thuê 8tr/tháng  \r\n- Thương lượng nếu thiện chí - Miễn trung gian \r\n- Vui lòng liên hệ: 0937045103 ', 8, 8, '2017-05-27 20:46:09', '2017-05-30 07:01:17'),
(36, 'Tất cả các nhà bán gần xa lộ Hà Nội', '', '', '', 8, 8, '2017-05-27 20:52:37', '2017-05-27 20:52:37'),
(37, 'Nhà bán gần xa lộ Hà Nội', '', '', '', 8, 8, '2017-05-27 20:54:49', '2017-05-27 20:54:49'),
(38, 'Cần bán đất đường số 2, P Trường Thọ, Thủ Đức, DT: 51.1m2, giá: 40tr/m2', 'Cần vốn đầu tư bán gấp lô đất đường số 2, P Trường Thọ, Q Thủ Đức. \r\n- DT: 51,1 m2 ( 4m x 13,7m )\r\n- Giá: 40tr/m2  ', 'bán đất mặt tiền quận thủ đức, bán đất trung tâm quận thủ đất, đất nền quận thủ đức giá tốt, dat nen quan thu duc, ban dat quan thu duc, ban dat mat tien quan thu duc', 'Cần vốn đầu tư bán gấp lô đất đường số 2, P Trường Thọ, Q Thủ Đức. \r\n- DT: 51,1 m2 ( 4m x 13,7m )\r\n- Giá: 40tr/m2 còn bớt cho khách mua nhanh lẹ.\r\n- Nằm trong khu dân cư đông đúc, dân trí cao, an ninh.\r\n- Tiện ích: Gần chợ, trường học 1,2,3 và nhiều dịch vụ khác ...\r\n- Sổ hồng chính chủ - Xây dựng tự do ( sag tên công chứng trong ngày )\r\n- Nằm ngay trung tâm, thuận tiện đi lại, cách Xa Lộ Hà Nội 200m.\r\n- Thích hợp đầu tư, xây nhà nghỉ hoặc kinh doanh các loại hình khác...\r\n- Cần tiền gấp nên chỉ tiếp thiện chí - Miễn trung gian\r\n- Vui lòng liên hệ: 0937045103 ( Quốc Kiệt )', 8, 13, '2017-05-28 09:02:14', '2017-05-31 13:48:59'),
(39, '', '', '', '', 8, 8, '2017-05-28 09:10:27', '2017-05-28 09:10:27'),
(40, '', '', '', '', 8, 8, '2017-05-28 18:42:20', '2017-05-28 18:42:20'),
(41, '', '', '', '', 8, 8, '2017-05-28 18:42:53', '2017-05-28 18:42:53'),
(42, '', '', '', '', 8, 8, '2017-05-28 19:01:08', '2017-05-28 19:01:08'),
(43, 'Bán đất nền quận 9 giá rẻ, đất nền quận 9 đầu tư tốt nhất', '', '', 'Nếu quý vị đang muốn mua đất nền quận 9 để đầu tư hay cất nhà thì Dothi9.com sẽ là một địa chỉ để bạn lựa chọn tốt. Với đội ngũ chuyên viên, chuyên gia hoạt động trong ngành bất động sản trên 10 năm kinh nghiệm, lăn lộn với nghề, chinh chiến qua bao giai đoạn thăng trầm của thị trường. Chúng tôi nhận thấy trong giai đoạn này vùng đất quận 9 thực sự rất tiềm năng. Đầu tư vào đất nền quận 9 là giải pháp tốt để sinh lợi trong vài năm tới. Thực sự nguồn đất nền quận 9 còn rất nhiều. Nhưng sản phẩm tốt thì hầu hết đã bị thâu tóm. Nếu bạn không chuyên về tìm kiếm đất nền để đầu tư thì đừng ngần ngại liên hệ với đội ngũ chuyên gia săn đất của chúng tôi. Chúng tôi cam kết cung cấp đất nền quận 9 giá rẻ, tiềm năng tốt trong tương lai. Số lượng thực sự có hạn nên quý vị vui lòng đừng chần chờ để mất cơ hội.', 8, 8, '2017-05-29 07:06:34', '2017-05-29 07:08:31'),
(44, 'Bán dự án đất nền quận 9 giá rẻ, vị trí tốt, khả năng sinh lợi cao', 'Bán dự án đất nền quận 9 giá rẻ, vị trí tốt, khả năng sinh lợi cao. Vùng đất vàng khu đông Sài Gòn này thực sự đã ổn định và phát triển. Đầu tư ngay đừng để cơ hội trôi qua mỗi ngày.', '', 'Trong lĩnh vực bất động sản. Đối với các vùng đất vàng như quận 9 thì mỗi ngày trôi qua nếu quý vị không nắm bắt xem như cơ hội nó cũng vơi dần đi. Bởi vì nguồn đất nền ở đây càng càng bị ít đi do làn sóng đầu tư và mua đất để ở của người dân tăng cao. Nếu cơn sốt đất ở đâu đó có thể gọi là ảo thì vùng đất quận 9 chưa bao giờ là ảo cả. Đơn giản mọi thứ ở đây như hệ thống đường xá, tiện ích đều được xây dựng tốt để đón hàng trăm ngàn người dân đổ bộ về đây sinh sống. Đừng chần chờ bỏ qua cơ hội đầu tư vào dự án đất nền quận 9 giá rẻ hôm nay. Cơ hội trong tay mỗi chúng ta, biết cách sử dụng nguồn tiền hợp lý thì sau một thời gian nó như gà đẻ trứng vàng. ', 8, 8, '2017-05-29 07:10:37', '2017-05-29 07:23:04'),
(45, 'Bán nhà riêng quận 9 giá rẻ, chính chủ, pháp lý rõ ràng', '', '', 'Kênh thông tin bất động sản, thông tin bán nhà riêng quận 9 giá rẻ, chính chủ, pháp lý rõ ràng. Ngoài đất nền, căn hộ đang được nhiều người săn đóng thì nhà riêng quận 9 cũng là lựa chọn hay dành cho các quý khách thích sự thoải mái. Tuy nhiên chính vì sự thoải mái nên sẽ ẩn chứa vài rủi ro nếu quý khách không nắm rõ các thông tin về quy hoạch, pháp lý, thẩm định tài sản. Đừng quá lo lắng, thông tin nhà riêng quận 9 trên dothi9.com đã được kiểm định, đội ngũ chuyên viên của chúng tôi sẽ hỗ trợ quý vị hoàn tất giao dịch thuận lợi nhất. Nếu quý vị có nhu cầu mua bán nhà riêng quận 9 đừng ngần ngại liên hệ với chúng tôi để được hỗ trợ.', 8, 8, '2017-05-29 07:30:40', '2017-05-29 07:30:40'),
(46, '', '', '', '', 8, 8, '2017-05-29 07:43:56', '2017-05-29 07:43:56'),
(47, '', '', '', '', 8, 8, '2017-05-29 23:45:57', '2017-05-29 23:45:57'),
(48, '', '', '', '', 8, 8, '2017-05-30 06:40:32', '2017-05-30 06:40:32'),
(49, '', '', '', '', 8, 8, '2017-05-30 06:44:35', '2017-05-30 06:44:35'),
(50, 'Nhà mặt tiền1 trệt 1 lầu đường Dương Đình Hội, Phước Long B, quận 9  giá tốt', 'Bán nhà 1 trệt 1 lầu Mặt tiền Dương Đình Hội, Phước Long B, Q.9. Diện Tích: 4,30 x 12m = 51,6 m2.\r\n Nhà xây hết đất, kiên cố và hiện đại, đẹp như hình (hình thật).\r\n', 'bán nhà mặt tiền quận 9, bán nhà mặt tiền dương đình hội quận 9, bán nhà trung tâm quận 9, ban nha mat tien quan 9, ban nha mat tien kinh doanh quan 9, ban nha mat tien duong dinh hoi quan 9', ' Bán nhà 1 trệt 1 lầu Mặt tiền Dương Đình Hội, Phước Long B, Q.9.\r\n+ Diện Tích: 4,30 x 12m = 51,6 m2.\r\n+ Nhà xây hết đất, kiên cố và hiện đại, đẹp như hình (hình thật).\r\n+ Hướng Tây bắc.\r\n+ Dân cư đông đúc, sôi động, an ninh.\r\n- Vị trí: Kinh doanh, văn phòng, mở quán cafe, quán ăn ... Phù hợp với mọi loại hình kinh doanh.\r\n- Gần tuyến cao tốc Long Thành Dầu Giây, tuyến Metro, Đại Lộ Đông Tây,... 20 phút vào đến trung tâm Q1, rất tiện sang Q2, Phú Mỹ Hưng Q7.\r\n- Tiện ích: Gần ngay chợ, trường học, khu vui chơi, các trường cấp 1,2,3...\r\n+ Sổ hồng riêng, sang tên công chứng trong ngày.\r\n+ Giá 2 tỷ 350 triệu ( tiếp khách thiện chí )', 8, 8, '2017-05-30 07:26:16', '2017-06-01 07:21:42'),
(51, 'Cần bán gấp nhà mặt tiền đường 297, Phước Long B, Quận 9 thích hợp đầu tư', 'Cần tiền bán gấp nhà mặt tiền đường 297, Phước Long B, Q9.\r\nTổng DT : 187,5m2 (6m x 31m)\r\nDT xây dựng : 103,1 m2 -  Diện tích sàn : 164,5 m2.', 'bán nhà mặt tiền quận 9, bán nhà trung tâm quận 9, bán nhà mặt tiền 297 phước long b quận 9, bán nhà mặt tiền kinh doanh quận 9, ban nha mat tien quan 9, ban mat tien kinh doanh quan 9, ban nha mat tien 297 quan 9', 'Cần tiền bán gấp nhà mặt tiền đường 297, Phước Long B, Q9.\r\n+ Tổng DT : 187,5m2 (6m x 31m)\r\n+ DT xây dựng : 103,1 m2 -  Diện tích sàn : 164,5 m2.\r\n+ Hướng tây nam mát mẻ\r\n+ Đường rộng 12m thích hợp kinh doanh.\r\n+ Nằm trong khu dân cư an ninh, sầm uất.\r\n+ Cách trục chính Đỗ Xuân Hợp 500m.\r\n+ Tiện ích: Nằm gần chợ Phước Bình,Trường THCS Võ Văn Hát,... Thích hơp kinh doanh nhà trọ, nhà nghỉ,quán ăn,... \r\n+ Hiện tại đang cho thuê làm lớp mầm non với giá thuê trên 10tr/tháng. ( Xây dựng 8 đến 10 phòng trọ cho thuê với mức giá 2tr/phòng ).\r\n+ Mua bán sang tên nhanh gọn ,giá tốt ( còn thương lượng nếu thiện chí ).', 8, 13, '2017-05-30 14:40:27', '2017-05-31 13:58:51'),
(52, '', '', '', '', 8, 8, '2017-05-31 00:06:52', '2017-05-31 00:06:52'),
(53, '', '', '', '', 8, 8, '2017-05-31 07:10:40', '2017-05-31 07:10:40'),
(54, '', '', '', '', 8, 8, '2017-05-31 07:28:06', '2017-05-31 07:28:06'),
(55, '', '', '', '', 13, 13, '2017-05-31 14:38:37', '2017-05-31 14:38:37'),
(56, '', '', '', '', 8, 8, '2017-06-01 00:21:23', '2017-06-01 00:21:23'),
(57, '', '', '', '', 8, 8, '2017-06-01 07:15:58', '2017-06-01 07:15:58'),
(58, '', '', '', '', 8, 8, '2017-06-01 07:31:42', '2017-06-01 07:31:42'),
(59, '', '', '', '', 8, 8, '2017-06-02 00:00:01', '2017-06-02 00:00:01'),
(60, '', '', '', '', 8, 8, '2017-06-02 07:29:28', '2017-06-02 07:29:28'),
(61, '', '', '', '', 8, 8, '2017-06-04 07:01:09', '2017-06-04 07:01:09'),
(62, '', '', '', '', 8, 8, '2017-06-05 06:58:29', '2017-06-05 06:58:29'),
(63, '', '', '', '', 8, 8, '2017-06-05 07:17:23', '2017-06-05 07:17:23'),
(64, '', '', '', '', 8, 8, '2017-06-06 06:44:27', '2017-06-06 06:44:27'),
(65, '', '', '', '', 8, 8, '2017-06-06 06:44:50', '2017-06-06 06:44:50'),
(66, '', '', '', '', 8, 8, '2017-06-06 06:45:24', '2017-06-06 06:45:24'),
(67, '', '', '', '', 8, 8, '2017-06-06 06:52:11', '2017-06-06 06:52:11'),
(68, '', '', '', '', 8, 8, '2017-06-06 07:21:32', '2017-06-06 07:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_member` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated_user` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `area` varchar(255) NOT NULL,
  `type_id` tinyint(4) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `max_person` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: trong , 2 : dat coc, 3 : dang o, 4 : cho gia han',
  `image_url` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sell` varchar(50) DEFAULT NULL,
  `price_1` int(11) DEFAULT NULL,
  `price_3` int(11) DEFAULT NULL,
  `price_6` int(11) DEFAULT NULL,
  `price_id` int(11) DEFAULT NULL,
  `deposit` int(11) DEFAULT NULL,
  `min_contract` varchar(255) DEFAULT NULL,
  `position_type` tinyint(4) DEFAULT NULL,
  `direction_id` int(11) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `no_room` int(11) DEFAULT NULL,
  `no_wc` int(11) DEFAULT NULL,
  `object_type` tinyint(4) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `payment` text,
  `legal` text,
  `street` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `objects`
--

INSERT INTO `objects` (`id`, `name`, `alias`, `description`, `area`, `type_id`, `project_name`, `house_id`, `city_id`, `district_id`, `ward_id`, `floor`, `max_person`, `status`, `image_url`, `price`, `price_sell`, `price_1`, `price_3`, `price_6`, `price_id`, `deposit`, `min_contract`, `position_type`, `direction_id`, `video_url`, `address`, `no_room`, `no_wc`, `object_type`, `latitude`, `longitude`, `payment`, `legal`, `street`, `created_by`, `updated_by`, `user_id`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(3, 'HCM-TB02-CL101', 'hcm-tb02-cl101', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 1 của t&ograve;a nh&agrave;&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, th&iacute;ch hợp cho c&aacute;c bạn th&iacute;ch kh&ocirc;ng gian y&ecirc;n tĩnh</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng thiết kế cửa sổ hướng ph&iacute;a cầu thang lấy gi&oacute; v&agrave; &aacute;nh s&aacute;ng<br />\r\n+ Ph&ograve;ng c&oacute; g&aacute;c x&eacute;p.<br />\r\n+&nbsp;</span><span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Wc b&ecirc;n ngo&agrave;i, kh&ocirc;ng t&iacute;ch hợp kệ bếp trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ S&acirc;n thượng : Giặt đồ , phơi đồ, tổ chức tiệc ngo&agrave;i trời.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích: 16m2</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Giờ giấc tự do.</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giá thu&ecirc; : 3.000.000đ/tháng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span><br />\r\n', '16', 4, NULL, 1, 1, 17, 13, 1, 2, 3, 'upload/2016/03/21/cua-chonauan_1458530173.jpg', NULL, NULL, 3000000, 3000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL101', 'HCM-TB02-CL101', 'HCM-TB02-CL101', 1447150865, 1469676955),
(4, 'HCM-TB02-CL102', 'hcm-tb02-cl102', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 1 của t&ograve;a nh&agrave;&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng thiết kế, wc b&ecirc;n trong, kệ bếp nấu ăn<br />\r\n+ Ph&ograve;ng c&oacute; g&aacute;c x&eacute;p.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ S&acirc;n thượng : Giặt đồ , phơi đồ, tổ chức tiệc ngo&agrave;i trời.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích: 25m2(bao gồm g&aacute;c x&eacute;p)</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Giờ giấc tự do.</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giá thu&ecirc; : 5.000.000đ/tháng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '17.5', 4, NULL, 1, 1, 17, 13, 1, 2, 3, 'upload/2016/03/22/phong-cua-so_1458628642.jpg', NULL, NULL, 5000000, 5000000, 0, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL102', 'HCM-TB02-CL102', 'HCM-TB02-CL102', 1447151456, 1469674574),
(5, 'HCM-TB02-CL103', 'hcm-tb02-cl103', '<p class="Normal" style="margin: 0px 0px 1em; padding: 0px; line-height: 18px; text-rendering: geometricPrecision; color: rgb(51, 51, 51); font-family: arial; font-size: 14px;">\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 1 của t&ograve;a nh&agrave;&nbsp;</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; ban c&ocirc;ng, lấy gi&oacute; v&agrave; &aacute;nh s&aacute;ng rất tốt cho sức khỏe</span></font><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng thiết kế, wc b&ecirc;n trong, kệ bếp nấu ăn<br />\r\n	+ Ph&ograve;ng c&oacute; g&aacute;c x&eacute;p.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">+ S&acirc;n thượng : Giặt đồ , phơi đồ, tổ chức tiệc ngo&agrave;i trời.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích: 30m2(bao gồm g&aacute;c x&eacute;p)</span><br />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">+ Giờ giấc tự do.</span><br />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Giá thu&ecirc; : 6.500.000đ/tháng&nbsp;<br />\r\n	- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000đ/KW.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n	<span style="font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span></p>\r\n', '28', 4, NULL, 1, 1, 17, 13, 1, 1, 3, 'upload/2015/11/10/nah-1_1447151587.jpg', NULL, NULL, 6500000, 6500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL103', 'HCM-TB02-CL103', 'HCM-TB02-CL103', 1447151691, 1469674633),
(6, 'HCM-TB02-CL104', 'hcm-tb02-cl104', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 1 của t&ograve;a nh&agrave;&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; ban c&ocirc;ng, lấy gi&oacute; v&agrave; &aacute;nh s&aacute;ng rất tốt cho sức khỏe</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng thiết kế, wc b&ecirc;n trong, kệ bếp nấu ăn<br />\r\n+ Ph&ograve;ng c&oacute; g&aacute;c x&eacute;p.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ S&acirc;n thượng : Giặt đồ , phơi đồ, tổ chức tiệc ngo&agrave;i trời.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích: 25m2(bao gồm g&aacute;c x&eacute;p)</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Giờ giấc tự do.</span><br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giá thu&ecirc; : 5.000.000đ/tháng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '18', 4, NULL, 1, 1, 17, 13, 1, 2, 3, 'upload/2016/03/22/tivi3_1458629226.jpg', NULL, NULL, 4500000, 4500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL104', 'HCM-TB02-CL104', 'HCM-TB02-CL104', 1447152006, 1469674479),
(7, 'HCM-TB02-CL201', 'hcm-tb02-cl201', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 2 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra cầu thang của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 21m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;5.500.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '21', 4, NULL, 1, 1, 17, 13, 2, 2, 3, 'upload/2015/11/10/nha-3_1447152251.png', NULL, NULL, 5500000, 5500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL201', 'HCM-TB02-CL201', 'HCM-TB02-CL201', 1447152307, 1469675554),
(10, 'HCM-TB02-CL203', 'hcm-tb02-cl203', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 2 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng nằm ở mặt ch&iacute;nh của t&ograve;a nh&agrave;, c&oacute; ban c&ocirc;ng, view rộng...</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;5.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '25.8', 4, NULL, 1, 1, 17, 13, 2, 3, 3, 'upload/2015/11/12/7_1447296545.jpg', NULL, NULL, 6500000, 6500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL203', 'HCM-TB02-CL203', 'HCM-TB02-CL203', 1447296577, 1469675335),
(12, 'HCM-TB02-CL301', 'hcm-tb02-cl301', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 3 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra ph&iacute;a h&agrave;nh lang.</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;4.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span><br />\r\n', '20', 4, NULL, 1, 1, 17, 13, 3, 2, 1, 'upload/2015/11/12/9_1447296819.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL301', 'HCM-TB02-CL301', 'HCM-TB02-CL301', 1447296838, 1469673642),
(13, 'HCM-TB02-CL302', 'hcm-tb02-cl302', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 3 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra ph&iacute;a h&agrave;nh lang.</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;4.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '13', 4, NULL, 1, 1, 17, 13, 3, 2, 3, 'upload/2015/11/12/10_1447296952.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL302', 'HCM-TB02-CL302', 'HCM-TB02-CL302', 1447296967, 1469674776),
(14, 'HCM-TB02-CL303', 'hcm-tb02-cl303', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 3 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra ph&iacute;a h&agrave;nh lang.</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;4.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '20', 4, NULL, 1, 1, 17, 13, 3, 2, 3, 'upload/2015/11/12/12_1447297244.JPG', NULL, NULL, 3500000, 3500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL303', 'HCM-TB02-CL303', 'HCM-TB02-CL303', 1447297263, 1469676912),
(15, 'HCM-TB02-CL304', 'hcm-tb02-cl304', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 3 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra mặt tiền của ng&ocirc;i nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;4.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '13', 4, NULL, 1, 1, 17, 13, 3, 2, 3, 'upload/2015/11/12/13_1447297356.JPG', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL304', 'HCM-TB02-CL304', 'HCM-TB02-CL304', 1447297360, 1469674892),
(16, 'HCM-TB02-CL305', 'hcm-tb02-cl305', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 3 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra mặt tiền của ng&ocirc;i nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;4.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '16.5', 4, NULL, 1, 1, 17, 13, 3, 2, 3, 'upload/2015/11/12/14_1447297443.JPG', NULL, NULL, 5000000, 5000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL305', 'HCM-TB02-CL305', 'HCM-TB02-CL305', 1447297459, 1469674857),
(17, 'HCM-TB02-CL401', 'hcm-tb02-cl401', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 4 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra h&agrave;nh lang của ng&ocirc;i nh&agrave;.</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;3.500.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '13', 4, NULL, 1, 1, 17, 13, 4, 2, 3, 'upload/2015/11/12/16_1447297539.png', NULL, NULL, 3500000, 3500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL401', 'HCM-TB02-CL401', 'HCM-TB02-CL401', 1447297550, 1469675115);
INSERT INTO `objects` (`id`, `name`, `alias`, `description`, `area`, `type_id`, `project_name`, `house_id`, `city_id`, `district_id`, `ward_id`, `floor`, `max_person`, `status`, `image_url`, `price`, `price_sell`, `price_1`, `price_3`, `price_6`, `price_id`, `deposit`, `min_contract`, `position_type`, `direction_id`, `video_url`, `address`, `no_room`, `no_wc`, `object_type`, `latitude`, `longitude`, `payment`, `legal`, `street`, `created_by`, `updated_by`, `user_id`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(18, 'HCM-TB02-CL402', 'hcm-tb02-cl402', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 4 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra h&agrave;nh lang của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;3.500.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '13', 4, NULL, 1, 1, 17, 13, 4, 2, 3, 'upload/2015/11/12/15_1447297631.JPG', NULL, NULL, 3500000, 3500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL402', 'HCM-TB02-CL402', 'HCM-TB02-CL402', 1447297644, 1469675144),
(19, 'HCM-TB02-CL403', 'hcm-tb02-cl403', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 4 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra s&acirc;n thượng của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 20m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;3.500.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '13', 4, NULL, 1, 1, 17, 13, 4, 2, 3, 'upload/2015/11/12/17_1447297728.jpg', NULL, NULL, 3500000, 3500000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, '', 18, 18, 18, 'HCM-TB02-CL403', 'HCM-TB02-CL403', 'HCM-TB02-CL403', 1447297744, 1469675071),
(41, 'HCM-TB02-CL204', 'hcm-tb02-cl204', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 2 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra mặt ch&iacute;nh của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 21m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;5.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '18', 4, NULL, 1, 1, 17, 13, 2, 1, 3, 'upload/2015/12/24/img_20141001_092550_1450945231.jpg', NULL, NULL, 5000000, 5000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CL204', 'HCM-TB02-CL204', 'HCM-TB02-CL204', 1450945303, 1469675412),
(42, 'HCM-TB02-CL202', 'hcm-tb02-cl202', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu 2 của t&ograve;a nh&agrave;, với h&agrave;nh lang th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng ra h&agrave;nh lang của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 25m2 (Bao gồm g&aacute;c x&eacute;p)<br />\r\n- Giá ph&ograve;ng : &nbsp;5.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '20.5', 4, NULL, 1, 1, 17, 13, 2, 1, 3, 'upload/2015/12/24/img_20141001_092117_1450946080.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CL202', 'HCM-TB02-CL202', 'HCM-TB02-CL202', 1450946137, 1469675454),
(45, 'HCM-TB02-CL001', 'hcm-tb02-cl001', '<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Vị tr&iacute; ph&ograve;ng tọa lạc tại Lầu Trệt của t&ograve;a nh&agrave;, với lối đi th&ocirc;ng tho&aacute;ng, ...&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<font color="#333333" face="Arial"><span style="font-size: 16px; line-height: 22px;">+ Ph&ograve;ng c&oacute; cửa sổ hướng racầu thang của t&ograve;a nh&agrave;</span></font><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Giờ giấc tự do.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wc kh&eacute;p k&iacute;n, Nấu ăn trong ph&ograve;ng.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- B&ecirc;n trong ph&ograve;ng trang bị: Máy lạnh, ti vi LCD 32 inch, kệ bếp, giường, tủ gỗ &hellip;.(được lựa chon ph&ograve;ng kh&ocirc;ng c&oacute; thiết bị, gi&aacute; LH 0968111080)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">+ Phòng có g&aacute;c x&eacute;p.&nbsp;</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Ph&ograve;ng có di&ecirc;̣n tích khoảng 35m2 (Bao gồm g&aacute;c x&eacute;p) + Ph&ograve;ng đ&ocirc;i ở được nhiều người<br />\r\n- Giá ph&ograve;ng : &nbsp;7.000.000đ/th&aacute;ng&nbsp;<br />\r\n- Ưu ti&ecirc;n khách hàng thu&ecirc; ở d&agrave;i hạn.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Điện: 3.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Nước: 100.000 đ/KW.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Wifi: 50.000 đ (miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- C&aacute;p: 100.000 đ (Miễn ph&iacute;).</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">- Thang m&aacute;y: Miễn ph&iacute;.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Li&ecirc;n hệ hotline: 0968 11 1080.</span>', '35', 4, NULL, 1, 1, 17, 13, 0, 3, 3, 'upload/2016/03/26/phong-to-co-tu-lanh_1458989009.jpg', NULL, NULL, 7000000, 7000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CL001', 'HCM-TB02-CL001', 'HCM-TB02-CL001', 1451357543, 1469675686),
(46, 'HCM-TB02-CL OFFICE', 'hcm-tb02-cl-office', 'mặt bằng mặt tiền cho thu&ecirc; gi&aacute; rẻ, th&iacute;ch hợp cho c&ocirc;ng ty c&oacute; quy m&ocirc; nhỏ dưới 10 người<br />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Cho thu&ecirc; mặt bằng (Như h&igrave;nh b&ecirc;n dưới)</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Vị tr&iacute; : 25/10 cửu long, p.2, quận t&acirc;n b&igrave;nh ; đường lộ giới 8m, hẻm xe hơi</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Diện t&iacute;ch : 35m2, b&ecirc;n trong c&oacute; wc, m&aacute;y lạnh, mặt tiền k&iacute;nh bản lề s&agrave;n, b&ecirc;n ngo&agrave;i c&oacute; bảo vệ.</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Th&iacute;ch hợp thu&ecirc; l&agrave;m văn ph&ograve;ng, v&eacute; m&aacute;y bay, kho lưu h&agrave;ng h&oacute;a...</span><br style="box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial; font-size: 16px; line-height: 22px;">Ai c&oacute; nhu cầu LH 0968 11 1080 Mr việt ch&iacute;nh chủ cho thu&ecirc;.</span>', '32', 3, NULL, 1, 1, 17, 13, 0, 10, 3, 'upload/2016/03/22/bao-ve_1458643658.jpg', NULL, NULL, 10000000, 10000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CL OFFICE', 'HCM-TB02-CL OFFICE', 'HCM-TB02-CL OFFICE', 1451709032, 1463452469),
(48, 'HCM-TB15-TỐNG VĂN HÊN-02', 'hcm-tb15-tong-van-hen-02', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.<br />\r\n', '25', 4, NULL, 7, 1, 17, 26, 1, 0, 3, 'upload/2016/04/27/img20160427093426_1461744079.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-02', 'HCM-TB15-TỐNG VĂN HÊN-02', 'HCM-TB15-TỐNG VĂN HÊN-02', 1461744119, 1463387481),
(49, 'HCM-TB15-TỐNG VĂN HÊN-03', 'hcm-tb15-tong-van-hen-03', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '20', 4, NULL, 7, 1, 17, 26, 1, 3, 3, 'upload/2016/04/28/img20160427093736_1461807478.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-03', 'HCM-TB15-TỐNG VĂN HÊN-03', 'HCM-TB15-TỐNG VĂN HÊN-03', 1461807529, 1463387575),
(50, 'HCM-TB15-TỐNG VĂN HÊN-04', 'hcm-tb15-tong-van-hen-04', 'Nh&agrave; đẹp khỏi ch&ecirc;<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '20', 4, NULL, 7, 1, 17, 26, 1, 3, 3, 'upload/2016/04/28/img20160427093758_1461807771.jpg', NULL, NULL, 4200000, 4200000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-04', 'HCM-TB15-TỐNG VĂN HÊN-04', 'HCM-TB15-TỐNG VĂN HÊN-04', 1461807787, 1463387645),
(51, 'HCM-TB15-TỐNG VĂN HÊN-05', 'hcm-tb15-tong-van-hen-05', 'Tất cả c&aacute;c ph&ograve;ng đều c&oacute; nước n&oacute;ng sủ dụng năng lượng mặt trời<br />\r\nNh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '23', 4, NULL, 7, 1, 17, 26, 2, 3, 3, 'upload/2016/04/28/img20160427093952_1461808076.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-05', 'HCM-TB15-TỐNG VĂN HÊN-05', 'HCM-TB15-TỐNG VĂN HÊN-05', 1461808144, 1463387705),
(52, 'HCM-TB15-TỐNG VĂN HÊN-06', 'hcm-tb15-tong-van-hen-06', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '25', 4, NULL, 7, 1, 17, 26, 2, 3, 3, 'upload/2016/04/28/img20160427093911_1461809214.jpg', NULL, NULL, 4000000, 4000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-06', 'HCM-TB15-TỐNG VĂN HÊN-06', 'HCM-TB15-TỐNG VĂN HÊN-06', 1461809280, 1463387755),
(53, 'HCM-TB15-TỐNG VĂN HÊN-07', 'hcm-tb15-tong-van-hen-07', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '28', 4, NULL, 7, 1, 17, 26, 3, 3, 3, 'upload/2016/04/28/img20160427093952_1461809581.jpg', NULL, NULL, 4200000, 4200000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-07', 'HCM-TB15-TỐNG VĂN HÊN-07', 'HCM-TB15-TỐNG VĂN HÊN-07', 1461809609, 1463387802),
(54, 'HCM-TB15-TỐNG VĂN HÊN-08', 'hcm-tb15-tong-van-hen-08', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '30', 4, NULL, 7, 1, 17, 26, 3, 0, 3, 'upload/2016/04/28/img20160427094610_1461809767.jpg', NULL, NULL, 4300000, 4300000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-08', 'HCM-TB15-TỐNG VĂN HÊN-08', 'HCM-TB15-TỐNG VĂN HÊN-08', 1461809788, 1463387841),
(55, 'HCM-TB15-TỐNG VĂN HÊN-TRỆT', 'hcm-tb15-tong-van-hen-tret', 'Nh&agrave; mới đẹp<br />\r\nMặt tiền Tống Văn H&ecirc;n tiện kinh doanh bu&ocirc;n b&aacute;n, mở văn ph&ograve;ng đại diện...<br />\r\nNhanh th&igrave; c&ograve;n chậm th&igrave; hết<br />\r\nH&igrave;nh thật nha b&agrave; con', '60', 3, NULL, 7, 1, 17, 26, 0, 0, 3, 'upload/2016/04/28/img20160427101131_1461826683.jpg', NULL, NULL, 8000000, 8000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-TRỆT', 'HCM-TB15-TỐNG VĂN HÊN-TRỆT', 'HCM-TB15-TỐNG VĂN HÊN-TRỆT', 1461809788, 1463387880),
(56, 'HCM-TB15-TỐNG VĂN HÊN-vip', 'hcm-tb15-tong-van-hen-vip', 'Nh&agrave; mới 100%<br />\r\n<strong>VỊ TR&Iacute;</strong>: Tầng 1<br />\r\n&Oslash;&nbsp; Diện t&iacute;ch: 20m2<br />\r\n&Oslash;&nbsp; Số người ở: 2 người<br />\r\n&Oslash;&nbsp; Chỗ để xe: 2 xe<br />\r\n<strong>TIỆN NGHI TRONG PH&Ograve;NG:</strong><br />\r\n&Oslash;&nbsp; + Vệ sinh ri&ecirc;ng tư, k&iacute;n đ&aacute;o<br />\r\n&Oslash;&nbsp; + Điều ho&agrave; m&aacute;t mẻ ng&agrave;y h&egrave;<br />\r\n&Oslash;&nbsp; + M&aacute;y nước n&oacute;ng ấm &aacute;p<br />\r\n&Oslash;&nbsp; + R&egrave;m<br />\r\n&Oslash;&nbsp; + Cửa sổ tho&aacute;ng m&aacute;t<br />\r\n<strong>LỰA CHỌN TH&Ecirc;M: (lựa chọn th&ecirc;m sẽ l&agrave;m thay đổi gi&aacute; thu&ecirc; của bạn)</strong><br />\r\n&Oslash;&nbsp; + Tivi LD 32inch<br />\r\n&Oslash;&nbsp; + Giường gỗ &nbsp;KT1,6mx2.0m<br />\r\n&Oslash;&nbsp; + Tủ &aacute;o KT 1,2mx0,7mx2,0m<br />\r\n&Oslash;&nbsp; + Tủ lạnh 90l hoặc 120l<br />\r\n<strong>M&Ocirc; TẢ TH&Ecirc;M:</strong><br />\r\n&Oslash;&nbsp; Ph&ograve;ng trong y&ecirc;n tĩnh th&iacute;ch họp cho bạn nghỉ ngơi, thư gi&atilde;n<br />\r\n&Oslash;&nbsp; Cửa sổ rộng đ&oacute;n gi&oacute; tự nhi&ecirc;n v&agrave;o ph&ograve;ng, trong ph&ograve;ng đ&atilde; lắp sẵn điều ho&agrave; m&aacute;t mẻ<br />\r\n&Oslash;&nbsp; WC ngay trong ph&ograve;ng, ri&ecirc;ng tư k&iacute;n đ&aacute;o, thiết bị vệ sinh mới 100%, m&aacute;y nước n&oacute;ng năng lượng mặt trời, an to&agrave;n tuyệt đối.', '35', 4, NULL, 7, 1, 17, 26, 4, 4, 3, 'upload/2016/04/28/img20160427095420_1461809940.jpg', NULL, NULL, 5000000, 5000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB15-TỐNG VĂN HÊN-vip', 'HCM-TB15-TỐNG VĂN HÊN-vip', 'HCM-TB15-TỐNG VĂN HÊN-vip', 1461809957, 1463147013),
(57, '', '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, 18, 18, 18, '', '', '', 1461825975, 1461825975),
(58, '', '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, 18, 18, 18, '', '', '', 1461826452, 1461826452),
(59, '', '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, NULL, NULL, 18, 18, 18, '', '', '', 1461826863, 1461826863),
(64, 'HCM-NBTB02-CL19', 'hcm-nbtb02-cl19', 'B&aacute;n nh&agrave; đường cửu long , c&aacute;ch đường trường sơn 50m<br />\r\nNh&agrave; DT 7,8m x 20m 1 trệt 2 lầu<br />\r\n<a href="http://batdongsan.sth.vn">gi&aacute; b&aacute;n 16 tỷ LH để biết th&ecirc;m chi tiết 0968111080</a>', '200', 7, 'HCM-NBTB02', NULL, 1, 17, 13, NULL, NULL, 1, 'upload/2016/05/13/img20160316105621_1463111395.jpg', NULL, '16 tỷ', NULL, NULL, NULL, 12, 0, '', 1, 2, '', 'Đường cửu long, p2. q.tân bình', 7, 5, 3, '10.753151', '106.73088499999994', 'VNĐ', 'SỔ HỒNG', '8', 18, 18, 18, 'Bán nhà đường cửu long', 'Bán nhà đường cửu long', 'Bán nhà đường cửu long, bán nhà chính chủ đường cửu long, bán nhà chính chủ khu sân bay, bán nhà gấp khu sân bay', 1463111983, 1463466309),
(65, 'HCM-NB-TLQ12- 19', 'hcm-nb-tlq12-19', 'B&aacute;n nh&agrave; cấp 4 ch&iacute;nh chủ, phường thạnh lộc, quận 12<br />\r\nCần tiền b&aacute;n nh&agrave; lớn đổi nh&agrave; nhỏ<br />\r\nvị tr&iacute; nh&agrave; rất đẹp mặt tiền kinh doanh&nbsp;<br />\r\nKhu an ninh, quang cảnh đẹp gi&oacute; m&aacute;t lồng lộng, nhiều c&acirc;y xanh xem l&agrave; th&iacute;ch<br />\r\n<a href="http://batdongsan.sth.vn">LH : 0968111080</a>', '100', 7, 'HCM-NB-TLQ12', NULL, 1, 17, 13, NULL, NULL, 1, 'upload/2016/05/17/five_star_bt2_1463466277.png', NULL, '1.8 tỷ', NULL, NULL, NULL, 8, 0, '', 1, 3, '', 'Thạch lộc 19, p.thạnh lộc q.12', 1, 1, 3, '10.753151', '106.73088499999994', 'VNĐ', 'Sổ Hồng', '16', 18, 18, 18, 'Bán nhà chính chủ quận 12', 'Bán nhà chính chủ quận 12', 'Bán nhà chính chủ quận 12, bán nhà cấp 4 riêng lẽ quận 12, chính chủ bán nhà riêng lẽ, bán nhà cấp 4 chính chủ', 1463114640, 1463466288),
(66, 'HCM-NB Q12-TL19-02', 'hcm-nb-q12-tl19-02', 'Đối với c&aacute;c anh chị xa xứ nhu cầu về nh&agrave; ở để an cư lạc nghiệp v&agrave; kh&ocirc;ng muốn đi thu&ecirc; nh&agrave; ở th&igrave; đ&acirc;y l&agrave; một giải ph&aacute;p<br />\r\nHiện nay ch&uacute;ng t&ocirc;i đang c&oacute; một số căn nh&agrave; tại H&agrave; Huy Gi&aacute;p Q.', '25', 8, 'HCM-NB Q12-TL19', NULL, 1, 16, 0, NULL, NULL, 1, 'upload/2016/05/17/ti1_1463466778.jpg', NULL, '400000000', NULL, NULL, NULL, 7, 0, '', 2, 0, '', 'thạnh lộc quận 12', 2, 1, 3, '10.753151', '106.73088499999994', 'Tiền mặt', 'Công chứng', '5m', 0, 10, 10, 'HCM-NB Q12-TL19-02', 'HCM-NB Q12-TL19-02', 'HCM-NB Q12-TL19-02', 1463534591, 1463583412),
(67, 'HCM-TLQ12-TL19-02', 'hcm-tlq12-tl19-02', '<h1>\r\n	<span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code>Nh&agrave; thiết kế sang trọng hiện đại, được chủ đầu tư chau truốt từng g&oacute;c cạnh</code></span></span><br />\r\n	<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Khu nh&agrave; c&oacute; 19 căn nh&agrave; phố v&agrave; 4 căn biệt thự thuộc phường Thạnh Lộc, quận 12, c&aacute;ch MT đường&nbsp;</span><span style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px;">H&agrave; Huy Gi&aacute;p khoảng 200m.&nbsp;</span><br style="margin: 0px; padding: 0px;" />\r\n	<span style="margin: 0px; padding: 0px;">+ Nh&agrave; phố:&nbsp;</span></span></code></span></span></span></h1>\r\n<ul style="margin: 0px; padding-right: 0px; padding-left: 0px; color: rgb(0, 93, 153); font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">1 trệt, 2 lầu. Gồm 19 căn.&nbsp; &bull; Diện t&iacute;ch: Từ 55 m2 đến 60 m2&nbsp;</span></code></span></span></span></h1>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Thiết kế: 1 Ph&ograve;ng Kh&aacute;ch, 1 Ph&ograve;ng Bếp + Ăn, 4 Ph&ograve;ng Ngủ, 5WC.</span></code></span></span></span></h1>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Bảo h&agrave;nh nh&agrave; 1 năm</span></code></span></span></span></h1>\r\n	</li>\r\n</ul>\r\n<h1>\r\n	<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Gi&aacute; từ 1,78 tỷ - 1,84 tỷ.</span></code></span></span><br />\r\n	<span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px; line-height: 1.5;">+ Biệt thự:&nbsp;</span></code></span></span></span></h1>\r\n<ul style="margin: 0px; padding-right: 0px; padding-left: 0px; color: rgb(0, 93, 153); font-family: Arial, Helvetica, sans-serif; font-size: 12px;">\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px; line-height: 1.5;">1 trệt, 2 lầu. Gồm 4 căn.&nbsp;</span><span style="margin: 0px; padding: 0px; line-height: 1.5;">&nbsp;&bull; Diện t&iacute;ch: Từ 132.6 m2 đến 184 m2&nbsp;</span></code></span></span></span></h1>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Thiết kế: 1 Ph&ograve;ng Kh&aacute;ch, 1 Ph&ograve;ng Ăn, 4 Ph&ograve;ng Ngủ, 5WC.</span></code></span></span></span></h1>\r\n	</li>\r\n	<li style="margin: 0px; padding: 0px; list-style: none;">\r\n		<h1>\r\n			<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Bảo h&agrave;nh nh&agrave; 1 năm. &nbsp;</span></code></span></span></span></h1>\r\n	</li>\r\n</ul>\r\n<h1>\r\n	<span style="font-size:14px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#000000;"><code><span style="margin: 0px; padding: 0px;">Gi&aacute; từ 3,8 tỷ đến 5,2 tỷ.</span></code></span></span></span></h1>\r\n', '60', 7, 'HCM-TLQ12-TL19', NULL, 1, 16, 29, NULL, NULL, 1, 'upload/2016/05/19/bsg-04-01_1463625857.jpg', NULL, '2 tỷ', NULL, NULL, NULL, 8, 0, '', 0, 1, '', '', 3, 3, 3, '10.753151', '106.73088499999994', 'TIỀN MẶT', 'SỔ HỒNG', '8', 18, 18, 18, 'Nhà bán quận 12', 'Nhà bán quận 12', 'Nhà bán quận 12, nhà bán thạnh lộc quận 12, nhà bán phường thạnh lộc', 1463626193, 1463626259),
(70, 'HCM-PN09-HONG HA', 'hcm-pn09-hong-ha', 'Nh&agrave; ngay mặt tiền, th&iacute;ch hợp l&agrave;m văn ph&ograve;ng cho mọi th&agrave;nh phần kinh tế<br />\r\nDT : 1 trệt 3 lầu, tổng diện t&iacute;ch hơn 400m2, c&oacute; 22 ph&ograve;ng lớn nhỏ<br />\r\nGi&aacute; thu&ecirc; : 70.000.000/th&aacute;ng<br />\r\nH&atilde;y li&ecirc;n hệ xem nh&agrave; trực tiếp 0968 11 1080', '400', 3, NULL, 8, 1, 16, 29, 3, 0, 3, 'upload/2016/05/25/img20160323151010_1464165858.jpg', NULL, NULL, 70000000, 70000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-PN09-HONG HA', 'HCM-PN09-HONG HA', 'HCM-PN09-HONG HA', 1464165943, 1464166498),
(71, 'HCM-TB02-CUULONG', 'hcm-tb02-cuulong', '<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, \'Helvetica Neue\'; font-size: 13px; line-height: 20px;">mặt bằng hẻm th&ocirc;ng, xe tải v&agrave;o được&nbsp;</span><br style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, \'Helvetica Neue\'; font-size: 13px; line-height: 20px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, \'Helvetica Neue\'; font-size: 13px; line-height: 20px;">th&iacute;ch hợp mở văn ph&ograve;ng, đại l&yacute;, kho h&agrave;ng...</span><br style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, \'Helvetica Neue\'; font-size: 13px; line-height: 20px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, \'Helvetica Neue\'; font-size: 13px; line-height: 20px;">gi&aacute; thu&ecirc; 10.000.000 VNĐ&nbsp;</span><br style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, \'Helvetica Neue\'; font-size: 13px; line-height: 20px;" />\r\n<span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, \'Helvetica Neue\'; font-size: 13px; line-height: 20px;">ai c&oacute; nhu cầu li&ecirc;n hệ ngay 0968111080</span>', '32', 3, NULL, 1, 1, 17, 13, 1, 0, 3, 'upload/2016/05/25/tai-xuong_1464167761.jpg', NULL, NULL, 10000000, 10000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CUULONG', 'HCM-TB02-CUULONG', 'HCM-TB02-CUULONG', 1464167837, 1464167837),
(72, 'HCM-TB02-YENTHE', 'hcm-tb02-yenthe', '<span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 13px; vertical-align: baseline; color: rgb(51, 51, 51); line-height: 20px; font-family: \'comic sans ms\', cursive; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">o thu&ecirc; mặt bằng l&agrave;m văn ph&ograve;ng gi&aacute; ph&ugrave; hợp nhất, với dịch vụ tốt nhất, tại vị tr&iacute; đắc địa nhất tr&ecirc;n đường y&ecirc;n thế.<br style="box-sizing: border-box; margin: 0px; padding: 0px;" />\r\nvới gi&aacute; thu&ecirc; 12USD/m2 chưa bao gồm VAT v&agrave;<br style="box-sizing: border-box; margin: 0px; padding: 0px;" />\r\n- Quy m&ocirc; : 1 trệt, 9 lầu v&agrave; 2 hầm. Tổng diện t&iacute;ch 3000m2<br style="box-sizing: border-box; margin: 0px; padding: 0px;" />\r\n<a href="http://batdongsan.sth.vn/" style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(85, 85, 85); text-decoration: none; vertical-align: baseline; background: transparent;">LH để biết th&ecirc;m chi tiết 0968 11 1080</a></span><br style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif, Verdana, \'Helvetica Neue\'; font-size: 13px; line-height: 20px;" />\r\n', '>200', 3, NULL, 0, 1, 17, 13, 0, 0, 1, 'upload/2016/05/25/yen-the-02_1464168584.jpg', NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-YENTHE', 'HCM-TB02-YENTHE', 'HCM-TB02-YENTHE', 1464168591, 1464168591),
(73, 'Văn Phòng 01', 'van-phong-01', 'VP VIP', '', 3, NULL, 1, 1, 17, 13, 1, 5, 1, 'upload/2016/05/31/vp_1464660862.jpg', NULL, NULL, 3000000, 3000000, 0, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'Văn Phòng 01', 'Văn Phòng 01', 'Văn Phòng 01', 1464660882, 1464660882);
INSERT INTO `objects` (`id`, `name`, `alias`, `description`, `area`, `type_id`, `project_name`, `house_id`, `city_id`, `district_id`, `ward_id`, `floor`, `max_person`, `status`, `image_url`, `price`, `price_sell`, `price_1`, `price_3`, `price_6`, `price_id`, `deposit`, `min_contract`, `position_type`, `direction_id`, `video_url`, `address`, `no_room`, `no_wc`, `object_type`, `latitude`, `longitude`, `payment`, `legal`, `street`, `created_by`, `updated_by`, `user_id`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(74, 'HCM-TB04-CH', 'hcm-tb04-ch', 'Cho thu&ecirc; mặt bằng đối diện maximax Cộng H&ograve;a, mặt bằng rộng đẹp<br />\r\nPh&ugrave; hợp mở văn ph&ograve;ng quy m&ocirc; tr&ecirc;n 50 người<br />\r\nHoặc mở qu&aacute;n cafe văn ph&ograve;ng&nbsp;<br />\r\nDiện t&iacute;ch : 250m2<br />\r\ngi&aacute; thu&ecirc; rẻ so với khu vực 60.000.000tr/th&aacute;ng<br />\r\nLH hotline : 0968111080', '250', 3, NULL, 10, 1, 17, 30, 1, 0, 1, 'upload/2016/06/13/img20160524103916_1465783471.jpg', NULL, NULL, 60000000, 60000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB04-CH', 'HCM-TB04-CH', 'HCM-TB04-CH', 1465783699, 1465784041),
(75, 'HCM-TB02', 'hcm-tb02', 'Mặt bằng ph&ugrave; hợp mở văn ph&ograve;ng, tiếp gi&aacute;p với s&acirc;n bay T&acirc;n sơn nhất<br />\r\ngiao thương đường kh&ocirc;ng rất thuận tiện<br />\r\nHiện nay tại khu vực t&igrave;m mặt bằng mở văn ph&ograve;ng rất kh&oacute; khăn v&igrave; gi&aacute; cho thu&ecirc; rất cao.<br />\r\nV&agrave; đ&acirc;y l&agrave; sự lựa chọn cho bạn với diện t&iacute;ch thu&ecirc; gần 80m2 được chia l&agrave;m 3 ph&ograve;ng rất đẹp<br />\r\ngi&aacute; thu&ecirc; : 20.000.000tr/th&aacute;ng<br />\r\nLH hotline : 0968111080', '80', 3, NULL, 1, 1, 17, 13, 1, 0, 3, 'upload/2016/06/13/img20160330155014_1465784226.jpg', NULL, NULL, 20000000, 20000000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02', 'HCM-TB02', 'HCM-TB02', 1465785982, 1465785982),
(76, 'HCM-TB02-CL06', 'hcm-tb02-cl06', '', '80', 3, 'HCM-TB02-CL', NULL, 1, 17, 13, NULL, NULL, 1, 'upload/2016/06/13/img20160330155004_1465786215.jpg', 20000000, NULL, NULL, NULL, NULL, 0, 0, '', 0, 7, '', 'cửu long, p.2, q.tân bình', 0, 0, 2, '10.753151', '106.73088499999994', NULL, NULL, NULL, 18, 18, 18, 'HCM-TB02-CL06', 'HCM-TB02-CL06', 'HCM-TB02-CL06', 1465786238, 1465786238);

-- --------------------------------------------------------

--
-- Table structure for table `objects_info`
--

CREATE TABLE `objects_info` (
  `object_id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : addon | 2 : convenient  | 3 : service'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `objects_info`
--

INSERT INTO `objects_info` (`object_id`, `info_id`, `type`) VALUES
(1, 1, 2),
(1, 2, 1),
(1, 15, 1),
(2, 1, 2),
(2, 2, 1),
(2, 3, 1),
(2, 5, 1),
(2, 9, 2),
(2, 15, 1),
(3, 1, 2),
(3, 5, 1),
(3, 6, 2),
(3, 9, 2),
(4, 1, 2),
(4, 2, 2),
(4, 5, 1),
(4, 6, 2),
(4, 9, 2),
(4, 15, 1),
(4, 16, 1),
(5, 1, 2),
(5, 6, 2),
(5, 9, 1),
(5, 9, 2),
(5, 15, 1),
(6, 1, 2),
(6, 5, 1),
(6, 6, 2),
(6, 9, 2),
(6, 15, 1),
(6, 16, 1),
(6, 17, 1),
(6, 18, 1),
(7, 1, 2),
(7, 5, 1),
(7, 6, 2),
(7, 9, 2),
(7, 15, 1),
(9, 1, 2),
(9, 2, 1),
(9, 3, 1),
(9, 5, 1),
(9, 6, 2),
(9, 9, 2),
(9, 15, 1),
(10, 1, 2),
(10, 5, 1),
(10, 6, 2),
(10, 9, 2),
(10, 15, 1),
(11, 1, 2),
(11, 3, 1),
(11, 5, 1),
(11, 6, 2),
(11, 9, 2),
(11, 15, 1),
(12, 1, 2),
(12, 5, 1),
(12, 6, 2),
(12, 9, 2),
(12, 15, 1),
(13, 1, 2),
(13, 5, 1),
(13, 6, 2),
(13, 9, 2),
(13, 15, 1),
(14, 1, 2),
(14, 5, 1),
(14, 6, 2),
(14, 9, 2),
(14, 15, 1),
(15, 1, 2),
(15, 5, 1),
(15, 6, 2),
(15, 9, 2),
(15, 15, 1),
(16, 1, 2),
(16, 5, 1),
(16, 6, 2),
(16, 9, 2),
(16, 15, 1),
(17, 1, 2),
(17, 5, 1),
(17, 6, 2),
(17, 9, 2),
(17, 15, 1),
(18, 1, 2),
(18, 5, 1),
(18, 6, 2),
(18, 9, 2),
(18, 15, 1),
(19, 1, 2),
(19, 5, 1),
(19, 6, 2),
(19, 9, 2),
(19, 15, 1),
(21, 2, 1),
(21, 15, 1),
(22, 1, 2),
(22, 2, 1),
(22, 2, 2),
(22, 3, 2),
(22, 7, 2),
(22, 9, 2),
(22, 15, 1),
(26, 1, 2),
(26, 2, 1),
(26, 7, 2),
(26, 15, 1),
(35, 1, 2),
(35, 2, 1),
(35, 5, 1),
(35, 9, 2),
(35, 15, 1),
(36, 1, 2),
(36, 2, 1),
(36, 3, 1),
(36, 5, 1),
(36, 9, 2),
(36, 15, 1),
(37, 1, 2),
(37, 2, 1),
(37, 3, 1),
(37, 5, 1),
(37, 9, 2),
(37, 15, 1),
(40, 1, 2),
(40, 2, 1),
(40, 3, 1),
(40, 5, 1),
(40, 9, 2),
(40, 15, 1),
(41, 1, 2),
(41, 5, 1),
(41, 9, 2),
(41, 15, 1),
(42, 1, 2),
(42, 5, 1),
(42, 9, 2),
(42, 15, 1),
(44, 1, 2),
(44, 2, 1),
(44, 3, 1),
(44, 5, 1),
(44, 15, 1),
(45, 1, 2),
(45, 5, 1),
(45, 9, 2),
(45, 15, 1),
(46, 1, 2),
(46, 4, 2),
(46, 5, 1),
(46, 5, 2),
(46, 9, 2),
(46, 17, 1),
(46, 18, 1),
(47, 1, 2),
(47, 2, 1),
(47, 2, 2),
(47, 3, 1),
(47, 5, 1),
(47, 9, 2),
(47, 15, 1),
(48, 1, 2),
(48, 2, 2),
(48, 5, 1),
(48, 9, 2),
(48, 15, 1),
(48, 17, 1),
(48, 18, 1),
(49, 1, 2),
(49, 3, 2),
(49, 5, 1),
(49, 9, 2),
(49, 15, 1),
(49, 17, 1),
(49, 18, 1),
(50, 1, 2),
(50, 3, 2),
(50, 5, 1),
(50, 9, 2),
(50, 15, 1),
(50, 17, 1),
(50, 18, 1),
(51, 1, 2),
(51, 3, 2),
(51, 5, 1),
(51, 9, 2),
(51, 15, 1),
(51, 17, 1),
(51, 18, 1),
(52, 1, 2),
(52, 3, 2),
(52, 5, 1),
(52, 9, 2),
(52, 15, 1),
(52, 17, 1),
(52, 18, 1),
(53, 1, 2),
(53, 3, 2),
(53, 5, 1),
(53, 9, 2),
(53, 15, 1),
(53, 17, 1),
(53, 18, 1),
(54, 1, 2),
(54, 3, 2),
(54, 5, 1),
(54, 9, 2),
(54, 15, 1),
(54, 17, 1),
(54, 18, 1),
(55, 1, 2),
(55, 3, 2),
(55, 5, 1),
(55, 9, 2),
(55, 15, 1),
(55, 17, 1),
(55, 18, 1),
(56, 1, 2),
(56, 3, 2),
(56, 5, 1),
(56, 9, 2),
(56, 15, 1),
(56, 17, 1),
(56, 18, 1),
(73, 1, 2),
(73, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `object_tag`
--

CREATE TABLE `object_tag` (
  `object_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` text,
  `image_url` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` varchar(255) DEFAULT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `alias`, `description`, `content`, `image_url`, `slug`, `status`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Giới thiệu', 'Gioi thieu', '', '<p>\r\n	<strong>Về iChợ:</strong><br />\r\n	iChợ l&agrave; website thương mại điện tử của C&ocirc;ng ty Cổ Phần I.P.L<br />\r\n	iChợ l&agrave; một m&ocirc; h&igrave;nh chợ c&ocirc;ng nghệ chuy&ecirc;n b&aacute;n sỉ online, cung cấp m&aacute;y t&iacute;nh, c&aacute;c sản phẩm thiết bị văn ph&ograve;ng đến với tất cả đối tượng kh&aacute;ch h&agrave;ng từ những kh&aacute;ch h&agrave;ng khối cơ quan nh&agrave; nước, khối doanh nghiệp, đai l&yacute;,&hellip;.. vượt trội cả về chủng loại v&agrave; số lượng, mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm c&oacute; nguồn gốc rỏ r&agrave;ng, ch&iacute;nh h&atilde;ng, đảm bảo về chất lượng.<br />\r\n	iChợ đặt mục ti&ecirc;u trở th&agrave;nh hệ thống chợ b&aacute;n sỉ lớn nhất tr&ecirc;n to&agrave;n quốc. với c&aacute;c gi&aacute; trị tiện &iacute;ch:<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mức gi&aacute; sỉ cạnh tranh.<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số lượng sản phẩm đa dạng, phong ph&uacute;.<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bảo h&agrave;nh ch&iacute;nh h&atilde;ng.<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanh to&aacute;n an to&agrave;n, bảo mật.<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tốc độ giao h&agrave;ng vượt trội<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giao dịch uy t&iacute;n, thuận tiện, nhanh ch&oacute;ng.<br />\r\n	-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; N&oacute;i kh&ocirc;ng với h&agrave;ng renew, h&agrave;ng đ&atilde; qua sử dụng.<br />\r\n	<br />\r\n	<strong>Th&ocirc;ng tin li&ecirc;n lạc:</strong></p>\r\n<ul>\r\n	<li>\r\n		<strong>Điện thoại:</strong><strong>&nbsp;1900 636 975</strong></li>\r\n	<li>\r\n		<strong>Email:</strong>&nbsp;Truy cập&nbsp;muahang@icho.vn</li>\r\n</ul>\r\n<h3>\r\n	Th&ocirc;ng tin về c&ocirc;ng ty:</h3>\r\n<ul>\r\n	<li>\r\n		C&ocirc;ng ty Cổ phần IPL</li>\r\n	<li>\r\n		Địa chỉ đăng k&yacute; kinh doanh: 216 Ho&agrave;ng Văn Thụ, Phường 4, Quận T&acirc;n B&igrave;nh</li>\r\n	<li>\r\n		Giấy chứng nhận Đăng k&yacute; Kinh doanh số 0310140399 do Sở Kế hoạch v&agrave; Đầu tư Th&agrave;nh phố Hồ Ch&iacute; Minh cấp ng&agrave;y 02/07/2010</li>\r\n</ul>\r\n', '', 'gioi-thieu', 1, '', '', '', '', 1, 1, '2016-09-22 07:14:21', '2017-01-11 14:21:44'),
(3, 'Bảo mật thông tin', 'Bao mat thong tin', '', 'Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin (Xem chi tiết tại điều 68 đến Điều 73 Nghị định 52/2013/NĐ-CP), bao gồm:\r\n<h3>\r\n	<strong>Th&ocirc;ng tin&nbsp;thu thập</strong></h3>\r\nNhững loại th&ocirc;ng tin iChợ cần&nbsp;bao gồm:\r\n<ul>\r\n	<li>\r\n		Họ v&agrave; t&ecirc;n kh&aacute;ch h&agrave;ng, địa chỉ li&ecirc;n hệ</li>\r\n	<li>\r\n		Email, số điện thoại di động, số điện thoại b&agrave;n</li>\r\n</ul>\r\n<h3>\r\n	<strong>Phạm vi sử dụng</strong></h3>\r\n<ul>\r\n	<li>\r\n		iChợ chỉ sử dụng th&ocirc;ng tin thu thập được cho mục đ&iacute;ch chăm s&oacute;c kh&aacute;ch h&agrave;ng</li>\r\n	<li>\r\n		iChợ c&oacute; thể sử dụng những th&ocirc;ng tin n&agrave;y để li&ecirc;n hệ với kh&aacute;ch h&agrave;ng bằng&nbsp;c&aacute;c h&igrave;nh thức như: thư ngỏ, đơn đặt h&agrave;ng, thư cảm ơn, th&ocirc;ng tin khuyến m&atilde;i hay dịch vụ mới</li>\r\n</ul>\r\n<h3>\r\n	<strong>Thời gian lưu trữ</strong></h3>\r\n<ul>\r\n	<li>\r\n		iChợ sẽ lưu trữ th&ocirc;ng tin do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n hệ thống phần mềm CRM trong thời gian theo d&otilde;i bảo h&agrave;nh sản phẩm.</li>\r\n	<li>\r\n		iChợ sẽ tiến h&agrave;nh x&oacute;a th&ocirc;ng tin kh&aacute;ch h&agrave;ng khi sản phẩm đ&atilde; qua hết thời hạn bảo h&agrave;nh hoặc kh&aacute;ch h&agrave;ng c&oacute; y&ecirc;u cầu hủy th&ocirc;ng tin đ&atilde; cung cấp.</li>\r\n</ul>\r\n<h3>\r\n	<strong>Đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin</strong></h3>\r\nShowroom: 240 V&otilde; Văn Ng&acirc;n, B&igrave;nh Thọ, Thủ Đức, Hồ Ch&iacute; Minh<br />\r\nHotline: 1900 636 975\r\n<h3>\r\n	<strong>Cập nhật th&ocirc;ng tin</strong></h3>\r\nKh&aacute;ch h&agrave;ng muốn chỉnh sửa hoặc thay đổi th&ocirc;ng tin vui l&ograve;ng li&ecirc;n hệ bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng theo số 1900 636 975\r\n<h3>\r\n	<strong>Cam kết bảo mật&nbsp;</strong></h3>\r\niChợ kh&ocirc;ng được quyền chia sẻ th&ocirc;ng tin của Qu&yacute; kh&aacute;ch cho bất kỳ một đơn vị n&agrave;o kh&aacute;c. Trong trường hợp đặc biệt, iChợ c&oacute; thể bị y&ecirc;u cầu phải tiết lộ th&ocirc;ng tin kh&aacute;ch h&agrave;ng như: khi c&oacute; căn cứ cho việc cung cấp th&ocirc;ng tin l&agrave; cần thiết để ngăn chặn c&aacute;c mối đe dọa về t&iacute;nh mạng, sức khỏe, hay cho mục đ&iacute;ch thực thi ph&aacute;p luật m&agrave; được cơ quan c&oacute; thẩm quyền y&ecirc;u cầu bằng văn bản. iChợ cam kết tu&acirc;n thủ Luật&nbsp;bảo mật&nbsp;v&agrave; c&aacute;c Nguy&ecirc;n tắc bảo mật hiện h&agrave;nh của nước Cộng h&ograve;a X&atilde; hội Chủ Nghĩa Việt Nam.', '', 'bao-mat-thong-tin', 1, '', '', '', '', 1, 1, '2016-09-22 07:14:22', '2017-01-06 13:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(20) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `display_order` int(11) NOT NULL,
  `value_from` float NOT NULL,
  `value_to` float NOT NULL,
  `price_unit_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `name`, `slug`, `type`, `display_order`, `value_from`, `value_to`, `price_unit_id`, `created_at`, `updated_at`) VALUES
(1, 'Dưới 1 triệu', 'duoi-1-trieu', 2, 1, 0, 1, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(2, '1 - 3 triệu', '1-den-3-trieu', 2, 2, 1.1, 3, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(3, '3 - 5 triệu', '3-den-5-trieu', 2, 3, 3.1, 5, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(4, '5 - 10 triệu', '5-den-10-trieu', 2, 4, 5.1, 10, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(5, '10 - 40 triệu', '10-den-40-trieu', 2, 5, 10.1, 40, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(6, '40 - 70 triệu', '40-den-70-trieu', 2, 6, 40.1, 70, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(7, '70 - 100 triệu', '70-den-100-trieu', 2, 7, 70.1, 100, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(8, '> 100 triệu', 'tren-100-trieu', 2, 8, 100.1, 100000000, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(9, '< 500 triệu', 'duoi-500-trieu', 1, 1, 0, 500, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(10, '500 - 800 triệu', '500-den-800-trieu', 1, 2, 500.1, 800, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(11, '800 - 1 tỷ', '800-den-1-ty', 1, 3, 800.1, 999, 7, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(12, '1 - 2 tỷ', '1-den-2-ty', 1, 4, 1, 2, 8, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(27, '2 - 3 tỷ', '2-den-3-ty', 1, 5, 2.01, 3, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '3 - 5 tỷ', '3-den-5-ty', 1, 6, 3.01, 5, 8, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(29, '5 - 7 tỷ', '5-den-7-ty', 1, 7, 5.01, 7, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '7 - 10 tỷ', '7-den-10-ty', 1, 8, 7.01, 10, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '10 - 20 tỷ', '10-den-20-ty', 1, 9, 10.1, 20, 8, '2017-01-01 00:00:00', '2017-01-01 00:00:00'),
(32, '20 - 30 tỷ', '20-den-30-ty', 1, 10, 20.1, 30, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '> 30 tỷ', 'tren-30-ty', 1, 11, 30.1, 100000, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `price_unit`
--

CREATE TABLE `price_unit` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` smallint(6) NOT NULL COMMENT '1 ',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price_unit`
--

INSERT INTO `price_unit` (`id`, `name`, `slug`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thỏa thuận', 'thoa-thuan', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(2, 'Trăm nghìn/tháng', 'tram-nghin', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(3, 'Triệu/tháng', 'trieu-thang', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(4, 'Trăm nghìn/m2/tháng', 'tram-nghin-m2', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(5, 'Triệu/m2', 'trieu-m2', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(6, 'Nghìn/m2/tháng', 'nghìn-m2', 2, 1, '2017-04-01 00:00:00', '2017-04-01 00:00:00'),
(7, 'Triệu', 'trieu', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(8, 'Tỷ', 'ty', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(9, 'Cây vàng', 'cay-vang', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(10, 'Trăm nghìn/m2', 'tram-nghin-m2', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(11, 'Triệu/m2', 'trieu-m2', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(12, 'Chỉ vàng/m2', 'chi-vang-m2', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00'),
(13, 'Cây vàng/m2', 'cay-vang-m2', 1, 1, '2017-05-05 00:00:00', '2017-05-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 : buy 2 : rent',
  `thumbnail_id` bigint(20) NOT NULL,
  `estate_type_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `street_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `price_unit_id` smallint(6) NOT NULL,
  `area` varchar(100) NOT NULL,
  `full_address` varchar(255) DEFAULT NULL,
  `front_face` varchar(20) DEFAULT NULL,
  `street_wide` varchar(20) DEFAULT NULL,
  `no_floor` smallint(6) NOT NULL,
  `no_room` smallint(6) NOT NULL,
  `direction_id` smallint(6) NOT NULL,
  `no_wc` smallint(6) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `video_url` int(11) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `contact_mobile` varchar(20) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `url_dothi` varchar(255) NOT NULL,
  `price_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `longt` varchar(100) DEFAULT NULL,
  `latt` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` int(11) NOT NULL DEFAULT '1' COMMENT 'danh cho bds hot',
  `cart_status` smallint(6) NOT NULL DEFAULT '1' COMMENT '1 : chua ban 2 : da ban 3 : giu cho',
  `meta_id` bigint(20) NOT NULL,
  `created_user` int(11) DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `slug`, `description`, `type`, `thumbnail_id`, `estate_type_id`, `city_id`, `district_id`, `ward_id`, `street_id`, `project_id`, `price`, `price_unit_id`, `area`, `full_address`, `front_face`, `street_wide`, `no_floor`, `no_room`, `direction_id`, `no_wc`, `image_url`, `video_url`, `contact_name`, `contact_address`, `contact_phone`, `contact_mobile`, `contact_email`, `url_dothi`, `price_id`, `area_id`, `longt`, `latt`, `status`, `is_hot`, `display_order`, `cart_status`, `meta_id`, `created_user`, `updated_user`, `customer_id`, `created_at`, `updated_at`) VALUES
(2, 'Cần bán đất đường số 2, P Trường Thọ, Thủ Đức, DT: 51.1m2, giá: 40tr/m2', 'can-ban-dat-duong-so-2-p-truong-tho-thu-duc-dt-511m2-gia-40trm2', '<strong>Cần vốn đầu tư b&aacute;n gấp l&ocirc; đất đường số 2, P Trường Thọ, Q Thủ Đức. </strong><br />\r\n- DT: 51,1 m2 ( 4m x 13,7m )<br />\r\n- Gi&aacute;: 40tr/m2 c&ograve;n bớt cho kh&aacute;ch mua nhanh lẹ.<br />\r\n- Nằm trong khu d&acirc;n cư đ&ocirc;ng đ&uacute;c, d&acirc;n tr&iacute; cao, an ninh.<br />\r\n- Tiện &iacute;ch: Gần chợ, trường học 1,2,3 v&agrave; nhiều dịch vụ kh&aacute;c ...<br />\r\n- Sổ hồng ch&iacute;nh chủ - X&acirc;y dựng tự do ( sag t&ecirc;n c&ocirc;ng chứng trong ng&agrave;y )<br />\r\n- <strong><em>Nằm ngay trung t&acirc;m</em></strong>, thuận tiện đi lại,<em><strong> c&aacute;ch Xa Lộ H&agrave; Nội 200m.</strong></em><br />\r\n- Th&iacute;ch hợp đầu tư, x&acirc;y nh&agrave; nghỉ hoặc kinh doanh c&aacute;c loại h&igrave;nh kh&aacute;c...<br />\r\n- Cần tiền gấp n&ecirc;n chỉ tiếp thiện ch&iacute; - Miễn trung gian<br />\r\n-&nbsp;Vui l&ograve;ng li&ecirc;n hệ: 0937045103 ( Quốc Kiệt )', 1, 3, 6, 1, 19, 36, 860, 0, '40', 11, '51', 'Đường số 2, P trường Thọ, Q Thủ Đức, Tp HCM', '4', '6', 0, 0, 6, 0, NULL, NULL, 'Trần Quốc Kiệt', '185A,Tây Hòa,Q9', '937045103', '937045103', 'quockiet.phulongland@gmail.com', '', 27, 3, '106.75158050000005', '10.8373974', 1, 1, 1, 1, 38, 1, 1, NULL, '2017-05-27 13:58:03', '2017-05-31 13:49:14'),
(3, 'Cần bán nhà góc 2 MT đường 359 (1 lầu, 1 trệt) tại Phước Long B, Quận 9, 55m2 giá 2,1tỷ', 'can-ban-nha-goc-2-mt-duong-359-1-lau-1-tret-tai-phuoc-long-b-quan-9-55m2-gia-21ty', '<strong>Cần tiền b&aacute;n gấp căn nh&agrave; 2 mặt tiền đường 359, Phước Long B, Quận 9</strong><br />\r\n- DT: 55m2 (DT: 4,1 x 13,35m).<br />\r\n- Gi&aacute; : 2,1 tỷ đồng.<br />\r\n- Vị tr&iacute; đắc địa, c&aacute;ch đường<em><strong> Đỗ Xu&acirc;n Hợp</strong></em> 500m v&agrave; c&aacute;ch đường <strong><em>Dương Đ&igrave;nh Hội</em></strong> 50m.<br />\r\n- Nh&agrave; nằm tr&ecirc;n mặt tiền&nbsp;<em><strong>đường nhựa 8m</strong></em> , mặt tiền xe cộ qua lại tấp nập<br />\r\n- Nằm ngay <em><strong>trung t&acirc;m quận 9</strong></em>, khu vực d&acirc;n cư hiện hữu n&ecirc;n tiện &iacute;ch xung quanh khu vực đầy đủ.<br />\r\n- Nh&agrave; hướng Đ&ocirc;ng m&aacute;t mẻ, th&iacute;ch hợp để ở hoặc cho thu&ecirc;, kinh doanh bu&ocirc;n b&aacute;n<br />\r\n- Ph&aacute;p l&iacute; :<strong><em> sổ hồng ch&iacute;nh chủ</em></strong> sang t&ecirc;n c&ocirc;ng chứng ngay &nbsp;<br />\r\n- Hiện tại đang c<strong><em>ho thu&ecirc; 8tr/th&aacute;ng</em></strong>&nbsp;&nbsp;<br />\r\n- Thương lượng nếu thiện ch&iacute; - Miễn trung gian<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ: 0937045103&nbsp;', 1, 4, 4, 1, 9, 20, 482, 0, '2.1', 8, '55', 'Đường 359,Phước Long B,Q9', '4', '8', 1, 2, 1, 0, NULL, NULL, 'Trần Quốc Kiệt', '185A,Tây Hòa,Q9', '0937045103', '0937045103', 'quockiet.phulongland@gmail.com', '', 27, 3, '106.77541450000001', '10.8205051', 1, 1, 1, 1, 35, 1, 1, NULL, '2017-05-27 14:02:48', '2017-05-30 07:01:17'),
(4, 'Nhà mặt tiền1 trệt 1 lầu đường Dương Đình Hội, Phước Long B, quận 9  giá tốt', 'nha-mat-tien-1-tret-1-lau-duong-duong-dinh-hoi-phuoc-long-b-quan-90-gia-tot', '<strong>B&aacute;n nh&agrave; 1 trệt 1 lầu Mặt tiền Dương Đ&igrave;nh Hội, Phước Long B, Q.9.</strong><br />\r\n+&nbsp;Diện T&iacute;ch: 4,30 x 12m = 51,6 m2.<br />\r\n+ Nh&agrave; x&acirc;y hết đất, ki&ecirc;n cố v&agrave; hiện đại, đẹp như h&igrave;nh (h&igrave;nh thật).<br />\r\n+ <strong><em>Hướng T&acirc;y bắc.</em></strong><br />\r\n+ D&acirc;n cư đ&ocirc;ng đ&uacute;c, s&ocirc;i động, an ninh.<br />\r\n- Vị tr&iacute;:<em><strong> Kinh doanh, văn ph&ograve;ng, mở qu&aacute;n cafe, qu&aacute;n ăn ...</strong></em> Ph&ugrave; hợp với mọi loại h&igrave;nh kinh doanh.<br />\r\n- Gần tuyến cao tốc Long Th&agrave;nh Dầu Gi&acirc;y, tuyến Metro, Đại Lộ Đ&ocirc;ng T&acirc;y,... 20 ph&uacute;t v&agrave;o đến trung t&acirc;m Q1, rất tiện sang Q2, Ph&uacute; Mỹ Hưng Q7.<br />\r\n- Tiện &iacute;ch: Gần ngay chợ, trường học, khu vui chơi, c&aacute;c trường cấp 1,2,3...<br />\r\n+&nbsp;Sổ hồng ri&ecirc;ng, sang t&ecirc;n c&ocirc;ng chứng trong ng&agrave;y.<br />\r\n+ Gi&aacute; 2 tỷ 350 triệu ( tiếp kh&aacute;ch thiện ch&iacute; ).', 1, 10, 4, 1, 9, 20, 633, 0, '2.35', 8, '51.6', 'Dương Đình Hội, Phước Long B, Q.9', '4.3', '12', 1, 0, 8, 0, NULL, NULL, 'Xuân Thanh', 'Trần Quốc Kiệt', '', '0937045103', 'quockiet.phulongland@gmail.com', '', 27, 3, '106.77760489814762', '10.819342704148276', 1, 1, 1, 1, 50, 1, 1, NULL, '2017-05-30 07:26:16', '2017-06-01 07:21:42'),
(5, 'Cần bán gấp nhà mặt tiền đường 297, Phước Long B, Quận 9 thích hợp đầu tư', 'can-ban-gap-nha-mat-tien-duong-297-phuoc-long-b-quan-9-thic-hop-dau-tu', '<strong>Cần tiền b&aacute;n gấp nh&agrave; mặt tiền đường 297, Phước Long B, Q9.</strong><br />\r\n+ Tổng DT : 187,5m2 (6m x 31m)<br />\r\n+ DT x&acirc;y dựng : 103,1 m2 - &nbsp;Diện t&iacute;ch s&agrave;n : 164,5 m2.<br />\r\n+ <strong><em>Hướng t&acirc;y nam</em></strong> m&aacute;t mẻ<br />\r\n+ Đường rộng 12m th&iacute;ch hợp kinh doanh.<br />\r\n+ Nằm trong khu d&acirc;n cư an ninh, sầm uất.<br />\r\n+&nbsp;C&aacute;ch trục ch&iacute;nh <em><strong>Đỗ Xu&acirc;n Hợp</strong></em> 500m.<br />\r\n+&nbsp;Tiện &iacute;ch: Nằm gần <em><strong>chợ Phước B&igrave;nh</strong></em>,Trường <strong><em>THCS V&otilde; Văn H&aacute;</em></strong>t,... Th&iacute;ch hơp <strong><em>kinh doanh nh&agrave; trọ, nh&agrave; nghỉ,qu&aacute;n ăn,... </em></strong><br />\r\n+&nbsp;Hiện tại đang <em><strong>cho thu&ecirc; l&agrave;m lớp mầm non</strong></em> với gi&aacute; thu&ecirc; tr&ecirc;n 10tr/th&aacute;ng. ( X&acirc;y dựng 8 đến 10 ph&ograve;ng trọ cho thu&ecirc; với mức gi&aacute; 2tr/ph&ograve;ng ).<br />\r\n+&nbsp;Mua b&aacute;n sang t&ecirc;n nhanh gọn ,gi&aacute; tốt ( c&ograve;n thương lượng nếu thiện ch&iacute; ).', 1, 15, 4, 1, 9, 20, 467, 0, '6.9', 8, '187.5', 'Đường 297, Phước Long B, Q9', '6', '12', 1, 2, 1, 0, NULL, NULL, 'Trần Quốc Kiệt', '185A,Tây Hòa,Q9', '0937045103', '0937045103', 'quockiet.phulongland@gmail.com', '', 29, 6, '106.77541450000001', '10.8205051', 1, 1, 1, 1, 51, 1, 1, NULL, '2017-05-30 09:43:08', '2017-05-31 13:58:51'),
(6, 'Cần cho thuê gấp căn 2 PN lucky dragon, 75m2, giá 10 triệu/tháng', 'can-cho-thue-gap-can-2-pn-lucky-dragon-75m2-gia-10-trieuthang', '- Cần cho thu&ecirc; căn hộ Lucky Dragon 2 ph&ograve;ng ngủ, view đẹp từ ban c&ocirc;ng, tho&aacute;ng m&aacute;t.<br />\r\n- Căn hộ thuộc chủ đầu tư Novaland uy t&iacute;n, đẳng cấp. Thiết kế sang trọng, bao gồm đầy đủ nội thất, dọn v&agrave;o ở ngay.<br />\r\n- Mặt tiền đường Đỗ Xu&acirc;n Hợp Quận 9, nằm trong khu d&acirc;n cư d&acirc;n tr&iacute; cao y&ecirc;n tĩnh, an ninh liền kề: si&ecirc;u thị, nh&agrave; h&agrave;ng, trường học, nh&agrave; trẻ, ...<br />\r\n- Tiện nghị: hồ bơi, c&ocirc;ng vi&ecirc;n, ph&ograve;ng gym, bảo vệ 24/24, ng&acirc;n h&agrave;ng &Aacute; Ch&acirc;u...<br />\r\n- Diện t&iacute;ch: 75M2 - 2PN - 2 Toilet. Gi&aacute; 10 TRIỆU/TH&Aacute;NG(chưa gồm ph&iacute; quản l&yacute;)&nbsp;<br />\r\n- GI&Aacute; CHO THU&Ecirc; 10 TRIỆU/TH&Aacute;NG - FULL NỘI THẤT.<br />\r\n- Li&ecirc;n hệ: <strong>0937045103</strong> để xem nh&agrave;.', 2, 18, 10, 1, 9, 20, 629, 0, '10', 3, '75', '', '', '', 0, 2, 1, 0, NULL, NULL, 'Quốc Kiệt', 'Quận 9 - Hồ Chí Minh', '0937045103', '0937045103', 'quockiet.phulongland@gmail.com', '', 9, 4, '106.77280999999994', '10.82346', 1, 0, 1, 2, 58, 1, 1, NULL, '2017-06-01 07:31:42', '2017-06-01 07:32:35'),
(7, 'Cần bán nhà 2 mặt tiền hẻm đường Lã Xuân Oai, Quận 9, giá 3,3 tỷ', 'can-ban-nha-2-mat-tien-hem-31-duong-la-xuan-oai-quan-9-gia-33-ty', '- Diện t&iacute;ch đất 82m2.<br />\r\n- DTXD 145m2.<br />\r\n- Nh&agrave; 1 trệt, 2 lầu.<br />\r\n- Sổ hồng 2016.<br />\r\n- Gi&aacute; 3.3 tỷ.<br />\r\n- Đất thổ cư, nằm g&oacute;c 2 mặt tiền, hẻm xe tải, c&aacute;ch mặt tiền đường L&Atilde; Xu&acirc;n Oai 10m, gần chợ Tăng Nhơn Ph&uacute; A, gần BV Q9, trường ĐH GTVT, Học Viện Bưu Ch&iacute;nh, gần khu trung t&acirc;m thương mại Saigon Villas Hills mặt tiền L&ecirc; Văn Việt đang x&acirc;y dựng, tiện &iacute;ch xung quanh đầy đủ...&nbsp;', 1, 26, 2, 1, 9, 16, 670, 0, '3.3', 8, '82', 'Đường Lã Xuân Oai, Phường Long Trường, Quận 9', '', '', 0, 0, 1, 0, NULL, NULL, 'Trần Quốc Kiệt', 'Quận 9 - Hồ Chí Minh', '', '0937045103', 'quockiet.phulongland@gmail.com', '', 28, 4, '106.80892210000002', '10.8216913', 1, 0, 1, 2, 67, 1, 1, NULL, '2017-06-06 06:52:11', '2017-06-06 06:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `id` bigint(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `display_order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_img`
--

INSERT INTO `product_img` (`id`, `product_id`, `image_url`, `display_order`) VALUES
(1, 2, '2017/05/27/18424570-684299975087111-51940289-n-1495868212.jpg', 1),
(2, 2, '2017/05/27/18361636-684300001753775-988918786-n-1495868222.jpg', 1),
(3, 2, '2017/05/27/18387151-684299998420442-1958594984-n-1495868228.jpg', 1),
(4, 3, '2017/05/27/18518664-687746124742496-1875101787-n-1495868443.jpg', 1),
(5, 3, '2017/05/27/18518896-688170538033388-1444419335-n-1495868460.jpg', 1),
(6, 3, '2017/05/27/z663414318286-aa24d544561b437389e76b86f90f1062-1495868468.jpg', 1),
(7, 3, '2017/05/27/z663414142449-392908f9b53378550f554997b77b411f-1495868475.jpg', 1),
(8, 3, '2017/05/27/z663413913928-fe166568aaf2c32c0f467a4b9f0ae5e8-1495868484.jpg', 1),
(9, 4, '2017/05/30/nha-ban-quan-9-mat-tien-duong-duong-dinh-hoi-01-1496103967.jpg', 1),
(10, 4, '2017/05/30/nha-ban-quan-9-mat-tien-duong-duong-dinh-hoi-02-1496103967.jpg', 1),
(11, 4, '2017/05/30/nha-ban-quan-9-mat-tien-duong-duong-dinh-hoi-03-1496103967.jpg', 1),
(12, 4, '2017/05/30/nha-ban-quan-9-mat-tien-duong-duong-dinh-hoi-04-1496103967.jpg', 1),
(13, 4, '2017/05/30/nha-ban-quan-9-mat-tien-duong-duong-dinh-hoi-05-1496103967.jpg', 1),
(14, 4, '2017/05/30/nha-ban-quan-9-mat-tien-duong-duong-dinh-hoi-06-1496103967.jpg', 1),
(15, 5, '2017/05/30/9102348622-1496112135.jpg', 1),
(16, 5, '2017/05/30/9195509138-1-1496112135.jpg', 1),
(17, 5, '2017/05/30/9195509138-1496112135.jpg', 1),
(18, 6, '2017/06/01/cho-thue-can-ho-lucky-dragon-quan-9-do-xuan-hop-1496277062.jpg', 1),
(19, 6, '2017/06/01/cho-thue-can-ho-lucky-dragon-quan-9-do-xuan-hop1-1496277062.jpg', 1),
(20, 6, '2017/06/01/cho-thue-can-ho-lucky-dragon-quan-9-do-xuan-hop2-1496277062.jpg', 1),
(21, 6, '2017/06/01/cho-thue-can-ho-lucky-dragon-quan-9-do-xuan-hop3-1496277062.jpg', 1),
(22, 6, '2017/06/01/cho-thue-can-ho-lucky-dragon-quan-9-do-xuan-hop4-1496277062.jpg', 1),
(23, 7, '2017/06/06/ban-nha-rieng-duong-la-xuan-oai-quan-9-2-1496706719.jpg', 1),
(24, 7, '2017/06/06/ban-nha-rieng-duong-la-xuan-oai-quan-9-3-1496706719.jpg', 1),
(26, 7, '2017/06/06/ban-nha-rieng-duong-la-xuan-oai-quan-9-1496706784.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hot` tinyint(1) NOT NULL,
  `longt` varchar(100) NOT NULL,
  `latt` varchar(100) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `id_dothi` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `slug`, `type`, `ward_id`, `district_id`, `city_id`, `address`, `contact`, `phone`, `image_url`, `video_url`, `description`, `content`, `hot`, `longt`, `latt`, `display_order`, `status`, `meta_id`, `id_dothi`, `created_at`, `updated_at`) VALUES
(1, 'Chung cư An Cư', 'chung-cu-an-cu', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.739', '10.79798', 1, 1, NULL, 1744, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(2, 'Chung cư An Hòa', 'chung-cu-an-hoa', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7396', '10.79307', 2, 1, NULL, 680, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(3, 'Cao ốc An Khang', 'cao-oc-an-khang', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7398', '10.79733', 3, 1, NULL, 528, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(4, 'An Lộc  - An Phúc', 'an-loc-an-phuc', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7449', '10.79671', 4, 1, NULL, 1746, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(5, 'An Phú - An Khánh', 'an-phu-an-khanh', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7378', '10.79744', 5, 1, NULL, 83, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(6, 'Chung cư An Thịnh', 'chung-cu-an-thinh', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7383', '10.79785', 6, 1, NULL, 1864, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(7, 'Biệt thự Hà Đô', 'biet-thu-ha-do', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7647', '10.75836', 7, 1, NULL, 1748, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(8, 'Bình An Pearl', 'bình-an-pearl', 0, 5, 2, 1, '', '', '', '', '', '', '', 0, '106.7301', '10.78909', 8, 1, NULL, 2097, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(9, 'Khu biệt thự Bình An Riverside', 'khu-biet-thu-binh-an-riverside', 0, 5, 2, 1, '', '', '', '', '', '', '', 0, '106.7309', '10.79522', 9, 1, NULL, 328, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(10, 'Chung cư Bình Minh', 'chung-cu-binh-minh', 0, 5, 2, 1, '', '', '', '', '', '', '', 0, '106.7352', '10.78935', 10, 1, NULL, 94, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(11, 'C3 PARCSpring', 'c3-parcspring', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7707', '10.78874', 11, 1, NULL, 2412, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(12, 'Cantavil An Phú - Cantavil Premier', 'cantavil-an-phu-cantavil-premier', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7474', '10.80049', 12, 1, NULL, 713, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(13, 'Cao ốc Thịnh Vượng', 'cao-oc-thinh-vuong', 0, 0, 2, 1, '', '', '', '', '', '', '', 0, '106.7711', '10.7888', 13, 1, NULL, 1314, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(14, 'Khu dân cư Cát Lái Invesco', 'khu-dan-cu-cat-lai-invesco', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7878', '10.7723', 14, 1, NULL, 1023, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(15, 'Centana Thủ Thiêm', 'centana-thu-thiem', 0, 0, 2, 1, '', '', '', '', '', '', '', 0, '106.7529', '10.79122', 15, 1, NULL, 2485, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(16, 'Cheery Apartment', 'cheery-apartment', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7671', '10.77402', 16, 1, NULL, 366, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(17, 'Chung cư Bộ Công An', 'chung-cu-bo-cong-an', 0, 5, 2, 1, '', '', '', '', '', '', '', 0, '106.7369', '10.79445', 17, 1, NULL, 2099, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(18, 'Citi Bella', 'citi-bella', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7863', '10.76671', 18, 1, NULL, 2238, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(19, 'Citi Bella 2', 'citi-bella-2', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.778', '10.77032', 19, 1, NULL, 2381, '2017-05-05 03:16:05', '2017-05-05 03:16:05'),
(20, 'Citi Home', 'citi-home', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7841', '10.76732', 20, 1, NULL, 1959, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(21, 'Citi Soho', 'citi-soho', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7844', '10.76785', 21, 1, NULL, 2556, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(22, 'City Horse', 'city-horse', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7485', '10.79786', 22, 1, NULL, 1547, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(23, 'Cityland Bình Trưng Đông', 'cityland-binh-trung-dong', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7782', '10.77609', 23, 1, NULL, 1946, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(24, 'Đại Quang Minh', 'dai-quang-minh', 0, 3, 2, 1, '', '', '', '', '', '', '', 0, '106.7268', '10.77436', 24, 1, NULL, 1583, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(25, 'De Capella', 'de-capella', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.735', '10.78726', 25, 1, NULL, 2345, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(26, 'Detesco Lương Định Của', 'detesco-luong-dinh-cua', 0, 6, 2, 1, '', '', '', '', '', '', '', 0, '106.7314', '10.78597', 26, 1, NULL, 1540, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(27, 'Diamond Island', 'diamond-island', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7472', '10.779', 27, 1, NULL, 547, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(28, 'Khu dân cư  Đông Thủ Thiêm', 'khu-dan-cu-dong-thu-thiem', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7783', '10.79206', 28, 1, NULL, 1046, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(29, 'Dự án Huy Hoàng', 'du-an-huy-hoang', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7545', '10.77858', 29, 1, NULL, 1747, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(30, 'Empire City Thủ Thiêm', 'empire-city-thu-thiem', 0, 11, 2, 1, '', '', '', '', '', '', '', 0, '106.7162', '10.76983', 30, 1, NULL, 2517, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(31, 'Căn hộ Bình Khánh', 'can-ho-binh-khanh', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7425', '10.78776', 31, 1, NULL, 1316, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(32, 'Estella Heights', 'estella-heights', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7486', '10.80128', 32, 1, NULL, 2214, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(33, 'Feliz En Vista', 'feliz-en-vista', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7564', '10.77807', 33, 1, NULL, 2532, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(34, 'Fideco Riverview', 'fideco-riverview', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.738', '10.8029', 34, 1, NULL, 88, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(35, 'Gateway Thảo Điền', 'gateway-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7467', '10.80382', 35, 1, NULL, 2131, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(36, 'Hoàng Anh River View', 'hoang-anh-river-view', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7272', '10.80482', 36, 1, NULL, 111, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(37, 'Holm Villas Thảo Điền', 'holm-villas-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7245', '10.81073', 37, 1, NULL, 2154, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(38, 'Homyland', 'homyland', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7666', '10.78806', 38, 1, NULL, 1082, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(39, 'Homyland 2', 'homyland-2', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7657', '10.78848', 39, 1, NULL, 1266, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(40, 'Homyland 3', 'homyland-3', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7632', '10.78769', 40, 1, NULL, 2488, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(41, 'Imperia An Phú', 'imperia-an-phu', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7503', '10.80036', 41, 1, NULL, 787, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(42, 'Khu dân cư Ninh Giang', 'khu-dan-cu-ninh-giang', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7854', '10.77083', 42, 1, NULL, 1969, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(43, 'Khu dân cư Thế kỉ 21', 'khu-dan-cu-the-ki-21', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7521', '10.78168', 43, 1, NULL, 142, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(44, 'Khu dân cư Văn Minh', 'khu-dan-cu-van-minh', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7475', '10.78313', 44, 1, NULL, 1593, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(45, 'La Astoria', 'la-astoria', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7631', '10.78792', 45, 1, NULL, 1951, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(46, 'Khu đô thị Lakeview City', 'khu-do-thi-lakeview-city', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7758', '10.79541', 46, 1, NULL, 2361, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(47, 'Lan Anh Village', 'lan-anh-village', 0, 5, 2, 1, '', '', '', '', '', '', '', 0, '106.7226', '10.78569', 47, 1, NULL, 1548, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(48, 'Lexington Residence', 'lexington-residence', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7519', '10.79835', 48, 1, NULL, 1020, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(49, 'Marina Bay Thủ Thiêm', 'marina-bay-thu-thiem', 0, 3, 2, 1, '', '', '', '', '', '', '', 0, '106.727', '10.77458', 49, 1, NULL, 2603, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(50, 'Masteri Thảo Điền', 'masteri-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7418', '10.80269', 50, 1, NULL, 1740, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(51, 'Căn hộ May Apartments', 'can-ho-may-apartments', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7308', '10.81027', 51, 1, NULL, 684, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(52, 'Midpoint Villas Thảo Điền', 'midpoint-villas-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7328', '10.80868', 52, 1, NULL, 2115, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(53, 'Palm City', 'palm-city', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7657', '10.79516', 53, 1, NULL, 2611, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(54, 'Palm Heights', 'palm-heights', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7615', '10.79377', 54, 1, NULL, 2617, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(55, 'PARCSpring', 'parcspring', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7707', '10.78865', 55, 1, NULL, 1119, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(56, 'Parkland Apartments', 'parkland-apartments', 0, 0, 2, 1, '', '', '', '', '', '', '', 0, '106.7494', '10.80416', 56, 1, NULL, 1315, '2017-05-05 03:16:06', '2017-05-05 03:16:06'),
(57, 'Chung cư Petroland Quận 2', 'chung-cu-petroland-quan-2', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.777', '10.79175', 57, 1, NULL, 998, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(58, 'PetroVietnam Landmark', 'petrovietnam-landmark', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7506', '10.79692', 58, 1, NULL, 838, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(59, 'Phố Đông Village', 'pho-dong-village', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7808', '10.76906', 59, 1, NULL, 1870, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(60, 'Preche', 'preche', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7468', '10.80386', 60, 1, NULL, 831, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(61, 'Regency Park', 'regency-park', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7509', '10.794', 61, 1, NULL, 777, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(62, 'River Garden', 'river-garden', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7271', '10.81512', 62, 1, NULL, 131, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(63, 'Safari', 'safari', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7576', '10.77764', 63, 1, NULL, 2579, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(64, 'Saigon Mia', 'saigon-mia', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7382', '10.7943', 64, 1, NULL, 2267, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(65, 'Sarah Thảo Điền', 'sarah-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7318', '10.81619', 65, 1, NULL, 2518, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(66, 'Sarimi Sala', 'sarimi-sala', 0, 3, 2, 1, '', '', '', '', '', '', '', 0, '106.7247', '10.77035', 66, 1, NULL, 2541, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(67, 'Screc II Tower', 'screc-ii-tower', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7405', '10.79157', 67, 1, NULL, 1177, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(68, 'Sensation Thảo Điền', 'sensation-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7311', '10.81034', 68, 1, NULL, 2746, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(69, 'Spring Life', 'spring-life', 0, 8, 2, 1, '', '', '', '', '', '', '', 0, '106.7713', '10.78981', 69, 1, NULL, 751, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(70, 'Sunny Thủ Thiêm', 'sunny-thu-thiem', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7222', '10.77494', 70, 1, NULL, 797, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(71, 'Tái định cư Bình Khánh', 'tai-dinh-cu-binh-khanh', 0, 6, 2, 1, '', '', '', '', '', '', '', 0, '106.7367', '10.78305', 71, 1, NULL, 2871, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(72, 'Khu dân cư Thạnh Mỹ Lợi', 'khu-dan-cu-thanh-my-loi', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7671', '10.76987', 72, 1, NULL, 137, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(73, 'Khu dân cư Phú Nhuận 1,2', 'khu-dan-cu-phu-nhuan-12', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7609', '10.76847', 73, 1, NULL, 1839, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(74, 'Thảo Điền Pearl', 'thao-dien-pearl', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7332', '10.80142', 74, 1, NULL, 466, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(75, 'The Ascent', 'the-ascent', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7314', '10.80522', 75, 1, NULL, 1953, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(76, 'The CBD Premium Home', 'the-cbd-premium-home', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7615', '10.77438', 76, 1, NULL, 1575, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(77, 'The Estella', 'the-estella', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7488', '10.80027', 77, 1, NULL, 138, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(78, 'The Krista', 'the-krista', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7703', '10.79044', 78, 1, NULL, 2100, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(79, 'The Nassim Thảo Điền', 'the-nassim-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7444', '10.80465', 79, 1, NULL, 2252, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(80, 'The Sun Avenue', 'the-sun-avenue', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.752', '10.78845', 80, 1, NULL, 2065, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(81, 'The Vista An Phú', 'the-vista-an-phu', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7517', '10.80534', 81, 1, NULL, 141, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(82, 'Thủ Thiêm Lakeview', 'thu-thiem-lakeview', 0, 0, 2, 1, '', '', '', '', '', '', '', 0, '106.723', '10.77267', 82, 1, NULL, 2869, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(83, 'Thủ Thiêm Sky', 'thu-thiem-sky', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7303', '10.81466', 83, 1, NULL, 1765, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(84, 'Thủ Thiêm Star', 'thu-thiem-star', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7774', '10.79211', 84, 1, NULL, 786, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(85, 'Khu Dân cư Thủ Thiêm Villa', 'khu-dan-cu-thu-thiem-villa', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7562', '10.76856', 85, 1, NULL, 1086, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(86, 'Thủ Thiêm Xanh', 'thu-thiem-xanh', 0, 7, 2, 1, '', '', '', '', '', '', '', 0, '106.7763', '10.78951', 86, 1, NULL, 1106, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(87, 'Tropic Garden', 'tropic-garden', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7278', '10.81397', 87, 1, NULL, 765, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(88, 'Ventura', 'ventura', 0, 9, 2, 1, '', '', '', '', '', '', '', 0, '106.7713', '10.77304', 88, 1, NULL, 993, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(89, 'Veronica Apartments', 'veronica-apartments', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7308', '10.81314', 89, 1, NULL, 675, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(90, 'Victoria Village', 'victoria-village', 0, 0, 2, 1, '', '', '', '', '', '', '', 0, '106.7598', '10.77618', 90, 1, NULL, 2858, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(91, 'Villa Riviera', 'villa-riviera', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7493', '10.80757', 91, 1, NULL, 1880, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(92, 'Khu nhà ở Vinaconex Thảo Điền', 'khu-nha-o-vinaconex-thao-dien', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7313', '10.80733', 92, 1, NULL, 359, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(93, 'Vinhomes Thủ Thiêm', 'vinhomes-thu-thiem', 0, 3, 2, 1, '', '', '', '', '', '', '', 0, '106.7264', '10.7632', 93, 1, NULL, 2672, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(94, 'Vista Verde', 'vista-verde', 0, 1, 2, 1, '', '', '', '', '', '', '', 0, '106.7578', '10.77768', 94, 1, NULL, 1819, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(95, 'Water Bay Novaland', 'water-bay-novaland', 0, 6, 2, 1, '', '', '', '', '', '', '', 0, '106.7401', '10.78206', 95, 1, NULL, 2826, '2017-05-05 03:16:07', '2017-05-05 03:16:07'),
(96, 'Waterfront Residences', 'waterfront-residences', 0, 10, 2, 1, '', '', '', '', '', '', '', 0, '106.7263', '10.80492', 96, 1, NULL, 331, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(97, 'Xi Riverview Palace', 'xi-riverview-palace', 0, 4, 2, 1, '', '', '', '', '', '', '', 0, '106.7307', '10.81699', 97, 1, NULL, 697, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(98, '9 View Apartment', '9-view-apartment', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7736', '10.8292', 1, 1, NULL, 2377, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(99, 'Khu dân cư Bắc Rạch Chiếc', 'khu-dan-cu-bac-rach-chiec', 0, 19, 9, 1, '', '', '', '', '', '', '', 0, '106.7656', '10.8132', 2, 1, NULL, 130, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(100, 'Khu dân cư Đại học Bách khoa', 'khu-dan-cu-dai-hoc-bach-khoa', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7864', '10.79326', 3, 1, NULL, 2001, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(101, 'Biệt thự Cielo Island', 'biet-thu-cielo-island', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7754', '10.81361', 4, 1, NULL, 2368, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(102, 'Cao ốc Bình Minh', 'cao-oc-binh-minh', 0, 12, 9, 1, '', '', '', '', '', '', '', 0, '106.7755', '10.84818', 5, 1, NULL, 1371, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(103, 'Camland Garden', 'camland-garden', 0, 24, 9, 1, '', '', '', '', '', '', '', 0, '106.7707', '10.7885', 6, 1, NULL, 2697, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(104, 'Centana Điền Phúc Thành', 'centana-dien-phuc-thanh', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8277', '10.7988', 7, 1, NULL, 2736, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(105, 'Khu phức hợp Centermark', 'khu-phuc-hop-centermark', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8001', '10.78906', 8, 1, NULL, 891, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(106, 'Chung cư Điền Phúc Thành', 'chung-cu-dien-phuc-thanh', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7855', '10.80859', 9, 1, NULL, 647, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(107, 'Khu đô thị mới Đông Tăng Long', 'khu-do-thi-moi-dong-tang-long', 0, 24, 9, 1, '', '', '', '', '', '', '', 0, '106.8212', '10.80915', 10, 1, NULL, 989, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(108, 'Ehome 2', 'ehome-2', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7863', '10.81046', 11, 1, NULL, 1329, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(109, 'E-Home', 'e-home', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7794', '10.82007', 12, 1, NULL, 102, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(110, 'Ehome S', 'ehome-s', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7808', '10.79691', 13, 1, NULL, 2701, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(111, 'Khu dân cư Exim Garden', 'khu-dan-cu-exim-garden', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8021', '10.80919', 14, 1, NULL, 1044, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(112, 'Flora Anh Đào', 'flora-anh-dao', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7759', '10.8093', 15, 1, NULL, 2092, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(113, 'Fuji Residence', 'fuji-residence', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7847', '10.81331', 16, 1, NULL, 2502, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(114, 'Khu dân cư Gia Hòa', 'khu-dan-cu-gia-hoa', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7787', '10.81705', 17, 1, NULL, 105, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(115, 'Golf Park', 'golf-park', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.8141', '10.86806', 18, 1, NULL, 2064, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(116, 'Green Building', 'green-building', 0, 19, 9, 1, '', '', '', '', '', '', '', 0, '106.7638', '10.8279', 19, 1, NULL, 895, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(117, 'Green Home Riverside', 'green-home-riverside', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8133', '10.79525', 20, 1, NULL, 2203, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(118, 'Green Town Quận 9', 'green-town-quan-9', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7945', '10.79074', 21, 1, NULL, 2763, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(119, 'Happy Home quận 9', 'happy-home-quan-9', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7995', '10.80463', 22, 1, NULL, 2730, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(120, 'Him Lam Phú An', 'him-lam-phu-an', 0, 19, 9, 1, '', '', '', '', '', '', '', 0, '106.7626', '10.81949', 23, 1, NULL, 2679, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(121, 'KDC Hoàng Anh Minh Tuấn', 'kdc-hoang-anh-minh-tuan', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7741', '10.81694', 24, 1, NULL, 1580, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(122, 'Hoja Villa', 'hoja-villa', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7858', '10.81725', 25, 1, NULL, 1035, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(123, 'HTReal 898', 'htreal-898', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7995', '10.78709', 26, 1, NULL, 2406, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(124, 'Hưng Phú 1', 'hung-phu-1', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7896', '10.81019', 27, 1, NULL, 1354, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(125, 'Hưng Phú 2', 'hung-phu-2', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.789', '10.81067', 28, 1, NULL, 1353, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(126, 'Chung cư Hùng Việt', 'chung-cu-hung-viet', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7911', '10.79776', 29, 1, NULL, 648, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(127, 'I-Home Xa Lộ Hà Nội', 'i-home-xa-lo-ha-noi', 0, 19, 9, 1, '', '', '', '', '', '', '', 0, '106.7652', '10.83293', 30, 1, NULL, 2458, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(128, 'Jamila Khang Điền', 'jamila-khang-dien', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7477', '10.802', 31, 1, NULL, 2865, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(129, 'Khu dân cư C.T.C', 'khu-dan-cu-ctc', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8204', '10.79723', 32, 1, NULL, 1588, '2017-05-05 03:16:08', '2017-05-05 03:16:08'),
(130, 'KDC Chợ Long Trường Mới', 'kdc-cho-long-truong-moi', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8223', '10.80619', 33, 1, NULL, 2308, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(131, 'KDC Kiến Á', 'kdc-kien-a', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7829', '10.80609', 34, 1, NULL, 1352, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(132, 'KDC Mỹ Long', 'kdc-my-long', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.8308', '10.84194', 35, 1, NULL, 1350, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(133, 'Khu dân cư Nam Long', 'khu-dan-cu-nam-long', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7806', '10.80924', 36, 1, NULL, 120, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(134, 'KDC Phú Nhuận - Phước Long B', 'kdc-phu-nhuan-phuoc-long-b', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7858', '10.8041', 37, 1, NULL, 1349, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(135, 'Khu dân cư Phước Thiện', 'khu-dan-cu-phuoc-thien', 0, 13, 9, 1, '', '', '', '', '', '', '', 0, '106.8377', '10.84896', 38, 1, NULL, 2135, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(136, 'Khu dân cư Thanh Trúc', 'khu-dan-cu-thanh-truc', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8072', '10.81962', 39, 1, NULL, 1656, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(137, 'Khu dân cư Trường Lưu', 'khu-dan-cu-truong-luu', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8234', '10.80405', 40, 1, NULL, 2139, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(138, 'Khu dân cư Khang An', 'khu-dan-cu-khang-an', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8001', '10.78906', 41, 1, NULL, 115, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(139, 'KDC Khang Điền - Intresco', 'kdc-khang-dien-intresco', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.781', '10.81889', 42, 1, NULL, 1820, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(140, 'KDC Khang Điền Long Trường', 'kdc-khang-dien-long-truong', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.827', '10.79349', 43, 1, NULL, 1348, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(141, 'Khu dân cư Long Thạnh Mỹ', 'khu-dan-cu-long-thanh-my', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.83', '10.83591', 44, 1, NULL, 2450, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(142, 'Kikyo Residence', 'kikyo-residence', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7857', '10.79859', 45, 1, NULL, 2631, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(143, 'KDC Long Phước Điền - Long Trường', 'kdc-long-phuoc-dien-long-truong', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8261', '10.79324', 46, 1, NULL, 1975, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(144, 'Lucasta Villa', 'lucasta-villa', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7963', '10.80365', 47, 1, NULL, 750, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(145, 'Lucky Dragon', 'lucky-dragon', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7727', '10.82151', 48, 1, NULL, 1582, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(146, 'Chung cư Man Thiện', 'chung-cu-man-thien', 0, 0, 9, 1, '', '', '', '', '', '', '', 0, '106.7884', '10.85324', 49, 1, NULL, 1249, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(147, 'Mega Residence', 'mega-residence', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7937', '10.79942', 50, 1, NULL, 1388, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(148, 'Mega Ruby', 'mega-ruby', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7974', '10.7992', 51, 1, NULL, 1956, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(149, 'Mega Sapphire', 'mega-sapphire', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8001', '10.78906', 52, 1, NULL, 2090, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(150, 'Mega Village', 'mega-village', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7904', '10.78471', 53, 1, NULL, 2105, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(151, 'Melosa Garden', 'melosa-garden', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7918', '10.78058', 54, 1, NULL, 2261, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(152, 'Monada Khang Điền', 'monada-khang-dien', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7982', '10.79159', 55, 1, NULL, 2880, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(153, 'Nam Khang Residence', 'nam-khang-residence', 0, 0, 9, 1, '', '', '', '', '', '', '', 0, '106.8217', '10.80593', 56, 1, NULL, 2301, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(154, 'Nhân Phú', 'nhan-phu', 0, 23, 9, 1, '', '', '', '', '', '', '', 0, '106.7817', '10.83382', 57, 1, NULL, 1128, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(155, 'Park Riverside Tân Cảng', 'park-riverside-tan-cang', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7999', '10.80709', 58, 1, NULL, 2107, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(156, 'Peach Garden', 'peach-garden', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7901', '10.80283', 59, 1, NULL, 1897, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(157, 'Cao ốc Phố Đông - Hoa Sen', 'cao-oc-pho-dong-hoa-sen', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7853', '10.80904', 60, 1, NULL, 324, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(158, 'Phúc An Viên', 'phuc-an-vien', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.832', '10.85455', 61, 1, NULL, 1327, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(159, 'Phuoc Long Spring Town', 'phuoc-long-spring-town', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7737', '10.82881', 62, 1, NULL, 978, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(160, 'River Park', 'river-park', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7795', '10.81471', 63, 1, NULL, 1019, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(161, 'River Valley', 'river-valley', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7847', '10.81416', 64, 1, NULL, 1005, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(162, 'Riviera Cove', 'riviera-cove', 0, 0, 9, 1, '', '', '', '', '', '', '', 0, '106.7873', '10.81304', 65, 1, NULL, 1268, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(163, 'Sài Gòn Gateway', 'sai-gon-gateway', 0, 0, 9, 1, '', '', '', '', '', '', '', 0, '106.7735', '10.84727', 66, 1, NULL, 2856, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(164, 'Samsung Village', 'samsung-village', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7997', '10.81973', 67, 1, NULL, 2475, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(165, 'Sky 9', 'sky-9', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7914', '10.80458', 68, 1, NULL, 1998, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(166, 'The Sun City Minh Sơn', 'the-sun-city-minh-son', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7938', '10.8042', 69, 1, NULL, 1215, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(167, 'Tăng Long River View', 'tang-long-river-view', 0, 0, 9, 1, '', '', '', '', '', '', '', 0, '106.8194', '10.81681', 70, 1, NULL, 2376, '2017-05-05 03:16:09', '2017-05-05 03:16:09'),
(168, 'Tăng Phú House', 'tang-phu-house', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7707', '10.82518', 71, 1, NULL, 1225, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(169, 'TDH - Phúc Thịnh Đức', 'tdh-phuc-thinh-duc', 0, 19, 9, 1, '', '', '', '', '', '', '', 0, '106.7634', '10.8261', 72, 1, NULL, 911, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(170, 'Chung cư TDH – Phước Bình', 'chung-cu-tdh-–-phuoc-binh', 0, 18, 9, 1, '', '', '', '', '', '', '', 0, '106.7696', '10.81568', 73, 1, NULL, 1793, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(171, 'Chung cư TDH - Phước Long', 'chung-cu-tdh-phuoc-long', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7692', '10.83874', 74, 1, NULL, 2128, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(172, 'Chung Cư TDH - Hiệp Phú', 'chung-cu-tdh-hiep-phu', 0, 12, 9, 1, '', '', '', '', '', '', '', 0, '106.7717', '10.84376', 75, 1, NULL, 363, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(173, 'TDL Residence', 'tdl-residence', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8254', '10.79946', 76, 1, NULL, 2615, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(174, 'Thái Dương Luxury', 'thai-duong-luxury', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8147', '10.80209', 77, 1, NULL, 2271, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(175, 'KDC Thái Dương Xanh', 'kdc-thái-duong-xanh', 0, 13, 9, 1, '', '', '', '', '', '', '', 0, '106.8367', '10.85822', 78, 1, NULL, 2310, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(176, 'Khu biệt thự Thảo Nguyên Sài Gòn', 'khu-biet-thu-thao-nguyen-sai-gon', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.8171', '10.86649', 79, 1, NULL, 1067, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(177, 'Tháp Mười Merita', 'thap-muoi-merita', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7908', '10.80454', 80, 1, NULL, 2657, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(178, 'The Art', 'the-art', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7752', '10.81399', 81, 1, NULL, 2158, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(179, 'The Boat Club Residences', 'the-boat-club-residences', 0, 24, 9, 1, '', '', '', '', '', '', '', 0, '106.8385', '10.80353', 82, 1, NULL, 1179, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(180, 'The Eastern', 'the-eastern', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7966', '10.80545', 83, 1, NULL, 1077, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(181, 'The Garland', 'the-garland', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7859', '10.81595', 84, 1, NULL, 1958, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(182, 'Khu nhà ở Thiên Lý', 'khu-nha-o-thien-ly', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7831', '10.82112', 85, 1, NULL, 905, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(183, 'Thủ Thiêm Garden', 'thu-thiem-garden', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7839', '10.80698', 86, 1, NULL, 2720, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(184, 'Topia Garden', 'topia-garden', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7991', '10.79874', 87, 1, NULL, 753, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(185, 'KDC Trí Kiệt - Long Trường', 'kdc-tri-kiet-long-truong', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8044', '10.8189', 88, 1, NULL, 1974, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(186, 'Dự án Trí Minh', 'du-an-tri-minh', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.7921', '10.78517', 89, 1, NULL, 1976, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(187, 'Khu Dân Cư Trường Thạnh 1', 'khu-dan-cu-truong-thanh-1', 0, 24, 9, 1, '', '', '', '', '', '', '', 0, '106.8411', '10.80473', 90, 1, NULL, 816, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(188, 'Valencia Riverside quận 9', 'valencia-riverside-quan-9', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.797', '10.79123', 91, 1, NULL, 2365, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(189, 'Valora Fuji', 'valora-fuji', 0, 20, 9, 1, '', '', '', '', '', '', '', 0, '106.7845', '10.81325', 92, 1, NULL, 2686, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(190, 'Việt Nhân Villa Riverside', 'viet-nhan-villa-riverside', 0, 24, 9, 1, '', '', '', '', '', '', '', 0, '106.8298', '10.81714', 93, 1, NULL, 2416, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(191, 'Villa Park', 'villa-park', 0, 17, 9, 1, '', '', '', '', '', '', '', 0, '106.8007', '10.80348', 94, 1, NULL, 615, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(192, 'Vincity quận 9', 'vincity-quan-9', 0, 15, 9, 1, '', '', '', '', '', '', '', 0, '106.8329', '10.84201', 95, 1, NULL, 2711, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(193, 'Vườn Lan', 'vuon-lan', 0, 16, 9, 1, '', '', '', '', '', '', '', 0, '106.8143', '10.80111', 96, 1, NULL, 2786, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(194, '4S Riverside Garden Bình Triệu', '4s-riverside-garden-binh-trieu', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7185', '10.82203', 1, 1, NULL, 132, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(195, '4S Riverside Linh Đông', '4s-riverside-linh-dong', 0, 30, 19, 1, '', '', '', '', '', '', '', 0, '106.7405', '10.84437', 2, 1, NULL, 314, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(196, 'Aquila Plaza', 'aquila-plaza', 0, 26, 19, 1, '', '', '', '', '', '', '', 0, '106.7634', '10.84471', 3, 1, NULL, 910, '2017-05-05 03:16:10', '2017-05-05 03:16:10'),
(197, 'Bình Chiểu Riverside City', 'binh-chieu-riverside-city', 0, 25, 19, 1, '', '', '', '', '', '', '', 0, '106.7339', '10.88041', 4, 1, NULL, 2281, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(198, 'Cheery 4 Complex', 'cheery-4-complex', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7392', '10.8615', 5, 1, NULL, 1187, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(199, 'Chương Dương Golden Land', 'chuong-duong-golden-land', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7522', '10.82892', 6, 1, NULL, 2043, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(200, 'Chương Dương Home', 'chuong-duong-home', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7565', '10.83695', 7, 1, NULL, 2538, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(201, 'Đạt Gia Centre Point Thủ Đức', 'dat-gia-centre-point-thu-duc', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7378', '10.8575', 8, 1, NULL, 2619, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(202, 'Đạt Gia Residence Thủ Đức', 'dat-gia-residence-thu-duc', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7392', '10.8598', 9, 1, NULL, 1239, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(203, 'Depot Metro Tower', 'depot-metro-tower', 0, 32, 19, 1, '', '', '', '', '', '', '', 0, '106.7743', '10.85555', 10, 1, NULL, 1145, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(204, 'Đồng Khởi Land', 'dong-khoi-land', 0, 34, 19, 1, '', '', '', '', '', '', '', 0, '106.73', '10.86457', 11, 1, NULL, 2798, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(205, 'Dự án Sông Đà', 'du-an-song-da', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.716', '10.82731', 12, 1, NULL, 2793, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(206, 'Fortune Apartment', 'fortune-apartment', 0, 31, 19, 1, '', '', '', '', '', '', '', 0, '106.7596', '10.86566', 13, 1, NULL, 2058, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(207, 'Chung cư Gia Phú Hưng', 'chung-cu-gia-phu-hung', 0, 32, 19, 1, '', '', '', '', '', '', '', 0, '106.7812', '10.86404', 14, 1, NULL, 884, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(208, 'Green Home', 'green-home', 0, 30, 19, 1, '', '', '', '', '', '', '', 0, '106.7471', '10.85532', 15, 1, NULL, 2526, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(209, 'PetroVietnam Green House', 'petrovietnam-green-house', 0, 31, 19, 1, '', '', '', '', '', '', '', 0, '106.7586', '10.86185', 16, 1, NULL, 552, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(210, 'Greenview Garden', 'greenview-garden', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7194', '10.84446', 17, 1, NULL, 1503, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(211, 'HTReal Hoàn Cầu', 'htreal-hoan-cau', 0, 25, 19, 1, '', '', '', '', '', '', '', 0, '106.7264', '10.88304', 18, 1, NULL, 2784, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(212, 'Jamona Home Resort', 'jamona-home-resort', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7176', '10.87059', 19, 1, NULL, 848, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(213, 'Khu dân cư Bình Chiểu 2', 'khu-dan-cu-bình-chiẻu-2', 0, 25, 19, 1, '', '', '', '', '', '', '', 0, '106.7261', '10.87673', 20, 1, NULL, 2279, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(214, 'Khu dân cư Hồng Long', 'khu-dan-cu-hong-long', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.723', '10.8488', 21, 1, NULL, 2015, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(215, 'KDC Nhà Việt', 'kdc-nha-viet', 0, 25, 19, 1, '', '', '', '', '', '', '', 0, '106.7261', '10.87683', 22, 1, NULL, 2794, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(216, 'Khu đô thị mới Bình Chiểu', 'khu-do-thi-moi-binh-chieu', 0, 25, 19, 1, '', '', '', '', '', '', '', 0, '106.7234', '10.87402', 23, 1, NULL, 1742, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(217, 'Lan Phương MHBR Tower', 'lan-phuong-mhbr-tower', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7545', '10.84705', 24, 1, NULL, 318, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(218, 'Lavita Garden', 'lavita-garden', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7607', '10.83378', 25, 1, NULL, 2285, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(219, 'Căn hộ Linh Tây', 'can-ho-linh-tay', 0, 31, 19, 1, '', '', '', '', '', '', '', 0, '106.7585', '10.8621', 26, 1, NULL, 1383, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(220, 'Căn hộ Linh Trung', 'can-ho-linh-trung', 0, 32, 19, 1, '', '', '', '', '', '', '', 0, '106.7805', '10.86091', 27, 1, NULL, 1512, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(221, 'Lotus Apartment', 'lotus-apartment', 0, 0, 19, 1, '', '', '', '', '', '', '', 0, '106.7444', '10.87083', 28, 1, NULL, 1607, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(222, 'Moonlight Residences', 'moonlight-residences', 0, 26, 19, 1, '', '', '', '', '', '', '', 0, '106.763', '10.84284', 29, 1, NULL, 2571, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(223, 'Chung cư Mỹ An - 3G', 'chung-cu-my-an-3g', 0, 0, 19, 1, '', '', '', '', '', '', '', 0, '106.7213', '10.8257', 30, 1, NULL, 1254, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(224, 'Chung cư Mỹ Kim', 'chung-cu-my-kim', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7198', '10.82552', 31, 1, NULL, 1599, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(225, 'Căn hộ Cao cấp Mỹ Long', 'can-ho-cao-cap-my-long', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7192', '10.82551', 32, 1, NULL, 693, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(226, 'Newtown Apartment', 'newtown-apartment', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7196', '10.82401', 33, 1, NULL, 342, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(227, 'Opal Garden', 'opal-garden', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7227', '10.82754', 34, 1, NULL, 2582, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(228, 'Opal Riverside', 'opal-riverside', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7261', '10.82455', 35, 1, NULL, 2129, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(229, 'Opal Skyview', 'opal-skyview', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7275', '10.83301', 36, 1, NULL, 2689, '2017-05-05 03:16:11', '2017-05-05 03:16:11'),
(230, 'Opal Tower', 'opal-tower', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7274', '10.83315', 37, 1, NULL, 2414, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(231, 'Phú Đông 2', 'phu-dong-2', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7445', '10.86187', 38, 1, NULL, 2505, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(232, 'Sài Gòn Metro Park', 'sai-gon-metro-park', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7531', '10.83831', 39, 1, NULL, 1942, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(233, 'KDC Savico Hiệp Bình Phước - Tam Bình', 'kdc-savico-hiep-binh-phuoc-tam-binh', 0, 34, 19, 1, '', '', '', '', '', '', '', 0, '106.728', '10.86417', 40, 1, NULL, 1169, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(234, 'Sông Đà Riverside', 'song-da-riverside', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7201', '10.85432', 41, 1, NULL, 783, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(235, 'Spring House', 'spring-house', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7157', '10.82526', 42, 1, NULL, 2330, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(236, 'Sunview 1 & 2', 'sunview-1-2', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7394', '10.86151', 43, 1, NULL, 135, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(237, 'Sunview Town', 'sunview-town', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7274', '10.86571', 44, 1, NULL, 1257, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(238, 'T.N.T Building', 'tnt-building', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7408', '10.85752', 45, 1, NULL, 479, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(239, 'Chung cư Cao cấp Tam Bình', 'chung-cu-cao-cap-tam-binh', 0, 34, 19, 1, '', '', '', '', '', '', '', 0, '106.7338', '10.86765', 46, 1, NULL, 699, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(240, 'Cao ốc TDH - Bình Chiểu', 'cao-oc-tdh-binh-chieu', 0, 29, 19, 1, '', '', '', '', '', '', '', 0, '106.7249', '10.87674', 47, 1, NULL, 326, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(241, 'Chung Cư TDH - Trường Thọ', 'chung-cu-tdh-truong-tho', 0, 36, 19, 1, '', '', '', '', '', '', '', 0, '106.7627', '10.83981', 48, 1, NULL, 492, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(242, 'TĐV Linh Đông', 'tdv-linh-dong', 0, 30, 19, 1, '', '', '', '', '', '', '', 0, '106.7409', '10.84425', 49, 1, NULL, 2504, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(243, 'TĐV Tam Phú', 'tdv-tam-phu', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7396', '10.86122', 50, 1, NULL, 2483, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(244, 'Tecco tower - Chung Cư Linh Đông', 'tecco-tower-chung-cu-linh-dong', 0, 32, 19, 1, '', '', '', '', '', '', '', 0, '106.7472', '10.84903', 51, 1, NULL, 358, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(245, 'Thăng Long Home Hưng Phú', 'thang-long-home-hung-phu', 0, 35, 19, 1, '', '', '', '', '', '', '', 0, '106.7444', '10.86191', 52, 1, NULL, 2822, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(246, 'The Navita', 'the-navita', 0, 34, 19, 1, '', '', '', '', '', '', '', 0, '106.7335', '10.86422', 53, 1, NULL, 1728, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(247, 'The Sun City Lan Phương', 'the-sun-city-lan-phuong', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7252', '10.86539', 54, 1, NULL, 1587, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(248, 'The Sun City Riverview', 'the-sun-city-riverview', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7142', '10.84968', 55, 1, NULL, 2010, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(249, 'Thủ Đức Garden Homes', 'thu-duc-garden-homes', 0, 27, 19, 1, '', '', '', '', '', '', '', 0, '106.7128', '10.83839', 56, 1, NULL, 1010, '2017-05-05 03:16:12', '2017-05-05 03:16:12'),
(250, 'Vạn Phúc Riverside City', 'van-phuc-riverside-city', 0, 28, 19, 1, '', '', '', '', '', '', '', 0, '106.7122', '10.83815', 57, 1, NULL, 2034, '2017-05-05 03:16:12', '2017-05-05 03:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `project_tab`
--

CREATE TABLE `project_tab` (
  `project_id` int(11) NOT NULL,
  `tab_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `project_type_id` int(11) NOT NULL,
  `project_type_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `project_type_alias` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_type`
--

INSERT INTO `project_type` (`project_type_id`, `project_type_name`, `project_type_alias`, `display_order`, `status`, `creation_time`, `update_time`) VALUES
(1, 'Căn hộ/ Chung cư', 'can-ho-chung-cu', 1, 1, 1417106783, 1417106783),
(2, 'Khu biệt thự', 'khu-biet-thu', 2, 1, 1417106783, 1417106783),
(3, 'Cao ốc văn phòng', 'cao-oc-van-phong', 3, 1, 1417106783, 1417106783),
(4, 'Khu thương mại', 'khu-thuong-mai', 4, 1, 1417106783, 1417106783),
(5, 'Khu dân cư', 'khu-dan-cu', 5, 1, 1417106783, 1417106783),
(6, 'Nhà ở xã hội', 'nha-o-xa-hoi', 6, 1, 1417106783, 1417106783),
(7, 'Khu đô thị mới', 'khu-do-thi-moi', 7, 1, 1417106783, 1417106783);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `seo_text` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `page_name`, `meta_title`, `meta_description`, `meta_keyword`, `seo_title`, `seo_text`) VALUES
(1, 'Trang chủ', 'Bất động sản STH', 'Bất động sản STH', 'Bất động sản STH', 'Đồng hồ nam nữ chính hãng', '<div>\r\n	Tự h&agrave;o l&agrave; nh&agrave; cung cấp đồng hồ h&agrave;ng đầu.</div>\r\n'),
(4, 'Tin tức', 'Tin tức', 'Tin tức', 'Tin tức', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'base_url', 'http://nghien.biz', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(2, 'site_title', 'Mua bán nhà đất Hồ Chí Minh', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(3, 'site_description', 'Chuyên cung cấp thông tin về nhà đất như: nhà riêng, nhà phố, đất nền, chung cư, biệt thự.  Tất cả đầy đủ pháp lý, minh bạch, rõ ràng.', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(4, 'site_keywords', 'mua ban nha dat, nha dat ho chi minh', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(5, 'admin_email', 'nghien.biz@gmail.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(22, 'mail_server', 'mail.example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(23, 'mail_login_name', 'login@example.com', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(24, 'mail_password', 'password', '2016-07-27 14:37:52', '2016-07-27 14:37:52'),
(105, 'site_name', 'Trang chủ - Dothi9.com', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(113, 'google_analystic', 'UA-63665479-6', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(114, 'facebook_appid', '282210028789883', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(115, 'google_fanpage', '', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(116, 'facebook_fanpage', 'https://www.facebook.com/dothi9.com', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(117, 'twitter_fanpage', '', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(130, 'logo', '2017/05/27/logo-1495862024.jpg', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(131, 'favicon', '2016/11/29/favicon-1480367931.png', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(141, 'banner', '2016/12/06/icho-vn-mua-online-gia-si-1480992823.jpg', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(142, 'custom_text', '', '2016-07-27 14:37:52', '2017-05-27 12:13:45'),
(143, 'email_cc', 'tundq.ipl@gmail.com; tundq@icare.center; hiepvv.ipl@gmail.com; lamhuong77@gmail.com; muahang@icho.vn; hoangnhonline@gmail.com', '2016-11-11 00:00:00', '2017-05-27 12:13:45'),
(144, 'thong_bao_chung', '<p><em>- Mọi người cố gắng đạt chỉ ti&ecirc;u nh&eacute;.</em></p>\r\n', '2017-05-11 00:00:00', '2017-05-28 09:43:31'),
(145, 'cty_info', '<strong>C&Ocirc;NG TY BẤT ĐỘNG SẢN PH&Uacute; LONG CO.,LTD</strong><br />\r\n<strong>Địa chỉ</strong>: 185A T&acirc;y H&ograve;a, Phường Phước Long A, Quận 9, Tp. Hồ Ch&iacute; Minh<br />\r\n<strong>Hotline: <span style="color:#ff0033"><span style="font-size:16px">0902.950.950</span></span></strong><br />\r\n<strong>Viber/Zalo</strong>:&nbsp;0902.950.950<br />\r\n<strong>Email:&nbsp;nguyenlong0098@gmail.com</strong>', '0000-00-00 00:00:00', '2017-05-27 12:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `street`
--

CREATE TABLE `street` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(255) NOT NULL,
  `prefix` varchar(20) NOT NULL,
  `display_order` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `id_dothi` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `street`
--

INSERT INTO `street` (`id`, `name`, `slug`, `prefix`, `display_order`, `district_id`, `city_id`, `id_dothi`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Đường', 1, 2, 1, 3789, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(2, '10', '10', 'Đường', 2, 2, 1, 3780, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(3, '104', '104', 'Đường', 3, 2, 1, 9087, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(4, '104A', '104a', 'Đường', 4, 2, 1, 11957, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(5, '10A', '10a', 'Đường', 5, 2, 1, 5864, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(6, '10F', '10f', 'Đường', 6, 2, 1, 8152, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(7, '10G', '10g', 'Đường', 7, 2, 1, 11084, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(8, '11', '11', 'Đường', 8, 2, 1, 1998, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(9, '12', '12', 'Đường', 9, 2, 1, 1999, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(10, '13', '13', 'Đường', 10, 2, 1, 4781, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(11, '14', '14', 'Đường', 11, 2, 1, 2001, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(12, '15', '15', 'Đường', 12, 2, 1, 2002, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(13, '16', '16', 'Đường', 13, 2, 1, 4187, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(14, '17', '17', 'Đường', 14, 2, 1, 2850, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(15, '17B', '17b', 'Đường', 15, 2, 1, 7978, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(16, '18', '18', 'Đường', 16, 2, 1, 2095, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(17, '18A', '18a', 'Đường', 17, 2, 1, 2852, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(18, '18B', '18b', 'Đường', 18, 2, 1, 7111, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(19, '19', '19', 'Đường', 19, 2, 1, 5707, 1, '2017-05-05 03:04:19', '2017-05-05 03:04:19'),
(20, '2', '2', 'Đường', 20, 2, 1, 3788, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(21, '2.5A', '25a', 'Đường', 21, 2, 1, 10866, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(22, '20', '20', 'Đường', 22, 2, 1, 4991, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(23, '21', '21', 'Đường', 23, 2, 1, 3631, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(24, '215', '215', 'Đường', 24, 2, 1, 8579, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(25, '21A', '21a', 'Đường', 25, 2, 1, 7069, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(26, '22', '22', 'Đường', 26, 2, 1, 2773, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(27, '23', '23', 'Đường', 27, 2, 1, 709, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(28, '24', '24', 'Phố', 28, 2, 1, 2869, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(29, '24A', '24a', 'Đường', 29, 2, 1, 6829, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(30, '24B', '24b', 'Đường', 30, 2, 1, 8348, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(31, '25', '25', 'Đường', 31, 2, 1, 2870, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(32, '25B', '25b', 'Đường', 32, 2, 1, 10745, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(33, '26', '26', 'Đường', 33, 2, 1, 2354, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(34, '27', '27', 'Đường', 34, 2, 1, 4766, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(35, '27A', '27a', 'Đường', 35, 2, 1, 12037, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(36, '28', '28', 'Đường', 36, 2, 1, 2165, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(37, '29', '29', 'Đường', 37, 2, 1, 2166, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(38, '3', '3', 'Đường', 38, 2, 1, 689, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(39, '30', '30', 'Đường', 39, 2, 1, 4196, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(40, '30B', '30b', 'Đường', 40, 2, 1, 9827, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(41, '31', '31', 'Đường', 41, 2, 1, 4416, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(42, '31A', '31a', 'Đường', 42, 2, 1, 9322, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(43, '31B', '31b', 'Đường', 43, 2, 1, 8065, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(44, '31C', '31c', 'Đường', 44, 2, 1, 7903, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(45, '31D', '31d', 'Đường', 45, 2, 1, 8668, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(46, '31E', '31e', 'Đường', 46, 2, 1, 7698, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(47, '31F', '31f', 'Đường', 47, 2, 1, 7902, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(48, '32', '32', 'Đường', 48, 2, 1, 7772, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(49, '33', '33', 'Đường', 49, 2, 1, 4265, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(50, '34', '34', 'Đường', 50, 2, 1, 2876, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(51, '34A', '34a', 'Đường', 51, 2, 1, 8120, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(52, '34B', '34b', 'Đường', 52, 2, 1, 9064, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(53, '35', '35', 'Đường', 53, 2, 1, 6346, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(54, '36', '36', 'Phố', 54, 2, 1, 2878, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(55, '37', '37', 'Phố', 55, 2, 1, 2879, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(56, '37A', '37a', 'Đường', 56, 2, 1, 8578, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(57, '38', '38', 'Đường', 57, 2, 1, 2167, 1, '2017-05-05 03:04:20', '2017-05-05 03:04:20'),
(58, '39', '39', 'Đường', 58, 2, 1, 2520, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(59, '3A', '3a', 'Đường', 59, 2, 1, 4413, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(60, '4', '4', 'Đường', 60, 2, 1, 1990, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(61, '40', '40', 'Đường', 61, 2, 1, 4672, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(62, '41', '41', 'Đường', 62, 2, 1, 4211, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(63, '41A', '41a', 'Đường', 63, 2, 1, 12854, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(64, '41B', '41b', 'Đường', 64, 2, 1, 10593, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(65, '42', '42', 'Đường', 65, 2, 1, 2885, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(66, '43', '43', 'Đường', 66, 2, 1, 4213, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(67, '44', '44', 'Đường', 67, 2, 1, 3061, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(68, '45', '45', 'Phố', 68, 2, 1, 2889, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(69, '46', '46', 'Đường', 69, 2, 1, 2262, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(70, '47', '47', 'Đường', 70, 2, 1, 2263, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(71, '48', '48', 'Đường', 71, 2, 1, 2894, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(72, '49', '49', 'Phố', 72, 2, 1, 2895, 1, '2017-05-05 03:04:21', '2017-05-05 03:04:21'),
(73, '4A', '4a', 'Đường', 73, 2, 1, 5263, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(74, '5', '5', 'Đường', 74, 2, 1, 3786, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(75, '50', '50', 'Đường', 75, 2, 1, 6591, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(76, '51', '51', 'Đường', 76, 2, 1, 6272, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(77, '52', '52', 'Phố', 77, 2, 1, 2898, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(78, '53', '53', 'Đường', 78, 2, 1, 4472, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(79, '54', '54', 'Đường', 79, 2, 1, 2900, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(80, '55', '55', 'Đường', 80, 2, 1, 2572, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(81, '56', '56', 'Phố', 81, 2, 1, 2904, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(82, '58', '58', 'Đường', 82, 2, 1, 2906, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(83, '59', '59', 'Phố', 83, 2, 1, 2908, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(84, '5B', '5b', 'Đường', 84, 2, 1, 7222, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(85, '6', '6', 'Đường', 85, 2, 1, 2840, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(86, '60', '60', 'Đường', 86, 2, 1, 4407, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(87, '61', '61', 'Đường', 87, 2, 1, 2252, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(88, '62', '62', 'Đường', 88, 2, 1, 8036, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(89, '63', '63', 'Đường', 89, 2, 1, 8689, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(90, '64', '64', 'Phố', 90, 2, 1, 2914, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(91, '65', '65', 'Phố', 91, 2, 1, 2915, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(92, '66', '66', 'Đường', 92, 2, 1, 2916, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(93, '68', '68', 'Đường', 93, 2, 1, 2918, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(94, '69', '69', 'Đường', 94, 2, 1, 4291, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(95, '7', '7', 'Đường', 95, 2, 1, 1994, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(96, '76', '76', 'Đường', 96, 2, 1, 8797, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(97, '78', '78', 'Đường', 97, 2, 1, 7118, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(98, '7A', '7a', 'Đường', 98, 2, 1, 8220, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(99, '7B', '7b', 'Đường', 99, 2, 1, 2378, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(100, '7C', '7c', 'Đường', 100, 2, 1, 10201, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(101, '8', '8', 'Đường', 101, 2, 1, 2841, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(102, '80', '80', 'Đường', 102, 2, 1, 8820, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(103, '83', '83', 'Đường', 103, 2, 1, 4299, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(104, '86', '86', 'Đường', 104, 2, 1, 11071, 1, '2017-05-05 03:04:22', '2017-05-05 03:04:22'),
(105, '8A', '8a', 'Đường', 105, 2, 1, 8321, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(106, '8B', '8b', 'Đường', 106, 2, 1, 5243, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(107, '8G', '8g', 'Đường', 107, 2, 1, 9467, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(108, '8K', '8k', 'Đường', 108, 2, 1, 10160, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(109, '9', '9', 'Đường', 109, 2, 1, 2842, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(110, '94', '94', 'Đường', 110, 2, 1, 7074, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(111, '95', '95', 'Đường', 111, 2, 1, 10620, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(112, 'A2', 'a2', 'Đường', 112, 2, 1, 2769, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(113, 'A4', 'a4', 'Đường', 113, 2, 1, 2771, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(114, 'A5', 'a5', 'Đường', 114, 2, 1, 2772, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(115, 'An Dương Vương', 'an-duong-vuong', 'Đường', 115, 2, 1, 6000, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(116, 'An Phú', 'an-phu', 'Đường', 116, 2, 1, 4160, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(117, 'An Phú Đông 27', 'an-phu-dong-27', 'Đường', 117, 2, 1, 6599, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(118, 'An Trang', 'an-trang', 'Đường', 118, 2, 1, 6268, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(119, 'B', 'b', 'Đường', 119, 2, 1, 4135, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(120, 'Bát Nàn', 'bat-nan', 'Đường', 120, 2, 1, 4192, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(121, 'Bình An', 'binh-an', 'Đường', 121, 2, 1, 8701, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(122, 'Bình Trưng', 'binh-trung', 'Đường', 122, 2, 1, 4178, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(123, 'Bùi Tá Hán', 'bui-ta-han', 'Đường', 123, 2, 1, 1483, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(124, 'C10', 'c10', 'Đường', 124, 2, 1, 12790, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(125, 'C3', 'c3', 'Đường', 125, 2, 1, 3073, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(126, 'Cao Đức Lân', 'cao-duc-lan', 'Đường', 126, 2, 1, 4170, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(127, 'Chuông Vàng', 'chuong-vang', 'Đường', 127, 2, 1, 12786, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(128, 'D', 'd', 'Đường', 128, 2, 1, 10501, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(129, 'D10', 'd10', 'Đường', 129, 2, 1, 3220, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(130, 'D11', 'd11', 'Đường', 130, 2, 1, 3222, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(131, 'D15', 'd15', 'Đường', 131, 2, 1, 6582, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(132, 'D16', 'd16', 'Đường', 132, 2, 1, 3223, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(133, 'D18', 'd18', 'Đường', 133, 2, 1, 7454, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(134, 'D19', 'd19', 'Đường', 134, 2, 1, 8759, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(135, 'D2', 'd2', 'Đường', 135, 2, 1, 4601, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(136, 'D20', 'd20', 'Đường', 136, 2, 1, 9037, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(137, 'D3', 'd3', 'Đường', 137, 2, 1, 4602, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(138, 'D4', 'd4', 'Đường', 138, 2, 1, 2599, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(139, 'D6', 'd6', 'Đường', 139, 2, 1, 8159, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(140, 'D64', 'd64', 'Đường', 140, 2, 1, 12553, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(141, 'D7', 'd7', 'Đường', 141, 2, 1, 6799, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(142, 'D8', 'd8', 'Đường', 142, 2, 1, 1775, 1, '2017-05-05 03:04:23', '2017-05-05 03:04:23'),
(143, 'Đại Lộ Đông Tây', 'dai-lo-dong-tay', 'Đường', 143, 2, 1, 5638, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(144, 'Đàm Văn Lễ', 'dam-van-le', 'Đường', 144, 2, 1, 2065, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(145, 'Đặng Hữu Phổ', 'dang-huu-pho', 'Đường', 145, 2, 1, 4140, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(146, 'Đặng Như Mai', 'dang-nhu-mai', 'Đường', 146, 2, 1, 2074, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(147, 'Đặng Tiến Đông', 'dang-tien-dong', 'Đường', 147, 2, 1, 408, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(148, 'Đỗ Pháp Thuận', 'do-phap-thuan', 'Đường', 148, 2, 1, 4249, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(149, 'Đỗ Quang', 'do-quang', 'Phố', 149, 2, 1, 5615, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(150, 'Đỗ Xuân Hợp', 'do-xuan-hop', 'Đường', 150, 2, 1, 1416, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(151, 'Đoàn Hữu Trưng', 'doan-huu-trung', 'Đường', 151, 2, 1, 3383, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(152, 'Đông Hưng Thuận 6', 'dong-hung-thuan-6', 'Đường', 152, 2, 1, 6598, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(153, 'Đồng Quốc Bình', 'dong-quoc-binh', 'Đường', 153, 2, 1, 6267, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(154, 'Đồng Văn Cống', 'dong-van-cong', 'Đường', 154, 2, 1, 4190, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(155, 'Dư Hàng Kênh', 'du-hang-kenh', 'Đường', 155, 2, 1, 6266, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(156, 'Đường A', 'duong-a', 'Đường', 156, 2, 1, 4134, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(157, 'Đường C', 'duong-c', 'Đường', 157, 2, 1, 4128, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(158, 'Dương Văn An', 'duong-van-an', 'Đường', 158, 2, 1, 2031, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(159, 'Dương Văn Dương', 'duong-van-duong', 'Đường', 159, 2, 1, 3230, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(160, 'E', 'e', 'Đường', 160, 2, 1, 4889, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(161, 'G1', 'g1', 'Đường', 161, 2, 1, 7901, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(162, 'G2', 'g2', 'Đường', 162, 2, 1, 12347, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(163, 'Giáng Hương', 'giang-huong', 'Đường', 163, 2, 1, 12413, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(164, 'Giang Văn Minh', 'giang-van-minh', 'Đường', 164, 2, 1, 776, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(165, 'Gò Nổi', 'go-noi', 'Đường', 165, 2, 1, 11338, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(166, 'H', 'h', 'Đường', 166, 2, 1, 4130, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(167, 'Hà Quang', 'ha-quang', 'Đường', 167, 2, 1, 8390, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(168, 'Hàn Giang', 'han-giang', 'Đường', 168, 2, 1, 6592, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(169, 'Hậu Lân', 'hau-lan', 'Đường', 169, 2, 1, 6604, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(170, 'Hiệp Thành 13', 'hiep-thanh-13', 'Đường', 170, 2, 1, 6606, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(171, 'Hồ Trung Tâm', 'ho-trung-tam', 'Đường', 171, 2, 1, 11663, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(172, 'Hương lộ 62', 'huong-lo-62', 'Đường', 172, 2, 1, 2524, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(173, 'JD12', 'jd12', 'Đường', 173, 2, 1, 12275, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(174, 'K', 'k', 'Đường', 174, 2, 1, 6743, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(175, 'K1', 'k1', 'Đường', 175, 2, 1, 647, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(176, 'K3', 'k3', 'Đường', 176, 2, 1, 632, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(177, 'KP3', 'kp3', 'Đường', 177, 2, 1, 9011, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(178, 'L25', 'l25', 'Đường', 178, 2, 1, 12867, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(179, 'Lâm Quang Ky', 'lam-quang-ky', 'Đường', 179, 2, 1, 1612, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(180, 'Lê Đình Quản', 'le-dinh-quan', 'Đường', 180, 2, 1, 5706, 1, '2017-05-05 03:04:24', '2017-05-05 03:04:24'),
(181, 'Lê Đức Thọ', 'le-duc-tho', 'Đường', 181, 2, 1, 650, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(182, 'Lê Hiến Mai', 'le-hien-mai', 'Đường', 182, 2, 1, 4209, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(183, 'Lê Hồng Phong', 'le-hong-phong', 'Đường', 183, 2, 1, 361, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(184, 'Lê Hữu Kiều', 'le-huu-kieu', 'Đường', 184, 2, 1, 2229, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(185, 'Lê Phụng Hiểu', 'le-phung-hieu', 'Phố', 185, 2, 1, 155, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(186, 'Lê Thước', 'le-thuoc', 'Đường', 186, 2, 1, 4146, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(187, 'Lê Văn Hiến', 'le-van-hien', 'Đường', 187, 2, 1, 1480, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(188, 'Lê Văn Miến', 'le-van-mien', 'Đường', 188, 2, 1, 4039, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(189, 'Lê Văn Thịnh', 'le-van-thinh', 'Đường', 189, 2, 1, 4181, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(190, 'Lộc Hòa', 'loc-hoa', 'Đường', 190, 2, 1, 6602, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(191, 'Lương Định Của', 'luong-dinh-cua', 'Phố', 191, 2, 1, 396, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(192, 'Lý Ông Trọng', 'ly-ong-trong', 'Đường', 192, 2, 1, 6609, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(193, 'Mai Chí Thọ', 'mai-chi-tho', 'Đường', 193, 2, 1, 4163, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(194, 'Mương Khai', 'muong-khai', 'Đường', 194, 2, 1, 6596, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(195, 'N1', 'n1', 'Đường', 195, 2, 1, 3599, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(196, 'N11', 'n11', 'Đường', 196, 2, 1, 7328, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(197, 'N13', 'n13', 'Đường', 197, 2, 1, 9958, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(198, 'N17', 'n17', 'Đường', 198, 2, 1, 8151, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(199, 'N2', 'n2', 'Đường', 199, 2, 1, 1984, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(200, 'NE', 'ne', 'Đường', 200, 2, 1, 12323, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(201, 'Ngô Quang Huy', 'ngo-quang-huy', 'Đường', 201, 2, 1, 4137, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(202, 'Nguyễn Án', 'nguyen-an', 'Đường', 202, 2, 1, 1192, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(203, 'Nguyễn Bá Huân', 'nguyen-ba-huan', 'Đường', 203, 2, 1, 3621, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(204, 'Nguyễn Bá Lân', 'nguyen-ba-lan', 'Đường', 204, 2, 1, 2296, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(205, 'Nguyễn Cơ Thạch', 'nguyen-co-thach', 'Đường', 205, 2, 1, 636, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(206, 'Nguyễn Cừ', 'nguyen-cu', 'Phố', 206, 2, 1, 3722, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(207, 'Nguyễn Đăng Đạo', 'nguyen-dang-dao', 'Đường', 207, 2, 1, 2398, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(208, 'Nguyễn Đăng Giai', 'nguyen-dang-giai', 'Đường', 208, 2, 1, 2257, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(209, 'Nguyễn Địa Lô', 'nguyen-dia-lo', 'Đường', 209, 2, 1, 4230, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(210, 'Nguyễn Đôn Tiết', 'nguyen-don-tiet', 'Đường', 210, 2, 1, 6354, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(211, 'Nguyễn Duy Hiệu', 'nguyen-duy-hieu', 'Đường', 211, 2, 1, 3450, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(212, 'Nguyễn Duy Trinh', 'nguyen-duy-trinh', 'Đường', 212, 2, 1, 449, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(213, 'Nguyễn Hoàng', 'nguyen-hoang', 'Đường', 213, 2, 1, 3476, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(214, 'Nguyễn Hưng', 'nguyen-hung', 'Đường', 214, 2, 1, 12756, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(215, 'Nguyễn Hương', 'nguyen-huong', 'Đường', 215, 2, 1, 7736, 1, '2017-05-05 03:04:25', '2017-05-05 03:04:25'),
(216, 'Nguyễn Huy Chương', 'nguyen-huy-chuong', 'Đường', 216, 2, 1, 6603, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(217, 'Nguyễn Khanh', 'nguyen-khanh', 'Đường', 217, 2, 1, 6608, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(218, 'Nguyễn Khoa Đăng', 'nguyen-khoa-dang', 'Đường', 218, 2, 1, 3052, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(219, 'Nguyễn Lương Dĩ', 'nguyen-luong-di', 'Đường', 219, 2, 1, 6227, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(220, 'Nguyễn Quang Bật', 'nguyen-quang-bat', 'Đường', 220, 2, 1, 4241, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(221, 'Nguyễn Quý Cảnh', 'nguyen-quy-canh', 'Đường', 221, 2, 1, 4166, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(222, 'Nguyễn Quý Đức', 'nguyen-quy-duc', 'Đường', 222, 2, 1, 4048, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(223, 'Nguyễn Thanh Sơn', 'nguyen-thanh-son', 'Đường', 223, 2, 1, 4219, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(224, 'Nguyễn Thị Định', 'nguyen-thi-dinh', 'Đường', 224, 2, 1, 304, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(225, 'Nguyễn Thị Định 2', 'nguyen-thi-dinh-2', 'Đường', 225, 2, 1, 12301, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(226, 'Nguyễn Trọng Quân', 'nguyen-trong-quan', 'Đường', 226, 2, 1, 3140, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(227, 'Nguyễn Trung Nguyệt', 'nguyen-trung-nguyet', 'Đường', 227, 2, 1, 4184, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(228, 'Nguyễn Tư Nghiêm', 'nguyen-tu-nghiem', 'Đường', 228, 2, 1, 4177, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(229, 'Nguyễn Tuyển', 'nguyen-tuyen', 'Đường', 229, 2, 1, 3720, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(230, 'Nguyễn Ư Dĩ', 'nguyen-u-di', 'Phố', 230, 2, 1, 3729, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(231, 'Nguyễn Văn Giáp', 'nguyen-van-giap', 'Đường', 231, 2, 1, 7139, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(232, 'Nguyễn Văn Hưởng', 'nguyen-van-huong', 'Đường', 232, 2, 1, 3057, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(233, 'Nguyễn Văn Kỉnh', 'nguyen-van-kinh', 'Đường', 233, 2, 1, 4215, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(234, 'Phạm Công Trứ', 'pham-cong-tru', 'Đường', 234, 2, 1, 4232, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(235, 'Phạm Đôn Lễ', 'pham-don-le', 'Đường', 235, 2, 1, 4233, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(236, 'Phạm Hy Lượng', 'pham-hy-luong', 'Đường', 236, 2, 1, 4234, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(237, 'Phạm Thận Duật', 'pham-than-duat', 'Đường', 237, 2, 1, 579, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(238, 'Phan Bá Vành', 'phan-ba-vanh', 'Đường', 238, 2, 1, 3377, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(239, 'Phan Văn Đáng', 'phan-van-dang', 'Đường', 239, 2, 1, 3584, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(240, 'Phượng Vỹ', 'phuong-vy', 'Đường', 240, 2, 1, 10967, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(241, 'Quách Giai', 'quach-giai', 'Đường', 241, 2, 1, 4247, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(242, 'Quốc Hương', 'quoc-huong', 'Đường', 242, 2, 1, 4136, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(243, 'Quốc lộ 1A', 'quoc-lo-1a', 'Đường', 243, 2, 1, 2092, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(244, 'Số 1', 'so-1', 'Đường', 244, 2, 1, 11206, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(245, 'Số 10', 'so-10', 'Đường', 245, 2, 1, 11211, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(246, 'Số 104', 'so-104', 'Đường', 246, 2, 1, 11283, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(247, 'Số 104A', 'so-104a', 'Đường', 247, 2, 1, 12063, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(248, 'Số 10A', 'so-10a', 'Đường', 248, 2, 1, 11626, 1, '2017-05-05 03:04:26', '2017-05-05 03:04:26'),
(249, 'Số 10G', 'so-10g', 'Đường', 249, 2, 1, 11682, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(250, 'Số 11', 'so-11', 'Đường', 250, 2, 1, 11209, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(251, 'Số 12', 'so-12', 'Đường', 251, 2, 1, 11205, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(252, 'Số 13', 'so-13', 'Đường', 252, 2, 1, 11240, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(253, 'Số 14', 'so-14', 'Đường', 253, 2, 1, 11227, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(254, 'Số 14A', 'so-14a', 'Đường', 254, 2, 1, 11270, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(255, 'Số 15', 'so-15', 'Đường', 255, 2, 1, 11210, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(256, 'Số 16', 'so-16', 'Đường', 256, 2, 1, 11225, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(257, 'Số 17', 'so-17', 'Đường', 257, 2, 1, 11215, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(258, 'Số 18', 'so-18', 'Đường', 258, 2, 1, 11255, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(259, 'Số 19', 'so-19', 'Đường', 259, 2, 1, 11235, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(260, 'Số 19B', 'so-19b', 'Đường', 260, 2, 1, 11991, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(261, 'Số 2', 'so-2', 'Đường', 261, 2, 1, 11223, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(262, 'Số 20', 'so-20', 'Đường', 262, 2, 1, 11221, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(263, 'Số 21', 'so-21', 'Đường', 263, 2, 1, 11277, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(264, 'Số 22', 'so-22', 'Đường', 264, 2, 1, 11228, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(265, 'Số 23', 'so-23', 'Đường', 265, 2, 1, 11245, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(266, 'Số 24', 'so-24', 'Đường', 266, 2, 1, 11317, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(267, 'Số 25', 'so-25', 'Đường', 267, 2, 1, 11279, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(268, 'Số 26', 'so-26', 'Đường', 268, 2, 1, 11262, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(269, 'Số 27', 'so-27', 'Đường', 269, 2, 1, 11216, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(270, 'Số 28', 'so-28', 'Đường', 270, 2, 1, 11237, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(271, 'Số 29', 'so-29', 'Đường', 271, 2, 1, 11304, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(272, 'Số 3', 'so-3', 'Đường', 272, 2, 1, 11219, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(273, 'Số 30', 'so-30', 'Đường', 273, 2, 1, 11289, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(274, 'Số 31', 'so-31', 'Đường', 274, 2, 1, 11272, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(275, 'Số 31A', 'so-31a', 'Đường', 275, 2, 1, 11351, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(276, 'Số 31B', 'so-31b', 'Đường', 276, 2, 1, 11815, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(277, 'Số 31C', 'so-31c', 'Đường', 277, 2, 1, 11400, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(278, 'Số 31D', 'so-31d', 'Đường', 278, 2, 1, 12102, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(279, 'Số 31E', 'so-31e', 'Đường', 279, 2, 1, 12554, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(280, 'Số 32', 'so-32', 'Đường', 280, 2, 1, 11298, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(281, 'Số 33', 'so-33', 'Đường', 281, 2, 1, 11376, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(282, 'Số 34', 'so-34', 'Đường', 282, 2, 1, 11261, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(283, 'Số 34A', 'so-34a', 'Đường', 283, 2, 1, 11580, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(284, 'Số 35', 'so-35', 'Đường', 284, 2, 1, 11296, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(285, 'Số 36', 'so-36', 'Đường', 285, 2, 1, 9396, 1, '2017-05-05 03:04:27', '2017-05-05 03:04:27'),
(286, 'Số 37', 'so-37', 'Đường', 286, 2, 1, 11280, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(287, 'Số 38', 'so-38', 'Đường', 287, 2, 1, 11212, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(288, 'Số 38B', 'so-38b', 'Đường', 288, 2, 1, 11637, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(289, 'Số 39', 'so-39', 'Đường', 289, 2, 1, 11229, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(290, 'Số 4', 'so-4', 'Đường', 290, 2, 1, 11232, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(291, 'Số 40', 'so-40', 'Đường', 291, 2, 1, 11231, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(292, 'Số 41', 'so-41', 'Đường', 292, 2, 1, 11246, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(293, 'Số 42', 'so-42', 'Đường', 293, 2, 1, 11335, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(294, 'Số 43', 'so-43', 'Đường', 294, 2, 1, 11294, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(295, 'Số 44', 'so-44', 'Đường', 295, 2, 1, 11315, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(296, 'Số 45', 'so-45', 'Đường', 296, 2, 1, 11266, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(297, 'Số 46', 'so-46', 'Đường', 297, 2, 1, 11243, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(298, 'Số 47', 'so-47', 'Đường', 298, 2, 1, 11218, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(299, 'Số 48', 'so-48', 'Đường', 299, 2, 1, 11513, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(300, 'Số 49', 'so-49', 'Đường', 300, 2, 1, 11297, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(301, 'Số 5', 'so-5', 'Đường', 301, 2, 1, 11217, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(302, 'Số 50', 'so-50', 'Đường', 302, 2, 1, 11518, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(303, 'Số 51', 'so-51', 'Đường', 303, 2, 1, 11271, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(304, 'Số 52B', 'so-52b', 'Đường', 304, 2, 1, 12633, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(305, 'Số 54', 'so-54', 'Đường', 305, 2, 1, 11691, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(306, 'Số 56', 'so-56', 'Đường', 306, 2, 1, 11389, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(307, 'Số 58', 'so-58', 'Đường', 307, 2, 1, 11567, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(308, 'Số 59', 'so-59', 'Đường', 308, 2, 1, 11273, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(309, 'Số 6', 'so-6', 'Đường', 309, 2, 1, 11192, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(310, 'Số 60', 'so-60', 'Đường', 310, 2, 1, 11603, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(311, 'Số 61', 'so-61', 'Đường', 311, 2, 1, 11619, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(312, 'Số 63', 'so-63', 'Đường', 312, 2, 1, 11956, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(313, 'Số 64', 'so-64', 'Đường', 313, 2, 1, 11256, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(314, 'Số 65', 'so-65', 'Đường', 314, 2, 1, 11394, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(315, 'Số 66', 'so-66', 'Đường', 315, 2, 1, 11334, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(316, 'Số 69', 'so-69', 'Đường', 316, 2, 1, 11820, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(317, 'Số 7', 'so-7', 'Đường', 317, 2, 1, 11222, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(318, 'Số 7A', 'so-7a', 'Đường', 318, 2, 1, 11427, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(319, 'Số 7B', 'so-7b', 'Đường', 319, 2, 1, 11743, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(320, 'Số 7C', 'so-7c', 'Đường', 320, 2, 1, 12093, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(321, 'Số 8', 'so-8', 'Đường', 321, 2, 1, 11207, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(322, 'Số 8A', 'so-8a', 'Đường', 322, 2, 1, 11557, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(323, 'Số 9', 'so-9', 'Đường', 323, 2, 1, 11233, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(324, 'Số 9A', 'so-9a', 'Đường', 324, 2, 1, 11276, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(325, 'Song Hành', 'song-hanh', 'Đường', 325, 2, 1, 1339, 1, '2017-05-05 03:04:28', '2017-05-05 03:04:28'),
(326, 'Sử Hy Nhan', 'su-hy-nhan', 'Đường', 326, 2, 1, 4248, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(327, 'T6', 't6', 'Đường', 327, 2, 1, 3207, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(328, 'Tạ Hiện', 'ta-hien', 'Đường', 328, 2, 1, 227, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(329, 'Tân Chánh Hiệp 16', 'tan-chanh-hiep-16', 'Đường', 329, 2, 1, 6607, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(330, 'Tân Lập 2', 'tan-lap-2', 'Đường', 330, 2, 1, 6895, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(331, 'Tân Thới Hiệp 10', 'tan-thoi-hiep-10', 'Đường', 331, 2, 1, 6597, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(332, 'Thái Thuận', 'thai-thuan', 'Đường', 332, 2, 1, 3955, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(333, 'Thân Văn Nhiếp', 'than-van-nhiep', 'Đường', 333, 2, 1, 4094, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(334, 'Thạnh Lộc 27', 'thanh-loc-27', 'Đường', 334, 2, 1, 6605, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(335, 'Thạnh Mỹ Bắc', 'thanh-my-bac', 'Đường', 335, 2, 1, 7806, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(336, 'Thạnh Mỹ Lợi', 'thanh-my-loi', 'Đường', 336, 2, 1, 4188, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(337, 'Thạnh Mỹ Nam', 'thanh-my-nam', 'Đường', 337, 2, 1, 4235, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(338, 'Thạnh Xuân 13', 'thanh-xuan-13', 'Đường', 338, 2, 1, 6590, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(339, 'Thạnh Xuân 21', 'thanh-xuan-21', 'Đường', 339, 2, 1, 6600, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(340, 'Thảo Điền', 'thao-dien', 'Đường', 340, 2, 1, 4138, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(341, 'Thích Mật Thể', 'thich-mat-the', 'Đường', 341, 2, 1, 6265, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(342, 'Tỉnh Lộ 10', 'tinh-lo-10', 'Đường', 342, 2, 1, 7649, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(343, 'Tỉnh lộ 25B', 'tinh-lo-25b', 'Đường', 343, 2, 1, 4582, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(344, 'Tống Hữu Định', 'tong-huu-dinh', 'Đường', 344, 2, 1, 7174, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(345, 'Trại Gà', 'trai-ga', 'Đường', 345, 2, 1, 6610, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(346, 'Trần Khắc Chân', 'tran-khac-chan', 'Đường', 346, 2, 1, 997, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(347, 'Trần Lưu', 'tran-luu', 'Đường', 347, 2, 1, 4169, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(348, 'Trần Lựu', 'tran-luu', 'Đường', 348, 2, 1, 10520, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(349, 'Trần Não', 'tran-nao', 'Đường', 349, 2, 1, 4173, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(350, 'Trần Ngọc Diện', 'tran-ngoc-dien', 'Đường', 350, 2, 1, 4162, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(351, 'Trần Phú', 'tran-phu', 'Đường', 351, 2, 1, 131, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(352, 'Trần Quang Đạo', 'tran-quang-dao', 'Đường', 352, 2, 1, 6593, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(353, 'Trích Sài', 'trich-sai', 'Đường', 353, 2, 1, 6595, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(354, 'Trịnh Khắc Lập', 'trinh-khac-lap', 'Đường', 354, 2, 1, 2345, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(355, 'Trúc Đường', 'truc-duong', 'Đường', 355, 2, 1, 6466, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(356, 'Trương Gia Mô', 'truong-gia-mo', 'Đường', 356, 2, 1, 4083, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(357, 'Trương Văn Bang', 'truong-van-bang', 'Đường', 357, 2, 1, 2736, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(358, 'Trương Văn Đa', 'truong-van-da', 'Đường', 358, 2, 1, 6594, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(359, 'Vạn Kiếp', 'van-kiep', 'Phố', 359, 2, 1, 505, 1, '2017-05-05 03:04:29', '2017-05-05 03:04:29'),
(360, 'Vành Đai', 'vanh-dai', 'Đường', 360, 2, 1, 1944, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(361, 'Vành Đai 2', 'vanh-dai-2', 'Đường', 361, 2, 1, 8092, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(362, 'Vành Đai Đông', 'vanh-dai-dong', 'Đường', 362, 2, 1, 6331, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(363, 'Vành Đai Trong', 'vanh-dai-trong', 'Đường', 363, 2, 1, 1417, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(364, 'Võ Chí Công', 'vo-chi-cong', 'Đường', 364, 2, 1, 7021, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(365, 'Võ Trường Toản', 'vo-truong-toan', 'Đường', 365, 2, 1, 1234, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(366, 'Võ Văn Kiệt', 'vo-van-kiet', 'Đường', 366, 2, 1, 1001, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(367, 'Vũ Phương Đế', 'vu-phuong-de', 'Đường', 367, 2, 1, 4236, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(368, 'Vũ Tông Phan', 'vu-tong-phan', 'Phố', 368, 2, 1, 3696, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(369, 'Xa Lộ Hà Nội', 'xa-lo-ha-noi', 'Đường', 369, 2, 1, 5820, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(370, 'Xuân Thịnh', 'xuan-thinh', 'Đường', 370, 2, 1, 12416, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(371, 'Xuân Thủy', 'xuan-thuy', 'Đường', 371, 2, 1, 602, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(372, '1', '1', 'Đường', 1, 9, 1, 3789, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(373, '10', '10', 'Đường', 2, 9, 1, 3780, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(374, '100', '100', 'Đường', 3, 9, 1, 9714, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(375, '100A', '100a', 'Đường', 4, 9, 1, 7344, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(376, '102', '102', 'Đường', 5, 9, 1, 5850, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(377, '1021', '1021', 'Đường', 6, 9, 1, 12517, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(378, '103', '103', 'Đường', 7, 9, 1, 12914, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(379, '104', '104', 'Đường', 8, 9, 1, 9087, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(380, '106', '106', 'Đường', 9, 9, 1, 8460, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(381, '108', '108', 'Đường', 10, 9, 1, 12543, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(382, '1088', '1088', 'Đường', 11, 9, 1, 13054, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(383, '109', '109', 'Đường', 12, 9, 1, 6575, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(384, '11', '11', 'Đường', 13, 9, 1, 1998, 1, '2017-05-05 03:04:30', '2017-05-05 03:04:30'),
(385, '110', '110', 'Đường', 14, 9, 1, 6506, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(386, '112', '112', 'Đường', 15, 9, 1, 5419, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(387, '119', '119', 'Đường', 16, 9, 1, 11982, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(388, '11A', '11a', 'Đường', 17, 9, 1, 7426, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(389, '12', '12', 'Đường', 18, 9, 1, 1999, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(390, '120', '120', 'Đường', 19, 9, 1, 7314, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(391, '123', '123', 'Đường', 20, 9, 1, 12099, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(392, '127D', '127d', 'Đường', 21, 9, 1, 12585, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(393, '128', '128', 'Đường', 22, 9, 1, 8896, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(394, '129', '129', 'Đường', 23, 9, 1, 7381, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(395, '12A', '12a', 'Đường', 24, 9, 1, 4167, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(396, '12B', '12b', 'Đường', 25, 9, 1, 2647, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(397, '12C', '12c', 'Đường', 26, 9, 1, 4168, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(398, '12E', '12e', 'Đường', 27, 9, 1, 7766, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(399, '13', '13', 'Đường', 28, 9, 1, 4781, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(400, '1315', '1315', 'Đường', 29, 9, 1, 11871, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(401, '132', '132', 'Đường', 30, 9, 1, 8033, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(402, '138', '138', 'Đường', 31, 9, 1, 7083, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(403, '14', '14', 'Đường', 32, 9, 1, 2001, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(404, '140', '140', 'Đường', 33, 9, 1, 12993, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(405, '141', '141', 'Đường', 34, 9, 1, 10684, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(406, '144', '144', 'Đường', 35, 9, 1, 8597, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(407, '145', '145', 'Đường', 36, 9, 1, 8237, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(408, '146', '146', 'Đường', 37, 9, 1, 11050, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(409, '147', '147', 'Đường', 38, 9, 1, 6405, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(410, '15', '15', 'Đường', 39, 9, 1, 2002, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(411, '150', '150', 'Đường', 40, 9, 1, 13113, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(412, '154', '154', 'Đường', 41, 9, 1, 7236, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(413, '16', '16', 'Đường', 42, 9, 1, 4187, 1, '2017-05-05 03:04:31', '2017-05-05 03:04:31'),
(414, '160', '160', 'Đường', 43, 9, 1, 5717, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(415, '167', '167', 'Đường', 44, 9, 1, 11988, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(416, '168', '168', 'Đường', 45, 9, 1, 7233, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(417, '17', '17', 'Đường', 46, 9, 1, 2850, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(418, '175', '175', 'Đường', 47, 9, 1, 10381, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(419, '176', '176', 'Đường', 48, 9, 1, 4931, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(420, '179', '179', 'Đường', 49, 9, 1, 8675, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(421, '17D', '17d', 'Đường', 50, 9, 1, 12586, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(422, '18', '18', 'Đường', 51, 9, 1, 2095, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(423, '182', '182', 'Đường', 52, 9, 1, 3591, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(424, '185', '185', 'Đường', 53, 9, 1, 4915, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(425, '189', '189', 'Đường', 54, 9, 1, 4928, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(426, '18A', '18a', 'Đường', 55, 9, 1, 2852, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(427, '18B', '18b', 'Đường', 56, 9, 1, 7111, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(428, '19', '19', 'Đường', 57, 9, 1, 5707, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(429, '197', '197', 'Đường', 58, 9, 1, 9712, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(430, '198', '198', 'Đường', 59, 9, 1, 7317, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(431, '1A', '1a', 'Đường', 60, 9, 1, 7755, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(432, '2', '2', 'Đường', 61, 9, 1, 3788, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(433, '20', '20', 'Đường', 62, 9, 1, 4991, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(434, '200', '200', 'Đường', 63, 9, 1, 12427, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(435, '202', '202', 'Đường', 64, 9, 1, 8769, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(436, '205A', '205a', 'Đường', 65, 9, 1, 11981, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(437, '207', '207', 'Đường', 66, 9, 1, 7914, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(438, '208', '208', 'Đường', 67, 9, 1, 7749, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(439, '21', '21', 'Đường', 68, 9, 1, 3631, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(440, '210', '210', 'Đường', 69, 9, 1, 8006, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(441, '210A', '210a', 'Đường', 70, 9, 1, 11737, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(442, '211', '211', 'Đường', 71, 9, 1, 10241, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(443, '212', '212', 'Đường', 72, 9, 1, 7361, 1, '2017-05-05 03:04:32', '2017-05-05 03:04:32'),
(444, '215', '215', 'Đường', 73, 9, 1, 8579, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(445, '22', '22', 'Đường', 74, 9, 1, 2773, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(446, '23', '23', 'Đường', 75, 9, 1, 709, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(447, '231', '231', 'Đường', 76, 9, 1, 12033, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(448, '236', '236', 'Đường', 77, 9, 1, 7112, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(449, '238', '238', 'Đường', 78, 9, 1, 12834, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(450, '239', '239', 'Đường', 79, 9, 1, 8615, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(451, '24', '24', 'Phố', 80, 9, 1, 2869, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(452, '244', '244', 'Đường', 81, 9, 1, 8962, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(453, '245', '245', 'Đường', 82, 9, 1, 9219, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(454, '25', '25', 'Đường', 83, 9, 1, 2870, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(455, '251', '251', 'Đường', 84, 9, 1, 13060, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(456, '26', '26', 'Đường', 85, 9, 1, 2354, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(457, '261', '261', 'Đường', 86, 9, 1, 4252, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(458, '263', '263', 'Đường', 87, 9, 1, 4254, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(459, '265', '265', 'Đường', 88, 9, 1, 8447, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(460, '27', '27', 'Đường', 89, 9, 1, 4766, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(461, '270B', '270b', 'Đường', 90, 9, 1, 11726, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(462, '275', '275', 'Đường', 91, 9, 1, 6231, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(463, '28', '28', 'Đường', 92, 9, 1, 2165, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(464, '29', '29', 'Đường', 93, 9, 1, 2166, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(465, '290', '290', 'Đường', 94, 9, 1, 11792, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(466, '295', '295', 'Đường', 95, 9, 1, 8102, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(467, '297', '297', 'Đường', 96, 9, 1, 6229, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(468, '2A', '2a', 'Đường', 97, 9, 1, 4361, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(469, '2B', '2b', 'Đường', 98, 9, 1, 10382, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(470, '2C', '2c', 'Đường', 99, 9, 1, 9323, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(471, '3', '3', 'Đường', 100, 9, 1, 689, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(472, '30', '30', 'Đường', 101, 9, 1, 4196, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(473, '31', '31', 'Đường', 102, 9, 1, 4416, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(474, '311', '311', 'Đường', 103, 9, 1, 9800, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(475, '316', '316', 'Đường', 104, 9, 1, 8738, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(476, '319', '319', 'Đường', 105, 9, 1, 10534, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(477, '32', '32', 'Đường', 106, 9, 1, 7772, 1, '2017-05-05 03:04:33', '2017-05-05 03:04:33'),
(478, '32D', '32d', 'Đường', 107, 9, 1, 12587, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(479, '33', '33', 'Đường', 108, 9, 1, 4265, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(480, '339', '339', 'Đường', 109, 9, 1, 5809, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(481, '35', '35', 'Đường', 110, 9, 1, 6346, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(482, '359', '359', 'Đường', 111, 9, 1, 7861, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(483, '36', '36', 'Phố', 112, 9, 1, 2878, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(484, '360', '360', 'Đường', 113, 9, 1, 10451, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(485, '379', '379', 'Đường', 114, 9, 1, 6804, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(486, '385', '385', 'Đường', 115, 9, 1, 6158, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(487, '387', '387', 'Đường', 116, 9, 1, 12296, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(488, '39', '39', 'Đường', 117, 9, 1, 2520, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(489, '397', '397', 'Đường', 118, 9, 1, 10919, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(490, '3B', '3b', 'Đường', 119, 9, 1, 8458, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(491, '4', '4', 'Đường', 120, 9, 1, 1990, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(492, '40', '40', 'Đường', 121, 9, 1, 4672, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(493, '400', '400', 'Đường', 122, 9, 1, 10205, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(494, '41', '41', 'Đường', 123, 9, 1, 4211, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(495, '429', '429', 'Đường', 124, 9, 1, 11687, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(496, '43', '43', 'Đường', 125, 9, 1, 4213, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(497, '44', '44', 'Đường', 126, 9, 1, 3061, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(498, '440', '440', 'Đường', 127, 9, 1, 11151, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(499, '441', '441', 'Đường', 128, 9, 1, 6282, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(500, '442', '442', 'Đường', 129, 9, 1, 6115, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(501, '447', '447', 'Đường', 130, 9, 1, 6842, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(502, '449', '449', 'Đường', 131, 9, 1, 8091, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(503, '455', '455', 'Đường', 132, 9, 1, 7255, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(504, '46', '46', 'Đường', 133, 9, 1, 2262, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(505, '47', '47', 'Đường', 134, 9, 1, 2263, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34');
INSERT INTO `street` (`id`, `name`, `slug`, `prefix`, `display_order`, `district_id`, `city_id`, `id_dothi`, `status`, `created_at`, `updated_at`) VALUES
(506, '475', '475', 'Đường', 135, 9, 1, 5819, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(507, '48', '48', 'Đường', 136, 9, 1, 2894, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(508, '49', '49', 'Phố', 137, 9, 1, 2895, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(509, '491', '491', 'Đường', 138, 9, 1, 12452, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(510, '494', '494', 'Đường', 139, 9, 1, 2665, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(511, '5', '5', 'Đường', 140, 9, 1, 3786, 1, '2017-05-05 03:04:34', '2017-05-05 03:04:34'),
(512, '50', '50', 'Đường', 141, 9, 1, 6591, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(513, '51', '51', 'Đường', 142, 9, 1, 6272, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(514, '52', '52', 'Phố', 143, 9, 1, 2898, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(515, '539', '539', 'Đường', 144, 9, 1, 8873, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(516, '546', '546', 'Đường', 145, 9, 1, 7153, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(517, '55', '55', 'Đường', 146, 9, 1, 2572, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(518, '58', '58', 'Đường', 147, 9, 1, 2906, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(519, '588', '588', 'Đường', 148, 9, 1, 7050, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(520, '591', '591', 'Đường', 149, 9, 1, 11821, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(521, '5A', '5a', 'Đường', 150, 9, 1, 4359, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(522, '5B', '5b', 'Đường', 151, 9, 1, 7222, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(523, '6', '6', 'Đường', 152, 9, 1, 2840, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(524, '60', '60', 'Đường', 153, 9, 1, 4407, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(525, '61', '61', 'Đường', 154, 9, 1, 2252, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(526, '622', '622', 'Đường', 155, 9, 1, 12343, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(527, '63', '63', 'Đường', 156, 9, 1, 8689, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(528, '65', '65', 'Phố', 157, 9, 1, 2915, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(529, '659', '659', 'Đường', 158, 9, 1, 11857, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(530, '66', '66', 'Đường', 159, 9, 1, 2916, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(531, '671', '671', 'Đường', 160, 9, 1, 8569, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(532, '672', '672', 'Đường', 161, 9, 1, 8183, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(533, '68', '68', 'Đường', 162, 9, 1, 2918, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(534, '680', '680', 'Đường', 163, 9, 1, 10884, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(535, '6A', '6a', 'Đường', 164, 9, 1, 2451, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(536, '6B', '6b', 'Đường', 165, 9, 1, 6421, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(537, '6C', '6c', 'Đường', 166, 9, 1, 7185, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(538, '6D', '6d', 'Đường', 167, 9, 1, 7651, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(539, '7', '7', 'Đường', 168, 9, 1, 1994, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(540, '73', '73', 'Đường', 169, 9, 1, 8680, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(541, '734', '734', 'Đường', 170, 9, 1, 12774, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(542, '74', '74', 'Phố', 171, 9, 1, 2924, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(543, '77', '77', 'Đường', 172, 9, 1, 4294, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(544, '783', '783', 'Đường', 173, 9, 1, 11213, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(545, '79', '79', 'Đường', 174, 9, 1, 4295, 1, '2017-05-05 03:04:35', '2017-05-05 03:04:35'),
(546, '7A', '7a', 'Đường', 175, 9, 1, 8220, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(547, '8', '8', 'Đường', 176, 9, 1, 2841, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(548, '80', '80', 'Đường', 177, 9, 1, 8820, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(549, '811', '811', 'Đường', 178, 9, 1, 12072, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(550, '816', '816', 'Đường', 179, 9, 1, 7217, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(551, '817', '817', 'Đường', 180, 9, 1, 11886, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(552, '822', '822', 'Đường', 181, 9, 1, 10640, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(553, '826', '826', 'Đường', 182, 9, 1, 11532, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(554, '827', '827', 'Đường', 183, 9, 1, 11464, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(555, '835', '835', 'Đường', 184, 9, 1, 10344, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(556, '836', '836', 'Đường', 185, 9, 1, 7949, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(557, '84', '84', 'Đường', 186, 9, 1, 8713, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(558, '85', '85', 'Đường', 187, 9, 1, 4300, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(559, '86', '86', 'Đường', 188, 9, 1, 11071, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(560, '882', '882', 'Đường', 189, 9, 1, 8349, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(561, '89', '89', 'Đường', 190, 9, 1, 8998, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(562, '898', '898', 'Đường', 191, 9, 1, 8802, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(563, '8A', '8a', 'Đường', 192, 9, 1, 8321, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(564, '9', '9', 'Đường', 193, 9, 1, 2842, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(565, '904', '904', 'Đường', 194, 9, 1, 7055, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(566, '94', '94', 'Đường', 195, 9, 1, 7074, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(567, '96', '96', 'Đường', 196, 9, 1, 7103, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(568, '963', '963', 'Đường', 197, 9, 1, 9123, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(569, '970', '970', 'Đường', 198, 9, 1, 8112, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(570, '976', '976', 'Đường', 199, 9, 1, 12761, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(571, '98', '98', 'Đường', 200, 9, 1, 7989, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(572, '980', '980', 'Đường', 201, 9, 1, 10260, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(573, '99', '99', 'Đường', 202, 9, 1, 7346, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(574, '990', '990', 'Đường', 203, 9, 1, 7033, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(575, '9A', '9a', 'Đường', 204, 9, 1, 5844, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(576, 'A', 'a', 'Đường', 205, 9, 1, 7073, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(577, 'A1', 'a1', 'Đường', 206, 9, 1, 2768, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(578, 'A2', 'a2', 'Đường', 207, 9, 1, 2769, 1, '2017-05-05 03:04:36', '2017-05-05 03:04:36'),
(579, 'An Phú Đông 27', 'an-phu-dong-27', 'Đường', 208, 9, 1, 6599, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(580, 'B1', 'b1', 'Đường', 209, 9, 1, 3801, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(581, 'Bắc Rạch Chiếc', 'bac-rach-chiec', 'Đường', 210, 9, 1, 8566, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(582, 'Bàu Cát', 'bau-cat', 'Đường', 211, 9, 1, 6066, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(583, 'Bùi Xương Trạch', 'bui-xuong-trach', 'Đường', 212, 9, 1, 309, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(584, 'Bưng Ông Thoàn', 'bung-ong-thoan', 'Đường', 213, 9, 1, 1418, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(585, 'C3', 'c3', 'Đường', 214, 9, 1, 3073, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(586, 'Cầu Đình', 'cau-dinh', 'Đường', 215, 9, 1, 4684, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(587, 'Cầu Xây', 'cau-xay', 'Đường', 216, 9, 1, 6744, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(588, 'Cầu Xây 1', 'cau-xay-1', 'Đường', 217, 9, 1, 6731, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(589, 'Cầu Xây 2', 'cau-xay-2', 'Đường', 218, 9, 1, 6923, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(590, 'Chu Văn An', 'chu-van-an', 'Đường', 219, 9, 1, 802, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(591, 'Cô Giang', 'co-giang', 'Đường', 220, 9, 1, 2014, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(592, 'CT01', 'ct01', 'Đường', 221, 9, 1, 12978, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(593, 'Cù Lao Thượng', 'cu-lao-thuong', 'Đường', 222, 9, 1, 6579, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(594, 'D', 'd', 'Đường', 223, 9, 1, 10501, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(595, 'D1', 'd1', 'Đường', 224, 9, 1, 1985, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(596, 'D100', 'd100', 'Đường', 225, 9, 1, 13140, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(597, 'D11', 'd11', 'Đường', 226, 9, 1, 3222, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(598, 'D13', 'd13', 'Đường', 227, 9, 1, 3221, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(599, 'D15', 'd15', 'Đường', 228, 9, 1, 6582, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(600, 'D16', 'd16', 'Đường', 229, 9, 1, 3223, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(601, 'D17', 'd17', 'Đường', 230, 9, 1, 8996, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(602, 'D19', 'd19', 'Đường', 231, 9, 1, 8759, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(603, 'D2', 'd2', 'Đường', 232, 9, 1, 4601, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(604, 'D21', 'd21', 'Đường', 233, 9, 1, 10494, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(605, 'D3', 'd3', 'Đường', 234, 9, 1, 4602, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(606, 'D3A', 'd3a', 'Đường', 235, 9, 1, 10335, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(607, 'D3B', 'd3b', 'Đường', 236, 9, 1, 11447, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(608, 'D4', 'd4', 'Đường', 237, 9, 1, 2599, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(609, 'D400', 'd400', 'Đường', 238, 9, 1, 12105, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(610, 'D4A', 'd4a', 'Đường', 239, 9, 1, 11431, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(611, 'D5', 'd5', 'Đường', 240, 9, 1, 2600, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(612, 'D5A', 'd5a', 'Đường', 241, 9, 1, 11698, 1, '2017-05-05 03:04:37', '2017-05-05 03:04:37'),
(613, 'D6', 'd6', 'Đường', 242, 9, 1, 8159, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(614, 'D7', 'd7', 'Đường', 243, 9, 1, 6799, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(615, 'D8', 'd8', 'Đường', 244, 9, 1, 1775, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(616, 'D9', 'd9', 'Đường', 245, 9, 1, 5889, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(617, 'Đại Hiệp', 'dai-hiep', 'Đường', 246, 9, 1, 11742, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(618, 'Đại Lộ 13', 'dai-lo-13', 'Đường', 247, 9, 1, 11475, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(619, 'Đại lộ 2', 'dai-lo-2', 'Đường', 248, 9, 1, 8385, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(620, 'Đại lộ 3', 'dai-lo-3', 'Đường', 249, 9, 1, 8450, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(621, 'Đại lộ 61', 'dai-lo-61', 'Đường', 250, 9, 1, 8878, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(622, 'Đại Lộ Đông Tây', 'dai-lo-dong-tay', 'Đường', 251, 9, 1, 5638, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(623, 'Dân Chủ', 'dan-chu', 'Đường', 252, 9, 1, 2944, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(624, 'Đặng Nghiêm', 'dang-nghiem', 'Đường', 253, 9, 1, 1405, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(625, 'Diệp Minh Tuyền', 'diep-minh-tuyen', 'Đường', 254, 9, 1, 12055, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(626, 'Đinh Củng Viên', 'dinh-cung-vien', 'Đường', 255, 9, 1, 6740, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(627, 'Đình Phong Phú', 'dinh-phong-phu', 'Đường', 256, 9, 1, 7305, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(628, 'Đỗ Thế Diên', 'do-the-dien', 'Đường', 257, 9, 1, 10389, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(629, 'Đỗ Xuân Hợp', 'do-xuan-hop', 'Đường', 258, 9, 1, 1416, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(630, 'Đông Hưng Thuận 6', 'dong-hung-thuan-6', 'Đường', 259, 9, 1, 6598, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(631, 'ĐT 741', 'dt-741', 'Đường', 260, 9, 1, 6581, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(632, 'ĐT 747', 'dt-747', 'Đường', 261, 9, 1, 6580, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(633, 'Dương Đình Hội', 'duong-dinh-hoi', 'Đường', 262, 9, 1, 5618, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(634, 'F', 'f', 'Đường', 263, 9, 1, 10537, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(635, 'Gò Cát', 'go-cat', 'Đường', 264, 9, 1, 1413, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(636, 'Gò Công', 'go-cong', 'Đường', 265, 9, 1, 1197, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(637, 'Gò Đồi', 'go-doi', 'Đường', 266, 9, 1, 1415, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(638, 'Gò Lu', 'go-lu', 'Đường', 267, 9, 1, 5685, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(639, 'Gò Nổi', 'go-noi', 'Đường', 268, 9, 1, 11338, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(640, 'Hai Bà Trưng', 'hai-ba-trung', 'Phố', 269, 9, 1, 102, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(641, 'Hàn Giang', 'han-giang', 'Đường', 270, 9, 1, 6592, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(642, 'Hàng Tre', 'hang-tre', 'Phố', 271, 9, 1, 199, 1, '2017-05-05 03:04:38', '2017-05-05 03:04:38'),
(643, 'Hậu Lân', 'hau-lan', 'Đường', 272, 9, 1, 6604, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(644, 'Hi - Tech Park', 'hi-tech-park', 'Đường', 273, 9, 1, 1424, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(645, 'Hiền Vương', 'hien-vuong', 'Đường', 274, 9, 1, 3246, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(646, 'Hiệp Thành 13', 'hiep-thanh-13', 'Đường', 275, 9, 1, 6606, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(647, 'Hiệp Thành 18', 'hiep-thanh-18', 'Đường', 276, 9, 1, 6576, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(648, 'Hồ Bá Phấn', 'ho-ba-phan', 'Đường', 277, 9, 1, 5559, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(649, 'Hồ Biểu Chánh', 'ho-bieu-chanh', 'Đường', 278, 9, 1, 3361, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(650, 'Hồ Ngọc Lãm', 'ho-ngoc-lam', 'Đường', 279, 9, 1, 6484, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(651, 'Hoàng Hữu Nam', 'hoang-huu-nam', 'Đường', 280, 9, 1, 1398, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(652, 'Hồng Sến', 'hong-sen', 'Đường', 281, 9, 1, 8517, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(653, 'Huy Cận', 'huy-cạn', 'Đường', 282, 9, 1, 6491, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(654, 'Huỳnh Thúc Kháng', 'huynh-thuc-khang', 'Đường', 283, 9, 1, 78, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(655, 'Ích Thạnh', 'ich-thanh', 'Đường', 284, 9, 1, 1422, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(656, 'Ích Thạnh 16', 'ich-thanh-16', 'Đường', 285, 9, 1, 12261, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(657, 'Khởi Nghĩa Bắc Sơn', 'khoi-nghia-bac-son', 'Đường', 286, 9, 1, 6583, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(658, 'Khổng Tử', 'khong-tu', 'Đường', 287, 9, 1, 3583, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(659, 'Khổng Tử', 'khỏng-tu', 'Đường', 288, 9, 1, 7385, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(660, 'Ký Con', 'ky-con', 'Đường', 289, 9, 1, 963, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(661, 'Lã Xuân Oai', 'la-xuan-oai', 'Đường', 290, 9, 1, 5686, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(662, 'Lạc Thiên', 'lac-thien', 'Đường', 291, 9, 1, 12887, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(663, 'Lâm Viên', 'lam-vien', 'Đường', 292, 9, 1, 1399, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(664, 'Làng Tăng Phú', 'lang-tang-phu', 'Đường', 293, 9, 1, 5834, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(665, 'Lê Duẩn', 'le-duan', 'Đường', 294, 9, 1, 89, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(666, 'Lê Lợi', 'le-loi', 'Đường', 295, 9, 1, 338, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(667, 'Lê Thánh Tôn', 'le-thanh-ton', 'Đường', 296, 9, 1, 895, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(668, 'Lê Văn Thứ', 'le-van-thu', 'Đường', 297, 9, 1, 5923, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(669, 'Lê Văn Việt', 'le-van-viet', 'Đường', 298, 9, 1, 1423, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(670, 'Lê Xuân Oai', 'le-xuan-oai', 'Đường', 299, 9, 1, 1421, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(671, 'Liên Phường', 'lien-phuong', 'Đường', 300, 9, 1, 6114, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(672, 'Lò Lu', 'lo-lu', 'Đường', 301, 9, 1, 1420, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(673, 'Lộc Hòa', 'loc-hoa', 'Đường', 302, 9, 1, 6602, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(674, 'Long Hòa', 'long-hoa', 'Đường', 303, 9, 1, 12054, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(675, 'Long Phước', 'long-phuoc', 'Đường', 304, 9, 1, 1408, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(676, 'Long Sơn', 'long-son', 'Đường', 305, 9, 1, 1401, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(677, 'Long Thành - Dầu Giây', 'long-thanh-dau-giay', 'Đường', 306, 9, 1, 1412, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(678, 'Long Thuận', 'long-thuan', 'Đường', 307, 9, 1, 1409, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(679, 'Lý Ông Trọng', 'ly-ong-trong', 'Đường', 308, 9, 1, 6609, 1, '2017-05-05 03:04:39', '2017-05-05 03:04:39'),
(680, 'Lý Thái Tổ', 'ly-thai-to', 'Đường', 309, 9, 1, 237, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(681, 'M4', 'm4', 'Đường', 310, 9, 1, 4365, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(682, 'M50', 'm50', 'Đường', 311, 9, 1, 13129, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(683, 'Mã Lò', 'ma-lo', 'Đường', 312, 9, 1, 897, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(684, 'Mạc Hiền Tích', 'mac-hien-tich', 'Đường', 313, 9, 1, 1400, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(685, 'Man Thiện', 'man-thien', 'Đường', 314, 9, 1, 5950, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(686, 'Mương Khai', 'muong-khai', 'Đường', 315, 9, 1, 6596, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(687, 'N1', 'n1', 'Đường', 316, 9, 1, 3599, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(688, 'N10', 'n10', 'Đường', 317, 9, 1, 10396, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(689, 'N11', 'n11', 'Đường', 318, 9, 1, 7328, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(690, 'N5', 'n5', 'Đường', 319, 9, 1, 6732, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(691, 'N6', 'n6', 'Đường', 320, 9, 1, 3020, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(692, 'N7', 'n7', 'Đường', 321, 9, 1, 7258, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(693, 'N8', 'n8', 'Đường', 322, 9, 1, 7145, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(694, 'N9', 'n9', 'Đường', 323, 9, 1, 7138, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(695, 'Nam Cao', 'nam-cao', 'Phố', 324, 9, 1, 722, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(696, 'Nam Hòa', 'nam-hoa', 'Phố', 325, 9, 1, 1760, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(697, 'Ngô Quyền', 'ngo-quyen', 'Đường', 326, 9, 1, 120, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(698, 'Nguyễn Công Trứ', 'nguyen-cong-tru', 'Đường', 327, 9, 1, 517, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(699, 'Nguyễn Đình Thi', 'nguyen-dinh-thi', 'Đường', 328, 9, 1, 3348, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(700, 'Nguyễn Duy Trinh', 'nguyen-duy-trinh', 'Đường', 329, 9, 1, 449, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(701, 'Nguyễn Huy Chương', 'nguyen-huy-chuong', 'Đường', 330, 9, 1, 6603, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(702, 'Nguyễn Khanh', 'nguyen-khanh', 'Đường', 331, 9, 1, 6608, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(703, 'Nguyễn Khoái', 'nguyen-khoai', 'Đường', 332, 9, 1, 468, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(704, 'Nguyễn Thị Sóc', 'nguyen-thi-soc', 'Đường', 333, 9, 1, 5560, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(705, 'Nguyễn Trãi', 'nguyen-trai', 'Đường', 334, 9, 1, 65, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(706, 'Nguyễn Tri Phương', 'nguyen-tri-phuong', 'Đường', 335, 9, 1, 1140, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(707, 'Nguyễn Văn Tăng', 'nguyen-van-tang', 'Đường', 336, 9, 1, 1407, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(708, 'Nguyễn Văn Thành', 'nguyen-van-thanh', 'Đường', 337, 9, 1, 1406, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(709, 'Nguyễn Xiển', 'nguyen-xien', 'Đường', 338, 9, 1, 316, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(710, 'Nguyễn Xiểu', 'nguyen-xieu', 'Đường', 339, 9, 1, 1397, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(711, 'Núi Một', 'nui-mot', 'Đường', 340, 9, 1, 6587, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(712, 'Phạm Hồng Thái', 'pham-hong-thai', 'Đường', 341, 9, 1, 751, 1, '2017-05-05 03:04:40', '2017-05-05 03:04:40'),
(713, 'Phạm Trọng Cầu', 'pham-trong-cau', 'Đường', 342, 9, 1, 10184, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(714, 'Phan Bội Châu', 'phan-boi-chau', 'Đường', 343, 9, 1, 126, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(715, 'Phan Chu Trinh', 'phan-chu-trinh', 'Đường', 344, 9, 1, 907, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(716, 'Phan Đặng Đức', 'phan-dang-duc', 'Đường', 345, 9, 1, 1404, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(717, 'Phan Đạt Đức', 'phan-dat-duc', 'Đường', 346, 9, 1, 7316, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(718, 'Phan Đình Phùng', 'phan-dinh-phung', 'Đường', 347, 9, 1, 213, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(719, 'Phong Phú', 'phong-phu', 'Đường', 348, 9, 1, 5716, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(720, 'Phú Trung', 'phu-trung', 'Đường', 349, 9, 1, 6588, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(721, 'Phước Bình', 'phuoc-binh', 'Đường', 350, 9, 1, 7791, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(722, 'Phước Hậu', 'phuoc-hau', 'Đường', 351, 9, 1, 5138, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(723, 'Phước Hữu', 'phuoc-huu', 'Đường', 352, 9, 1, 11311, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(724, 'Phước Thiện', 'phuoc-thien', 'Đường', 353, 9, 1, 5558, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(725, 'Quang Trung', 'quang-trung', 'Đường', 354, 9, 1, 366, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(726, 'Quốc Lộ 1', 'quoc-lo-1', 'Đường', 355, 9, 1, 7834, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(727, 'Quốc lộ 106', 'quoc-lo-106', 'Đường', 356, 9, 1, 5438, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(728, 'Quốc lộ 1A', 'quoc-lo-1a', 'Đường', 357, 9, 1, 2092, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(729, 'Quốc Lộ 51', 'quoc-lo-51', 'Đường', 358, 9, 1, 7693, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(730, 'Quốc Lộ 52', 'quoc-lo-52', 'Đường', 359, 9, 1, 12722, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(731, 'Số 1', 'so-1', 'Đường', 360, 9, 1, 11206, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(732, 'Số 10', 'so-10', 'Đường', 361, 9, 1, 11211, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(733, 'Số 100', 'so-100', 'Đường', 362, 9, 1, 11840, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(734, 'Số 102', 'so-102', 'Đường', 363, 9, 1, 11302, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(735, 'Số 11', 'so-11', 'Đường', 364, 9, 1, 11209, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(736, 'Số 110', 'so-110', 'Đường', 365, 9, 1, 12197, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(737, 'Số 12', 'so-12', 'Đường', 366, 9, 1, 11205, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(738, 'Số 123', 'so-123', 'Đường', 367, 9, 1, 12068, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(739, 'Số 13', 'so-13', 'Đường', 368, 9, 1, 11240, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(740, 'Số 14', 'so-14', 'Đường', 369, 9, 1, 11227, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(741, 'Số 15', 'so-15', 'Đường', 370, 9, 1, 11210, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(742, 'Số 16', 'so-16', 'Đường', 371, 9, 1, 11225, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(743, 'Số 160', 'so-160', 'Đường', 372, 9, 1, 12444, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(744, 'Số 17', 'so-17', 'Đường', 373, 9, 1, 11215, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(745, 'Số 18', 'so-18', 'Đường', 374, 9, 1, 11255, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(746, 'Số 182', 'so-182', 'Đường', 375, 9, 1, 12908, 1, '2017-05-05 03:04:41', '2017-05-05 03:04:41'),
(747, 'Số 185', 'so-185', 'Đường', 376, 9, 1, 12044, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(748, 'Số 18A', 'so-18a', 'Đường', 377, 9, 1, 11828, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(749, 'Số 19', 'so-19', 'Đường', 378, 9, 1, 11235, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(750, 'Số 19A', 'so-19a', 'Đường', 379, 9, 1, 11521, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(751, 'Số 1A', 'so-1a', 'Đường', 380, 9, 1, 11432, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(752, 'Số 2', 'so-2', 'Đường', 381, 9, 1, 11223, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(753, 'Số 20', 'so-20', 'Đường', 382, 9, 1, 11221, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(754, 'Số 200', 'so-200', 'Đường', 383, 9, 1, 12071, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(755, 'Số 21', 'so-21', 'Đường', 384, 9, 1, 11277, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(756, 'Số 215', 'so-215', 'Đường', 385, 9, 1, 11554, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(757, 'Số 22', 'so-22', 'Đường', 386, 9, 1, 11228, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(758, 'Số 23', 'so-23', 'Đường', 387, 9, 1, 11245, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(759, 'Số 24', 'so-24', 'Đường', 388, 9, 1, 11317, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(760, 'Số 25', 'so-25', 'Đường', 389, 9, 1, 11279, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(761, 'Số 26', 'so-26', 'Đường', 390, 9, 1, 11262, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(762, 'Số 27', 'so-27', 'Đường', 391, 9, 1, 11216, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(763, 'Số 28', 'so-28', 'Đường', 392, 9, 1, 11237, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(764, 'Số 29', 'so-29', 'Đường', 393, 9, 1, 11304, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(765, 'Số 295', 'so-295', 'Đường', 394, 9, 1, 12490, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(766, 'Số 297', 'so-297', 'Đường', 395, 9, 1, 12680, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(767, 'Số 2A', 'so-2a', 'Đường', 396, 9, 1, 11247, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(768, 'Số 3', 'so-3', 'Đường', 397, 9, 1, 11219, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(769, 'Số 30', 'so-30', 'Đường', 398, 9, 1, 11289, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(770, 'Số 31', 'so-31', 'Đường', 399, 9, 1, 11272, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(771, 'Số 33', 'so-33', 'Đường', 400, 9, 1, 11376, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(772, 'Số 339', 'so-339', 'Đường', 401, 9, 1, 11497, 1, '2017-05-05 03:04:42', '2017-05-05 03:04:42'),
(773, 'Số 359', 'so-359', 'Đường', 402, 9, 1, 13057, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(774, 'Số 4', 'so-4', 'Đường', 403, 9, 1, 11232, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(775, 'Số 44', 'so-44', 'Đường', 404, 9, 1, 11315, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(776, 'Số 448', 'so-448', 'Đường', 405, 9, 1, 13008, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(777, 'Số 46', 'so-46', 'Đường', 406, 9, 1, 11243, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(778, 'Số 494', 'so-494', 'Đường', 407, 9, 1, 13011, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(779, 'Số 5', 'so-5', 'Đường', 408, 9, 1, 11217, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(780, 'Số 5A', 'so-5a', 'Đường', 409, 9, 1, 11293, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(781, 'Số 6', 'so-6', 'Đường', 410, 9, 1, 11192, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(782, 'Số 61', 'so-61', 'Đường', 411, 9, 1, 11619, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(783, 'Số 61B', 'so-61b', 'Đường', 412, 9, 1, 12113, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(784, 'Số 68', 'so-68', 'Đường', 413, 9, 1, 11396, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(785, 'Số 6A', 'so-6a', 'Đường', 414, 9, 1, 11220, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(786, 'Số 7', 'so-7', 'Đường', 415, 9, 1, 11222, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(787, 'Số 73', 'so-73', 'Đường', 416, 9, 1, 11496, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(788, 'Số 74', 'so-74', 'Đường', 417, 9, 1, 12015, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(789, 'Số 79', 'so-79', 'Đường', 418, 9, 1, 11264, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(790, 'Số 8', 'so-8', 'Đường', 419, 9, 1, 11207, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(791, 'Số 827', 'so-827', 'Đường', 420, 9, 1, 13052, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(792, 'Số 882', 'so-882', 'Đường', 421, 9, 1, 12833, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(793, 'Số 9', 'so-9', 'Đường', 422, 9, 1, 11233, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(794, 'Số 91', 'so-91', 'Đường', 423, 9, 1, 12721, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(795, 'Số 9B', 'so-9b', 'Đường', 424, 9, 1, 12127, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(796, 'Song Hành', 'song-hanh', 'Đường', 425, 9, 1, 1339, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(797, 'Tam Đa', 'tam-da', 'Đường', 426, 9, 1, 5849, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(798, 'Tân Chánh Hiệp 16', 'tan-chanh-hiep-16', 'Đường', 427, 9, 1, 6607, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(799, 'Tân Chánh Hiệp 2', 'tan-chanh-hiep-2', 'Đường', 428, 9, 1, 6584, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(800, 'Tân Hóa', 'tan-hoa', 'Đường', 429, 9, 1, 4258, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(801, 'Tân Hòa', 'tan-hoa', 'Đường', 430, 9, 1, 6816, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(802, 'Tân Hòa 2', 'tan-hoa-2', 'Đường', 431, 9, 1, 7009, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(803, 'Tân Lập', 'tan-lap', 'Đường', 432, 9, 1, 2927, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(804, 'Tân Lập 1', 'tan-lap-1', 'Đường', 433, 9, 1, 5845, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(805, 'Tân Lập 2', 'tan-lap-2', 'Đường', 434, 9, 1, 6895, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(806, 'Tân Thới Hiệp 10', 'tan-thoi-hiep-10', 'Đường', 435, 9, 1, 6597, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(807, 'Tăng Nhơn Phú', 'tang-nhon-phu', 'Đường', 436, 9, 1, 6409, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(808, 'Tây Hòa', 'tay-hoa', 'Đường', 437, 9, 1, 5906, 1, '2017-05-05 03:04:43', '2017-05-05 03:04:43'),
(809, 'Tây Hòa 2', 'tay-hoa-2', 'Đường', 438, 9, 1, 7825, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(810, 'Thạnh Lộc 27', 'thanh-loc-27', 'Đường', 439, 9, 1, 6605, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(811, 'Thanh Nga', 'thanh-nga', 'Đường', 440, 9, 1, 11350, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(812, 'Thạnh Xuân 13', 'thanh-xuan-13', 'Đường', 441, 9, 1, 6590, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(813, 'Thạnh Xuân 21', 'thanh-xuan-21', 'Đường', 442, 9, 1, 6600, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(814, 'Thích Bửu Đăng', 'thich-buu-dang', 'Đường', 443, 9, 1, 6585, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(815, 'Thủy Lợi', 'thuy-loi', 'Đường', 444, 9, 1, 6745, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(816, 'Tỉnh lộ 179', 'tinh-lo-179', 'Đường', 445, 9, 1, 742, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(817, 'Tỉnh lộ 359', 'tinh-lo-359', 'Đường', 446, 9, 1, 7062, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(818, 'Trại Gà', 'trai-ga', 'Đường', 447, 9, 1, 6610, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(819, 'Trần Cao Vân', 'tran-cao-van', 'Đường', 448, 9, 1, 544, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(820, 'Trần Hưng Đạo', 'tran-hung-dao', 'Đường', 449, 9, 1, 502, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(821, 'Trần Kế Xương', 'tran-ke-xuong', 'Đường', 450, 9, 1, 4528, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(822, 'Trần Quang Đạo', 'tran-quang-dao', 'Đường', 451, 9, 1, 6593, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(823, 'Trần Quang Khải', 'tran-quang-khai', 'Đường', 452, 9, 1, 138, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(824, 'Trần Quốc Toản', 'tran-quoc-toan', 'Đường', 453, 9, 1, 219, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(825, 'Trần Trọng Khiêm', 'tran-trong-khiem', 'Đường', 454, 9, 1, 1402, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(826, 'Trích Sài', 'trich-sai', 'Đường', 455, 9, 1, 6595, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(827, 'Trịnh Hoài Đức', 'trinh-hoai-duc', 'Đường', 456, 9, 1, 390, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(828, 'Trường Khánh', 'truong-khanh', 'Đường', 457, 9, 1, 1410, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(829, 'Trường Lưu', 'truong-luu', 'Đường', 458, 9, 1, 1425, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(830, 'Trương Minh Giảng', 'truong-minh-giang', 'Đường', 459, 9, 1, 5903, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(831, 'Trường Thạnh', 'truong-thanh', 'Đường', 460, 9, 1, 1411, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(832, 'Trương Văn Đa', 'truong-van-da', 'Đường', 461, 9, 1, 6594, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(833, 'Trương Văn Hải', 'truong-van-hai', 'Đường', 462, 9, 1, 5940, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(834, 'Trương Văn Thành', 'truong-van-thanh', 'Đường', 463, 9, 1, 5922, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(835, 'Tự Do', 'tu-do', 'Đường', 464, 9, 1, 1972, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(836, 'Tú Xương', 'tu-xuong', 'Đường', 465, 9, 1, 1534, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(837, 'Út Trà Ôn', 'ut-tra-on', 'Đường', 466, 9, 1, 10784, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(838, 'Vành Đai 2', 'vanh-dai-2', 'Đường', 467, 9, 1, 8092, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(839, 'Vành Đai 3', 'vanh-dai-3', 'Đường', 468, 9, 1, 8005, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(840, 'Vành Đai Đông', 'vanh-dai-dong', 'Đường', 469, 9, 1, 6331, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(841, 'Vành Đai Trong', 'vanh-dai-trong', 'Đường', 470, 9, 1, 1417, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(842, 'Võ Chí Công', 'vo-chi-cong', 'Đường', 471, 9, 1, 7021, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(843, 'Võ Quảng', 'vo-quang', 'Đường', 472, 9, 1, 6577, 1, '2017-05-05 03:04:44', '2017-05-05 03:04:44'),
(844, 'Võ Văn Hát', 'vo-van-hat', 'Đường', 473, 9, 1, 1419, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(845, 'Xa La', 'xa-la', 'Đường', 474, 9, 1, 6586, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(846, 'Xa Lộ Hà Nội', 'xa-lo-ha-noi', 'Đường', 475, 9, 1, 5820, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(847, 'Xuân Quỳnh', 'xuan-quynh', 'Đường', 476, 9, 1, 11761, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(848, '1', '1', 'Đường', 1, 19, 1, 3789, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(849, '10', '10', 'Đường', 2, 19, 1, 3780, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(850, '11', '11', 'Đường', 3, 19, 1, 1998, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(851, '12', '12', 'Đường', 4, 19, 1, 1999, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(852, '13', '13', 'Đường', 5, 19, 1, 4781, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(853, '14', '14', 'Đường', 6, 19, 1, 2001, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(854, '15', '15', 'Đường', 7, 19, 1, 2002, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(855, '16', '16', 'Đường', 8, 19, 1, 4187, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(856, '17', '17', 'Đường', 9, 19, 1, 2850, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(857, '18', '18', 'Đường', 10, 19, 1, 2095, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(858, '182', '182', 'Đường', 11, 19, 1, 3591, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(859, '19', '19', 'Đường', 12, 19, 1, 5707, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(860, '2', '2', 'Đường', 13, 19, 1, 3788, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(861, '20', '20', 'Đường', 14, 19, 1, 4991, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(862, '21', '21', 'Đường', 15, 19, 1, 3631, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(863, '22', '22', 'Đường', 16, 19, 1, 2773, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(864, '23', '23', 'Đường', 17, 19, 1, 709, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(865, '24', '24', 'Phố', 18, 19, 1, 2869, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(866, '25', '25', 'Đường', 19, 19, 1, 2870, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(867, '26', '26', 'Đường', 20, 19, 1, 2354, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(868, '27', '27', 'Đường', 21, 19, 1, 4766, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(869, '28', '28', 'Đường', 22, 19, 1, 2165, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(870, '29', '29', 'Đường', 23, 19, 1, 2166, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(871, '3', '3', 'Đường', 24, 19, 1, 689, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(872, '3/2', '3-2', 'Đường', 25, 19, 1, 1000, 1, '2017-05-05 03:04:45', '2017-05-05 03:04:45'),
(873, '30', '30', 'Đường', 26, 19, 1, 4196, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(874, '31', '31', 'Đường', 27, 19, 1, 4416, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(875, '32', '32', 'Đường', 28, 19, 1, 7772, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(876, '33', '33', 'Đường', 29, 19, 1, 4265, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(877, '34', '34', 'Đường', 30, 19, 1, 2876, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(878, '35', '35', 'Đường', 31, 19, 1, 6346, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(879, '36', '36', 'Phố', 32, 19, 1, 2878, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(880, '37', '37', 'Phố', 33, 19, 1, 2879, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(881, '38', '38', 'Đường', 34, 19, 1, 2167, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(882, '389', '389', 'Đường', 35, 19, 1, 11633, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(883, '39', '39', 'Đường', 36, 19, 1, 2520, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(884, '4', '4', 'Đường', 37, 19, 1, 1990, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(885, '40', '40', 'Đường', 38, 19, 1, 4672, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(886, '41', '41', 'Đường', 39, 19, 1, 4211, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(887, '42', '42', 'Đường', 40, 19, 1, 2885, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(888, '43', '43', 'Đường', 41, 19, 1, 4213, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(889, '44', '44', 'Đường', 42, 19, 1, 3061, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(890, '45', '45', 'Phố', 43, 19, 1, 2889, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(891, '46', '46', 'Đường', 44, 19, 1, 2262, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(892, '47', '47', 'Đường', 45, 19, 1, 2263, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(893, '48', '48', 'Đường', 46, 19, 1, 2894, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(894, '49', '49', 'Phố', 47, 19, 1, 2895, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(895, '5', '5', 'Đường', 48, 19, 1, 3786, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(896, '50', '50', 'Đường', 49, 19, 1, 6591, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(897, '50/27', '50-27', 'Đường', 50, 19, 1, 10630, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(898, '51', '51', 'Đường', 51, 19, 1, 6272, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(899, '52', '52', 'Phố', 52, 19, 1, 2898, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(900, '520', '520', 'Đường', 53, 19, 1, 8861, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(901, '53', '53', 'Đường', 54, 19, 1, 4472, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(902, '54', '54', 'Đường', 55, 19, 1, 2900, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(903, '57', '57', 'Đường', 56, 19, 1, 6015, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(904, '6', '6', 'Đường', 57, 19, 1, 2840, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(905, '606', '606', 'Đường', 58, 19, 1, 10331, 1, '2017-05-05 03:04:46', '2017-05-05 03:04:46'),
(906, '63', '63', 'Đường', 59, 19, 1, 8689, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(907, '635', '635', 'Đường', 60, 19, 1, 11002, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(908, '647', '647', 'Đường', 61, 19, 1, 11395, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(909, '652', '652', 'Đường', 62, 19, 1, 10719, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(910, '66', '66', 'Đường', 63, 19, 1, 2916, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(911, '668', '668', 'Đường', 64, 19, 1, 11068, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(912, '7', '7', 'Đường', 65, 19, 1, 1994, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(913, '70', '70', 'Đường', 66, 19, 1, 631, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(914, '7L', '7l', 'Đường', 67, 19, 1, 4309, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(915, '8', '8', 'Đường', 68, 19, 1, 2841, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(916, '808', '808', 'Đường', 69, 19, 1, 9845, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(917, '833', '833', 'Đường', 70, 19, 1, 12250, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(918, '866', '866', 'Đường', 71, 19, 1, 12153, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(919, '9', '9', 'Đường', 72, 19, 1, 2842, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(920, '96', '96', 'Đường', 73, 19, 1, 7103, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(921, 'A', 'a', 'Đường', 74, 19, 1, 7073, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(922, 'An Phú Đông 27', 'an-phu-dong-27', 'Đường', 75, 19, 1, 6599, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(923, 'B', 'b', 'Đường', 76, 19, 1, 4135, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(924, 'B2', 'b2', 'Đường', 77, 19, 1, 3145, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(925, 'Bắc Ái', 'bac-ai', 'Đường', 78, 19, 1, 3065, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(926, 'Bến Đò', 'ben-do', 'Đường', 79, 19, 1, 2586, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(927, 'Bình Chiểu', 'binh-chieu', 'Đường', 80, 19, 1, 6760, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(928, 'Bình Đường', 'binh-duong', 'Đường', 81, 19, 1, 2090, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(929, 'Bình Đường 2', 'binh-duong-2', 'Đường', 82, 19, 1, 7165, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(930, 'Bình Đường 3', 'binh-duong-3', 'Đường', 83, 19, 1, 6380, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(931, 'Bình Phú', 'binh-phu', 'Đường', 84, 19, 1, 4272, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(932, 'Bình Triệu', 'binh-trieu', 'Đường', 85, 19, 1, 10643, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(933, 'Bình Trưng Trắc', 'binh-trung-trac', 'Đường', 86, 19, 1, 11620, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(934, 'Cân Nhơn Hòa', 'can-nhon-hoa', 'Đường', 87, 19, 1, 6759, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(935, 'Cao tốc Bình Lợi - Linh Tây', 'cao-toc-binh-loi-linh-tay', 'Đường', 88, 19, 1, 8468, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(936, 'Cây Keo', 'cay-keo', 'Đường', 89, 19, 1, 2132, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(937, 'Chân Lý', 'chan-ly', 'Đường', 90, 19, 1, 5009, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(938, 'Chu Mạnh Trinh', 'chu-manh-trinh', 'Đường', 91, 19, 1, 2011, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(939, 'Chu Văn An', 'chu-van-an', 'Đường', 92, 19, 1, 802, 1, '2017-05-05 03:04:47', '2017-05-05 03:04:47'),
(940, 'Chương Dương', 'chuong-duong', 'Đường', 93, 19, 1, 184, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(941, 'Công Lý', 'cong-ly', 'Đường', 94, 19, 1, 2350, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(942, 'Cù Lao Thượng', 'cu-lao-thuong', 'Đường', 95, 19, 1, 6579, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(943, 'D1', 'd1', 'Đường', 96, 19, 1, 1985, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(944, 'D11', 'd11', 'Đường', 97, 19, 1, 3222, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(945, 'D12', 'd12', 'Đường', 98, 19, 1, 6872, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(946, 'D15', 'd15', 'Đường', 99, 19, 1, 6582, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(947, 'D2', 'd2', 'Đường', 100, 19, 1, 4601, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(948, 'D23', 'd23', 'Đường', 101, 19, 1, 11265, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(949, 'D3', 'd3', 'Đường', 102, 19, 1, 4602, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(950, 'D52', 'd52', 'Đường', 103, 19, 1, 7506, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(951, 'D5B', 'd5b', 'Đường', 104, 19, 1, 7337, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(952, 'D6', 'd6', 'Đường', 105, 19, 1, 8159, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(953, 'D9', 'd9', 'Đường', 106, 19, 1, 5889, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(954, 'Dân Chủ', 'dan-chu', 'Đường', 107, 19, 1, 2944, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(955, 'Đặng Thị Rành', 'dang-thi-ranh', 'Đường', 108, 19, 1, 9410, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(956, 'Đặng Văn Bi', 'dang-van-bi', 'Đường', 109, 19, 1, 4996, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(957, 'Đào Trinh Nhất', 'dao-trinh-nhat', 'Đường', 110, 19, 1, 2089, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(958, 'Đỗ Xuân Hợp', 'do-xuan-hop', 'Đường', 111, 19, 1, 1416, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(959, 'Đoàn Công Hớn', 'doan-cong-hon', 'Đường', 112, 19, 1, 9286, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(960, 'Đoàn Kết', 'doan-ket', 'Đường', 113, 19, 1, 474, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(961, 'Độc Lập', 'doc-lap', 'Đường', 114, 19, 1, 797, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(962, 'Đồng Bông', 'dong-bong', 'Đường', 115, 19, 1, 6013, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(963, 'Đông Hưng Thuận 42', 'dong-hung-thuan-42', 'Đường', 116, 19, 1, 6271, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(964, 'Đông Hưng Thuận 6', 'dong-hung-thuan-6', 'Đường', 117, 19, 1, 6598, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(965, 'ĐT 741', 'dt-741', 'Đường', 118, 19, 1, 6581, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(966, 'ĐT 747', 'dt-747', 'Đường', 119, 19, 1, 6580, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(967, 'Dương Văn Cam', 'duong-van-cam', 'Đường', 120, 19, 1, 6879, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(968, 'Einstein', 'einstein', 'Đường', 121, 19, 1, 5004, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(969, 'Gò Dưa', 'go-dua', 'Đường', 122, 19, 1, 6699, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(970, 'Hàn Giang', 'han-giang', 'Đường', 123, 19, 1, 6592, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(971, 'Hàn Thuyên', 'han-thuyen', 'Đường', 124, 19, 1, 939, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(972, 'Hậu Lân', 'hau-lan', 'Đường', 125, 19, 1, 6604, 1, '2017-05-05 03:04:48', '2017-05-05 03:04:48'),
(973, 'Hiệp Bình', 'hiep-binh', 'Đường', 126, 19, 1, 6198, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(974, 'Hiệp Thành 13', 'hiep-thanh-13', 'Đường', 127, 19, 1, 6606, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(975, 'Hiệp Thành 18', 'hiep-thanh-18', 'Đường', 128, 19, 1, 6576, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(976, 'Hồ Biểu Chánh', 'ho-bieu-chanh', 'Đường', 129, 19, 1, 3361, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(977, 'Hồ Văn Tư', 'ho-van-tu', 'Đường', 130, 19, 1, 4150, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(978, 'Hòa Bình', 'hoa-binh', 'Đường', 131, 19, 1, 965, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(979, 'Hoàng Diệu', 'hoang-dieu', 'Đường', 132, 19, 1, 360, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(980, 'Hoàng Diệu 2', 'hoang-dieu-2', 'Đường', 133, 19, 1, 5015, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(981, 'Hồng Đức', 'hong-duc', 'Đường', 134, 19, 1, 5001, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(982, 'Hữu Nghị', 'huu-nghi', 'Đường', 135, 19, 1, 1973, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(983, 'Kênh Ba Bò', 'kenh-ba-bo', 'Đường', 136, 19, 1, 11748, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(984, 'Kha Vạn Cân', 'kha-van-can', 'Đường', 137, 19, 1, 2638, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(985, 'Khởi Nghĩa Bắc Sơn', 'khoi-nghia-bac-son', 'Đường', 138, 19, 1, 6583, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(986, 'Khổng Tử', 'khong-tu', 'Đường', 139, 19, 1, 3583, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(987, 'Lam Sơn', 'lam-son', 'Đường', 140, 19, 1, 1600, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(988, 'Lê Quý Đôn', 'le-quy-don', 'Đường', 141, 19, 1, 348, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(989, 'Lê Thị Hoa', 'le-thi-hoa', 'Đường', 142, 19, 1, 5119, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(990, 'Lê Văn Chí', 'le-van-chi', 'Đường', 143, 19, 1, 5013, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(991, 'Lê Văn Ninh', 'le-van-ninh', 'Đường', 144, 19, 1, 8822, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(992, 'Lê Văn Tách', 'le-van-tach', 'Đường', 145, 19, 1, 7038, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(993, 'Linh Chiểu', 'linh-chieu', 'Đường', 146, 19, 1, 5705, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(994, 'Linh Đông', 'linh-dong', 'Đường', 147, 19, 1, 5971, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(995, 'Linh Tây', 'linh-tay', 'Đường', 148, 19, 1, 5736, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(996, 'Linh Trung', 'linh-trung', 'Đường', 149, 19, 1, 5014, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49');
INSERT INTO `street` (`id`, `name`, `slug`, `prefix`, `display_order`, `district_id`, `city_id`, `id_dothi`, `status`, `created_at`, `updated_at`) VALUES
(997, 'Linh Xuân', 'linh-xuan', 'Đường', 150, 19, 1, 6993, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(998, 'Lộc Hòa', 'loc-hoa', 'Đường', 151, 19, 1, 6602, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(999, 'Lương Khải Siêu', 'luong-khai-sieu', 'Đường', 152, 19, 1, 5005, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1000, 'Lý Ông Trọng', 'ly-ong-trong', 'Đường', 153, 19, 1, 6609, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1001, 'Lý Tế Xuyên', 'ly-te-xuyen', 'Đường', 154, 19, 1, 5554, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1002, 'Mương Khai', 'muong-khai', 'Đường', 155, 19, 1, 6596, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1003, 'Nam Thọ 1', 'nam-tho-1', 'Đường', 156, 19, 1, 6455, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1004, 'Ngô Chí Quốc', 'ngo-chi-quoc', 'Đường', 157, 19, 1, 1836, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1005, 'Ngọc Lan', 'ngoc-lan', 'Đường', 158, 19, 1, 7814, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1006, 'Nguyễn An Ninh', 'nguyen-an-ninh', 'Đường', 159, 19, 1, 457, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1007, 'Nguyễn Bá Luật', 'nguyen-ba-luat', 'Đường', 160, 19, 1, 5010, 1, '2017-05-05 03:04:49', '2017-05-05 03:04:49'),
(1008, 'Nguyễn Bỉnh Khiêm', 'nguyen-binh-khiem', 'Đường', 161, 19, 1, 560, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1009, 'Nguyễn Cửu Đàm', 'nguyen-cuu-dam', 'Đường', 162, 19, 1, 3311, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1010, 'Nguyễn Huy Chương', 'nguyen-huy-chuong', 'Đường', 163, 19, 1, 6603, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1011, 'Nguyễn Khanh', 'nguyen-khanh', 'Đường', 164, 19, 1, 6608, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1012, 'Nguyễn Khuyến', 'nguyen-khuyen', 'Đường', 165, 19, 1, 381, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1013, 'Nguyễn Trường Tộ', 'nguyen-truong-to', 'Đường', 166, 19, 1, 752, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1014, 'Nguyễn Văn Bá', 'nguyen-van-ba', 'Đường', 167, 19, 1, 4993, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1015, 'Nguyễn Văn Lịch', 'nguyen-van-lich', 'Đường', 168, 19, 1, 7997, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1016, 'Nguyễn Viết Xuân', 'nguyen-viet-xuan', 'Đường', 169, 19, 1, 351, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1017, 'Núi Một', 'nui-mot', 'Đường', 170, 19, 1, 6587, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1018, 'Pasteur', 'pasteur', 'Đường', 171, 19, 1, 1045, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1019, 'Phạm Văn Bạch', 'pham-van-bach', 'Đường', 172, 19, 1, 827, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1020, 'Phạm Văn Chiêu', 'pham-van-chieu', 'Đường', 173, 19, 1, 837, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1021, 'Phạm Văn Đồng', 'pham-van-dong', 'Đường', 174, 19, 1, 1433, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1022, 'Phạm Văn Sáng', 'pham-van-sang', 'Đường', 175, 19, 1, 6095, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1023, 'Phan Huy Chú', 'phan-huy-chu', 'Đường', 176, 19, 1, 229, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1024, 'Phú Châu', 'phu-chau', 'Đường', 177, 19, 1, 6962, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1025, 'Phú Trung', 'phu-trung', 'Đường', 178, 19, 1, 6588, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1026, 'Quốc Lộ 13', 'quoc-lo-13', 'Đường', 179, 19, 1, 7634, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1027, 'Quốc Lộ 13A', 'quoc-lo-13a', 'Đường', 180, 19, 1, 12768, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1028, 'Quốc lộ 1A', 'quoc-lo-1a', 'Đường', 181, 19, 1, 2092, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1029, 'Quốc lộ 1K', 'quoc-lo-1k', 'Đường', 182, 19, 1, 2145, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1030, 'Quốc lộ 32', 'quoc-lo-32', 'Đường', 183, 19, 1, 6006, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1031, 'Rạch Lùng', 'rach-lung', 'Đường', 184, 19, 1, 10480, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1032, 'Số 1', 'so-1', 'Đường', 185, 19, 1, 11206, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1033, 'Số 10', 'so-10', 'Đường', 186, 19, 1, 11211, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1034, 'Số 11', 'so-11', 'Đường', 187, 19, 1, 11209, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1035, 'Số 12', 'so-12', 'Đường', 188, 19, 1, 11205, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1036, 'Số 13', 'so-13', 'Đường', 189, 19, 1, 11240, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1037, 'Số 14', 'so-14', 'Đường', 190, 19, 1, 11227, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1038, 'Số 15', 'so-15', 'Đường', 191, 19, 1, 11210, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1039, 'Số 16', 'so-16', 'Đường', 192, 19, 1, 11225, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1040, 'Số 17', 'so-17', 'Đường', 193, 19, 1, 11215, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1041, 'Số 18', 'so-18', 'Đường', 194, 19, 1, 11255, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1042, 'Số 19', 'so-19', 'Đường', 195, 19, 1, 11235, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1043, 'Số 2', 'so-2', 'Đường', 196, 19, 1, 11223, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1044, 'Số 20', 'so-20', 'Đường', 197, 19, 1, 11221, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1045, 'Số 21', 'so-21', 'Đường', 198, 19, 1, 11277, 1, '2017-05-05 03:04:50', '2017-05-05 03:04:50'),
(1046, 'Số 22', 'so-22', 'Đường', 199, 19, 1, 11228, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1047, 'Số 23', 'so-23', 'Đường', 200, 19, 1, 11245, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1048, 'Số 24', 'so-24', 'Đường', 201, 19, 1, 11317, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1049, 'Số 25', 'so-25', 'Đường', 202, 19, 1, 11279, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1050, 'Số 26', 'so-26', 'Đường', 203, 19, 1, 11262, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1051, 'Số 27', 'so-27', 'Đường', 204, 19, 1, 11216, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1052, 'Số 28', 'so-28', 'Đường', 205, 19, 1, 11237, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1053, 'Số 3', 'so-3', 'Đường', 206, 19, 1, 11219, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1054, 'Số 30', 'so-30', 'Đường', 207, 19, 1, 11289, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1055, 'Số 32', 'so-32', 'Đường', 208, 19, 1, 11298, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1056, 'Số 34', 'so-34', 'Đường', 209, 19, 1, 11261, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1057, 'Số 35', 'so-35', 'Đường', 210, 19, 1, 11296, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1058, 'Số 36', 'so-36', 'Đường', 211, 19, 1, 9396, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1059, 'Số 37', 'so-37', 'Đường', 212, 19, 1, 11280, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1060, 'Số 38', 'so-38', 'Đường', 213, 19, 1, 11212, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1061, 'Số 39', 'so-39', 'Đường', 214, 19, 1, 11229, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1062, 'Số 4', 'so-4', 'Đường', 215, 19, 1, 11232, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1063, 'Số 40', 'so-40', 'Đường', 216, 19, 1, 11231, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1064, 'Số 41', 'so-41', 'Đường', 217, 19, 1, 11246, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1065, 'Số 42', 'so-42', 'Đường', 218, 19, 1, 11335, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1066, 'Số 44', 'so-44', 'Đường', 219, 19, 1, 11315, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1067, 'Số 45', 'so-45', 'Đường', 220, 19, 1, 11266, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1068, 'Số 46', 'so-46', 'Đường', 221, 19, 1, 11243, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1069, 'Số 47', 'so-47', 'Đường', 222, 19, 1, 11218, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1070, 'Số 48', 'so-48', 'Đường', 223, 19, 1, 11513, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1071, 'Số 49', 'so-49', 'Đường', 224, 19, 1, 11297, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1072, 'Số 5', 'so-5', 'Đường', 225, 19, 1, 11217, 1, '2017-05-05 03:04:51', '2017-05-05 03:04:51'),
(1073, 'Số 50', 'so-50', 'Đường', 226, 19, 1, 11518, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1074, 'Số 51', 'so-51', 'Đường', 227, 19, 1, 11271, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1075, 'Số 52', 'so-52', 'Đường', 228, 19, 1, 11632, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1076, 'Số 520', 'so-520', 'Đường', 229, 19, 1, 13025, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1077, 'Số 53', 'so-53', 'Đường', 230, 19, 1, 11314, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1078, 'Số 54', 'so-54', 'Đường', 231, 19, 1, 11691, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1079, 'Số 6', 'so-6', 'Đường', 232, 19, 1, 11192, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1080, 'Số 647', 'so-647', 'Đường', 233, 19, 1, 11498, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1081, 'Số 652', 'so-652', 'Đường', 234, 19, 1, 11439, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1082, 'Số 668', 'so-668', 'Đường', 235, 19, 1, 11313, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1083, 'Số 7', 'so-7', 'Đường', 236, 19, 1, 11222, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1084, 'Số 8', 'so-8', 'Đường', 237, 19, 1, 11207, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1085, 'Số 808', 'so-808', 'Đường', 238, 19, 1, 11507, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1086, 'Số 9', 'so-9', 'Đường', 239, 19, 1, 11233, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1087, 'Sông Đà', 'song-da', 'Đường', 240, 19, 1, 6949, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1088, 'Tam Bình', 'tam-binh', 'Đường', 241, 19, 1, 5667, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1089, 'Tam Châu', 'tam-chau', 'Đường', 242, 19, 1, 7158, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1090, 'Tam Hà', 'tam-ha', 'Đường', 243, 19, 1, 7008, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1091, 'Tâm Tâm Xã', 'tam-tam-xa', 'Đường', 244, 19, 1, 6865, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1092, 'Tân Chánh Hiệp 16', 'tan-chanh-hiep-16', 'Đường', 245, 19, 1, 6607, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1093, 'Tân Chánh Hiệp 2', 'tan-chanh-hiep-2', 'Đường', 246, 19, 1, 6584, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1094, 'Tân Lập', 'tan-lap', 'Đường', 247, 19, 1, 2927, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1095, 'Tân Sơn Nhất', 'tan-son-nhat', 'Đường', 248, 19, 1, 7081, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1096, 'Tân Thảo', 'tan-thao', 'Đường', 249, 19, 1, 11281, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1097, 'Tân Thới Hiệp 10', 'tan-thoi-hiep-10', 'Đường', 250, 19, 1, 6597, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1098, 'Thạnh Lộc 27', 'thanh-loc-27', 'Đường', 251, 19, 1, 6605, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1099, 'Thạnh Xuân 13', 'thanh-xuan-13', 'Đường', 252, 19, 1, 6590, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1100, 'Thạnh Xuân 21', 'thanh-xuan-21', 'Đường', 253, 19, 1, 6600, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1101, 'Thích Bửu Đăng', 'thich-buu-dang', 'Đường', 254, 19, 1, 6585, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1102, 'Thống Nhất', 'thong-nhat', 'Đường', 255, 19, 1, 2097, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1103, 'Tỉnh lộ 43', 'tinh-lo-43', 'Đường', 256, 19, 1, 7815, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1104, 'Tô Ngọc Vân', 'to-ngoc-van', 'Đường', 257, 19, 1, 795, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1105, 'Tô Vĩnh Diện', 'to-vinh-dien', 'Đường', 258, 19, 1, 328, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1106, 'Trại Gà', 'trai-ga', 'Đường', 259, 19, 1, 6610, 1, '2017-05-05 03:04:52', '2017-05-05 03:04:52'),
(1107, 'Trần Quang Đạo', 'tran-quang-dao', 'Đường', 260, 19, 1, 6593, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1108, 'Trần Văn Nữa', 'tran-van-nua', 'Đường', 261, 19, 1, 6707, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1109, 'Trích Sài', 'trich-sai', 'Đường', 262, 19, 1, 6595, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1110, 'Trịnh Phong Đáng', 'trinh-phong-dang', 'Đường', 263, 19, 1, 2091, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1111, 'Trưng Nhị', 'trung-nhi', 'Đường', 264, 19, 1, 2225, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1112, 'Trưng Trắc', 'trung-trac', 'Đường', 265, 19, 1, 356, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1113, 'Trưng Trắc B', 'trung-trac-b', 'Đường', 266, 19, 1, 10675, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1114, 'Trường Sơn', 'truong-son', 'Đường', 267, 19, 1, 1094, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1115, 'Trường Thọ', 'truong-tho', 'Đường', 268, 19, 1, 8575, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1116, 'Truông Tre', 'truong-tre', 'Đường', 269, 19, 1, 2098, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1117, 'Trương Văn Đa', 'truong-van-da', 'Đường', 270, 19, 1, 6594, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1118, 'Trương Văn Ngư', 'truong-van-ngu', 'Đường', 271, 19, 1, 9754, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1119, 'Ụ Ghe', 'u-ghe', 'Đường', 272, 19, 1, 5737, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1120, 'Vành Đai 2', 'vanh-dai-2', 'Đường', 273, 19, 1, 8092, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1121, 'Vành Đai Đông', 'vanh-dai-dong', 'Đường', 274, 19, 1, 6331, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1122, 'Võ Nguyên Giáp', 'vo-nguyen-giap', 'Đường', 275, 19, 1, 7209, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1123, 'Võ Quảng', 'vo-quang', 'Đường', 276, 19, 1, 6577, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1124, 'Võ Tiên Sư', 'vo-tien-su', 'Đường', 277, 19, 1, 6404, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1125, 'Võ Văn Ngân', 'vo-van-ngan', 'Đường', 278, 19, 1, 5011, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1126, 'Xa La', 'xa-la', 'Đường', 279, 19, 1, 6586, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1127, 'Xa lộ Đại Hàn', 'xa-lo-dai-han', 'Đường', 280, 19, 1, 8136, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1128, 'Xa Lộ Hà Nội', 'xa-lo-ha-noi', 'Đường', 281, 19, 1, 5820, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1129, 'Xô Viết Nghệ Tĩnh', 'xo-viet-nghe-tinh', 'Đường', 282, 19, 1, 2070, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53'),
(1130, 'Xuyên Á', 'xuyen-a', 'Đường', 283, 19, 1, 4795, 1, '2017-05-05 03:04:53', '2017-05-05 03:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `tab`
--

CREATE TABLE `tab` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tab`
--

INSERT INTO `tab` (`id`, `name`, `slug`) VALUES
(1, 'Giới thiệu', 'gioi-thieu'),
(2, 'Vị trí', 'vi-tri'),
(3, 'Tiện ích', 'tien-ich'),
(4, 'Thiết kế', 'thiet-ke'),
(5, 'Thanh toán', 'thanh-toan'),
(6, 'Brochure', 'brochure'),
(7, 'Liên hệ', 'lien-he');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `meta_id` bigint(20) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 bds 2 tin tuc 3 tien ich',
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` varchar(32) DEFAULT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `meta_id`, `slug`, `type`, `name`, `alias`, `description`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(2, 37, 'gan-xa-lo-ha-noi', 3, 'Gần xa lộ Hà Nội', 'Gan xa lo Ha Noi', 'Nhà bán gần xa lộ Hà Nội, Tất cả', 8, 8, '2017-05-27 20:54:49', '2017-05-28 20:08:11'),
(4, 40, 'tu-van-phong-thuy-nha-dat-quan-9', 2, 'Tư vấn phong thủy nhà đất quận 9', 'Tu van phong thuy nha dat quan 9', '', 8, 8, '2017-05-28 18:42:20', '2017-05-28 18:42:20'),
(5, 43, 'dat-nen-quan-9-gia-re', 1, 'Đất nền quận 9 giá rẻ', 'Dat nen quan 9 gia re', '', 8, 8, '2017-05-29 07:06:34', '2017-05-29 07:06:34'),
(6, 44, 'du-ban-dat-nen-quan-9', 1, 'Dự bán đất nền quận 9', 'Du ban dat nen quan 9', '', 8, 8, '2017-05-29 07:10:37', '2017-05-29 07:10:37'),
(7, 45, 'ban-nha-rieng-quan-9', 1, 'Bán nhà riêng quận 9', 'Ban nha rieng quan 9', 'Kênh thông tin bất động sản, thô', 8, 8, '2017-05-29 07:30:40', '2017-05-30 07:01:37'),
(8, NULL, 'tin-tuc-dat-nen-dat-nen-sai-gon', 2, 'tin tức đất nền, đất nền Sài Gòn', NULL, NULL, 8, 8, '2017-05-29 07:38:41', '2017-05-29 07:38:41'),
(9, 0, 'tin-tuc-dat-nen', 2, 'tin tức đất nền', 'tin tuc dat nen', '', 8, 8, '2017-05-29 07:39:01', '2017-05-30 06:40:18'),
(10, 0, 'nha-mat-tien-quan-9', 1, 'Nhà mặt tiền quận 9', 'Nha mat tien quan 9', '', 13, 8, '2017-05-29 21:45:29', '2017-05-30 07:05:37'),
(11, 0, 'nha-mat-tien-duong-359-quan-9', 1, 'Nhà mặt tiền đường 359 quận 9', 'Nha mat tien duong 359 quan 9', '', 13, 8, '2017-05-29 21:46:04', '2017-05-30 07:05:03'),
(12, 0, 'nha-trung-tam-quan-9-gia-re', 1, 'Nhà trung tâm quận 9 giá rẻ', 'Nha trung tam quan 9 gia re', '', 13, 8, '2017-05-29 21:46:22', '2017-05-30 07:05:13'),
(13, 0, 'nha-2-mat-tien-trung-tam-quan-9', 1, 'Nhà 2 mặt tiền trung tâm quận 9', 'Nha 2 mat tien trung tam quan 9', '', 13, 8, '2017-05-29 21:46:47', '2017-05-30 07:05:21'),
(14, 0, 'nha-pho-quan-9-gia-re', 1, 'Nhà phố quận 9 giá rẻ', 'Nha pho quan 9 gia re', '', 13, 8, '2017-05-29 21:47:23', '2017-05-30 07:05:28'),
(15, 0, 'dat-nen-thu-duc-gia-re', 1, 'Đất nền thủ đức giá rẻ', 'Dat nen thu duc gia re', '', 13, 8, '2017-05-29 22:42:21', '2017-05-30 07:04:26'),
(16, NULL, 'thi-truong-dat-nen', 2, 'thị trường đất nền', NULL, NULL, 8, 8, '2017-05-29 23:41:07', '2017-05-29 23:41:07'),
(17, NULL, 'thi-truong-bat-dong-san-binh-duong', 2, 'Thị trường bất động sản Bình Dương', NULL, NULL, 8, 8, '2017-05-30 06:39:58', '2017-05-30 06:39:58'),
(18, NULL, 'bat-dong-san-binh-duong', 2, 'Bất động sản Bình Dương', NULL, NULL, 8, 8, '2017-05-30 06:39:58', '2017-05-30 06:39:58'),
(19, 48, 'thi-truong-dat-nen-ho-chi-minh', 2, 'thị trường đất nền Hồ Chí Minh', 'thi truong dat nen Ho Chi Minh', '', 8, 8, '2017-05-30 06:40:32', '2017-05-30 06:40:32'),
(20, NULL, 'nha-mat-tien-duong-duong-dinh-hoi-quan-9', 1, 'Nhà mặt tiền đường Dương Đình Hội quận 9', NULL, NULL, 8, 8, '2017-05-30 07:27:32', '2017-05-30 07:27:32'),
(22, NULL, 'ban-gap-nha-mat-tien-duong-297-quan-9', 1, 'Bán gấp nhà mặt tiền đường 297 quận 9', NULL, NULL, 8, 8, '2017-05-30 14:50:28', '2017-05-30 14:50:28'),
(23, NULL, 'tin-tuc-thi-truong-bat-dong-san', 2, 'Tin tức thị trường bất động sản', NULL, NULL, 8, 8, '2017-05-30 23:58:01', '2017-05-30 23:58:01'),
(24, NULL, 'thiet-ke-nha-cap-4-dep', 2, 'Thiết kế nhà cấp 4 đẹp', NULL, NULL, 8, 8, '2017-05-31 07:29:03', '2017-05-31 07:29:03'),
(25, NULL, 'mau-nha-cap-4-hien-dai', 2, 'mẫu nhà cấp 4 hiện đại', NULL, NULL, 8, 8, '2017-05-31 07:29:03', '2017-05-31 07:29:03'),
(26, NULL, 'tin-tuc-dat-nen-sai-gon', 2, 'Tin tức đất nền Sài Gòn', NULL, NULL, 8, 8, '2017-06-01 00:21:20', '2017-06-01 00:21:20'),
(27, NULL, 'thiet-ke-noi-that-dep', 2, 'Thiết kế nội thất đẹp', NULL, NULL, 8, 8, '2017-06-01 07:15:52', '2017-06-01 07:15:52'),
(28, NULL, 'thiet-ke-phong-ngu-dep', 2, 'Thiết kế phòng ngủ đẹp', NULL, NULL, 8, 8, '2017-06-01 07:15:52', '2017-06-01 07:15:52'),
(29, NULL, 'cho-thue-can-ho-quan-9', 1, 'Cho thuê căn hộ quận 9', NULL, NULL, 8, 8, '2017-06-01 07:27:36', '2017-06-01 07:27:36'),
(30, NULL, 'can-ho-cho-thue', 1, 'Căn hộ cho thuê', NULL, NULL, 8, 8, '2017-06-01 07:27:36', '2017-06-01 07:27:36'),
(31, NULL, 'cho-thue-can-ho-cao-cap', 1, 'Cho thuê căn hộ cao cấp', NULL, NULL, 8, 8, '2017-06-01 07:27:36', '2017-06-01 07:27:36'),
(32, NULL, 'cho-thue-can-ho-lucky-dragon', 1, 'Cho thuê căn hộ Lucky Dragon', NULL, NULL, 8, 8, '2017-06-01 07:27:36', '2017-06-01 07:27:36'),
(33, NULL, 'cho-thue-can-ho-chung-cu-cao-cap-quan-9', 1, 'Cho thuê căn hộ chung cư cao cấp quận 9', NULL, NULL, 8, 8, '2017-06-01 07:27:36', '2017-06-01 07:27:36'),
(34, NULL, 'cho-thue-can-ho-duong-do-xuan-hop-quan-9', 1, 'Cho thuê căn hộ đường Đỗ Xuân Hợp quận 9', NULL, NULL, 8, 8, '2017-06-01 07:31:35', '2017-06-01 07:31:35'),
(35, NULL, 'tu-van-mua-tra-gop-can-ho-chung-cu', 2, 'Tư vấn mua trả góp căn hộ chung cư', NULL, NULL, 8, 8, '2017-06-01 23:59:54', '2017-06-01 23:59:54'),
(36, NULL, 'kinh-nghiem-mua-tra-gop-can-ho-chung-cu', 2, 'Kinh nghiệm mua trả góp căn hộ chung cư', NULL, NULL, 8, 8, '2017-06-01 23:59:54', '2017-06-01 23:59:54'),
(37, NULL, 'tu-van-trang-tri-can-ho-dep', 2, 'Tư vấn trang trí căn hộ đẹp', NULL, NULL, 8, 8, '2017-06-02 07:29:23', '2017-06-02 07:29:23'),
(38, NULL, 'phap-ly-nha-dat', 2, 'Pháp lý nhà đất', NULL, NULL, 8, 8, '2017-06-04 07:01:04', '2017-06-04 07:01:04'),
(39, NULL, 'luat-cap-so-do', 2, 'luật cấp sổ đỏ', NULL, NULL, 8, 8, '2017-06-04 07:01:04', '2017-06-04 07:01:04'),
(40, NULL, 'kinh-nghiem-mua-can-ho-chung-cu', 2, 'Kinh nghiệm mua căn hộ chung cư', NULL, NULL, 8, 8, '2017-06-05 07:17:18', '2017-06-05 07:17:18'),
(41, NULL, 'luat-tranh-chap-nha-dat', 2, 'Luật tranh chấp nhà đất', NULL, NULL, 8, 8, '2017-06-05 07:18:43', '2017-06-05 07:18:43'),
(42, 64, 'gan-truong-hoc', 3, 'Gần trường học', 'Gan truong hoc', '', 8, 8, '2017-06-06 06:44:27', '2017-06-06 06:44:27'),
(43, 65, 'gan-cho', 3, 'Gần chợ', 'Gan cho', '', 8, 8, '2017-06-06 06:44:50', '2017-06-06 06:44:50'),
(44, 66, 'gan-benh-vien', 3, 'Gần bệnh viên', 'Gan benh vien', '', 8, 8, '2017-06-06 06:45:24', '2017-06-06 06:45:24'),
(45, NULL, 'ban-nha-duong-la-xuan-oai-quan-9', 1, 'Bán nhà đường Lã Xuân Oai quận 9', NULL, NULL, 8, 8, '2017-06-06 06:51:15', '2017-06-06 06:51:15'),
(46, NULL, 'ban-nha-rieng-phuong-long-truong-quan-9', 1, 'Bán nhà riêng phương Long Trường quận 9', NULL, NULL, 8, 8, '2017-06-06 06:51:38', '2017-06-06 06:51:38'),
(47, NULL, 'luat-mua-nha-danh-cho-nguoi-nuoc-ngoai', 2, 'Luật mua nhà dành cho người nước ngoài', NULL, NULL, 8, 8, '2017-06-06 07:13:39', '2017-06-06 07:13:39'),
(48, NULL, 'nguoi-nuoc-ngoai-mua-nha-o-viet-nam', 2, 'Người nước ngoài mua nhà ở việt nam', NULL, NULL, 8, 8, '2017-06-06 07:14:06', '2017-06-06 07:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `tag_objects`
--

CREATE TABLE `tag_objects` (
  `object_id` int(20) NOT NULL,
  `tag_id` int(20) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 : product, 2 : tin tuc',
  `object_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 : product, 2 : album, 3 : video , 4 : tin tức'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag_objects`
--

INSERT INTO `tag_objects` (`object_id`, `tag_id`, `type`, `object_type`) VALUES
(1, 4, 2, 1),
(2, 4, 2, 1),
(2, 15, 1, 1),
(3, 7, 1, 1),
(3, 8, 2, 1),
(3, 9, 2, 1),
(3, 10, 1, 1),
(3, 11, 1, 1),
(3, 12, 1, 1),
(3, 13, 1, 1),
(3, 14, 1, 1),
(4, 7, 1, 1),
(4, 10, 1, 1),
(4, 12, 1, 1),
(4, 14, 1, 1),
(4, 16, 2, 1),
(4, 20, 1, 1),
(5, 7, 1, 1),
(5, 17, 2, 1),
(5, 18, 2, 1),
(5, 22, 1, 1),
(6, 23, 2, 1),
(6, 29, 1, 1),
(6, 30, 1, 1),
(6, 31, 1, 1),
(6, 32, 1, 1),
(6, 33, 1, 1),
(6, 34, 1, 1),
(7, 7, 1, 1),
(7, 42, 3, 1),
(7, 43, 3, 1),
(7, 44, 3, 1),
(7, 45, 1, 1),
(7, 46, 1, 1),
(8, 24, 2, 1),
(8, 25, 2, 1),
(9, 23, 2, 1),
(9, 26, 2, 1),
(10, 27, 2, 1),
(10, 28, 2, 1),
(11, 35, 2, 1),
(11, 36, 2, 1),
(12, 27, 2, 1),
(12, 37, 2, 1),
(13, 38, 2, 1),
(13, 39, 2, 1),
(14, 38, 2, 1),
(14, 39, 2, 1),
(14, 41, 2, 1),
(15, 38, 2, 1),
(15, 40, 2, 1),
(16, 47, 2, 1),
(16, 48, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`id`, `text`) VALUES
(1, '0968 11 1080'),
(2, '0938 211 114'),
(3, 'vietsth1.11@gmail.com'),
(4, 'vietsth1.11@gmail.com'),
(5, 'CÔNG TY TNHH XD SỬA CHỮA CÔNG TRÌNH STH'),
(6, '54/2/19 Bạch Đằng, Phường 2, Q.Tân Bình, TP.HCM'),
(7, '08.6250 9292'),
(8, '0312996932'),
(9, 'sthsg.vn@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL,
  `creation_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `display_order`, `creation_time`, `update_time`) VALUES
(1, 'Cần bán', 1, 1417106448, 1417106448),
(2, 'Cho thuê', 2, 1417106448, 1417106448);

-- --------------------------------------------------------

--
-- Table structure for table `type_bds`
--

CREATE TABLE `type_bds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `display_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_bds`
--

INSERT INTO `type_bds` (`id`, `name`, `alias`, `type`, `display_order`) VALUES
(3, 'Văn phòng', 'cho-thue-van-phong', 1, 1),
(4, 'Phòng', 'cho-thue-phong', 1, 2),
(5, 'Nhà nguyên căn', 'cho-thue-nha-nguyen-can', 1, 3),
(6, 'Căn hộ', 'ban-can-ho', 2, 1),
(7, 'Nhà phố', 'ban-nha-pho', 2, 2),
(8, 'Nhà riêng', 'ban-nha-rieng', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `leader_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `changed_password` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`, `leader_id`, `status`, `changed_password`, `remember_token`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'PhuongPA', 'admin@cahatvui.com', '$2y$10$.WU/kgD2RISj5bISu5ZY9OckquaqJpp9T1JOjbIfXvgpINs2eEK/2', 3, 1, 1, 0, '', 1, 1, '2017-06-06 00:00:00', '2017-06-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` int(11) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_id` int(11) DEFAULT NULL,
  `prefix` varchar(20) NOT NULL,
  `display_order` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `id_dothi` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`id`, `name`, `slug`, `meta_id`, `prefix`, `display_order`, `district_id`, `city_id`, `id_dothi`, `status`, `created_at`, `updated_at`) VALUES
(1, ' Thạnh Mỹ Lợi', 'thanh-my-loi', NULL, 'Phường', 1, 2, 1, 121, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(2, 'An Khánh', 'an-khanh', NULL, 'Phường', 2, 2, 1, 116, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(3, 'An Lợi Đông', 'an-loi-dong', NULL, 'Phường', 3, 2, 1, 119, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(4, 'An Phú', 'an-phu', NULL, 'Phường', 4, 2, 1, 118, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(5, 'Bình An', 'binh-an', NULL, 'Phường', 5, 2, 1, 112, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(6, 'Bình Khánh', 'binh-khanh', NULL, 'Phường', 6, 2, 1, 113, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(7, 'Bình Trưng Đông', 'binh-trung-dong', NULL, 'Phường', 7, 2, 1, 115, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(8, 'Bình Trưng Tây', 'binh-trung-tay', NULL, 'Phường', 8, 2, 1, 114, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(9, 'Cát Lái', 'cat-lai', NULL, 'Phường', 9, 2, 1, 120, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(10, 'Thảo Điền', 'thao-dien', NULL, 'Phường', 10, 2, 1, 111, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(11, 'Thủ Thiêm', 'thu-thiem', NULL, 'Phường', 11, 2, 1, 117, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(12, 'Hiệp Phú', 'hiep-phu', NULL, 'Phường', 1, 9, 1, 5848, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(13, 'Long Bình', 'long-binh', NULL, 'Phường', 2, 9, 1, 5850, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(14, 'Long Phước', 'long-phuoc', NULL, 'Phường', 3, 9, 1, 5852, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(15, 'Long Thạnh Mỹ', 'long-thanh-my', NULL, 'Phường', 4, 9, 1, 5849, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(16, 'Long Trường', 'long-truong', NULL, 'Phường', 5, 9, 1, 5842, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(17, 'Phú Hữu', 'phu-huu', NULL, 'Phường', 6, 9, 1, 5853, 1, '2017-05-05 02:53:14', '2017-05-05 02:53:14'),
(18, 'Phước Bình', 'phuoc-binh', NULL, 'Phường', 7, 9, 1, 5845, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(19, 'Phước Long A', 'phuoc-long-a', NULL, 'Phường', 8, 9, 1, 5837, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(20, 'Phước Long B', 'phuoc-long-b', NULL, 'Phường', 9, 9, 1, 5838, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(21, 'Tân Phú', 'tan-phu', NULL, 'Phường', 10, 9, 1, 5846, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(22, 'Tăng Nhơn Phú A', 'tang-nhon-phu-a', NULL, 'Phường', 11, 9, 1, 5840, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(23, 'Tăng Nhơn Phú B', 'tang-nhon-phu-b', NULL, 'Phường', 12, 9, 1, 5841, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(24, 'Trường Thạnh', 'truong-thanh', NULL, 'Phường', 13, 9, 1, 5844, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(25, 'Bình Chiểu', 'binh-chieu', NULL, 'Phường', 1, 19, 1, 11895, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(26, 'Bình Thọ', 'binh-tho', NULL, 'Phường', 2, 19, 1, 11953, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(27, 'Hiệp Bình Chánh', 'hiep-binh-chanh', NULL, 'Phường', 3, 19, 1, 133, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(28, 'Hiệp Bình Phước', 'hiep-binh-phuoc', NULL, 'Phường', 4, 19, 1, 134, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(29, 'Linh Chiểu', 'linh-chieu', NULL, 'Phường', 5, 19, 1, 11916, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(30, 'Linh Đông', 'linh-dong', NULL, 'Phường', 6, 19, 1, 135, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(31, 'Linh Tây', 'linh-tay', NULL, 'Phường', 7, 19, 1, 11915, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(32, 'Linh Trung', 'linh-trung', NULL, 'Phường', 8, 19, 1, 136, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(33, 'Linh Xuân', 'linh-xuan', NULL, 'Phường', 9, 19, 1, 137, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(34, 'Tam Bình', 'tam-binh', NULL, 'Phường', 10, 19, 1, 138, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(35, 'Tam Phú', 'tam-phu', NULL, 'Phường', 11, 19, 1, 139, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15'),
(36, 'Trường Thọ', 'truong-tho', NULL, 'Phường', 12, 19, 1, 11845, 1, '2017-05-05 02:53:15', '2017-05-05 02:53:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles_cate`
--
ALTER TABLE `articles_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `date_auto` (`date_auto`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `full_name` (`full_name`),
  ADD KEY `email` (`email`),
  ADD KEY `phone` (`phone`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_link`
--
ALTER TABLE `custom_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direction`
--
ALTER TABLE `direction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estate_type`
--
ALTER TABLE `estate_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_seo`
--
ALTER TABLE `info_seo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`);

--
-- Indexes for table `landing_projects`
--
ALTER TABLE `landing_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal`
--
ALTER TABLE `legal`
  ADD PRIMARY KEY (`legal_id`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objects_info`
--
ALTER TABLE `objects_info`
  ADD PRIMARY KEY (`object_id`,`info_id`,`type`);

--
-- Indexes for table `object_tag`
--
ALTER TABLE `object_tag`
  ADD UNIQUE KEY `object_id` (`object_id`,`tag_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_unit`
--
ALTER TABLE `price_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `image_url` (`image_url`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_tab`
--
ALTER TABLE `project_tab`
  ADD PRIMARY KEY (`project_id`,`tab_id`);

--
-- Indexes for table `project_type`
--
ALTER TABLE `project_type`
  ADD PRIMARY KEY (`project_type_id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`) USING BTREE;

--
-- Indexes for table `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab`
--
ALTER TABLE `tab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_objects`
--
ALTER TABLE `tag_objects`
  ADD PRIMARY KEY (`object_id`,`tag_id`,`type`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `type_bds`
--
ALTER TABLE `type_bds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `articles_cate`
--
ALTER TABLE `articles_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `auto`
--
ALTER TABLE `auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `custom_link`
--
ALTER TABLE `custom_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `direction`
--
ALTER TABLE `direction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=708;
--
-- AUTO_INCREMENT for table `estate_type`
--
ALTER TABLE `estate_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `info_seo`
--
ALTER TABLE `info_seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `landing_projects`
--
ALTER TABLE `landing_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `legal`
--
ALTER TABLE `legal`
  MODIFY `legal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `price_unit`
--
ALTER TABLE `price_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `project_type`
--
ALTER TABLE `project_type`
  MODIFY `project_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `street`
--
ALTER TABLE `street`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1131;
--
-- AUTO_INCREMENT for table `tab`
--
ALTER TABLE `tab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `type_bds`
--
ALTER TABLE `type_bds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ward`
--
ALTER TABLE `ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
