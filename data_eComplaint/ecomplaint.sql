-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2026 at 02:27 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomplaint`
--

-- --------------------------------------------------------

--
-- Table structure for table `bantuan_informasis`
--

CREATE TABLE `bantuan_informasis` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bantuan_informasis`
--

INSERT INTO `bantuan_informasis` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'E-Complaint', '<h2>Apa Itu E-Complaint?</h2><p>Di lingkungan Universitas Islam Raden Rahmat (UNIRA) Malang, keterbukaan terhadap kritik, saran, dan pengaduan dari civitas akademika merupakan bagian penting dari upaya peningkatan mutu layanan. Untuk menjawab kebutuhan tersebut, kini hadir sistem <strong>e-complaint</strong> yang dibangun secara khusus sebagai sarana pengaduan layanan berbasis website.</p><h3>Pengertian E-Complaint di UNIRA Malang</h3><p><strong>E-Complaint UNIRA</strong> adalah sistem informasi pengaduan layanan berbasis web yang dirancang untuk memfasilitasi mahasiswa, dosen, tendik, dan seluruh civitas akademika dalam menyampaikan keluhan atau masukan terkait layanan di lingkungan kampus secara cepat, mudah, dan transparan.</p><p>Sistem ini merupakan hasil dari pengembangan skripsi berjudul:<br>&nbsp;<strong>\"Rancang Bangun Sistem Informasi Pengaduan Layanan Berbasis Web (Studi Kasus: UNIRA Malang)\"</strong><br> yang bertujuan untuk mendigitalisasi proses pengaduan dan meningkatkan efektivitas serta efisiensi dalam menangani laporan.</p><h3>Manfaat E-Complaint di UNIRA</h3><ol><li><strong>Akses Mudah dan Cepat</strong><br> Pengguna cukup login ke sistem untuk menyampaikan laporan tanpa harus datang langsung ke kantor unit terkait.</li><li><strong>Transparansi Proses Pengaduan</strong><br> Pengguna bisa memantau status aduan, apakah sudah diterima, sedang diproses, atau telah ditindaklanjuti.</li><li><strong>Responsif dan Terstruktur</strong><br> Setiap aduan otomatis diteruskan ke unit yang bertanggung jawab. Jika tidak ditanggapi dalam waktu tertentu, sistem dapat mengalihkan aduan ke Satuan Pengawas Internal (SPI).</li><li><strong>Rekaman Digital</strong><br> Semua aduan dan tanggapan tersimpan secara digital sehingga dapat dijadikan dokumentasi dan bahan evaluasi.</li></ol><h3>Siapa Saja yang Bisa Menggunakan?</h3><ul><li>Seluruh civitas akademika Universitas Islam Raden Rahmat.</li></ul><h3>Komitmen UNIRA terhadap Layanan Berkualitas</h3><p>Melalui sistem e-complaint ini, UNIRA Malang menunjukkan komitmennya untuk terus berkembang menjadi institusi yang <strong>terbuka terhadap aspirasi</strong> dan <strong>bertanggung jawab dalam pelayanan</strong>. Semua laporan yang masuk diproses secara sistematis dan dijadikan dasar untuk peningkatan layanan kampus ke depan.</p><p><br></p>', '2025-05-23 14:03:46', '2025-05-23 14:03:46'),
(2, 'Kebijakan Privasi', '<p><strong>Kebijakan Privasi ini bertujuan untuk membantu Anda memahami informasi yang kami kumpulkan, alasan kami mengumpulkannya, dan cara untuk memperbarui, mengelola, mengekspor, dan menghapus informasi Anda</strong></p><ol><li><strong>PENGAKUAN DAN PERSETUJUAN KEBIJAKAN PRIVASI INI</strong><ol><li>Anda wajib membaca Kebijakan Privasi ini sebelum menggunakan Layanan. Dengan menggunakan setiap Layanan kami, Anda menyatakan bahwa Anda telah membaca, memahami dan setuju terhadap ketentuan-ketentuan Kebijakan Privasi ini.</li><li>Pengakuan dan persetujuan Anda terhadap Kebijakan Privasi ini juga berkaitan dengan ketentuan yang tercantum berdasarkan Ketentuan Penggunaan (Term of Use) yang dianggap sebagai satu kesatuan dan tidak dapat dipisahkan.&nbsp;</li></ol></li><li><strong>RAHASIA PRIBADI</strong><br>Halaman ini digunakan untuk menginformasikan Anda mengenai kebijakan Kami dengan pengumpulan, penggunaan, dan pengungkapan Informasi Pribadi jika ada yang memutuskan untuk menggunakan Layanan Kami. Jika Anda memilih untuk menggunakan Layanan Kami, maka Anda menyetujui pengumpulan dan penggunaan informasi yang terkait dengan kebijakan ini. Informasi Pribadi yang Kami kumpulkan digunakan untuk menyediakan dan meningkatkan Layanan. Kami tidak akan menggunakan atau membagikan informasi Anda dengan siapa pun kecuali seperti yang dijelaskan dalam Kebijakan Privasi ini. Istilah-istilah yang digunakan dalam Kebijakan Privasi ini memiliki arti yang sama seperti dalam Syarat dan Ketentuan Kami, yang dapat diakses di situs web kecuali ditentukan lain dalam Kebijakan Privasi ini.</li><li><strong>PENGUMPULAN INFORMASI SECARA OTOMATIS</strong><br>Ketika Anda mengunjungi situs web, server Kami secara otomatis merekam informasi yang dikirimkan oleh browser Anda. Data ini dapat mencakup informasi seperti alamat IP perangkat Anda, jenis dan versi peramban, jenis dan versi sistem operasi, preferensi bahasa atau halaman web yang Anda kunjungi sebelum Anda datang ke situs web Kami, halaman situs web Kami yang Anda kunjungi, waktu yang dihabiskan untuk halaman-halaman itu, informasi yang Anda cari di situs web Kami, waktu dan tanggal akses, dan statistik lainnya.</li><li><strong>PENGUMPULAN INFORMASI PRIBADI</strong><br>Anda dapat mengunjungi situs web tanpa memberi tahu Kami siapa Anda atau mengungkapkan informasi yang dengannya seseorang dapat mengidentifikasi Anda sebagai individu yang spesifik dan dapat diidentifikasi. Namun, jika Anda ingin menggunakan beberapa fitur situs web, Anda akan diminta untuk memberikan Informasi Pribadi tertentu (misalnya, nama dan alamat email Anda). Kami menerima dan menyimpan informasi apa pun yang Anda berikan secara sadar kepada Kami, saat Anda membuat akun di situs web. Bila diperlukan, informasi ini dapat mencakup alamat email Anda, nama, nomor telepon, atau alamat rumah Anda. Anda dapat memilih untuk tidak memberikan Informasi Pribadi Anda kepada Kami, tetapi Anda mungkin tidak dapat memanfaatkan beberapa fitur situs web.</li><li><strong>MENGELOLA INFORMASI PRIBADI</strong> &nbsp;<br>Anda dapat mengakses, menambah dan memperbarui Informasi Pribadi tertentu tentang Anda. Informasi yang Anda lihat dan perbarui dapat berubah seiring perubahan situs web. Namun, ketika Anda memperbarui informasi, Kami dapat menyimpan salinan informasi yang tidak direvisi dalam catatan Kami. Beberapa informasi mungkin tetap berada dalam sistem Kami. Kami akan menyimpan dan menggunakan Informasi Pribadi Anda selama periode yang diperlukan untuk mematuhi kewajiban hukum Kami, menyelesaikan perselisihan, dan melaksanakan perjanjian kecuali apabila diperlukan periode retensi yang lebih lama atau diizinkan oleh hukum. Kami dapat menggunakan semua data gabungan yang berasal dari Informasi Pribadi yang Anda masukkan setelah Anda perbarui tetapi tidak akan mengidentifikasi Anda secara pribadi.</li><li><strong>PENGGUNAAN INFORMASI YANG DIKUMPULKAN</strong><br>Setiap informasi yang Kami kumpulkan dari Anda dapat digunakan untuk mempersonalisasi pengalaman Anda; memperbaiki situs web Kami; meningkatkan Layanan pengguna, menanggapi pertanyaan dan email pengguna Kami; mengirimkan email pemberitahuan seperti aktivasi akun, pengingat kata sandi, pembaruan, dan lain-lain; serta menjalankan dan mengoperasikan situs web Kami. Informasi yang dikumpulkan secara otomatis hanya digunakan untuk mengidentifikasi kemungkinan kasus penyalahgunaan dan menetapkan informasi statistik mengenai penggunaan situs web. Informasi statistik ini tidak dikumpulkan sedemikian rupa sehingga tidak akan mengidentifikasi pengguna sistem.</li><li><strong>COOKIES</strong><br>Situs web ini menggunakan \"cookies\" untuk membantu mempersonalisasi pengalaman online Anda. Cookies adalah file teks yang ditempatkan di harddisk Anda oleh server halaman web. Cookies tidak dapat digunakan untuk menjalankan program atau mengirimkan virus ke komputer Anda. Cookies ditetapkan secara unik untuk Anda dan hanya dapat dibaca oleh server web dalam domain yang mengeluarkan cookies untuk Anda. Kami dapat menggunakan cookies untuk mengumpulkan, menyimpan, dan melacak informasi untuk keperluan statistik untuk mengoperasikan situs web dan Layanan Kami. Anda memiliki pilihan untuk menerima atau menolak cookies. Sebagian besar browser web secara otomatis akan menerima cookies, tetapi biasanya Anda dapat mengubah pengaturan browser Anda untuk menolak cookies jika diinginkan.</li><li><strong>TAUTAN KE SITUS LAIN</strong><br>Layanan ini mungkin berisi tautan ke situs lain. Jika Anda mengklik tautan pihak ketiga, Anda akan diarahkan ke situs itu. Perhatikan bahwa situs eksternal ini tidak dioperasikan oleh Kami. Oleh karena itu, Kami sangat menyarankan Anda untuk meninjau Kebijakan Privasi dari situs web ini. Kami tidak memiliki kendali dan tanggung jawab atas konten, kebijakan privasi, atau praktik dari situs atau Layanan pihak ketiga.</li><li><strong>JANGAN LACAK SINYAL</strong><br>Beberapa browser menggabungkan fitur Jangan Lacak yang memberi sinyal ke situs web yang Anda kunjungi dan Anda tidak ingin aktivitas online Anda dilacak. Pelacakan tidak sama dengan penggunaan atau pengumpulan informasi sehubungan dengan situs web. Untuk tujuan ini, pelacakan mengacu pada pengumpulan informasi yang dapat diidentifikasi secara pribadi dari pengguna yang menggunakan atau mengunjungi situs web atau layanan online saat pengguna bergerak melintasi situs web yang berbeda dari waktu ke waktu. Situs web Kami tidak melacak penggunanya dari waktu ke waktu dan di situs web pihak ketiga. Namun, beberapa situs pihak ketiga dapat melacak aktivitas penjelajahan Anda saat mereka menyajikan konten kepada Anda, yang memungkinkan mereka menyesuaikan apa yang mereka presentasikan kepada Anda.</li><li><strong>INFORMASI KEAMANAN</strong><br>Kami mengamankan informasi yang Anda berikan di server komputer dalam lingkungan yang terkendali dan aman, terlindung dari akses, penggunaan, atau pengungkapan yang tidak sah. Kami menjaga pengamanan administrasi, teknis, dan fisik yang wajar dalam upaya perlindungan terhadap akses, penggunaan, modifikasi, dan pengungkapan Informasi Pribadi yang tidak sah dalam kendali dan pengawasannya. Namun, tidak ada transmisi data melalui Internet atau jaringan nirkabel yang dapat dijamin. Karena itu, sementara Kami berusaha melindungi Informasi Pribadi Anda, Anda mengakui bahwa:<br>(i) ada batasan keamanan dan privasi dari internet yang berada di luar kendali Kami;<br>(ii) keamanan, integritas, dan privasi dari setiap dan semua informasi dan data yang dipertukarkan antara Anda dan situs web Kami tidak dapat dijamin; dan<br>(iii) informasi dan data tersebut dapat dilihat atau dirusak dalam perjalanan oleh pihak ketiga, meskipun ada upaya terbaik dalam menjaga informasi dan data tersebut.</li><li><strong>PELANGGARAN DATA</strong><br>Jika Kami mengetahui bahwa keamanan situs web telah disusupi atau Informasi Pribadi pengguna telah diungkapkan kepada pihak ketiga yang tidak terkait sebagai akibat dari aktivitas eksternal, termasuk, tetapi tidak terbatas pada, serangan keamanan atau penipuan, Kami berhak untuk mengambil langkah-langkah yang pantas secara wajar, termasuk, tetapi tidak terbatas pada, penyelidikan dan pelaporan, serta pemberitahuan dan kerja sama dengan otoritas penegak hukum. Jika terjadi pelanggaran data, Kami akan melakukan upaya yang wajar untuk memberi tahu orang-orang yang terkena dampak jika Kami yakin bahwa ada risiko yang wajar akan merugikan pengguna sebagai akibat dari pelanggaran tersebut atau jika pemberitahuan sebaliknya diharuskan oleh hukum. Ketika Kami melakukan hal-hal diatas, Kami akan mengumumkan pemberitahuan di situs web, sosial media kami dan/atau mengirimkan Anda email.</li><li><strong>KEPATUHAN TERHADAP UNDANG-UNDANG</strong><br>Kami secara teratur meninjau Kebijakan Privasi ini dan memastikan bahwa kami memproses informasi Anda sesuai dengan kebijakan tersebut.<br>Perubahan Pada Kebijakan Privasi Ini<br>Kami dapat memperbarui Kebijakan Privasi ini dari waktu ke waktu. Dengan demikian, Anda disarankan untuk meninjau halaman ini secara berkala untuk setiap perubahan. Dengan tetap mengakses dan menggunakan layanan kami, maka Anda dianggap menyetujui perubahan-perubahan dalam Kebijakan Privasi ini.</li></ol>', '2025-05-24 02:11:24', '2025-05-24 02:11:24'),
(3, 'Term of Use (Syarat & Ketentuan Penggunaan E-Complaint!)', '<p><strong>Selamat datang di e-complaint, Sistem Pengelolaan Pengaduan Pelayanan Universitas Islam Raden Rahmat. Term of Use berikut adalah ketentuan dalam penggunaan situs, konten, layanan dan fitur yang ada.<br></strong><br></p><ol><li><strong>Pernyataan</strong><ol><li>Dengan mengunduh, mengakses, menjelajahi dan atau menggunakan layanan e-Complaint! ini, berarti Pengguna setuju untuk terikat oleh Ketentuan Penggunaan Layanan ini. Jika Pengguna tidak setuju dengan Syarat dan Ketentuan Penggunaan ini, pengguna dapat segera menghentikan akses dan penggunaan layanan yang ditawarkan pada e-Complaint!</li><li>Kebijakan ini berlaku untuk semua layanan e-Complaint!&nbsp;</li></ol></li><li><strong>Perubahan </strong><strong><em>Term Of Use</em></strong><br>Kami dapat mengubah ketentuan penggunaan ini setiap saat. Dengan demikian, Anda disarankan untuk meninjau halaman ini secara berkala untuk setiap perubahan untuk memeriksa Terms of Use yang berlaku dan mengikat Anda.</li><li><strong>Definisi</strong><ol><li><strong>Sistem Pengelolaan Pengaduan – E-Complaint!</strong> adalah layanan penyampaian aduan civitas akademika Universitas Islam Raden Rahmat (UNIRA) Malang yang disediakan secara online melalui kanal website utama yaitu <a href=\"#\">ecomplaint.uniramalang.ac.id</a> (contoh domain).&nbsp;</li><li><strong>Lembaga pengelola E-Complaint!</strong> adalah Universitas Islam Raden Rahmat Malang yang menetapkan pengelolaan sistem berada di bawah koordinasi unit terkait, termasuk bagian Digital Center dan Satuan Pengawas Internal (SPI), dengan supervisi langsung dari Rektorat.&nbsp;</li><li><strong>Instansi Penanggung Jawab</strong> adalah unit kerja, fakultas, biro, atau lembaga di lingkungan UNIRA Malang yang memiliki kewenangan dan tanggung jawab untuk menindaklanjuti dan merespons setiap aduan yang disampaikan oleh pengguna sesuai dengan kategori aduan yang masuk.&nbsp;</li><li><strong>Pengguna</strong> adalah setiap anggota civitas akademika UNIRA Malang (mahasiswa, dosen, tenaga kependidikan, staf administrasi, hingga rektorat) yang memanfaatkan sistem E-Complaint! untuk menyampaikan laporan, aspirasi, atau keluhan terkait layanan akademik dan non-akademik di lingkungan kampus.&nbsp;</li><li><strong>Akun</strong> adalah informasi yang digunakan oleh pengguna, pengelola, dan penanggung jawab untuk masuk ke e-Complaint!&nbsp;</li><li><strong>Pendaftaran</strong> adalah pembuatan akun E-Complaint! untuk mengakses dan menggunakan fitur-fitur yang tersedia dalam sistem, termasuk penyampaian aduan dan pemantauan status laporan.&nbsp;</li><li><strong>Fitur</strong> adalah seluruh fungsi yang tersedia dalam sistem E-Complaint!, termasuk tetapi tidak terbatas pada: formulir pengaduan, pemilihan kategori aduan, pelacakan status tindak lanjut, notifikasi, dan arsip laporan.</li></ol></li><li><strong>Akun Keanggotaan</strong><br>Jika Anda membuat akun pada sistem E-Complaint! UNIRA Malang, Anda bertanggung jawab untuk menjaga kerahasiaan informasi akun Anda, termasuk email institusi dan kata sandi yang digunakan.<br>Anda bertanggung jawab penuh atas seluruh aktivitas yang terjadi melalui akun Anda, termasuk setiap laporan atau tindakan yang dilakukan dengan menggunakan akun tersebut. Jika terdapat dugaan penggunaan tidak sah, penyalahgunaan, atau pengakses lain yang mengatasnamakan akun Anda, Anda wajib segera melaporkannya kepada tim pengelola E-Complaint!.<br>Pengelola sistem tidak bertanggung jawab atas segala bentuk kerugian, penyalahgunaan, atau pelanggaran yang terjadi akibat kelalaian pengguna dalam menjaga keamanan akun pribadinya.<br>Pihak pengelola E-Complaint! berhak sepenuhnya untuk membatasi, menonaktifkan, atau menghapus akun pengguna, serta membatasi akses ke sistem jika ditemukan bahwa aktivitas atau konten yang dikirimkan melanggar peraturan perundang-undangan, norma kampus, hak kekayaan intelektual, atau ketentuan lain yang tertuang dalam Syarat dan Ketentuan penggunaan E-Complaint!.</li><li><strong>Syarat Penggunaan</strong><ol><li>Sistem E-Complaint! hanya digunakan untuk menyampaikan aspirasi, pengaduan, atau permintaan informasi yang berkaitan dengan layanan akademik maupun non-akademik di lingkungan Universitas Islam Raden Rahmat (UNIRA) Malang.</li><li>Pengguna dilarang menggunakan identitas pribadi milik orang lain. Setiap pengguna wajib menggunakan akun resmi institusi dan menjaga kerahasiaan informasi yang diperoleh dari sistem E-Complaint!.&nbsp;</li><li>Pengguna tidak diperkenankan menyalahgunakan data dan informasi dalam layanan E-Complaint! untuk tujuan yang merugikan pihak lain, melanggar hukum, atau bertentangan dengan etika akademik dan peraturan kampus.&nbsp;</li><li>Pengguna dilarang mengirimkan pengaduan atau konten yang mengandung unsur diskriminatif, SARA (Suku, Agama, Ras, dan Antargolongan), ujaran kebencian, pelecehan, atau hal-hal yang dapat menimbulkan konflik dan mencederai nilai-nilai akademik dan agama.&nbsp;</li><li>Sistem E-Complaint! diperuntukkan bagi kepentingan pribadi dan non-komersial. Layanan ini tidak boleh digunakan untuk promosi, iklan, maupun aktivitas lain yang merugikan pihak lain atau mencemarkan nama baik institusi.&nbsp;</li><li>Dengan mengunggah teks, gambar, file, atau lampiran lainnya ke dalam sistem, pengguna memberikan izin kepada pengelola untuk menggunakan materi tersebut secara bebas royalti untuk keperluan penyelesaian pengaduan, dokumentasi internal, dan peningkatan layanan, tanpa melanggar hak privasi pengguna.&nbsp;</li><li>Layanan E-Complaint! tidak memungut biaya apapun. Namun, segala biaya yang timbul akibat penggunaan perangkat (seperti komputer atau ponsel), koneksi internet, atau sarana komunikasi lainnya menjadi tanggung jawab masing-masing pengguna.&nbsp;</li></ol></li><li><strong>Tindak Lanjut pada E-Complaint! &nbsp;</strong><ol><li>Setiap aduan yang disampaikan oleh pengguna melalui sistem E-Complaint! akan diproses sesuai dengan alur dan prosedur yang telah ditetapkan dalam <strong>Standar Operasional Prosedur (SOP) Penanganan Pengaduan UNIRA Malang</strong>.&nbsp;</li><li>Penanganan aduan merupakan tanggung jawab unit atau instansi terkait di lingkungan UNIRA Malang, berdasarkan kategori aduan dan keterkaitan kewenangan instansi tersebut.&nbsp;</li><li>Kecepatan dan efektivitas tindak lanjut bergantung pada kapabilitas, ketersediaan data, serta kesiapan unit penanggung jawab yang bersangkutan dalam merespons aduan.&nbsp;</li><li>Dalam situasi tertentu, apabila pimpinan institusi/staff tidak memberikan tanggapan awal terhadap aduan dalam waktu <strong>4 hari</strong>, maka sistem akan secara otomatis mengalihkan penanganan aduan tersebut ke <strong>Satuan Pengawas Internal (SPI)</strong> untuk ditindaklanjuti sesuai ketentuan.&nbsp;</li><li>Setiap perkembangan tindak lanjut akan diinformasikan secara berkala kepada pelapor melalui sistem E-Complaint! untuk menjaga transparansi dan akuntabilitas.&nbsp;</li></ol></li><li><strong>Kerahasiaan dan Informasi Pribadi</strong><ol><li>Dengan menggunakan layanan E-Complaint! UNIRA Malang, pengguna menyatakan setuju dan memahami bahwa informasi yang berkaitan dengan data pribadi serta isi aduan atau aspirasi yang disampaikan dapat diberikan kepada unit atau instansi terkait di lingkungan UNIRA Malang guna kepentingan verifikasi dan penanganan aduan secara tepat.&nbsp;</li><li>Pengelola E-Complaint! memberikan jaminan atas kerahasiaan data pribadi dan isi aduan pengguna, kecuali jika diwajibkan oleh hukum atau diperlukan dalam proses penyelesaian internal kampus.</li><li>&nbsp;Data pribadi dikumpulkan sebagai bentuk validasi identitas pelapor dan sebagai bahan analisis untuk mendukung pengambilan kebijakan yang inklusif dan berbasis data oleh institusi.&nbsp;</li><li>Data Pribadi yang dikumpulkan meliputi:&nbsp;<ol><li>Nama pengguna sebagai pengenal identitas</li><li><strong>Nomor identitas</strong> seperti NIM, NIP&nbsp;</li><li><strong>Nomor telepon/Email </strong>untuk verifikasi akun dan notifikasi perkembangan aduan</li></ol></li><li>Informasi yang dikumpulkan melalui layanan E-Complaint! akan digunakan untuk memverifikasi identitas pelapor, menilai tingkat partisipasi publik di lingkungan kampus, menganalisis kualitas layanan yang diberikan, serta mendukung proses monitoring dan evaluasi internal. Selain itu, data tersebut juga menjadi dasar dalam penyusunan kebijakan yang berbasis data untuk peningkatan pelayanan dan tata kelola di UNIRA Malang.&nbsp; &nbsp;</li></ol></li><li><strong>Hak-hak Pengguna</strong><ol><li>Pengguna berhak memiliki akun dalam menggunakan layanan pengaduan ini.</li><li>Pengguna berhak memanfaatkan fitur yang terdapat dalam layanan e-complaint!</li><li>Pengguna dapat mengganti kata sandi dan informasi akun miliknya.</li><li>Pengguna mendapatkan jaminan kerahasiaan aduan yang dikirimkan selama pengguna memberikan keterangan bahwa informasi yang diberikan adalah rahasia.</li><li>Pengguna berhak meminta penghapusan data pribadi sesuai dengan prosedur yang berlaku.&nbsp;</li><li>Jika diminta oleh pengguna, pengelola layanan dapat memberikan bantuan teknis dalam batas yang wajar, termasuk mengakses akun untuk membantu penyelesaian masalah teknis.&nbsp;</li></ol></li><li><strong>Kewajiban Pengguna</strong><ol><li>Pengguna wajib menggunakan data pribadi milik sendiri saat mendaftar dan menggunakan layanan E-Complaint!.&nbsp;</li><li>Pengguna wajib menjaga kerahasiaan akun dan data pribadinya selama menggunakan layanan.</li><li>Pengguna wajib menyampaikan laporan atau aduan dengan informasi yang jelas, akurat, dan bertanggung jawab.&nbsp;</li><li>Pengguna wajib menjaga kerahasiaan informasi yang diperoleh melalui layanan ini, terutama jika mengandung data sensitif milik institusi atau pihak lain.</li><li>Jika akun pengguna diretas, dicuri, atau disalahgunakan, pengguna wajib segera melaporkannya kepada pengelola layanan agar akun dapat diamankan dan dicegah dari penyalahgunaan lebih lanjut.&nbsp;</li></ol></li><li><strong>Hak-hak Pengelola E-Complaint!</strong><ol><li>Pengelola layanan berhak mengelola dan memproses informasi yang disampaikan oleh pengguna untuk kepentingan tindak lanjut bersama pihak ketiga (instansi terkait) sesuai ketentuan yang berlaku.&nbsp;</li><li>Pengelola layanan berhak menghapus aduan yang tidak memenuhi syarat penggunaan atau melanggar kewajiban pengguna.</li><li>Pengelola layanan berhak memberikan data pribadi pengguna kepada pihak ketiga sesuai dengan proses bisnis dan peraturan perundang-undangan yang berlaku.</li><li>&nbsp;Pengelola layanan berhak menonaktifkan akun pengguna yang terbukti melanggar syarat penggunaan dan kewajiban pengguna.&nbsp;</li><li>&nbsp;Pengelola layanan berhak membatalkan transaksi atau aktivitas yang mencurigakan atau tidak sesuai dengan ketentuan penggunaan layanan.&nbsp;</li></ol></li><li><strong>Kewajiban Pengelola E-Complaint!</strong><ol><li>Pengelola layanan wajib menerapkan mekanisme yang menjamin kerahasiaan data dan informasi yang tersimpan dalam sistem sesuai dengan proses bisnis dan syarat layanan.&nbsp;</li><li>Pengelola layanan wajib menjaga kerahasiaan informasi pribadi pengguna yang tersimpan di dalam sistem dengan standar keamanan yang memadai.</li><li>Pengelola layanan wajib menyediakan mekanisme yang mendukung pemenuhan hak-hak pengguna terkait penggunaan layanan dan data pribadi. &nbsp;</li></ol></li><li><strong>Pernyataan dan Pengecualian Kewajiban Pengelola E-Complaint</strong><ol><li>Pengelola layanan tidak menjamin bahwa layanan E-Complaint! akan selalu dapat diakses tanpa gangguan, tepat waktu, aman, bebas dari kesalahan, virus komputer, atau gangguan teknis lainnya, termasuk masalah infrastruktur listrik dan telekomunikasi.&nbsp;</li><li>Pengelola layanan tidak bertanggung jawab atas kesalahan pengguna dalam menjelajahi situs atau mengunduh aplikasi mobile, ketidakcocokan perangkat, serta risiko yang timbul akibatnya.</li><li>Jika pengguna menggunakan aplikasi untuk tujuan yang membahayakan, merugikan, atau di luar ketentuan penggunaan, pengelola layanan tidak bertanggung jawab atas dampak yang terjadi.</li><li>Pengelola layanan tidak berkewajiban untuk menghilangkan informasi atau laporan pengguna yang muncul pada hasil pencarian mesin pencari di internet.&nbsp;</li></ol></li><li><strong>Lisensi/ Perijinan</strong><br> Penyelenggaraan layanan E-Complaint! UNIRA Malang dilakukan sesuai dengan ketentuan peraturan perundang-undangan yang berlaku di lingkungan kampus, sebagai bagian dari upaya transparansi dan akuntabilitas layanan pengaduan civitas akademika.&nbsp;</li><li><strong>Pelanggaran terhadap syarat dan ketentuan</strong><br>Pelanggaran terhadap syarat dan ketentuan yang berlaku dapat dikenakan sanksi sesuai peraturan hukum dan perundang-undangan yang berlaku.&nbsp;</li><li><strong>Tautan ke Situs Lain</strong><br> Layanan E-Complaint! UNIRA Malang mungkin memuat tautan ke situs eksternal lain. Saat Anda mengakses tautan tersebut, Anda akan diarahkan ke situs yang tidak dioperasikan oleh kami. Oleh karena itu, kami menyarankan Anda untuk membaca dan memahami kebijakan privasi serta ketentuan penggunaan pada situs eksternal tersebut. Kami tidak bertanggung jawab atas konten, kebijakan privasi, maupun praktik dari situs pihak ketiga tersebut.&nbsp;</li></ol>', '2025-05-24 07:03:11', '2025-05-24 07:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('0ade7c2cf97f75d009975f4d720d1fa6c19f4897', 'i:1;', 1747750882),
('0ade7c2cf97f75d009975f4d720d1fa6c19f4897:timer', 'i:1747750882;', 1747750882),
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1748064371),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1748064371;', 1748064371),
('827bfc458708f0b442009c9c9836f7e4b65557fb', 'i:1;', 1750391866),
('827bfc458708f0b442009c9c9836f7e4b65557fb:timer', 'i:1750391866;', 1750391866),
('902ba3cda1883801594b6e1b452790cc53948fda', 'i:2;', 1748143237),
('902ba3cda1883801594b6e1b452790cc53948fda:timer', 'i:1748143237;', 1748143237),
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:2;', 1748361498),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1748361498;', 1748361498),
('fb644351560d8296fe6da332236b1f8d61b2828a', 'i:1;', 1750401386),
('fb644351560d8296fe6da332236b1f8d61b2828a:timer', 'i:1750401386;', 1750401386),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:2:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:19:\"edit data pengaduan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:19:\"view data pengaduan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:18:\"Pimpinan Institusi\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:4:\"User\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:5:\"Staff\";s:1:\"c\";s:3:\"web\";}}}', 1778379584);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_pengaduans`
--

