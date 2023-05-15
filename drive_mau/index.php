
<?php include('mvc/controller/source.php');?>

<?php
include_once('mvc/controller/cf.php');
$query1 = "SELECT * FROM tin_tuc";
          $tt_run= mysqli_query($con,$query1);
		  ?>

<?php

if(isset($_POST['submit']))
{
$name=$_POST['fullname'];
$email=$_POST['emailid'];
$mobileno=$_POST['mobileno'];
$dscrption=$_POST['description'];
$query=mysqli_query($con,"insert into tblcontactus(fullname,email,contactno,message) value('$name','$email','$mobileno','$dscrption')");
echo "<script>alert('Your information succesfully submitted');</script>";
echo "<script>window.location.href ='index.php'</script>";
}
?>
<script type="text/javascript">
	$(document).ready(function(){
		 $(".rslides").responsiveSlides();
	})
</script>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <Style>
      .ht__cat__thumb img{
        width:386.66px;
        height:171.98px;
      }
      .fr__product__inner a{
        color: #0B0B61;
        font-size:15px;
        padding:5px;
        text-align:center;
        font-family:tahoma;
        font-weight:bold;

       
      }
      .htc__best__product__details a{
        font-size:18px;
      }
      </style>

    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Owl Carousel min css -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="css/custom.css">


    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
    <!-- Body main wrapper start -->
    <div class="wrapper">
        <!-- Start Header Style -->
        <header id="htc__header" class="htc__header__area header--one" style="background-color:                                                        ">
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header" style="background-color:#0B243B">
                <div class="container">
                    <div class="row">
                        <div class="menumenu__container clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5">
                                <div class="logo">
                                    <a href="index.php"><img src="./images/logo/LOGO.jpg" style="width:65px;"></img></a>
                                </div>
                            </div>
                            <div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
                                <nav class="main__menu__nav hidden-xs hidden-sm">
                                    <ul class="main__menu">
                                        <li class="drop"><a href="index.php"style="color:white;">TRANG CHỦ</a></li>
                                        <li class="drop">
                                            <a href="index.php#title__line" style="color:white;">THÔNG TIN</a>
                                            <ul >
                                             
                                            </ul>
                                        </li>
                                        <li class="drop">
                                            <a href="index.php#fr__product__inner"style="color:white;">BÁC SĨ</a>
                                         
                                            <ul >
                                              
                                            </ul>
                                        </li> 
                                        
                                        <li class="drop">
                                            <a href="makeAppointmentStep1.php" style="color:white;">ĐẶT LỊCH</a>
                                         
                                            <ul>
                                               
                                            </ul>
                                        </li> 
                                       
                                        <li class="drop">
                                            <a href="index.php#htc__best__product__details"style="color:white;">HỎI ĐÁP</a>
                                           
                                            <ul>
                                             
                                            </ul>
                                        </li>
                                        
                                        <li class="drop">
                                            <a href="#"style="color:white;">TÀI KHOẢN</a>
                                          
                                            <ul class="dropdown mega_dropdown" style="width:200px;">
                                            <?php if(isset($_COOKIE['username'])): ?>
                  <li><a href="info_Patient.php">THÔNG TIN CHUNG</a></li>
                  <li><a href="signout.php">ĐĂNG XUẤT</a></li>
            
               </ul>
            </li>
          <?php else: ?>
            <li><a href="signin.php">ĐĂNG NHẬP</a></li>
          <?php endif; ?>  
    </ul>
                                            
                                             
 

                              
                            </div>
                            <div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
                                <div class="header__right">
                                   <a href="../doan2/bacsi"><img src="./images/logo/bv.png" style="width:60px;"></a>
                                   <a href="../doan2/admin"><img src="./images/logo/ad1.png" style="width:60px;"></a>
                                </div>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mobile-menu-area"></div>
                </div>
            </div>
        
        </header>
       

        <div class="body__overlay"></div>
       
        <div class="offset__wrapper"> 
           
            <div class="search__area" >
                <div class="container">
                    <div class="row">
                        <div class="col-md-12" >
                            <div class="search__inner">
                                <form action="#" method="get"   >
                                    <input placeholder="Search here... " type="text">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close" style="background-color:#0B243B"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
       
        <div class="slider__container slider--one bg__cat--3">
            <div class="slide__container slider__activation__wrap owl-carousel">
              
                <div class="single__slide animation__style01 slider__fixed--height" style="background-image: url('images/md.jpeg');background-size:100%;">
                    <div class="container">
                        <div class="row align-items__center" >
                            <div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
                                <div class="slide">
                                    <div class="slider__inner">
                                        <h1 style="color:#0B0B61;">PHÒNG KHÁM ĐA KHOA PT</h1>
                                        <br>
                                        <h2>Hãy quét mã QR để được tư vấn </h2>
                                        <br>
                                        <img src="./images/OP.png" style="width:200px;"></img>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
                                <div class="slide__thumb">
                                    <img src="images/sl1.jpg" alt="slider images">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
                <div class="single__slide animation__style01 slider__fixed--height" style="background-image: url('images/md.jpeg');background-size:cover;">
                    <div class="container">
                        <div class="row align-items__center">
                            <div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
                                <div class="slide">
                                    <div class="slider__inner">
                                       
                                       
                                        <h2 style="color:#0B0B61;">QUÉT QR ĐỂ KHAI BÁO Y TẾ!!</h2>
                                        <br>
                                        <img src="./images/covid.png" style="width:210px;"></img>
                                       
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
                                <div class="slide__thumb">
                                    <img src="images/sl2.jpg" alt="slider images">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
            </div>
        </div>
      
        <section class="htc__category__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 id="title__line" style="font-weight:bold; color:#0B243B">CÁC KHOA VIỆN</h2>
                        </div>
                    </div>
                </div>
                <div class="htc__product__container">
                    <div class="row">
                        <div class="product__list clearfix mt--30">
                         
                            <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                <div class="category">
                                    <div class="ht__cat__thumb">
                                        <a href="product-details.html">
                                            <img src="images/dd.png" alt="product images" style="width:200px;">
                                        </a>
                                    </div>
                                    <br>
                                    <div class="fr__product__inner"style="margin-left:20px;">
                                        <h4><a href="product-details.html" style="font-weight:bold;">KHOA DINH DƯỠNG</a></h4>
                                       
                                    </div>
                                </div>
                            </div>
                          
                            <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                <div class="category">
                                    <div class="ht__cat__thumb">
                                        <a href="product-details.html">
                                            <img src="images/tr.png" alt="product images" style="width:200px;">
                                        </a>
                                    </div>
                                    
                                    <div class="fr__product__inner" style="margin-left:50px;">
                                    <br>
                                        <h4><a href="product-details.html"style="font-weight:bold;">KHOA NGOẠI</a></h4>
                                       
                                    </div>
                                </div>
                            </div>
                           
                            <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                <div class="category">
                                    <div class="ht__cat__thumb">
                                        <a href="product-details.html">
                                            <img src="images/ii.png" alt="product images" style="width:200px;">
                                        </a>
                                    </div>
                                   
                                    <div class="fr__product__inner"style="margin-left:50px;">
                                      <br>
                                        <h4><a href="product-details.html"style="font-weight:bold;">KHOA NỘI</a></h4>
                                        
                                    </div>
                                </div>
                            </div>
                           
                            <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                <div class="category">
                                    <div class="ht__cat__thumb">
                                        <a href="product-details.html">
                                            <img src="images/jj.png" alt="product images" style="width:200px; ">
                                        </a>
                                    </div>
                                   
                                    <div class="fr__product__inner" style="margin-left:50px;">
                                      <br>
                                      <br>
                                        <h4><a href="product-details.html"style="font-weight:bold;">KHOA XÉT NGHIỆM & KHOA KHÁC</a></h4>
                                        
                                    </div>
                                </div>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </section>
      
         <!-- End Category Area -->
        <!-- Start Product Area -->
        <section class="ftr__product__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line" style="font-weight:bold; color:#0B243B">ĐỘI NGŨ BÁC SĨ</h2>
                            <br>
                            <marquee  style="font-size:30px; color:#0B0B61;">Với những bác sĩ kinh nghiệm dày đặc!! </marquee>
                            <br>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="product__wrap clearfix">

                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="images/lk.jpg" alt="product images">
                                    </a>
                                </div>
                              <br>
                                <div id="fr__product__inner">
                                    <h4><a href="product-details.html">Trưởng khoa nội: Minh Thương</a></h4>
                                   
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="images/b.jpg" alt="product images" style="height:171.98px;">
                                    </a>
                                </div>
                              <br>
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">Trưởng khoa ngoại: Minh Nam</a></h4>
                                   
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="images/iiii.jpg" alt="product images">
                                    </a>
                                </div>
                              <br>
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html" >Trưởng khoa dinh dưỡng: Nhất Thiên</a></h4>
                                   <br>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="images/o.jpg" alt="product images">
                                    </a>
                                </div>
                                <Br>
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">Trưởng khoa xét nghiệm: Hồ Phương</a></h4>
                                    
                                    <br>
                                </div>
                            </div>
                        </div>
                        <br>
                        <!-- End Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="images/ttt.jpg" alt="product images" style="height:171.98px;">
                                    </a>
                                </div>
                              <br>
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">Bác sĩ trẻ: Ngọc Anh</a></h4>
                                   
                                </div>
                            </div>
                        </div>
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="images/uu.jpg" alt="product images" style="height:171.98px;">
                                    </a>
                                </div>
                              <br>
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">Bác sĩ trẻ: Doãn Qúy</a></h4>
                                   
                                </div>
                            </div>
                        </div>
                       
                        <!-- End Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="images/pp.jpg" alt="product images" style="height:171.98px;">
                                    </a>
                                </div>
                                <br>
                              
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">Bác sĩ trẻ:  Uy Long</a></h4>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="images/mmm.jpg" alt="product images" style="height:171.98px;">
                                    </a>
                                </div>
                                <br>
                              
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">Bác sĩ trẻ: Anh Anh</a></h4>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      
        <section class="top__rated__area bg__white pt--100 pb--110">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line"style="font-weight:bold;color:#0B243B">HƯỚNG DẪN VÀ QUY ĐỊNH</h2>
                        </div>
                    </div>
                </div>
                <div class="row mt--20">
                   
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div class="htc__best__product">
                            
                            <div class="htc__best__product__details" style="width:300px;  ">
                                <h2><a href="nvdt.php"  style="color:#0B0B61;">🚑 QUY ĐỊNH NHẬP VIỆN</a></h2>
                                <br>
                                <h2><a href="dvbh.php"style="color:#0B0B61;">🏥BẢO HIỂM</a></h2>
                                <br>
                                <h2><a href="qdtk.php"style="color:#0B0B61;">🕛 QUY ĐỊNH THĂM KHÁM</a></h2>
                                
                                
        
                            </div>
                            <video width="320" height="240" controls>
                                <source src="./mvc/view/image/cv.mp4" type="video/mp4">
                                
                                
                                </video>
                                <video width="320" height="240" controls>
                                <source src="./mvc/view/image/mm.mp4" type="video/mp4">

  
  
