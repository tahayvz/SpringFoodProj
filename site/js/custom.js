(function () {
  var $window, $document, $body;

    $window = $(window);
    $document = $(document);
    $body = $("body");


  var jl_stick;
  if ($(".jl_menu_sticky").hasClass('jl_stick')) {
  var jl_stick = $(".jl_menu_sticky").offset().top;
  }
  var marker;
   var blog = {
        initialised: false,
        init: function() {
            if (!this.initialised) {
                this.initialised = true;
            } else {
                return;
            }
            /*-------------- Blog Functions Calling ---------------------------------------------------
            ------------------------------------------------------------------------------------------------*/
            
            this.scroll_detect();
            this.wow();
            this.testimonial();
            this.promotion();
            this.food_carousel();
            this.count_down();
            this.main_slider();
            this.gallery_fillter();
            this.lightbox();
            this.main_form();
            this.stepper();
            this.menu();
        },
        /*-------------- Blog Functions definition ---------------------------------------------------
        ---------------------------------------------------------------------------------------------------*/
menu: function() {

  jQuery('.navicon').on('click',function(){
    $(this).toggleClass('open');
  });
  $(".header-nav .menu-item-has-children > a").append($("<span/>",{class:'arrow_down'}).html('<i class="ti-angle-down"></i>')); 
  $('.header-nav .arrow_down i').on("click",  function() {
            var $submenu = $(this).closest('.menu-item-has-children').find(' > .sub-menu');
            $(this).toggleClass("ti-angle-down").toggleClass("ti-angle-up");
            if ( $submenu.hasClass('menu-active-class') ) {
                $submenu.removeClass('menu-active-class');
            } else {
                $submenu.addClass('menu-active-class');
            }
            return false;
        });



  
  },
stepper: function() {
  $("input[type='number']").stepper({
            labels: {
                up: "",
                down: ""
            }
        });
  },
main_slider: function() {
  $(".jl-main-slider").slick({
                autoplay: true,
                autoplaySpeed: 8000,
                arrows: true,
                prevArrow: '<button type="button" class="slick-prev"></button>',
                nextArrow: '<button type="button" class="slick-next"></button>',
                dots: true,
                fade: true,
                cssEase: 'linear',
            })
  },
  gallery_fillter: function() {
     // Add isotope click function
    $('.filter-menu li').on('click', function(){
          $(".filter-menu li").removeClass("active");
          $(this).addClass("active");
   
          var selector = $(this).attr('data-filter');
          $(".portfolio-masonry").isotope({
              filter: selector,
              animationOptions: {
                  duration: 750,
                  easing: 'linear',
                  queue: false,
              }
          });
          return false;
      });
    $('.portfolio-masonry').imagesLoaded( function() {
      $(".portfolio-masonry").isotope({
          itemSelector: '.single-item',
          layoutMode: 'masonry',
      });
    });  
  },
  lightbox: function() {
    $( '.lightbox' ).swipebox();
  },
  main_form: function() {
   $('.form-gp input').on('focus', function() {
        $(this).parent('.form-gp').addClass('focused');
    });
    $('.form-gp input').on('focusout', function() {
        if ($(this).val().length === 0) {
            $(this).parent('.form-gp').removeClass('focused');
        }
    });
  },
// promotions slider
promotion: function() {
  var slickSlide = $('.jl-promotion-slider');
      for (i = 0; i < slickSlide.length; i++) {
      var $promotion = $(slickSlide[i]);
$promotion.slick({
            dots: $promotion.attr("data-dots") == "true",
        infinite: $promotion.attr("data-loop") == "true",
        arrows: $promotion.attr("data-arrows") == "true",
        swipe: $promotion.attr("data-swipe") == "true",
        autoplay: $promotion.attr("data-autoplay") == "true",
    speed: 800,
    autoplaySpeed: 8000,
    pauseOnHover: true,
    adaptiveHeight: true,
    prevArrow:'<div class="jl-arrow-left"><i class="ti-angle-left"></i></div>',
    nextArrow:'<div class="jl-arrow-right"><i class="ti-angle-right"></i></div>',
    slidesToScroll: 1,
    responsive: [
          {
            breakpoint: 0,
            settings: {
              slidesToShow: parseInt($promotion.attr('data-items')) || 1,
            }
          },
          {
            breakpoint: 479,
            settings: {
              slidesToShow: parseInt($promotion.attr('data-xs-items')) || 1,
            }
          },
          {
            breakpoint: 767,
            settings: {
              slidesToShow: parseInt($promotion.attr('data-sm-items')) || 1,
            }
          },
          {
            breakpoint: 991,
            settings: {
              slidesToShow: parseInt($promotion.attr('data-md-items')) || 1,
            }
          },
          {
            breakpoint: 1199,
            settings: {
              slidesToShow: parseInt($promotion.attr('data-lg-items')) || 1,
            }
          },
          {
            breakpoint: 1799,
            settings: {
              slidesToShow: parseInt($promotion.attr('data-xl-items')) || 1,
            }
          },
        ]
  });
        }
        },
// testimonial slider
testimonial: function() {
  var slickSlide = $('.jl-testimonial-slide');
      for (i = 0; i < slickSlide.length; i++) {
      var $testimonial = $(slickSlide[i]);
  $testimonial.slick({
        dots: $testimonial.attr("data-dots") == "true",
        infinite: $testimonial.attr("data-loop") == "true",
        arrows: $testimonial.attr("data-arrows") == "true",
        swipe: $testimonial.attr("data-swipe") == "true",
        autoplay: $testimonial.attr("data-autoplay") == "true",
    speed: 800,
    autoplaySpeed: 8000,
    pauseOnHover: true,
    adaptiveHeight: true,
    prevArrow:'<div class="jl-arrow-left"><i class="ti-angle-left"></i></div>',
    nextArrow:'<div class="jl-arrow-right"><i class="ti-angle-right"></i></div>',
    slidesToScroll: 1,
    responsive: [
          {
            breakpoint: 0,
            settings: {
              slidesToShow: parseInt($testimonial.attr('data-items')) || 1,
            }
          },
          {
            breakpoint: 479,
            settings: {
              slidesToShow: parseInt($testimonial.attr('data-xs-items')) || 1,
            }
          },
          {
            breakpoint: 767,
            settings: {
              slidesToShow: parseInt($testimonial.attr('data-sm-items')) || 1,
            }
          },
          {
            breakpoint: 991,
            settings: {
              slidesToShow: parseInt($testimonial.attr('data-md-items')) || 1,
            }
          },
          {
            breakpoint: 1199,
            settings: {
              slidesToShow: parseInt($testimonial.attr('data-lg-items')) || 1,
            }
          },
          {
            breakpoint: 1799,
            settings: {
              slidesToShow: parseInt($testimonial.attr('data-xl-items')) || 1,
            }
          },
        ]
  });
    }
    },
    // Count Down
    count_down: function(){
      var jl_count = $('.clock');
      for (i = 0; i < jl_count.length; i++) {
      var $countDown = $(jl_count[i]);

      $countDown.countdown($countDown.attr('data-date'), function(event) {
               var $this = $(this).html(event.strftime(''
                 + '<span class="c-grid"> <span class="c-value">%D</span> <span class="c-title">days</span> </span> '
                 + '<span class="c-grid"> <span class="c-value">%H</span> <span class="c-title">hours</span> </span> '
                 + '<span class="c-grid"> <span class="c-value">%M</span> <span class="c-title">minutes</span> </span> '
                 + '<span class="c-grid"> <span class="c-value">%S</span> <span class="c-title">seconds</span> </span> '));
             });
    }


    },
    // Animation section
    wow: function(){
      if ($("body").hasClass("wow-animation")) {
      new WOW().init();
    }
    },

    scroll_detect: function(){
      $("#go-top").on("click", function () {
    jQuery("body,html").animate({ scrollTop: 0 }, 500 );
    return false;
  });  
    },
    food_carousel: function(){
      var i;
      var slickSlide = $('.jl-food-carousel');
      for (i = 0; i < slickSlide.length; i++) {
      var $carousel = $(slickSlide[i]);
      $carousel.slick({
        slidesToScroll: parseInt($carousel.attr('data-slide-to-scroll')) || 1,
        asNavFor: $carousel.attr('data-for') || false,
        dots: $carousel.attr("data-dots") == "true",
        infinite: $carousel.attr("data-loop") == "true",
        focusOnSelect: true,
        arrows: $carousel.attr("data-arrows") == "true",
        swipe: $carousel.attr("data-swipe") == "true",
        autoplay: $carousel.attr("data-autoplay") == "true",
        vertical: $carousel.attr("data-vertical") == "true",
        mobileFirst: true,
        speed: 700,
        responsive: [
          {
            breakpoint: 0,
            settings: {
              slidesToShow: parseInt($carousel.attr('data-items')) || 1,
            }
          },
          {
            breakpoint: 479,
            settings: {
              slidesToShow: parseInt($carousel.attr('data-xs-items')) || 1,
            }
          },
          {
            breakpoint: 767,
            settings: {
              slidesToShow: parseInt($carousel.attr('data-sm-items')) || 1,
            }
          },
          {
            breakpoint: 991,
            settings: {
              slidesToShow: parseInt($carousel.attr('data-md-items')) || 1,
            }
          },
          {
            breakpoint: 1199,
            settings: {
              slidesToShow: parseInt($carousel.attr('data-lg-items')) || 1,
            }
          },
          {
            breakpoint: 1799,
            settings: {
              slidesToShow: parseInt($carousel.attr('data-xl-items')) || 1,
            }
          },
        ]
      });
   }
    }


  
        
    };



/*==============================================
         Count to init
         ===============================================*/
        var timers = $(".timer");
        if ($.fn.countTo) {
            timers.each(function () {
                $(this).data("animated", 0);
                animateTimer(this);
            });
        }

        

        function animateTimer(timer) {
            if ($(timer).data("animated") == 0) {
                if ($.fn.visible && $(timer).visible()) {
                    $(timer).data("animated", 1);
                    $(timer).countTo();
                }
            }
        }


        /*==============================================
         Progressbar init
         ===============================================*/
        var progressBar = $(".progress-bar");
        progressBar.each(function (indx) {
            $(this).data("animated", 0);
            if ($.fn.visible) {
                animateProgressbar(this);
            }
        });
        

        function animateProgressbar(pb) {
            if ($(pb).data("animated") == 0) {
                if ($(pb).visible()) {
                    $(pb).css("width", $(pb).attr("aria-valuenow") + "%");
                    $(pb).data("animated", 1);
                }
            }
        }

        /*==============================================
         Accordion init
         ===============================================*/
        var allPanels = $(".accordion > dd").hide();
        allPanels.first().slideDown("easeOutExpo");
        $(".accordion").each(function () {
            $(this).find("dt > a").first().addClass("active").parent().next().css({display: "block"});
        });

        $(".accordion > dt > a").click(function () {

            var current = $(this).parent().next("dd");
            $(this).parents(".accordion").find("dt > a").removeClass("active");
            $(this).addClass("active");
            $(this).parents(".accordion").find("dd").slideUp("easeInExpo");
            $(this).parent().next().slideDown("easeOutExpo");

            return false;

        });

         /*==============================================
         Toggle init
         ===============================================*/
        var allToggles = $(".toggle > dd").hide();
        $(".toggle > dt > a").click(function () {

            if ($(this).hasClass("active")) {

                $(this).parent().next().slideUp("easeOutExpo");
                $(this).removeClass("active");

            }
            else {
                var current = $(this).parent().next("dd");
                $(this).addClass("active");
                $(this).parent().next().slideDown("easeOutExpo");
            }

            return false;
        });




       




function handlePreloader(){
    if($('#page-loader').length){
      $('#page-loader').delay(200).fadeOut(500);
    }
  }
function handleScroll(){    
      var jlscroll = $(window).scrollTop();
        if (jlscroll > jl_stick) {
            $(".jl_menu_sticky.jl_stick").addClass("jl_sticky");
            var nav_height = $(".jl_menu_sticky.jl_stick").outerHeight();
            $(".jl_blank_nav").css({
                "height": nav_height
            });
        } else {
            $(".jl_menu_sticky.jl_stick").removeClass("jl_sticky");
            $(".jl_blank_nav").css({
                "height": 0
            });
        }
      if (jlscroll > 500) {
      jQuery("#go-top").fadeIn();
      } else {
      jQuery("#go-top").fadeOut();
      }
  }  

    $(document).ready(function() {
        blog.init();
    });
    $(window).on('load', function() {
    handlePreloader();
    });
    jQuery(window).scroll(function () {
    handleScroll();
    timers.each(function () {
                animateTimer(this);
            });
    if ($.fn.visible) {
                progressBar.each(function () {
                    animateProgressbar(this);
                })
            }

    });  

    window.initMap = function() {
        var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
        center: {lat: 59.325, lng: 18.070}
        });

        marker = new google.maps.Marker({
        map: map,
        draggable: true,
        animation: google.maps.Animation.DROP,
        position: {lat: 59.327, lng: 18.067}
        });
        marker.addListener('click', toggleBounce);
    }

    function toggleBounce() {
        if (marker.getAnimation() !== null) {
        marker.setAnimation(null);
        } else {
        marker.setAnimation(google.maps.Animation.BOUNCE);
        }
    }



})(jQuery); 