CREATE TABLE `data_pengaduans` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_aduan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pelapor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_pelapor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pimpinan_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan_penolakan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bukti_selesai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu_selesai` timestamp NULL DEFAULT NULL,
  `staff_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_pengaduans`
--

INSERT INTO `data_pengaduans` (`id`, `kode_aduan`, `nama_pelapor`, `email_pelapor`, `pimpinan_id`, `kategori_id`, `deskripsi`, `bukti_foto`, `catatan`, `created_at`, `updated_at`, `status`, `keterangan_penolakan`, `bukti_selesai`, `waktu_selesai`, `staff_id`) VALUES
(1, 'ADU-LD1WT4NN', 'novia', 'novia@gmail.com', 1, 1, 'KRS bermasalah', 'bukti_pengaduan/01JY5QPXSZ85ZCZQ4M7HRWR7JC.jpg', NULL, '2025-06-20 03:56:53', '2025-06-20 03:56:53', 'Terkirim', NULL, NULL, NULL, NULL),
(2, 'ADU-S7BLGGMJ', 'Muhammad Masud', 'masud@gmail.com', 1, 1, 'KRS bermasalah', 'bukti_pengaduan/01JY60SDQF84NQF1K56NTJ6PSA.jpeg', NULL, '2025-06-20 06:35:33', '2025-06-20 06:39:11', 'Didisposisi', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(15, 'default', '{\"uuid\":\"32c44231-de4d-4599-962e-1f51f4d5e420\",\"displayName\":\"App\\\\Jobs\\\\CekStatusAduanJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CekStatusAduanJob\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\CekStatusAduanJob\\\":2:{s:7:\\\"aduanId\\\";i:9;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2028-05-11 07:20:14.196029\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Jakarta\\\";}}\"}}', 0, NULL, 1841617214, 1746922814),
(123, 'default', '{\"uuid\":\"3eccc31e-94bb-494c-9fd1-62c5291b7c27\",\"displayName\":\"App\\\\Jobs\\\\CekStatusAduanJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CekStatusAduanJob\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\CekStatusAduanJob\\\":2:{s:7:\\\"aduanId\\\";i:1;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2025-06-24 10:56:54.170925\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Jakarta\\\";}}\"}}', 0, NULL, 1750737414, 1750391814),
(126, 'default', '{\"uuid\":\"2addab17-5559-4e40-80d6-b49322d19fb9\",\"displayName\":\"App\\\\Jobs\\\\CekStatusAduanJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CekStatusAduanJob\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\CekStatusAduanJob\\\":2:{s:7:\\\"aduanId\\\";i:2;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2025-06-24 13:35:33.262864\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Jakarta\\\";}}\"}}', 0, NULL, 1750746933, 1750401333),
(127, 'default', '{\"uuid\":\"bc329983-f2a9-4160-88bc-5f43592931fe\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:22:\\\"Silakan cek detailnya!\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:23:\\\"heroicon-o-check-circle\\\";s:9:\\\"iconColor\\\";s:7:\\\"success\\\";s:6:\\\"status\\\";s:7:\\\"success\\\";s:5:\\\"title\\\";s:30:\\\"Aduan Baru dari Muhammad Masud\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"d89155ee-a838-4962-ba1d-8a29973c6da6\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1750401334, 1750401334),
(128, 'default', '{\"uuid\":\"7efcf6fd-e664-4d4a-968e-63c1e94917b9\",\"displayName\":\"Filament\\\\Notifications\\\\DatabaseNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:43:\\\"Filament\\\\Notifications\\\\DatabaseNotification\\\":2:{s:4:\\\"data\\\";a:11:{s:7:\\\"actions\\\";a:0:{}s:4:\\\"body\\\";s:22:\\\"Silakan cek detailnya!\\\";s:5:\\\"color\\\";N;s:8:\\\"duration\\\";s:10:\\\"persistent\\\";s:4:\\\"icon\\\";s:23:\\\"heroicon-o-check-circle\\\";s:9:\\\"iconColor\\\";s:7:\\\"success\\\";s:6:\\\"status\\\";s:7:\\\"success\\\";s:5:\\\"title\\\";s:30:\\\"Aduan Baru dari Muhammad Masud\\\";s:4:\\\"view\\\";s:36:\\\"filament-notifications::notification\\\";s:8:\\\"viewData\\\";a:0:{}s:6:\\\"format\\\";s:8:\\\"filament\\\";}s:2:\\\"id\\\";s:36:\\\"d0322551-e637-4199-9c94-c52f25f763d5\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1750401334, 1750401334);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pengaduans`
--