</video>
                        </div>
                    </div>
                    <?php


?>

                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div class="htc__best__product">
                            
                            <div id="htc__best__product__details" style="width:800px; height:600px; ">
                    <h2  style="text-align:center; marrgin-left:100px; color:red; "> <img src="./mvc/view/image/l.gif"  style="width:100px;"></img> HÃY HỎI!!!!</h2>
                                         <br>
                    <form name="contactus" method="post">
                      <div>
                        <span><label>ʜọ ᴠà ᴛêɴ</label></span> <br>
                        <span><input type="text" name="fullname" required="true" value=""></span>
                      </div>
                      <br>
                      <div>
                        <span><label>E-MAIL</label></span><br>
                        <span><input type="email" name="emailid" required="ture" value=""></span>
                      </div>
                      <br>
                      <div>
                         <span><label>Số điện thoại</label></span><br>
                        <span><input type="text" name="mobileno" required="true" value=""></span>
                      </div>
                      <br>
                      <div>
                        <span><label>Description</label></span><br>
                        <span><textarea name="description" required="true" style="background-color:white;"> </textarea></span>
                      </div>
                      <br>
                     <div>
                         <span><input type="submit" name="submit" value="Submit"></span>
                    </div>
                    </form>
                    
                    
                    
                    
                    </div>
                    </div>
                    </div>				
                    </div>
                    
                    
                    
                    </div>
                                 
                
                </div>
            </div>
        </section>
        
    </div>
  
    <script src="js/vendor/jquery-3.2.1.min.js"></script>
   
    <script src="js/bootstrap.min.js"></script>
   
    <script src="js/plugins.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
   
    <script src="js/waypoints.min.js"></script>
    
    <script src="js/main.js"></script>
           
            <br>
        <div class="container text-center">
      
        </div>
        </br>
        <div class="container text-center">
      
        <br>
        </div>
       







