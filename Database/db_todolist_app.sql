-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Apr 2025 pada 06.03 oleh Naufal Muhammad Dzaky (0068806563)
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_todolist_app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id_category`, `category`) VALUES
(1, 'work'),
(2, 'personal'),
(3, 'other');

-- --------------------------------------------------------

--
-- Struktur dari tabel `todo`
--

CREATE TABLE `todo` (
  `id_todo` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` enum('pending','done') NOT NULL,
  `isFavorite` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `todo`
--

INSERT INTO `todo` (`id_todo`, `title`, `description`, `status`, `isFavorite`, `created_at`, `updated_at`, `id_user`, `id_category`) VALUES
(15, 'waduh', 'sasdasd\r\n][]][][]\\\\\r\n||||\r\n;/?..\"\":\":\":\":\"\r\n*&()@!)@\r\n?@!@!@!!\r\n++_+}?>,\r\n!@#$%^&*\r\nOR AND NOR NAND LOL', 'pending', 0, '2025-04-28 06:46:54', '2025-04-28 06:46:54', 7, 2),
(16, 'ERERERERER', 'erererassa\r\ncas dadsdasd', 'pending', 0, '2025-04-28 06:47:11', '2025-04-28 06:47:11', 7, 3),
(18, 'Lorem 600 biji', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi ad labore neque cumque cupiditate voluptas natus aliquid deleniti modi praesentium ut at doloribus, odio corporis maiores dignissimos eos fuga itaque quasi deserunt nesciunt adipisci? Modi, vitae ad? Quibusdam totam necessitatibus magni enim recusandae alias fuga, fugiat eaque exercitationem! Ad laudantium ut debitis, accusantium dolores sint atque eaque? Quod asperiores, minus sit maiores voluptatibus consectetur corporis voluptatum vel aut excepturi, reiciendis dolor. Rem, quaerat quas aliquam excepturi unde reiciendis vero, cumque vel molestias similique quos dicta omnis doloremque laudantium veritatis corporis totam facilis accusantium! Vel, totam maiores accusantium fugit aliquid amet fugiat, molestias facilis, explicabo commodi ad veniam accusamus esse necessitatibus iure quae culpa. Laboriosam harum quam tempore eveniet ab saepe nam fugiat suscipit perferendis corrupti illo temporibus dolorum minus ex veniam, nulla quo corporis! Doloribus architecto fugit mollitia unde dolorum magnam quo perferendis itaque esse, atque tempore vel autem facilis, natus harum necessitatibus nesciunt nostrum distinctio corporis optio! Nostrum, possimus assumenda perspiciatis accusantium ratione, sit nulla voluptates quo et repellendus, numquam inventore! Debitis excepturi ducimus hic natus laborum corrupti pariatur quisquam vitae possimus perspiciatis vel, qui nam maiores expedita repudiandae ea in aut. Eligendi obcaecati eveniet facere soluta possimus beatae, earum cumque iste at neque tempore nostrum. Veritatis nam nihil distinctio labore, maxime vel rem quas necessitatibus eius. Maiores quam totam aliquam voluptas? Excepturi unde aliquam voluptatibus obcaecati dignissimos aperiam dolorum tempore cum, odio expedita dolor reprehenderit qui dolores amet, fugiat ullam vel fuga, at inventore consequuntur cumque earum. Sit autem debitis necessitatibus magni, ipsam eius placeat, temporibus quod asperiores accusamus numquam. Culpa doloremque ullam amet ex id modi officia excepturi. Perspiciatis velit nobis, asperiores voluptate recusandae dolores quibusdam voluptatibus labore eius assumenda pariatur unde, repudiandae facere dolore. Modi quas repudiandae totam excepturi, autem, dolorem quos tenetur natus cumque soluta doloribus est assumenda qui commodi fugit officiis? Consequuntur cum sint corporis! Atque facilis ea consequatur nulla? Voluptatem obcaecati inventore, eum itaque at dolores qui mollitia unde consequuntur laudantium quidem culpa, doloribus dolor incidunt excepturi quisquam facilis adipisci in! Quasi perspiciatis adipisci illum nostrum ipsa fugit tempore non, sit, velit ad magni quis. Quam exercitationem dolorem beatae labore iusto molestiae mollitia eos? Nemo nam mollitia doloribus enim, fuga libero ab voluptatum pariatur omnis dignissimos id eveniet repudiandae a voluptatibus inventore exercitationem debitis, voluptate accusantium eos labore optio? Nobis cumque sequi perferendis quidem maxime, esse non provident dolorem nihil sed aliquid adipisci laborum dicta, rem vitae accusamus nam laudantium dolores ducimus quas laboriosam maiores reprehenderit doloremque. Voluptatum necessitatibus illum quis alias unde obcaecati, fugiat ea amet quas quam commodi temporibus cumque numquam aliquam excepturi sunt animi repudiandae quos aut nobis est iste harum consequuntur? Incidunt delectus ad est quasi dolores consequuntur sequi numquam. Soluta, ab ipsa porro quod, nesciunt consectetur cupiditate voluptas assumenda animi labore laudantium quis adipisci repellendus inventore consequuntur maiores. Quia totam doloremque aperiam ex, dolores ad fugiat deleniti eligendi ut repellat facere itaque quam modi commodi animi fugit eos explicabo nesciunt veniam. Cumque repudiandae esse est et ipsam deserunt quis, ipsa aliquam! Facere nulla omnis facilis obcaecati dolorem quos quidem doloremque perspiciatis, quod assumenda voluptates mollitia ipsum provident veritatis reiciendis! Esse magnam dolore, illo consectetur quam, explicabo corporis non fuga quaerat et ipsam autem nulla molestiae deleniti quisquam facere quibusdam error a consequuntur aliquam officiis velit! Magnam impedit odit deleniti dolor illum et quae molestiae, accusamus asperiores, saepe ducimus earum, ad doloribus nisi architecto neque. Soluta vel laborum fugiat, ea sunt dignissimos cumque amet unde, deserunt fugit repellendus id perspiciatis atque quaerat natus accusamus officia praesentium expedita? Harum recusandae adipisci quo laboriosam aspernatur repellat quaerat soluta maiores sit ipsum.', 'pending', 0, '2025-04-28 06:51:21', '2025-04-28 06:51:21', 7, 3),
(19, 'Specials', 'assd\";\'/ \"\"\"\'\';;.,\r\n\';\';\';\';\';\r\n?><?\r\nasdasd}{}\r\nOR AND \r\n!\r\ndelete\r\nupdate * from $ifd\r\n<?php\r\n\r\n?>', 'pending', 0, '2025-04-28 07:10:28', '2025-04-28 07:10:28', 7, 1),
(20, 'Pharaghap', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati hic non architecto dolores ipsa eos quidem eveniet, qui fugit soluta voluptatem consequuntur optio quod nemo exercitationem ullam repellat earum aliquam consectetur dignissimos ex, nisi unde. Praesentium enim a libero exercitationem voluptatem perferendis maiores ipsam esse eos, quaerat nostrum illo laborum id fugit iusto blanditiis provident temporibus sunt odio obcaecati. Illo amet fugit, voluptate dolorum ipsa placeat deserunt in? Dolorum aspernatur veniam harum, architecto, non temporibus nesciunt quibusdam aliquid obcaecati dolores dolorem nihil minima quo itaque totam est, quos accusantium deserunt rerum cum id? Soluta reprehenderit voluptates quod adipisci, consequatur dolor in impedit illum deleniti minima consequuntur hic recusandae vel! Excepturi pariatur incidunt assumenda doloribus repellendus odio placeat laboriosam beatae possimus fugiat, aliquam ipsam iste nesciunt, quasi saepe officia earum. Vel eos quo nam soluta voluptates ea qui itaque veritatis laudantium inventore voluptate consectetur commodi maiores optio dignissimos, assumenda porro non aspernatur esse illum modi? Officia culpa fugit nostrum qui velit eum delectus atque rerum commodi amet quasi, placeat officiis at corrupti unde quidem itaque, voluptates, explicabo debitis! Repudiandae nulla maxime nobis ea veritatis quis, facere incidunt tenetur dolore aut rerum ipsa temporibus sint explicabo! Eos, quae blanditiis, aperiam nostrum voluptas quaerat tempora necessitatibus suscipit, dignissimos officia consequuntur magnam quos. Sequi, eaque. Fugit ipsa ut, repudiandae perferendis voluptate molestias, nulla eum facilis quaerat veniam id est architecto qui eligendi consequuntur, aliquid nesciunt natus harum dicta modi? Error fugiat facere quae, ex placeat perferendis eveniet iste cumque assumenda necessitatibus porro, sunt maxime. Aut, debitis. Architecto aspernatur ut explicabo. Consequatur modi neque inventore, corporis repudiandae non quod fugiat unde aut voluptatibus! Iure veritatis aliquid expedita ad alias delectus cumque rem, dolorum rerum deserunt necessitatibus quasi voluptates, quos fuga porro reprehenderit consequuntur dolorem quo repudiandae! Inventore quam illo laboriosam tempore iste ducimus sint numquam aliquid accusantium perspiciatis eius molestias, adipisci eum eveniet et, aut modi blanditiis consequatur accusamus id voluptate omnis! Hic ut, ad cumque similique nesciunt molestias facilis molestiae pariatur delectus harum soluta voluptatibus temporibus accusamus voluptate voluptatem tempora doloremque ea iste quasi suscipit. Reprehenderit voluptas sequi, tempore veritatis voluptatum quae, cupiditate odio consequuntur excepturi eveniet accusamus? Facilis doloremque perspiciatis voluptatum consectetur facere, eos temporibus ipsa perferendis reiciendis vero eveniet, quisquam deserunt harum consequatur dicta, voluptate id ducimus recusandae vitae delectus. Eum, obcaecati! Quis labore earum reprehenderit mollitia dolorum, modi necessitatibus, expedita cum fuga, impedit dolores ex. Et, consequatur mollitia labore nesciunt asperiores laborum ea molestiae optio harum natus ducimus magnam facilis cum, aperiam tempora excepturi vero, incidunt itaque. Atque nam accusantium totam ipsum non qui exercitationem facere placeat impedit natus, suscipit eaque eligendi expedita esse! Nihil totam dignissimos fugiat eum fuga alias. Repudiandae voluptatibus ipsa a laboriosam nihil quis mollitia, aspernatur odit. Cumque cum repellendus maiores dolorem culpa illum quia sint sit necessitatibus, consequuntur vitae adipisci, reprehenderit ipsa eligendi quasi dicta rem repudiandae fugiat. Deleniti, autem id quos inventore perspiciatis, voluptatem quae sed accusantium nemo, tempora rerum? Maxime id culpa voluptas optio corrupti? Blanditiis quisquam asperiores aperiam ducimus voluptatibus culpa quis accusamus nobis voluptas quas? Quidem, iusto nesciunt. Vel, optio. Tenetur explicabo quis praesentium minima commodi, ipsam iusto ipsum saepe facere iste non sit quam consequatur pariatur deleniti ut voluptatem nemo. Enim quibusdam quia saepe obcaecati sunt? Voluptates repellendus nisi expedita placeat voluptatem temporibus accusantium esse officiis ipsa veniam! Nemo, dolor, officiis, atque inventore distinctio architecto rem eius temporibus nesciunt voluptatibus tempore optio eligendi ad pariatur ipsum reprehenderit nulla voluptatum saepe accusamus? Ea repudiandae dignissimos tempore placeat totam vitae eligendi nobis! Perferendis ea, ducimus aut ut minus rem architecto vel, enim, qui repudiandae repellendus earum eum? Laudantium velit sit, eos magni culpa nobis asperiores vitae alias voluptatem esse temporibus facere tempora beatae iste nulla porro excepturi voluptates dolorum suscipit, corporis quis omnis, officiis reprehenderit fuga. Eum inventore voluptates ipsa magnam mollitia consectetur veniam tempora praesentium minima aspernatur id ipsum, eius explicabo asperiores odit eos illo recusandae necessitatibus quibusdam error ullam alias natus! Sunt, facere. Unde, praesentium nobis. Suscipit id sunt accusamus? Blanditiis molestias pariatur commodi, cumque veniam nulla a ratione nisi debitis! Eaque ex non amet possimus, in, nobis deserunt, debitis porro illo velit doloribus iusto quidem culpa mollitia saepe? Vero quia facere sed veritatis magni officia laborum, soluta qui, harum consequuntur delectus maiores illo reiciendis aspernatur. Aperiam impedit libero quaerat obcaecati, modi sint consequuntur fugiat vero, earum sequi rerum asperiores voluptas facilis atque exercitationem expedita eaque! Accusamus, vel iure perferendis alias veritatis doloremque eveniet nisi praesentium debitis aliquid laudantium nostrum quo quam deserunt libero. Nulla culpa modi quos laborum reprehenderit odio, ab tenetur iste animi dicta quibusdam enim harum blanditiis. Suscipit reprehenderit est nesciunt rerum nisi dolorem dignissimos adipisci repellat laborum molestias consequatur, vel veniam excepturi repellendus ipsum velit ad magnam magni error dolores aspernatur. Cum, impedit similique. Ducimus tenetur esse ut mollitia ipsam. Ad qui porro, consequatur repellendus a iste quibusdam est eaque repudiandae soluta dolorem incidunt ea. Quae doloremque, libero aperiam magni et itaque corporis perspiciatis quia sunt est autem repellat minima recusandae officiis iste eius, quisquam, beatae temporibus facilis sequi dicta ipsa soluta ullam dolores. Ad libero ratione rem cumque pariatur cum illum corrupti inventore iusto, placeat ipsum laboriosam eveniet accusantium incidunt temporibus voluptatibus labore voluptate consectetur eaque aperiam saepe adipisci? Amet fuga facilis voluptatibus accusamus praesentium velit quaerat quas consectetur impedit, animi sunt ex minus commodi, iusto cumque maiores unde deserunt aperiam, consequatur eum molestias quod porro deleniti vero. Est modi dolore dolor quod quo, nemo enim assumenda accusamus numquam iste repellat sequi odio vitae repudiandae, suscipit vel provident ea. Asperiores iste mollitia, veritatis facere dicta aliquid quam ex commodi aliquam enim, omnis maxime obcaecati laborum placeat odit consectetur perspiciatis maiores optio in, voluptates doloremque velit excepturi ab. Quia facilis obcaecati, atque quae ipsa odio nostrum officia autem. Quidem, cumque! Nesciunt reprehenderit voluptates consectetur esse qui cupiditate, delectus possimus maxime explicabo sit nostrum est quo commodi nisi. Nesciunt totam vero error, libero delectus accusamus odio illum, in esse consequatur saepe quibusdam commodi autem expedita optio qui beatae laudantium eligendi! Eos repellat, amet eaque provident fuga enim.', 'pending', 0, '2025-04-28 07:11:50', '2025-04-28 07:11:50', 7, 1),
(29, 'Apa ini Dawg💀', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk\r\nk.kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk\r\nkk\r\nkkk.kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk\r\nkk\r\nkkkk.kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk\r\nkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk\r\nj\r\n\r\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Vel, repellat blanditiis. Non quo odio tempora sit, alias beatae molestiae iste corrupti voluptatum illum. Dignissimos pariatur voluptatum facere inventore hic delectus minus vitae. Doloribus officia, quam ab odio quod obcaecati explicabo fugiat quo animi, maiores ducimus dolor consequatur quae asperiores accusantium! Numquam, commodi sint? Nostrum sunt alias fuga atque. Odio qui dolore sed beatae rem ipsam quo ipsa et, quasi praesentium quaerat quos officia, exercitationem aliquid corrupti illo eum delectus neque quae, repudiandae iure! Eveniet doloremque officiis culpa. Consequuntur repellat in accusamus cumque eos? Aspernatur beatae debitis qui eveniet. Placeat, suscipit dolor quos adipisci aspernatur facilis quis quo et earum vel! Fugit quaerat perspiciatis eum nisi odio vitae itaque aperiam cumque, doloremque, neque dolorem magnam fugiat illo impedit dolorum excepturi. Cumque ipsa commodi provident exercitationem obcaecati, ex cum repellendus quisquam reprehenderit fuga a praesentium accusamus non? Incidunt hic laudantium perspiciatis laboriosam molestias maxime necessitatibus id sed inventore. Veniam ut ratione hic tempore! Soluta quod, iure aliquid quidem blanditiis amet deleniti earum ipsum recusandae animi asperiores dignissimos. Impedit cum unde fuga quod nulla quia deserunt eaque delectus corrupti officiis recusandae dolorem veritatis modi ducimus molestias nihil, dolor, aliquam accusamus sed voluptatum. Esse totam dolorum ut sapiente assumenda quos, pariatur quam alias incidunt quas corporis veritatis vel omnis placeat ea aperiam suscipit eveniet necessitatibus beatae voluptatibus earum odio. Explicabo, sapiente possimus. Commodi explicabo at rerum! Ab ipsum ad, in natus hic maxime aut cumque distinctio possimus laborum error iusto odit ipsa obcaecati repudiandae esse quis ratione excepturi est voluptatibus tempore. Quibusdam tempora perferendis sint id? Quae explicabo, temporibus expedita ipsa quam provident eius illo dolore voluptas nesciunt corrupti dolorum veritatis qui amet doloremque facilis quas ad eum voluptatem alias? Alias odit aperiam iusto id, quis nemo mollitia amet quod sed asperiores magni? Similique odit officiis quam debitis corporis reprehenderit beatae numquam quae libero? Corrupti sit magnam iusto quo. Laboriosam quia esse voluptatum hic nihil perferendis repudiandae repellendus vero necessitatibus quam, eius dolore? Cum similique esse mollitia quam numquam suscipit unde neque quas necessitatibus architecto, provident dicta eius tenetur fugiat doloribus dolorem? Id illum voluptas quibusdam, suscipit corrupti obcaecati ipsum soluta atque laborum ullam! Exercitationem dolorum cum molestiae repellendus? Aliquid amet dicta maxime distinctio culpa. Ipsam blanditiis iure necessitatibus unde! Atque cum magnam illo, laboriosam perferendis nemo exercitationem at quasi libero. Expedita quia aliquid corporis adipisci perferendis velit ea ipsam quis voluptate ducimus nulla suscipit, excepturi saepe nobis voluptas laborum sit rem perspiciatis praesentium voluptatibus iste odio? Officiis tempore placeat sequi, nam aliquam corporis in. Non ad sapiente nulla sit similique illum quisquam nemo quaerat et deserunt ipsum error nihil doloremque exercitationem labore animi cum, voluptatibus incidunt, tenetur vitae earum. Quibusdam rerum odit aliquid doloremque facere quidem, inventore quod nulla culpa asperiores nam at aliquam. Nam cumque provident accusamus consectetur, sequi molestias est quo architecto recusandae totam nulla maiores aut quas exercitationem commodi iure eum dignissimos vero accusantium maxime eveniet expedita possimus ullam? Fugit quisquam ipsam aperiam ratione nemo adipisci, blanditiis repudiandae, accusamus eius, odio voluptas! Minima dignissimos perspiciatis, distinctio nulla nihil doloribus, id provident ad eaque eligendi corrupti aperiam iure voluptate dolores impedit molestiae, eos excepturi ipsam saepe? Temporibus tempore aperiam quod esse? Rerum a quaerat magnam rem dicta at mollitia ex vel ducimus dolores, sequi aperiam suscipit vitae sapiente consequuntur voluptates placeat corporis. Laudantium quasi nesciunt impedit voluptates temporibus, facilis officiis unde aspernatur consequatur ex repellendus laborum, nam incidunt nemo rem laboriosam explicabo vero pariatur debitis, sit placeat ipsum. Eum repellat deserunt dicta pariatur. Tempora voluptates quod a accusamus, officia est hic iusto minus dolor, quo eum quia exercitationem, commodi libero ratione! Iste magni dolorum provident vitae nesciunt earum eos velit explicabo veniam voluptate voluptates totam necessitatibus ad exercitationem magnam, doloribus expedita ducimus quo repellendus mollitia ipsum. Temporibus, rem iure delectus voluptates alias veritatis voluptate repudiandae quasi voluptatem quisquam? Consectetur autem ea explicabo deserunt commodi fugit unde. Voluptates odit dignissimos, a fugiat consequatur dolorum ratione! Earum nesciunt atque possimus quae libero esse nisi excepturi laudantium culpa inventore voluptatum at ipsam omnis fuga doloremque in, sint maxime? Sequi eveniet molestias atque illo est saepe quod cupiditate quas dolore fugit, debitis natus pariatur inventore maiores iure adipisci dolorum repellat cumque et hic laudantium, assumenda veritatis dolores? Rerum dolore consequuntur natus impedit. Excepturi nisi facere non ex nemo ipsum, reprehenderit necessitatibus quae eveniet, possimus beatae quia suscipit architecto nam sunt nihil earum, mollitia quidem vero debitis? Natus esse quae odit tempora neque, a eveniet quasi quidem, fugiat fuga, illo culpa! Sed autem illo, sunt animi officiis fugiat debitis recusandae repudiandae sint esse accusantium praesentium laborum distinctio officia vel quos molestiae consequatur voluptas iusto, suscipit qui explicabo fuga? Sapiente similique consectetur consequuntur saepe sed, laborum numquam perspiciatis placeat aliquam libero voluptate distinctio, ratione natus eveniet enim error provident! Nulla et hic dolor mollitia error facere explicabo beatae, in obcaecati, quam laudantium ab! Nesciunt ad itaque temporibus eligendi expedita, accusantium possimus deserunt distinctio harum saepe quo recusandae laboriosam rem doloribus voluptate tempora? Tempora adipisci dolorum saepe labore dolores enim sint nulla maxime necessitatibus eos tempore libero quis quo, illum placeat repellendus accusantium consectetur eveniet, nemo dolor possimus! Cumque iure dignissimos neque saepe quidem at a, autem magnam nulla dolore architecto alias tenetur repellendus fugiat, blanditiis ducimus unde minus, ullam officia omnis! Officiis ex architecto rem nisi eaque. Porro hic nobis culpa fugiat perspiciatis, quas illum, enim labore exercitationem deleniti, animi voluptas dolorum! Eaque autem quasi nostrum asperiores itaque saepe tempore culpa consequuntur ex ducimus consectetur est ipsa consequatur numquam necessitatibus distinctio dolore nesciunt, soluta beatae omnis dignissimos deleniti voluptatibus. Molestiae quas dignissimos delectus, iure obcaecati accusamus, cupiditate quam modi, eaque rem cum cumque esse doloribus consequuntur enim laboriosam saepe autem voluptatem aliquam! Voluptatibus ipsam mollitia excepturi esse. Molestiae reprehenderit illo non modi ab, quas, illum voluptatibus magni officia nesciunt totam expedita omnis odit alias provident. Odio hic, possimus qui eum cumque obcaecati ullam unde assumenda a nulla minima voluptatem minus ea perferendis! Labore, ex amet! Aspernatur fugiat dolores quasi, maxime eveniet voluptatibus nemo consectetur velit quo molestias?', 'pending', 1, '2025-04-29 02:07:19', '2025-04-29 03:33:27', 15, 2),
(30, '😃😋🤡', '🐱‍🏍🐱‍🏍🐱‍🏍🐱‍🏍🐱‍🏍🐱‍🏍🐱‍🏍🐱‍🏍🐱‍🏍🐱‍🏍🐱‍🏍🐱‍🏍😿😾🐱‍👤😸😺💩🤖👾👽👻☠😹😻😼🙀🐱‍🚀🐱‍👓🐱‍🐉🐱‍🐉🐭🐴🐢🦜🕊🦃🦑🦞🦢🐥👨‍👩‍👧‍👦👨‍👩‍👦👩‍👩‍👧‍👧👨‍👨‍👦👩🏿‍🤝‍👩🏼👩🏾‍🤝‍👩🏾👩🏼‍🤝‍🧑🏿👩🏾‍🤝‍🧑🏽👬👨🏻‍🤝‍👨🏻👨🏿‍🤝‍👨🏽👩🏾‍🤝‍🧑🏾👩🏾‍🤝‍🧑🏻👩🏽‍🤝‍🧑🏿👩🏼‍🤝‍🧑🏼👩🏼‍🤝‍🧑🏾βνυιρΡξΨΨυΨιΕ', 'done', 0, '2025-04-29 02:10:14', '2025-04-29 02:18:40', 15, 1),
(31, 'Contoh', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Expedita itaque, culpa sint ipsa nostrum nisi deserunt rerum veniam esse cumque officia consequuntur commodi ut minima iste vitae sequi error a ad vel hic voluptatibus quidem! Possimus odio dolor labore sint fuga? Consequatur, nam dolor eius voluptate sed nostrum sapiente, obcaecati quia aliquam iste veniam ex sunt officia at dolorum quasi recusandae ad atque commodi distinctio ea! Dolore in aut harum sint placeat, libero deserunt totam? Aliquid unde eligendi cum quasi mollitia asperiores! Voluptates veritatis laborum quae, aut nesciunt minima. Consequuntur quos debitis voluptate ratione quia. Ea eos ipsum eaque laudantium.', 'done', 1, '2025-04-29 02:35:08', '2025-04-29 02:35:37', 16, 1),
(32, 'aaaaaaaaaaaaaaaaaaaaa', 'sssssssssssssssssss', 'pending', 0, '2025-04-29 02:35:24', '2025-04-29 02:35:46', 16, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `name`, `email`, `password`, `birth_date`) VALUES
(7, 'Naufal Dzaky', 'Dzaky', 'user1@gmail.com', '$2y$10$sbfJ60l4zfvmIgE6S9iVzuNdIpVUFhizHHLGow4oMDoNx4pWjvzVm', '2006-01-20'),
(15, 'Admin', 'Dzaky', 'ndz@gmail.com', '$2y$10$g9MJ2x0qMlaxWQLoG4WtAeNiqYtAmP4P/kVJTvQ8Br.cBgyuCk4KO', '2025-04-29'),
(16, 'contoh', 'contoh', 'contoh@gmail.com', '$2y$10$UNlBSohsqMaPjqMKg0gO8eldPXSvpI5UoGQ5j/I4bBpVa/LJHh/1y', '2025-04-29');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indeks untuk tabel `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id_todo`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_category` (`id_category`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `todo`
--
ALTER TABLE `todo`
  MODIFY `id_todo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `todo`
--
ALTER TABLE `todo`
  ADD CONSTRAINT `todo_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `todo_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