CREATE TABLE `kategori_pengaduans` (
  `id` bigint UNSIGNED NOT NULL,
  `pimpinan_id` bigint UNSIGNED DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_pengaduans`
--

INSERT INTO `kategori_pengaduans` (`id`, `pimpinan_id`, `nama`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Akademik', '2025-05-15 15:27:42', '2025-05-15 15:27:42'),
(2, NULL, 'Administrasi Akademik', '2025-05-15 15:28:06', '2025-05-15 15:28:06'),
(3, NULL, 'Layanan Perpustakaan', '2025-05-15 15:28:32', '2025-05-15 15:28:32'),
(4, NULL, 'Laboratorium Dasar', '2025-05-15 15:28:52', '2025-05-15 15:28:52'),
(5, NULL, 'Microteaching', '2025-05-15 15:29:06', '2025-05-15 15:29:06'),
(6, NULL, 'Pelayanan Umum', '2025-05-15 15:29:25', '2025-05-15 15:29:25'),
(7, NULL, 'Beasiswa', '2025-05-15 15:29:38', '2025-05-15 15:29:38'),
(8, NULL, 'Pengelolaan SDM dan Kepegawaian', '2025-05-15 15:29:50', '2025-05-15 15:30:44'),
(9, NULL, 'Penggajian dan Tunjangan', '2025-05-15 15:31:11', '2025-05-15 15:31:11'),
(10, NULL, 'Pengelolaan Keuangan', '2025-05-15 15:31:39', '2025-05-15 15:31:39'),
(11, NULL, 'Pemeliharaan Fasilitas', '2025-05-15 15:32:00', '2025-05-15 15:32:00'),
(12, NULL, 'Inkubator Bisnis ', '2025-05-15 15:43:20', '2025-05-15 15:43:20'),
(13, NULL, 'Lembaga Pemeriksaan Halal ', '2025-05-15 15:43:41', '2025-05-15 15:43:41'),
(14, NULL, 'Pelayanan Administrasi Keuangan ', '2025-05-15 15:44:00', '2025-05-15 15:44:00'),
(15, NULL, 'Pengelolaan Inventaris ', '2025-05-15 15:44:21', '2025-05-15 15:44:21'),
(16, NULL, 'Penerimaan Mahasiswa Baru', '2025-05-15 15:44:58', '2025-05-15 15:44:58'),
(17, NULL, 'Layanan Kemahasiswaan (ORMAWA) dan Ikatan Alumni', '2025-05-15 15:45:42', '2025-05-15 15:45:42'),
(18, NULL, 'Keagamaan', '2025-05-15 15:45:56', '2025-05-15 15:45:56'),
(19, NULL, 'Karir dan Konseling', '2025-05-15 15:46:20', '2025-05-15 15:46:20'),
(20, NULL, 'Pesantren Mahasiswa', '2025-05-15 15:46:38', '2025-05-15 15:46:38'),
(21, NULL, 'Riset dan Publikasi', '2025-05-15 15:47:02', '2025-05-15 15:47:02'),
(22, NULL, 'Kerjasama', '2025-05-15 15:47:17', '2025-05-15 15:47:17'),
(23, NULL, 'Humas', '2025-05-15 15:47:33', '2025-05-15 15:47:33'),
(24, NULL, 'Kajian Jawa & Kearifan Lokal', '2025-05-15 15:48:07', '2025-05-15 15:48:07'),
(25, NULL, 'Penanggulangan Risiko Bencana', '2025-05-15 15:48:30', '2025-05-15 15:48:30'),
(26, NULL, 'Riset Desa', '2025-05-15 15:48:43', '2025-05-15 15:48:43'),
(27, NULL, 'Pelayanan Sistem Informasi', '2025-05-15 15:49:02', '2025-05-15 15:49:02'),
(28, NULL, 'Pelayanan Tidak Transparan', '2025-05-15 15:49:28', '2025-05-15 15:49:28'),
(29, NULL, 'Penyalahgunaan Wewenang', '2025-05-15 15:49:46', '2025-05-15 15:49:46'),
(30, NULL, 'Korupsi dan Penggelapan', '2025-05-15 15:50:07', '2025-05-15 15:50:07'),
(31, NULL, 'Kecurangan Akademik', '2025-05-15 15:50:24', '2025-05-15 15:50:24'),
(32, NULL, 'Etika dan Perilaku', '2025-05-15 15:50:37', '2025-05-15 15:50:37'),
(33, NULL, 'Pengelolaan Aset Kampus', '2025-05-15 15:50:54', '2025-05-15 15:50:54'),
(34, NULL, 'Pengawasan Proses Administrasi', '2025-05-15 15:51:13', '2025-05-15 15:51:13'),
(35, NULL, 'Keamanan dan Keselamatan', '2025-05-15 15:51:30', '2025-05-15 15:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `ketentuan_layanans`
--

CREATE TABLE `ketentuan_layanans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ketentuan_layanans`
--

INSERT INTO `ketentuan_layanans` (`id`, `name`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Term of Use (Syarat & Ketentuan Penggunaan E-Complaint!)', '<h3>1. <strong>Definisi</strong></h3><ul><li><strong>E-Complaint!</strong>: Merupakan sistem layanan pengaduan berbasis web yang disediakan oleh UNIRA Malang guna menampung, menindaklanjuti, dan menyelesaikan aduan dari civitas akademika.</li><li><strong>Pengguna</strong>: Individu yang mengakses dan menggunakan layanan E-Complaint!, termasuk namun tidak terbatas pada mahasiswa, dosen, tenaga kependidikan, staf administrasi, dan pimpinan institusi.</li><li><strong>Pengelola</strong>: Pihak yang ditunjuk oleh institusi untuk mengelola sistem E-Complaint!, termasuk pengelolaan konten, akun, dan tindak lanjut laporan.</li></ul><h3>2. <strong>Akun Keanggotaan</strong></h3><ul><li>Pengguna wajib mendaftar menggunakan akun resmi institusi (email @uniramalang.ac.id) untuk mengakses fitur penuh E-Complaint!.</li><li>Pengguna bertanggung jawab atas kerahasiaan akun dan kata sandi mereka sendiri.</li><li>Setiap aktivitas yang dilakukan melalui akun pengguna menjadi tanggung jawab pengguna bersangkutan.</li></ul><h3>3. <strong>Syarat Pengguna</strong></h3><ul><li>Pengguna harus berusia minimal 17 tahun atau merupakan bagian dari civitas akademika UNIRA Malang.</li><li>Pengguna wajib memberikan informasi yang benar, akurat, dan terbaru saat melakukan pendaftaran atau membuat aduan.</li><li>Penggunaan layanan tidak boleh bertentangan dengan hukum, norma, dan etika akademik.</li></ul><h3>4. <strong>Tindak Lanjut pada E-Complaint</strong></h3><ul><li>Setiap aduan akan diverifikasi dan ditindaklanjuti oleh pihak yang berwenang sesuai kategori dan urgensinya.</li><li>Aduan yang tidak mendapatkan respon dari pimpinan dalam 20 detik akan dialihkan secara otomatis ke SPI.</li><li>Proses tindak lanjut akan diinformasikan kepada pelapor melalui sistem.</li></ul><h3>5. <strong>Kerahasiaan dan Informasi Pribadi</strong></h3><ul><li>E-Complaint! menjamin kerahasiaan identitas pelapor, kecuali diatur lain oleh ketentuan hukum atau dibutuhkan dalam proses penyelesaian internal.</li><li>Informasi pribadi tidak akan dibagikan kepada pihak ketiga tanpa persetujuan pengguna, kecuali diwajibkan oleh hukum.</li></ul><h3>6. <strong>Hak-hak Pengguna</strong></h3><ul><li>Menyampaikan laporan atau pengaduan secara bebas dan bertanggung jawab.</li><li>Mendapatkan informasi tentang tindak lanjut atas aduan yang disampaikan.</li><li>Meminta penghapusan akun dan data pribadi sesuai prosedur yang ditetapkan.</li></ul><h3>7. <strong>Kewajiban Pengguna</strong></h3><ul><li>Menyampaikan aduan secara jujur, tidak mengandung fitnah, SARA, hoaks, atau informasi yang menyesatkan.</li><li>Tidak menyalahgunakan layanan untuk kepentingan pribadi atau kelompok yang bertentangan dengan kebijakan kampus.</li><li>Mematuhi seluruh ketentuan dan kebijakan E-Complaint!.</li></ul><h3>8. <strong>Hak-hak Pengelola E-Complaint</strong></h3><ul><li>Menonaktifkan atau menghapus akun yang terbukti melanggar ketentuan penggunaan.</li><li>Menunda atau menolak pengaduan yang tidak memenuhi syarat kelengkapan informasi atau yang bersifat spam.</li><li>Melakukan pembaruan sistem, fitur, dan kebijakan tanpa pemberitahuan terlebih dahulu.</li></ul><h3>9. <strong>Kewajiban Pengelola E-Complaint</strong></h3><ul><li>Menyediakan sistem yang aman dan dapat diakses sesuai fungsinya.</li><li>Menjamin tindak lanjut aduan dilakukan secara profesional dan objektif.</li><li>Menyimpan dan melindungi data pengguna sesuai dengan peraturan perundang-undangan yang berlaku.</li></ul><h3>10. <strong>Pernyataan dan Pengecualian Kewajiban Pengelola E-Complaint</strong></h3><ul><li>Pengelola tidak bertanggung jawab atas konten yang diunggah oleh pengguna.</li><li>E-Complaint! tidak menjamin bahwa layanan akan selalu bebas dari gangguan teknis, kehilangan data, atau serangan siber, namun akan mengupayakan perbaikan secepat mungkin.</li><li>Pengelola tidak bertanggung jawab atas keterlambatan tindak lanjut yang di luar kendali sistem.</li></ul><h3>11. <strong>Lisensi / Perizinan</strong></h3><ul><li>Semua konten, perangkat lunak, dan dokumentasi yang disediakan dalam E-Complaint! adalah milik institusi dan dilindungi oleh hak cipta.</li><li>Pengguna tidak diperkenankan menyalin, mendistribusikan, atau memodifikasi konten tanpa izin tertulis dari pengelola.</li></ul><h3>12. <strong>Pelanggaran terhadap Syarat dan Ketentuan</strong></h3><ul><li>Setiap pelanggaran akan dikenakan sanksi administratif hingga penonaktifan akun.</li><li>Pihak kampus berhak mengambil tindakan hukum sesuai dengan tingkat pelanggaran yang terjadi.</li></ul><h3>13. <strong>Tautan ke Situs Lain</strong></h3><ul><li>Layanan E-Complaint! mungkin mengandung tautan ke situs eksternal untuk keperluan pendukung (seperti sistem informasi akademik, email kampus).</li><li>E-Complaint! tidak bertanggung jawab atas konten atau kebijakan privasi dari situs eksternal tersebut.</li></ul>', '2025-05-23 05:07:41', '2025-05-23 05:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_12_123657_create_kategori_pengaduans_table', 1),
(7, '2025_02_15_032938_create_pimpinan_institusis_table', 2),
(8, '2025_02_15_033332_alter_data_pengaduans_table', 2),
(9, '2025_02_16_014439_create_pimpinan_kategori_table', 3),
(10, '2025_02_16_023611_add_nullable_pimpinan_id_to_kategori_pengaduans_table', 4),
(11, '2025_02_16_055941_add_status_to_data_pengaduans', 5),
(12, '2025_02_17_031036_create_permission_tables', 6),
(13, '2025_02_19_101903_create_notifications_table', 7),
(14, '2025_02_20_012546_create_komentar_pengaduans_table', 8),
(15, '2025_03_07_124636_create_komentars_table', 9),
(16, '2025_03_07_132054_create_chat_pengaduans_table', 10),
(17, '2025_03_08_004202_add_user_id_to_pimpinan_institusis_table', 11),
(18, '2025_03_11_124702_create_staff_table', 12),
(19, '2025_03_14_215942_update_staff_table', 13),
(20, '2025_03_17_102014_add_waktu_selesai_to_data_pengaduans_table', 14),
(21, '2025_03_17_102023_add_waktu_selesai_to_data_pengaduans_table', 14),
(22, '2025_03_20_205507_add_kategori_level_to_users_table', 15),
(23, '2025_05_17_221446_create_infos_table', 16),
(24, '2025_05_17_221918_info', 16),
(25, '2025_05_23_102659_create_ketentuan_layanans_table', 17),
(26, '2025_05_23_120539_change_deskripsi_column_type_in_ketentuan_layanans_table', 18),
(27, '2025_05_23_203240_create_bantuan_informasis_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 15),
(4, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 17),
(4, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 21),
(4, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 29),
(4, 'App\\Models\\User', 30),
(4, 'App\\Models\\User', 31),
(4, 'App\\Models\\User', 32),
(4, 'App\\Models\\User', 33),
(4, 'App\\Models\\User', 34),
(4, 'App\\Models\\User', 35),
(4, 'App\\Models\\User', 36),
(4, 'App\\Models\\User', 37),
(4, 'App\\Models\\User', 38),
(4, 'App\\Models\\User', 39),
(4, 'App\\Models\\User', 40),
(4, 'App\\Models\\User', 41),
(4, 'App\\Models\\User', 42),
(4, 'App\\Models\\User', 43),
(4, 'App\\Models\\User', 44),
(3, 'App\\Models\\User', 45),
(3, 'App\\Models\\User', 46),
(3, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 48);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('40bf9747-df72-4298-80bc-b96bbe7895f1', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 4, '{\"actions\":[],\"body\":\"Silakan cek detailnya!\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-check-circle\",\"iconColor\":\"success\",\"status\":\"success\",\"title\":\"Aduan Baru dari Mas\'ud\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2025-05-03 05:28:41', '2025-05-03 05:28:41'),
('449c2dbe-c79e-4439-bb74-3ed3cf261b5f', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 4, '{\"actions\":[],\"body\":\"Silakan cek detailnya!\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-check-circle\",\"iconColor\":\"success\",\"status\":\"success\",\"title\":\"Aduan Baru dari Mas\'ud\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2025-05-06 05:21:05', '2025-05-06 05:21:05'),
('5488ff96-bc8f-4fe1-8800-f34cede8b790', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 4, '{\"actions\":[],\"body\":\"Silakan cek detailnya!\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-check-circle\",\"iconColor\":\"success\",\"status\":\"success\",\"title\":\"Aduan Baru dari Mas\'ud\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2025-05-05 05:57:32', '2025-05-05 05:57:32'),
('649cae94-6e46-4235-b310-5ca7d2d62256', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 4, '{\"actions\":[],\"body\":\"Silakan cek detailnya!\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-check-circle\",\"iconColor\":\"success\",\"status\":\"success\",\"title\":\"Aduan Baru dari Mas\'ud\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2025-05-05 04:56:28', '2025-05-05 04:56:28'),
('6dc8df98-35e3-414e-a80d-0508a691e0a2', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 2, '{\"actions\":[],\"body\":\"Silakan cek detailnya!\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-check-circle\",\"iconColor\":\"success\",\"status\":\"success\",\"title\":\"Aduan Baru dari novia\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', NULL, '2025-06-20 04:05:19', '2025-06-20 04:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit data pengaduan', 'web', '2025-02-17 08:34:34', '2025-02-17 08:34:34'),
(2, 'view data pengaduan', 'web', '2025-02-17 08:35:07', '2025-02-17 08:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `pimpinan_institusis`
--

CREATE TABLE `pimpinan_institusis` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pimpinan_institusis`
--

INSERT INTO `pimpinan_institusis` (`id`, `nama`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Wakil Rektor I', '2025-05-08 05:21:35', '2025-05-08 05:21:35', 2),
(2, 'Wakil Rektor II', '2025-05-08 05:21:54', '2025-05-08 05:21:54', 3),
(3, 'Wakil Rektor III', '2025-05-08 05:22:08', '2025-05-08 05:22:08', 4),
(4, 'Wakil Rektor IV', '2025-05-08 05:22:25', '2025-05-08 05:22:25', 5),
(5, 'Satuan Pengawas Internal', '2025-05-08 05:23:06', '2025-05-08 05:23:06', 6);

-- --------------------------------------------------------

--
-- Table structure for table `pimpinan_kategori`
--

CREATE TABLE `pimpinan_kategori` (
  `id` bigint UNSIGNED NOT NULL,
  `pimpinan_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pimpinan_kategori`
--

INSERT INTO `pimpinan_kategori` (`id`, `pimpinan_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(8, 1, 1, NULL, NULL),
(9, 1, 2, NULL, NULL),
(10, 1, 3, NULL, NULL),
(11, 1, 4, NULL, NULL),
(12, 1, 5, NULL, NULL),
(13, 1, 6, NULL, NULL),
(14, 1, 7, NULL, NULL),
(16, 2, 8, NULL, NULL),
(17, 2, 9, NULL, NULL),
(18, 2, 10, NULL, NULL),
(19, 2, 11, NULL, NULL),
(20, 2, 12, NULL, NULL),
(21, 2, 13, NULL, NULL),
(22, 2, 14, NULL, NULL),
(23, 2, 15, NULL, NULL),
(24, 3, 16, NULL, NULL),
(25, 3, 17, NULL, NULL),
(26, 3, 18, NULL, NULL),
(27, 3, 19, NULL, NULL),
(28, 3, 20, NULL, NULL),
(29, 4, 21, NULL, NULL),
(30, 4, 22, NULL, NULL),
(31, 4, 23, NULL, NULL),
(32, 4, 24, NULL, NULL),
(33, 4, 25, NULL, NULL),
(34, 4, 26, NULL, NULL),
(35, 4, 27, NULL, NULL),
(36, 5, 28, NULL, NULL),
(37, 5, 29, NULL, NULL),
(38, 5, 30, NULL, NULL),
(39, 5, 31, NULL, NULL),
(40, 5, 32, NULL, NULL),
(41, 5, 33, NULL, NULL),
(42, 5, 34, NULL, NULL),
(43, 5, 35, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2025-02-17 08:27:54', '2025-02-17 08:27:54'),
(2, 'Pimpinan Institusi', 'web', '2025-02-17 08:29:05', '2025-03-02 08:54:09'),
(3, 'User', 'web', '2025-02-18 12:03:47', '2025-02-18 12:03:47'),
(4, 'Staff', 'web', '2025-03-17 02:16:59', '2025-03-17 02:16:59'),
(5, 'Lab', 'web', '2025-06-20 06:44:58', '2025-06-20 06:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(1, 4),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pimpinan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `nama`, `pimpinan_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Biro Administrasi Akademik & Umum', 1, '2025-05-08 05:35:52', '2025-05-08 05:35:52', 7),
(2, 'Kepala Bagian  Akademik', 1, '2025-05-08 05:36:37', '2025-05-08 05:36:37', 8),
(3, 'Kepala Bagian Akademik', 1, '2025-05-08 05:37:10', '2025-05-08 05:37:10', 8),
(4, 'Kepala Bagian Sistem Informasi Akademik', 1, '2025-05-08 05:37:46', '2025-05-08 05:37:46', 9),
(5, 'Kepala Bagian Umum', 1, '2025-05-08 05:38:25', '2025-05-08 05:38:25', 10),
(6, 'UPT Perpustakaan', 1, '2025-05-08 05:39:20', '2025-05-08 05:39:20', 11),
(7, 'UPT Pusat Studi Bahasa & Budaya', 1, '2025-05-08 05:41:16', '2025-05-08 05:41:16', 12),
(8, 'UPT Laboratorium Dasar', 1, '2025-05-08 05:43:44', '2025-05-08 05:43:44', 13),
(9, 'UPT Micro Teaching', 1, '2025-05-08 05:46:12', '2025-05-08 05:46:12', 14),
(10, 'Biro Keuangan SDM & Kerumahtanggaan', 2, '2025-05-08 09:02:01', '2025-05-08 09:02:01', 15),
(11, 'Kepala Bagian SDM', 2, '2025-05-08 09:02:52', '2025-05-08 09:02:52', 16),
(12, 'Kepala Bagian Kerumahtanggaan', 2, '2025-05-08 09:05:27', '2025-05-08 09:05:27', 17),
(13, 'UPT Inkubator Bisnis', 2, '2025-05-08 09:06:00', '2025-05-08 09:06:00', 18),
(14, 'UPT Lembaga Pemeriksa Halal', 2, '2025-05-08 09:06:31', '2025-05-08 09:06:31', 19),
(15, 'Biro Administrasi Kemahasiswaan & Alumni', 3, '2025-05-08 09:07:16', '2025-05-08 09:07:16', 20),
(16, 'Kepala Bagian Penerimaan Mahasiswa Baru', 3, '2025-05-08 09:07:57', '2025-05-08 09:07:57', 21),
(17, 'Kepala Bagian Kemahasiswaan & Ikatan Almuni', 3, '2025-05-08 09:08:32', '2025-05-08 09:08:32', 22),
(18, 'Kepala Bagian Keagamaan & Penguatan Keaswajahaan', 3, '2025-05-08 09:09:03', '2025-05-08 09:09:03', 23),
(19, 'UPT Pesantren Mahasiswa', 3, '2025-05-08 09:09:52', '2025-05-08 09:09:52', 24),
(20, 'UPT Unira Career Center', 3, '2025-05-08 09:10:27', '2025-05-08 09:10:27', 25),
(21, 'Biro Riset Publikasi Humas dan Kerjasama', 4, '2025-05-08 09:11:11', '2025-05-08 09:11:11', 26),
(22, 'Kepala Bagaian Riset dan Publikasi', 4, '2025-05-08 09:11:42', '2025-05-08 09:11:42', 27),
(23, 'Kepala Bagian Kerjasama', 4, '2025-05-08 09:12:09', '2025-05-08 09:12:09', 28),
(24, 'Kepala Bagian Humas', 4, '2025-05-08 09:12:38', '2025-05-08 09:12:38', 29),
(25, 'UPT Pusat Kajian Jawa dan Kearifan Lokal', 4, '2025-05-08 09:13:48', '2025-05-08 09:13:48', 30),
(26, 'UPT Digital Center', 4, '2025-05-08 09:14:14', '2025-05-08 09:14:14', 31),
(27, 'UPT Pusat Studi Penanggulangan Risiko Bencana dan Riset Desa', 4, '2025-05-08 09:15:21', '2025-05-08 09:15:21', 32),
(28, 'Dekan Fakultas Ilmu Keislaman', 5, '2025-05-08 09:16:34', '2025-05-08 09:16:34', 33),
(29, 'Dekan Fakultas Ilmu Sosial dan Ilmu Politik', 5, '2025-05-08 09:17:01', '2025-05-08 09:17:01', 34),
(30, 'Dekan Fakultas Ilmu Pendidikan', 5, '2025-05-08 09:17:32', '2025-05-08 09:17:32', 35),
(31, 'Dekan Fakultas Ekonomi Dan Bisnis', 5, '2025-05-08 09:17:53', '2025-05-08 09:17:53', 36),
(32, 'Dekan Fakultas Sains Dan Teknologi', 5, '2025-05-08 09:18:13', '2025-05-08 09:18:13', 37),
(33, 'Direktur Pascasarjana', 5, '2025-05-08 09:18:40', '2025-05-08 09:18:40', 38),
(34, 'Kepala TU Pascasarjana', 5, '2025-05-08 09:19:30', '2025-05-08 09:19:30', 39),
(35, 'Kepala TU Fakultas Ilmu Pendidikan', 5, '2025-05-08 09:20:41', '2025-05-08 09:20:41', 40),
(36, 'Kepala TU Fakultas Ilmu Keislaman', 5, '2025-05-08 09:21:10', '2025-05-08 09:21:10', 41),
(37, 'Kepala TU Fakultas Sains dan Teknologi', 5, '2025-05-08 09:21:36', '2025-05-08 09:21:36', 42),
(38, 'Kepala TU Fakultas Ilmu Sosial dan Ilmu Pemerintahan', 5, '2025-05-08 09:22:05', '2025-05-08 09:22:05', 43),
(39, 'Kepala TU Fakultas Ekonomi dan Bisnis', 5, '2025-05-08 09:22:29', '2025-05-08 09:22:29', 44);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_level` enum('mahasiswa','dosen','tendik') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `kategori_level`, `whatsapp`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '', NULL, '$2y$12$o8BS341S.8Gl5x7PehaVlOdITLAtQ3381RmcG3n8KM.B9RJJPczVy', NULL, '2025-02-15 08:20:58', '2025-02-15 08:20:58'),
(2, 'Wakil Rektor I', 'warek1@gmail.com', NULL, '', NULL, '$2y$12$HxOxpKCpMQZ83h8Jpz8S5.qiyBnvo2rpX.91TxGcc719tZ6QmgzQy', NULL, '2025-05-08 03:51:07', '2025-05-08 03:51:07'),
(3, 'Wakil Rektor II', 'warek2@gmail.com', NULL, '', NULL, '$2y$12$BNHnn.BkAtzlk57OBAmhSeEeT2WGDqvvwLWpUbHVEFLHftapnjmdK', NULL, '2025-05-08 03:52:16', '2025-05-08 03:52:16'),
(4, 'Wakil Rektor III', 'warek3@gmail.com', NULL, '', NULL, 'de542f80977cc920e48df12314aa0a3d', NULL, '2025-05-08 03:52:44', '2025-05-08 03:52:44'),
(5, 'Wakil Rektor IV', 'warek4@gmail.com', NULL, '', NULL, '$2y$12$9KnnIp3oTMSjVx8Ov3FVHOgT6Po7N1Ru07yhrVjT482hAhxHk9RLO', NULL, '2025-05-08 03:53:18', '2025-05-08 03:53:18'),
(6, 'Satuan Pengawas Internal', 'SPI@gmail.com', NULL, '', NULL, '$2y$12$TEvSGTkxGrNCORH46BsdTes9fsX9gm2E0Io8zD6yGO9ZJtj55ZHBG', NULL, '2025-05-08 03:56:50', '2025-05-08 03:56:50'),
(7, 'Biro Administrasi Akademik & Umum', 'BAAU@gmail.com', NULL, '', NULL, '$2y$12$lgzOSeBE3SZJ/CY6cauNK.E710nzwZ/3aLkz3vm9r5oKeCahOyoeq', NULL, '2025-05-08 03:58:53', '2025-05-08 03:58:53'),
(8, 'Kepala Bagian Akademik', 'kabagakademik@gmail.com', NULL, '', NULL, '$2y$12$2AL5PrErjkYOmSSTbKMYv.kKxO88dWfBiM/VgmSh8XhSKxUNbGIue', NULL, '2025-05-08 04:02:32', '2025-05-08 04:02:32'),
(9, 'Kepala Bagian Sistem Informasi Akademik', 'kababagsia@gmail.com', NULL, '', NULL, '$2y$12$46a7aPwYYybrDwwsNK7yR.oeBMu7KRH5cp3lqjhV75l3hKipNUUym', NULL, '2025-05-08 04:04:03', '2025-05-08 04:04:03'),
(10, 'Kepala Bagian Umum', 'kabagumum@gmail.com', NULL, NULL, NULL, '$2y$12$p5dA.pTQbfHqqjFlEaJBA.14n5uf2boKnfVlNV6o58XkHUVpvpQQ6', NULL, '2025-05-08 04:08:38', '2025-05-08 04:08:38'),
(11, 'UPT Perpustakaan', 'perpustakaan@gmail.com', NULL, NULL, NULL, '$2y$12$1aeOT8oOiHWWinPs3Wpn6e1mJlF0kTSflwClWDDzr26Ofg35CFknK', NULL, '2025-05-08 04:11:10', '2025-05-08 04:11:10'),
(12, 'UPT Pusat Studi Bahasa & Budaya', 'pusatstudi@gmail.com', NULL, NULL, NULL, '$2y$12$iKskGRnMjxHb/8Ky2JXi2eHycHfE4TmAOSGiWns2F46eQ0Ze.ncoq', NULL, '2025-05-08 04:12:21', '2025-05-08 04:12:21'),
(13, 'UPT Laboratorium Dasar', 'labdasar@gmail.com', NULL, NULL, NULL, '$2y$12$mK7Q94kJEoOEr7Ur8q1Kj.85QJ6FzGNXSaJfyFMFiH0m0pz3j0vbG', NULL, '2025-05-08 04:13:59', '2025-05-08 04:13:59'),
(14, 'UPT Micro Teaching', 'microteaching@gmail.com', NULL, NULL, NULL, '$2y$12$rZaKyjfWGq/ZkidkmlTQDOiTdXtGAWze/RoJQOXoxkAszd8A8yxfK', NULL, '2025-05-08 04:15:01', '2025-05-08 04:15:01'),
(15, 'Biro Keuangan SDM & Kerumahtanggaan', 'BAKSK@gmail.com', NULL, NULL, NULL, '$2y$12$DoN6oorvJAsx1Vbjt.H6KeY0o5BbdxJs9RBny6fqyTo/IXz/46m1a', NULL, '2025-05-08 04:17:54', '2025-05-08 04:17:54'),
(16, 'Kepala Bagian SDM', 'kabagsdm@gmail.com', NULL, NULL, NULL, '$2y$12$yUFCDfi9dRHGWJDn5mZ3hejRmK4Hw9k1HDP5pxrWKKD1kxHJNrJfq', NULL, '2025-05-08 04:18:55', '2025-05-08 04:18:55'),
(17, ' Kepala Bagian Kerumahtanggaan', 'kerumahtanggaan@gmail.com', NULL, NULL, NULL, '$2y$12$9uWIEQ2UNH9T0X6LU9U15u4gF5wEY5vM4AkKwI620Fh/d/y30HlHK', NULL, '2025-05-08 04:21:04', '2025-05-08 04:21:04'),
(18, 'UPT Inkubator Bisnis', 'uptinkubator@gmail.com', NULL, NULL, NULL, '$2y$12$VxJ6OJ9X3cp3.AZb08PyIuDZ3/mrfqf2AHaEgqmwT6hDiikPwx6DK', NULL, '2025-05-08 06:01:02', '2025-05-08 06:01:02'),
(19, 'UPT Lembaga Pemeriksa Halal', 'UPTLPH@gmail.com', NULL, NULL, NULL, '$2y$12$7kke5WXGdszIyWeFLPBsBeDRV4KZ3dXPVWjjIMV9418M4ORd21ojW', NULL, '2025-05-08 06:02:28', '2025-05-08 06:02:28'),
(20, 'Biro Administrasi Kemahasiswaan & Alumni', 'BAKKA@gmail.com', NULL, NULL, NULL, '$2y$12$A9vay7rdaZ1t5F7AT.8Dee8KhU7R4KkPCGJyLzFE6ImSz5eA1Vo0y', NULL, '2025-05-08 06:06:01', '2025-05-08 06:06:01'),
(21, 'Kepala Bagian Penerimaan Mahasiswa Baru', 'kabagpmb@gmail.com', NULL, NULL, NULL, '$2y$12$VWNVtuAsyzlBjkPTDHKWk.NK/z7viH9MARGPpVxpRONIVFQ0ly1fy', NULL, '2025-05-08 06:07:00', '2025-05-08 06:07:00'),
(22, 'Kepala Bagian Kemahasiswaan & Ikatan Almuni', 'kabagkia@gmail.com', NULL, NULL, NULL, '$2y$12$m.hyAyJ2VP2IYpAnsRXEZ.Zj6liMPk9GwxF6FMmU5Gk3fvSRs8DMi', NULL, '2025-05-08 06:08:07', '2025-05-08 06:08:07'),
(23, 'Kepala Bagian Keagamaan & Penguatan Keaswajahaan', 'kabagkeagamaan@gmail.com', NULL, NULL, NULL, '$2y$12$v9Nyz5C6KmC9mZP4OFjhFuB0OZJzQH2MlCRdmvSxCPIVgc23vkEee', NULL, '2025-05-08 06:09:50', '2025-05-08 06:09:50'),
(24, 'UPT Pesantren Mahasiswa', 'uptpesantren@gmail.com', NULL, NULL, NULL, '$2y$12$bae5AuzLKpZy7B/dvNrjiOYOVCVAf5s9uK21X9Ly.rSC0KW1w9/xi', NULL, '2025-05-08 06:10:37', '2025-05-08 06:10:37'),
(25, 'Unira Career Center', 'UCC@gmail.com', NULL, NULL, NULL, '$2y$12$AQUEbZU2d8O2rd/F1kedme.BDdxQ0rH//LxGiIXSr6pdWEG9z/cLW', NULL, '2025-05-08 06:12:32', '2025-05-08 06:12:32'),
(26, 'Biro Riset Publikasi Humas dan Kerjasama', 'BRPHK@gmail.com', NULL, NULL, NULL, '$2y$12$IYg4IglXBPQrDmwPdidHU.7hN6R2EdEsF6xoe6nToujQQntkSfwkK', NULL, '2025-05-08 06:17:54', '2025-05-08 06:17:54'),
(27, 'Kepala Bagian Riset dan Publikasi', 'kabagrisetpublikasi@gmail.com', NULL, NULL, NULL, '$2y$12$p1Emxw01rE07CnocmDtV3upXYuvDZIA/DYFfLDPDUw.RAV69RYXU2', NULL, '2025-05-08 06:19:02', '2025-05-08 06:19:02'),
(28, 'Kepala Bagian Kerjasama', 'kabagkerjasama@gmail.com', NULL, NULL, NULL, '$2y$12$i9Yzc4k.Sl7sYQeX8pL4V.3cRn96czdicLnkmt6tu3OdeoJ2QWuoK', NULL, '2025-05-08 06:19:56', '2025-05-08 06:19:56'),
(29, 'Kepala Bagian Humas', 'kabaghumas@gmail.com', NULL, NULL, NULL, '$2y$12$rI7FYw53v4h2Ajhb0mMrpu.DwSYoJothBEUlJ3r2kLb/4T5zMFGpm', NULL, '2025-05-08 06:20:58', '2025-05-08 06:20:58'),
(30, 'UPT Pusat Kajian Jawa dan Kearifan Lokal', 'PKJKL@gmail.com', NULL, NULL, NULL, '$2y$12$GtWnbJ7.oM05Y7o3tbg7BOjqp9Mk06iWqBEOQ572d5T23ztj2IPTa', NULL, '2025-05-08 06:22:15', '2025-05-08 06:22:15'),
(31, 'UPT Digital Center', 'digitalcenter@gmail.com', NULL, NULL, NULL, '$2y$12$WTWt34SgV9iXZMXWJSg1I.RByZ80fzFv9decQmDf/IMuS611UHN0e', NULL, '2025-05-08 06:24:49', '2025-05-08 06:24:49'),
(32, 'UPT Pusat Studi Penanggulangan Risiko Bencana dan Riset Desa', 'UPTPSPRBRD@gmail.com', NULL, NULL, NULL, '$2y$12$MIlPIGOyWiU7P5odHTh1C.oHTqJDSdBIaCWQY4iwwzc6hoWQEex5e', NULL, '2025-05-08 06:28:10', '2025-05-08 06:28:10'),
(33, 'Dekan Fakultas Ilmu Keislaman', 'dekanfik@gmail.com', NULL, NULL, NULL, '$2y$12$8WK5lbkKpXv2TBXiXqPYe.64l.zn9d9j0xTmwpcqw5Qk38q4qcEx.', NULL, '2025-05-08 06:37:38', '2025-05-08 06:37:38'),
(34, 'Dekan Fakultas Ilmu Sosial dan Ilmu Politik', 'dekanfisip@gmail.com', NULL, NULL, NULL, '$2y$12$8U0wMJCwIc2WiI3wEMV6yOrw7bbrp7rs7hQIEhuiJxHTAKHd6M9ti', NULL, '2025-05-08 06:38:41', '2025-05-08 06:38:41'),
(35, 'Dekan Fakultas Ilmu Pendidikan', 'dekanfip@gmail.com', NULL, NULL, NULL, '$2y$12$.5tSvtfae2SEn.NAPOiB8u1iNvkG2f8BaxM4YjqNKAJnhrbW8FwPC', NULL, '2025-05-08 06:39:27', '2025-05-08 06:39:27'),
(36, 'Dekan Fakultas Ekonomi Dan Bisnis', 'dekanfeb@gmail.com', NULL, NULL, NULL, '$2y$12$eJx4Vx.w/s1jWeH3YtjubupcerbJtULU9gEjW4y50k8kVUgIhnQMC', NULL, '2025-05-08 06:40:03', '2025-05-08 06:40:03'),
(37, 'Dekan Fakultas Sains Dan Teknologi', 'dekansaintek@gmail.com', NULL, NULL, NULL, '$2y$12$rtL9KkcShYsJSmXIGf5tb.pHO89bsUGue6cvqB1eKpNDsilpsqygG', NULL, '2025-05-08 08:51:02', '2025-05-08 08:51:02'),
(38, 'Direktur Pascasarjana', 'direkturpascasarjana@gmail.com', NULL, NULL, NULL, '$2y$12$gm7A4pdPsFLFvsmnvp8bC.qXBGD7xH5dfx7geJBgLSEQod88QFusK', NULL, '2025-05-08 08:52:03', '2025-05-08 08:52:03'),
(39, 'Kepala TU Pascasarjana', 'tupascasarjana@gmail.com', NULL, NULL, NULL, '$2y$12$LCPdAdfs1z8GoOoji6eyu.19HHzbwDDOLSgkJ3M21lEDcFTzpBHQS', NULL, '2025-05-08 08:53:11', '2025-05-08 08:53:11'),
(40, 'Kepala TU Fakultas Ilmu Pendidikan', 'tufakultasilmupendidikan@gmail.com', NULL, NULL, NULL, '$2y$12$eVQCPWxlaDACu9ich66n2.NAi3JfxwdInf7qL7dsgLzYCwtQLA8nK', NULL, '2025-05-08 08:54:22', '2025-05-08 08:54:22'),
(41, 'Kepala TU Fakultas Ilmu Keislaman', 'tufakultasilmukeislaman@gmail.com', NULL, NULL, NULL, '$2y$12$4hUCkrkvdlkOHwADqkoXFO4KAraHsNtb7KB.jEqK3e0HK98L/IgIa', NULL, '2025-05-08 08:55:46', '2025-05-08 08:55:46'),
(42, 'Kepala TU  Fakultas Sains dan Teknologi', 'tufakultassainsteknologi@gmail.com', NULL, NULL, NULL, '$2y$12$OstuF4pU53ih9k1HpZ3ZtOArumjMT2vTQYeOtpNTZMKcS/WRKcHEm', NULL, '2025-05-08 08:56:58', '2025-05-08 08:56:58'),
(43, 'Kepala TU Fakultas Ilmu Sosial dan Ilmu Pemerintahan', 'tufakultasilmusosialdanilmupemerintahan@gmail.com', NULL, NULL, NULL, '$2y$12$iwDTTVStz4NVJQj2TWIr7Onsg1uSY1w/9819qhG9SjmBtGIvJQGIu', NULL, '2025-05-08 08:58:06', '2025-05-08 08:58:06'),
(44, 'Kepala TU Fakultas Ekonomi dan Bisnis', 'tufakultasekonomidanbisnis@gmail.com', NULL, NULL, NULL, '$2y$12$oq0ZPlzkEsimE3WmMnlSXOuH6EQs1IPMBqmPLZ4R5sb5jvsamu8ji', NULL, '2025-05-08 08:59:04', '2025-05-08 08:59:04'),
(45, 'Muhammad Masud', 'masud@gmail.com', 'mahasiswa', NULL, NULL, '$2y$12$axXiW7JAcZOl7QDjeaMk6ueyGg.otxCnKj78NvoD3Qk2qVJI2Xuzu', NULL, '2025-05-08 20:05:31', '2025-05-08 20:05:31'),
(46, '21572011003', 'muhammad@gmail.com', 'mahasiswa', NULL, NULL, '$2y$12$pMFmNv5nLPx3/3WtOXjWuuMsNduWJh5CRfXSOGwjuprTJsV/.XRuS', NULL, '2025-06-19 22:33:00', '2025-06-19 22:33:00'),
(47, 'novia', 'novia@gmail.com', 'dosen', NULL, NULL, '$2y$12$fPJqCblJpVKw61hpRqakNeUZjDtDsb61gbSHE8SKV4Sa3ssXoODra', NULL, '2025-06-20 03:51:09', '2025-06-20 03:51:09'),
(48, 'anisa', 'anisa@gmail.com', 'tendik', NULL, NULL, '$2y$12$MUfdPQa.L38ZcKR4wsjC8.uNJ0sUOA7DNdlS1D80xzdswqYRRYqO.', NULL, '2025-06-20 03:52:49', '2025-06-20 03:52:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bantuan_informasis`
--
ALTER TABLE `bantuan_informasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `data_pengaduans`
--
ALTER TABLE `data_pengaduans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_pengaduans`
--
ALTER TABLE `kategori_pengaduans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_pengaduans_nama_unique` (`nama`),
  ADD KEY `kategori_pengaduans_pimpinan_id_foreign` (`pimpinan_id`);

--
-- Indexes for table `ketentuan_layanans`
--
ALTER TABLE `ketentuan_layanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `pimpinan_institusis`
--
ALTER TABLE `pimpinan_institusis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pimpinan_institusis_nama_unique` (`nama`),
  ADD KEY `pimpinan_institusis_user_id_foreign` (`user_id`);

--
-- Indexes for table `pimpinan_kategori`
--
ALTER TABLE `pimpinan_kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pimpinan_kategori_pimpinan_id_foreign` (`pimpinan_id`),
  ADD KEY `pimpinan_kategori_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_nama_unique` (`nama`),
  ADD KEY `staff_pimpinan_id_foreign` (`pimpinan_id`),
  ADD KEY `staff_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bantuan_informasis`
--
ALTER TABLE `bantuan_informasis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_pengaduans`
--
ALTER TABLE `data_pengaduans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `kategori_pengaduans`
--
ALTER TABLE `kategori_pengaduans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ketentuan_layanans`
--
ALTER TABLE `ketentuan_layanans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pimpinan_institusis`
--
ALTER TABLE `pimpinan_institusis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pimpinan_kategori`
--
ALTER TABLE `pimpinan_kategori`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategori_pengaduans`
--
ALTER TABLE `kategori_pengaduans`
  ADD CONSTRAINT `kategori_pengaduans_pimpinan_id_foreign` FOREIGN KEY (`pimpinan_id`) REFERENCES `pimpinan_institusis` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pimpinan_institusis`
--
ALTER TABLE `pimpinan_institusis`
  ADD CONSTRAINT `pimpinan_institusis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pimpinan_kategori`
--
ALTER TABLE `pimpinan_kategori`
  ADD CONSTRAINT `pimpinan_kategori_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_pengaduans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pimpinan_kategori_pimpinan_id_foreign` FOREIGN KEY (`pimpinan_id`) REFERENCES `pimpinan_institusis` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_pimpinan_id_foreign` FOREIGN KEY (`pimpinan_id`) REFERENCES `pimpinan_institusis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