</script>


</body>

</html>
 <div id="news">
        <div class="container">
			<br>

          <h4 class="heading text-center" style="color:blue; font-weight:bold; font-size:20px;">TIN TỨC NỔI BẬT VỀ COVID!!</h4>
          <br>
          <div class="row">
              

          <?php 
          

                while ($row=mysqli_fetch_assoc($tt_run)) 
                { ?>   
            <div class="col-md-4">
              <div class="news-box">
                <div class="news-box-up">
                  <a href="<?php echo  "tin-tucct.php?id=".$row['id']; ?>" class="news-box-img"  style="width:250px;">
                    <?php echo '<img src="admin/view-dr/image/'.$row['img'].'" alt="Image">' ?></a>
                </div>
                <div class="news-box-down">
                  <a href="<?php echo "tin-tucct.php?id=".$row['id']; ?>"><?php echo $row['TuaDe']; ?></a>
                </div>
              </div>
            </div>
           <?php     
          
                                                    } 
                                                ?>
            
            
          </div>
        </div>
      </div>
      <BR>
      <BR>
      
      <bR>
      <footer id="htc__footer" >
            <!-- Start Footer Widget -->
            <div class="footer__container bg__cat--1" style="background-color:#0B243B; height:520px;">
                <div class="container">
                    <div class="row">
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="footer">
                                <h2 class="title__line--2">ABOUT US</h2>
                                <div class="ft__details">
                                    
                                    <div class="ft__social__link">
                                        <ul class="social__link">
                                            <li><a href="https://twitter.com/"><i class="icon-social-twitter icons"></i></a></li>

                                            <li><a href="https://www.instagram.com/"><i class="icon-social-instagram icons"></i></a></li>

                                            <li><a href="https://www.facebook.com/minhthuong2011/"><i class="icon-social-facebook icons"></i></a></li>

                                            <li><a href="https://www.google.com.vn/"><i class="icon-social-google icons"></i></a></li>

                                            <li><a href="https://www.linkedin.com/"><i class="icon-social-linkedin icons"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="col-md-2 col-sm-6 col-xs-12 xmt-40 smt-40">
                            <div class="footer">
                                <h2 class="title__line--2" style="margin-left:50px;">CƠ SỞ</h2>
                                <div class="ft__inner">
                                    <ul class="ft__list">
                                        <li style="color:white;">12 Nguyễn Văn Bảo, Gò Vấp, TPHCM</li>
                                        <li  style="color:white;">93 Đặng Thái Thân, TP Buôn Ma Thuột</li>
                                        <li style="color:white;">105 Quang Trung, Hà Nội</li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                      
                        <div class="bg-light container-fluid mb-0">
	<!-- GOOGLE MAP -->
     <section id="google-map" style="width:650px; float:left;">
   
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1165.08464638682!2d106.68702369382301!3d10.821870356331692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528e5496d03cf%3A0xa5b8e7395ec636b9!2zMTIgTmd1eeG7hW4gVsSDbiBC4bqjbywgUGjGsOG7nW5nIDQsIEjhu5MgQ2jDrSBNaW5oLCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2s!4v1607052207531!5m2!1svi!2s" width="100%" height="350" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
     </section> 
</div>
<br>
<div class="bg-light container-fluid mb-0" >
	<p class="text-center mb-0" style="color:white;">TRƯỜNG ĐẠI HỌC CÔNG NGHIỆP THÀNH PHỐ HỒ CHÍ MINH - KHOA CÔNG NGHỆ THÔNG TIN </p>
	<p class="text-center mb-0" style="color:white;">CÔNG NGHỆ MỚI</p>
</div>
                    </div>
                </div>
            </div>
            <!-- End Footer Widget -->
        </footer>

 
