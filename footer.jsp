    </div>    </div>
</section>
<!-- /contact1 -->
<!-- //contact block -->
<!-- footer -->
<section class="w3l-footer-29-main">
  <div class="footer-29 py-5">
    <div class="container py-lg-4">
      <div class="row footer-top-29">
        <div class="col-lg-4 col-md-6 col-sm-7 footer-list-29 footer-1 pr-lg-5">
          <div class="footer-logo mb-3">
            <a class="navbar-brand" href="index.html">Help desk</a>
          </div>
          <p>We focus on the needs of all</p>
          <ul class="mt-3">
            <li><a href="tel:+(91) 8797897868"><span class="fa fa-phone"></span> +(91) 8797897868 </a></li>
            <li><a href="mailto:governmentschemesalerts@gmail.com" class="mail"><span class="fa fa-envelope-open-o"></span>
                governmentschemesalerts@gmail.com</a></li>
          </ul>
        </div>
        <!-- <div class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-2 mt-sm-0 mt-5">

          <ul>
            <h6 class="footer-title-29">Company</h6>
            <li><a href="about.html">About Us</a></li>
            <li><a href="#blog"> Blog posts</a></li>
            <li><a href="services.html#pricing"> Pricing plans</a></li>
            <li><a href="#careers"> Careers</a></li>
            <li><a href="#projects"> Projects</a></li>
            <li><a href="contact.html">Contact us</a></li>
          </ul>
        </div>
        <div class="col-lg-2 col-md-6 col-sm-5 col-6 footer-list-29 footer-3 mt-lg-0 mt-5">
          <h6 class="footer-title-29">Useful Links</h6>
          <ul>
            <li><a href="#terms">Terms of service</a></li>
            <li><a href="#privacy"> Privacy policy</a></li>
            <li><a href="#doc"> Documentation</a></li>
            <li><a href="#support"> Support</a></li>
            <li><a href="#components"> Components</a></li>
            <li><a href="#changelog"> Changelog</a></li>
          </ul>

        </div>
        <div class="col-lg-4 col-md-6 col-sm-7 footer-list-29 footer-4 mt-lg-0 mt-5">
          <h6 class="footer-title-29">Subscribe to our Newsletter </h6>
          <p>Enter your email and receive the latest news, updates and special offers from us.</p>

          <form action="#" class="subscribe" method="post">
            <input type="email" name="email" placeholder="Your Email Address" required="">
            <button class="btn btn-style btn-primary w-100 mt-3">Subscibe</button>
          </form>
        </div>
      </div>
    </div> -->
  </div>
</section>
<!-- //footer -->

<!-- copyright -->
<section class="w3l-copyright">
  <div class="container">
    <div class="row bottom-copies">
      <p class="col-lg-8 copy-footer-29">© 2021. All rights reserved.


      <div class="col-lg-4 main-social-footer-29">
        <a href="https://www.facebook.com" class="facebook"><span class="fa fa-facebook"></span></a>
        <a href="https://twitter.com/" class="twitter"><span class="fa fa-twitter"></span></a>
        <a href="https://www.instagram.com/" class="instagram"><span class="fa fa-instagram"></span></a>
        <a href="https://www.linkedin.com/" class="linkedin"><span class="fa fa-linkedin"></span></a>
      </div>

    </div>
  </div>

  <!-- move top -->
  <button onclick="topFunction()" id="movetop" title="Go to top">
    &#10548;
  </button>
  <script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
      scrollFunction()
    };

    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("movetop").style.display = "block";
      } else {
        document.getElementById("movetop").style.display = "none";
      }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    }
  </script>
  <!-- /move top -->
</section>
<!-- //copyright -->

<script src="assets/js/jquery-3.3.1.min.js"></script> <!-- Common jquery plugin -->

<script src="assets/js/theme-change.js"></script><!-- theme switch js (light and dark)-->

<script src="assets/js/owl.carousel.js"></script><!-- owl carousel -->

<!-- script for tesimonials carousel slider -->
<script>
  $(document).ready(function () {
    $("#owl-demo1").owlCarousel({
      loop: true,
      margin: 20,
      nav: false,
      responsiveClass: true,
      responsive: {
        0: {
          items: 1,
          nav: false
        },
        1000: {
          items: 1,
          nav: false,
          loop: false
        }
      }
    })
  })
</script>
<!-- //script for tesimonials carousel slider -->

<!-- magnific popup -->
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<script>
  $(document).ready(function () {
    $('.popup-with-zoom-anim').magnificPopup({
      type: 'inline',

      fixedContentPos: false,
      fixedBgPos: true,

      overflowY: 'auto',

      closeBtnInside: true,
      preloader: false,

      midClick: true,
      removalDelay: 300,
      mainClass: 'my-mfp-zoom-in'
    });

    $('.popup-with-move-anim').magnificPopup({
      type: 'inline',

      fixedContentPos: false,
      fixedBgPos: true,

      overflowY: 'auto',

      closeBtnInside: true,
      preloader: false,

      midClick: true,
      removalDelay: 300,
      mainClass: 'my-mfp-slide-bottom'
    });
  });
</script>
<!-- //magnific popup -->

<!--/MENU-JS-->
<script>
  $(window).on("scroll", function () {
    var scroll = $(window).scrollTop();

    if (scroll >= 80) {
      $("#site-header").addClass("nav-fixed");
    } else {
      $("#site-header").removeClass("nav-fixed");
    }
  });

  //Main navigation Active Class Add Remove
  $(".navbar-toggler").on("click", function () {
    $("header").toggleClass("active");
  });
  $(document).on("ready", function () {
    if ($(window).width() > 991) {
      $("header").removeClass("active");
    }
    $(window).on("resize", function () {
      if ($(window).width() > 991) {
        $("header").removeClass("active");
      }
    });
  });
</script>
<!--//MENU-JS-->

<!-- disable body scroll which navbar is in active -->
<script>
  $(function () {
    $('.navbar-toggler').click(function () {
      $('body').toggleClass('noscroll');
    })
  });
</script>
<!-- //disable body scroll which navbar is in active -->

<!--bootstrap-->
<script src="assets/js/bootstrap.min.js"></script>
<!-- //bootstrap-->

</body>

</html>