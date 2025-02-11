<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <link rel="icon" type="image/png" sizes="32x32" href="images/logo-cleanskin.ico">
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/cleanskin.jpg" alt="">
      </div>

      <div class="content">
    <h3>Selamat datang di <span class="brand">CleanSkin</span>, destinasi terbaik untuk perawatan kulit yang sehat dan bercahaya! ✨</h3>
    
    <p>
        Kami percaya bahwa setiap orang berhak memiliki kulit yang sehat dan terawat. Oleh karena itu, 
        <span class="brand">CleanSkin</span> hadir untuk memberikan solusi perawatan kulit yang aman, berkualitas, dan terpercaya. 
        Produk kami diformulasikan dengan bahan-bahan pilihan yang telah teruji, sehingga cocok untuk berbagai jenis kulit: 
        <strong>normal, kering, berminyak, kombinasi, hingga sensitif</strong>.
    </p>

    <h4>Kenapa Memilih <span class="brand">CleanSkin</span>?</h4>
    <ul>
        <li><strong>Bahan Berkualitas</strong> – Mengandung bahan alami dan aktif yang efektif merawat kulit.</li>
        <li><strong>Aman & Bersertifikat</strong> – Teruji secara dermatologis dan bebas dari bahan berbahaya.</li>
        <li><strong>Diskon & Penawaran Menarik</strong> – Dapatkan promo spesial setiap bulan!</li>
        <li><strong>Pelayanan Terbaik</strong> – Kami siap membantu memilih produk terbaik sesuai kebutuhan kulitmu.</li>
    </ul>

    <p>
        Jadikan <span class="brand">CleanSkin</span> sebagai partner perawatan kulitmu dan nikmati kulit sehat serta bercahaya setiap hari! 💖
    </p>
    
    <p class="tagline"><strong>#GlowWithCleanSkin &nbsp;|&nbsp; #HealthySkinStartsHere</strong></p>
</div>


         <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>

</section>

<section class="reviews">
   
   <h2 class="heading">BIODATA</h2>

   <div class="swiper reviews-slider">

   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
      <img src="images/azzahra.jpg" alt="Foto azzahra">
      <h3>MUHAMMAD AZ-ZAHRA</h3>
      <p><strong>Universitas:</strong> Universitas Komputer Indonesia</p>
      <p><strong>Jurusan:</strong> Sistem Informasi</p>
      <p><strong>NIM:</strong> 10523003</p>
      </div>

      <div class="swiper-slide slide">
      <img src="images/iksan.jpg" alt="Foto iksan">
      <h3>IKHSAN RIZKY TUBAGUS</h3>
      <p><strong>Universitas:</strong> Universitas Komputer Indonesia</p>
      <p><strong>Jurusan:</strong> Sistem Informasi</p>
      <p><strong>NIM:</strong> 10523004</p>
      </div>

      <div class="swiper-slide slide">
      <img src="images/raffi.jpg" alt="Foto raffi">
      <h3>RAFFI REVANZA</h3>
      <p><strong>Universitas:</strong> Universitas Komputer Indonesia</p>
      <p><strong>Jurusan:</strong> Sistem Informasi</p>
      <p><strong>NIM:</strong> 10523036</p>
      </div>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>









<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>