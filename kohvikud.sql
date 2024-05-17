-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 17, 2024 kell 12:17 PL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `kohvikud`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `hinnangud`
--

CREATE TABLE `hinnangud` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kommentaar` varchar(255) NOT NULL,
  `hinnang` int(2) NOT NULL,
  `toidukohad_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `hinnangud`
--

INSERT INTO `hinnangud` (`id`, `nimi`, `kommentaar`, `hinnang`, `toidukohad_id`) VALUES
(1, 'Howe-Stehr', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', 10, 26),
(2, 'Thompson Group', 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales s', 3, 12),
(3, 'Shanahan-Morar', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere ', 9, 49),
(4, 'Gutkowski, Nolan and Goldner', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 4, 15),
(5, 'Hegmann Group', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien ia', 9, 82),
(6, 'Bednar-Schaden', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 7, 97),
(7, 'Trantow-Pouros', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in fauci', 7, 20),
(8, 'Lueilwitz, Johns and Predovic', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 3, 57),
(9, 'Jenkins-Mayert', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 2, 42),
(10, 'Altenwerth LLC', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 8, 68),
(11, 'Block LLC', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 8, 72),
(12, 'Witting-Bechtelar', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 5, 17),
(13, 'Reichert, Connelly and Fadel', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 7, 84),
(14, 'Feest-Cassin', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 6, 86),
(15, 'Luettgen and Sons', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 6, 26),
(16, 'Bednar-Goldner', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 2, 80),
(17, 'Wolf, Hackett and Aufderhar', 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 5, 33),
(18, 'Daugherty, Schneider and Kunze', 'Nunc purus.', 5, 32),
(19, 'Bradtke Group', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 1, 23),
(20, 'Cassin-Heller', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 3, 16),
(21, 'Lindgren-Champlin', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam', 3, 36),
(22, 'Bayer, Heller and Hermiston', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 5, 3),
(23, 'McClure and Sons', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 5, 92),
(24, 'Langosh, Murray and Grady', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque', 5, 74),
(25, 'Gleichner and Sons', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 3, 70),
(26, 'Crooks, Murazik and Schaefer', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.', 7, 18),
(27, 'Kohler-Schroeder', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere ', 8, 74),
(28, 'Hahn, Bartell and Luettgen', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Eti', 4, 4),
(29, 'Haag, Mraz and Rutherford', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 10, 91),
(30, 'Keebler LLC', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 8, 7),
(31, 'Heller, Prohaska and VonRueden', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Eti', 1, 75),
(32, 'Bahringer, Jacobi and Weber', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 2, 35),
(33, 'Marquardt, Mann and Mitchell', 'Praesent blandit.', 4, 15),
(34, 'Jaskolski-Will', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 6, 63),
(35, 'Weimann-O\'Connell', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 5, 87),
(36, 'Franecki-Feeney', 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.', 10, 6),
(37, 'Muller Group', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 4, 82),
(38, 'Corwin, Keeling and Oberbrunner', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellent', 7, 11),
(39, 'Beahan-Konopelski', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus ', 3, 93),
(40, 'Runolfsdottir-Jakubowski', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 3, 87),
(41, 'Fisher and Sons', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 3, 35),
(42, 'Mraz, Streich and Gorczany', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 10, 73),
(43, 'Bode, Hickle and Lynch', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 5, 90),
(44, 'Weissnat-Leannon', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellent', 5, 64),
(45, 'Denesik, Renner and Sawayn', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vita', 6, 16),
(46, 'Purdy and Sons', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', 2, 84),
(47, 'Rau-Lesch', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 4, 36),
(48, 'Collier Inc', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pe', 6, 77),
(49, 'Dietrich-Hodkiewicz', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 2, 99),
(50, 'Gerlach LLC', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 2, 9),
(51, 'Leuschke-Jerde', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui n', 7, 50),
(52, 'Bode, Dibbert and Kilback', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 6, 41),
(53, 'Champlin-Ortiz', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliqu', 2, 45),
(54, 'Stark Inc', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 10, 77),
(55, 'Reilly-O\'Conner', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 9, 71),
(56, 'Zboncak-Reichel', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 8, 12),
(57, 'Thompson, Schuppe and Rempel', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 4, 60),
(58, 'Jacobi-Mertz', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum', 10, 99),
(59, 'Shanahan LLC', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tri', 8, 36),
(60, 'Mitchell Inc', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 3, 64),
(61, 'DuBuque-Koss', 'Pellentesque viverra pede ac diam.', 8, 76),
(62, 'Ernser LLC', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, t', 5, 57),
(63, 'DuBuque Group', 'Morbi a ipsum. Integer a nibh.', 1, 25),
(64, 'McDermott, Baumbach and King', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 3, 10),
(65, 'Morissette-Roob', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 8, 33),
(66, 'Weissnat, Keeling and Lang', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcor', 10, 4),
(67, 'Farrell-Muller', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.', 3, 36),
(68, 'Mayer-Bergstrom', 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculi', 5, 73),
(69, 'Langworth-Lehner', 'Donec ut mauris eget massa tempor convallis.', 4, 58),
(70, 'Wolf, Gerlach and Kovacek', 'Praesent id massa id nisl venenatis lacinia.', 4, 27),
(71, 'Kling LLC', 'Curabitur in libero ut massa volutpat convallis.', 4, 26),
(72, 'Turcotte-Dibbert', 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque po', 3, 18),
(73, 'Boyer-Mosciski', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 5, 13),
(74, 'Simonis-Anderson', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 2, 93),
(75, 'Armstrong, Heidenreich and Wunsch', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 3, 51),
(76, 'Cremin, Thompson and Kertzmann', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 6, 55),
(77, 'Orn, Mosciski and Tillman', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 6, 14),
(78, 'Schowalter LLC', 'Aenean fermentum.', 9, 8),
(79, 'Harvey and Sons', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 7, 20),
(80, 'Deckow Inc', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 9, 90),
(81, 'Satterfield Group', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 2, 76),
(82, 'Satterfield, Predovic and Fadel', 'Cras non velit nec nisi vulputate nonummy.', 7, 78),
(83, 'Rogahn-Schimmel', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est ', 2, 58),
(84, 'Moen, Satterfield and Schoen', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 9, 67),
(85, 'Volkman, Rohan and Keebler', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 7, 77),
(86, 'Wintheiser, Tromp and Williamson', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 6, 8),
(87, 'Lynch-Graham', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 6, 2),
(88, 'Lueilwitz-Jacobson', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 2, 58),
(89, 'Botsford, Hirthe and Hudson', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 8, 3),
(90, 'Buckridge Group', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcor', 10, 83),
(91, 'Murray-Dickens', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus', 7, 68),
(92, 'White-Wolff', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 4, 12),
(93, 'Johns Inc', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', 10, 53),
(94, 'Kassulke-West', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 3, 96),
(95, 'Goldner Inc', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 7, 60),
(96, 'Hettinger, O\'Hara and Walsh', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 8, 93),
(97, 'Mayer and Sons', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 3, 46),
(98, 'Aufderhar and Sons', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 4, 3),
(99, 'Schinner-Ebert', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', 2, 54),
(100, 'Mosciski, Price and Gislason', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in fauci', 7, 20);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `toidukohad`
--

CREATE TABLE `toidukohad` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `keskmine_hinne` double NOT NULL,
  `hinnatud` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `toidukohad`
--

INSERT INTO `toidukohad` (`id`, `nimi`, `asukoht`, `keskmine_hinne`, `hinnatud`) VALUES
(1, 'Idelle Winman', 'Şafwá', 5.7, 95),
(2, 'Bamby Rigmand', 'Bochov', 4, 39),
(3, 'Colby Halpin', 'Ipoh', 7.4, 85),
(4, 'Joli Teaze', 'Wręczyca Wielka', 2.4, 9),
(5, 'Pen Silmon', 'Kyjov', 3.6, 60),
(6, 'Cassondra Hansill', 'Tyazhinskiy', 5.8, 80),
(7, 'Vanya Riby', 'Belišće', 9.7, 30),
(8, 'Celesta Fellows', 'Guarabira', 2, 64),
(9, 'Bing Cuffe', 'Przyborów', 2.2, 53),
(10, 'Griffy East', 'Göteborg', 9.1, 97),
(11, 'Aloysius Postles', 'Pravda', 9.7, 21),
(12, 'Hewe Andreazzi', 'Las Americas', 6.8, 56),
(13, 'Giff Dyter', 'Coloncito', 8.7, 68),
(14, 'Wileen Kelinge', 'Saint-Bruno-de-Guigues', 3.3, 25),
(15, 'Dan Elcoux', 'Shanxi', 3.1, 9),
(16, 'Holli Krabbe', 'Iradan', 6.1, 65),
(17, 'Jillana Lucian', 'Aoshi', 1, 55),
(18, 'Ondrea Bartlomieczak', 'Akat Amnuai', 6.8, 91),
(19, 'Sander Sinderland', 'Kerva', 4, 11),
(20, 'Hephzibah Pavlik', 'Nilópolis', 7.6, 28),
(21, 'Therine Vasyatkin', 'Heshang', 7.5, 52),
(22, 'Clair Longland', 'Soledar', 10, 74),
(23, 'Kennett Eustace', 'Kanye', 2.8, 49),
(24, 'Magdalene Noulton', 'Jarada', 6.7, 20),
(25, 'Curtice Mayell', 'Boden', 7.6, 80),
(26, 'Tim Dallender', 'Papakura', 4.4, 32),
(27, 'Seward Coltan', 'Pereiros', 3.5, 40),
(28, 'Dotti Spacy', 'Nanhai', 2.9, 95),
(29, 'Durant Ambrogelli', 'Bollnäs', 4.6, 76),
(30, 'Teena Saunter', 'Kwangju', 2.2, 31),
(31, 'Roscoe Askell', 'Xianyang', 9.6, 84),
(32, 'Glenn Fedoronko', 'Libertador General San Martín', 7.3, 48),
(33, 'Sherman MacTimpany', 'Emiliano Zapata', 3.4, 72),
(34, 'Jarad Bruhnicke', 'Yanwan', 6.8, 80),
(35, 'Nat Ronaldson', 'Amadora', 3.6, 19),
(36, 'Roth Cordner', 'Tagdanua', 4.8, 34),
(37, 'Giffy Casaroli', 'Baitao', 1.5, 75),
(38, 'Jennee Ewart', 'Salaya', 9.7, 46),
(39, 'Ulrich Penrith', 'Los Cerrillos', 5, 58),
(40, 'Ad Vickars', 'Kang', 7.5, 2),
(41, 'Maurene Passler', 'Yilan', 8, 40),
(42, 'Marven Danskine', 'Āsbe Teferī', 6.4, 7),
(43, 'Isabella Bentame', 'Dongdajie', 1.1, 13),
(44, 'Julianna Charlesworth', 'Kidatu', 6.8, 84),
(45, 'Susy Launchbury', 'São José dos Pinhais', 4.7, 69),
(46, 'Gipsy Brunn', 'Tumpukrenteng', 8.2, 32),
(47, 'Luce Goatman', 'Jokkmokk', 5.9, 71),
(48, 'Marylynne Rubinowitsch', 'Whittlesea', 9.9, 100),
(49, 'Holt Rutigliano', 'San Antonio', 5.2, 30),
(50, 'Angelia Chirm', 'Khānaqāh', 8.3, 52),
(51, 'Merna Archell', 'Pining', 8.6, 14),
(52, 'Benyamin Defont', 'Beaufort', 2.3, 25),
(53, 'Paco Ludlom', 'Tasböget', 8.6, 95),
(54, 'Gallard Borland', 'Ninh Giang', 8.7, 51),
(55, 'Wendye Ritson', 'Jiblah', 3.9, 31),
(56, 'Irwinn Sheaber', 'Nanshao', 7.5, 70),
(57, 'Lacie Laughnan', 'Digne-les-Bains', 6.8, 68),
(58, 'Jefferey Huffa', 'Gavinhos de Baixo', 9.2, 26),
(59, 'Cully Gerdes', 'Potchefstroom', 1.1, 100),
(60, 'Aubrette Beaford', 'Weichanglu', 2.7, 83),
(61, 'Hamnet Kingsly', 'Vatutino', 9.8, 91),
(62, 'Colas Eccles', 'Trollhättan', 7.5, 44),
(63, 'Boniface Aikman', 'Kilindoni', 9.8, 58),
(64, 'Tarra Janc', 'Barra do Bugres', 3.5, 52),
(65, 'Sibyl Helm', 'Bayambang', 4.6, 82),
(66, 'Monika Sibly', 'Schengen', 5.5, 18),
(67, 'Janeen Urlin', 'Beraim', 8.9, 92),
(68, 'Ring Pauluzzi', 'Nasielsk', 3.4, 61),
(69, 'Benoite Iapico', 'Tengrela', 9.1, 83),
(70, 'Consuela Gilliam', 'Örebro', 1.9, 21),
(71, 'Alphard Santus', 'Paragominas', 9.9, 56),
(72, 'Maggee Blaxton', 'Wurno', 4.7, 97),
(73, 'Midge Conway', 'Fengxizhai', 1.8, 21),
(74, 'Bee Becraft', 'Žeravice', 5.5, 67),
(75, 'Freddi Magarrell', 'Labuhanjambu', 3.9, 33),
(76, 'Kayle McLardie', 'Heshan', 8.4, 11),
(77, 'Harland Cumberbatch', 'Vyshneye Dolgoye', 3.5, 29),
(78, 'Joellen Langfield', 'Qırmızı Samux', 1.1, 16),
(79, 'Lizbeth Conneau', 'Tetovo', 8.1, 9),
(80, 'Beckie West', 'Mikulčice', 1.9, 49),
(81, 'Renie Hawton', 'San Fernando', 3.7, 54),
(82, 'Dahlia Cousens', 'Moxi', 8.8, 21),
(83, 'Clayborn Ollarenshaw', 'Ma‘dān', 1.5, 6),
(84, 'Boniface Etherton', 'Amaraji', 9.9, 33),
(85, 'Gifford Goodhay', 'Tiebiancheng', 2.4, 57),
(86, 'Asher Grimsley', 'Komsomol’sk', 2.9, 22),
(87, 'Silva Norcliffe', 'Ampara', 7.6, 13),
(88, 'Ellary Troni', 'Brignoles', 8.4, 65),
(89, 'My Sellner', 'Los Aquijes', 2.1, 84),
(90, 'Stesha Avrasin', 'Blachownia', 3.9, 83),
(91, 'Sheri Coneley', 'Rancabugel', 8.6, 51),
(92, 'Denver Harlock', 'Filiátes', 4.7, 81),
(93, 'Bebe Climson', 'Banda Layung', 4.3, 28),
(94, 'Waring Carl', 'Pulautemiang', 7.5, 8),
(95, 'Lottie McGillacoell', 'Altares', 2.5, 92),
(96, 'Louisette Collicott', 'Hŭngju-dong', 1.1, 41),
(97, 'Aldous Mattia', 'Barajevo', 6.1, 24),
(98, 'Bertie Olney', 'Rongdoi', 4.9, 94),
(99, 'Rita Ducrow', 'Bayt Qād', 3, 34),
(100, 'Aldo Grason', 'Whitchurch', 8.6, 66);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `toidukohad`
--
ALTER TABLE `toidukohad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT tabelile `toidukohad`
--
ALTER TABLE `toidukohad`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
