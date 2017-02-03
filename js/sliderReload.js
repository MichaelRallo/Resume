jQuery(document).ready(function ($) {    

    var jssor_1_options = {
        $AutoPlay: true,
        $SlideDuration: 800,
        $SlideEasing: $Jease$.$OutQuint,
        $ArrowNavigatorOptions: {$Class: $JssorArrowNavigator$},
        $BulletNavigatorOptions: {$Class: $JssorBulletNavigator$}
    };

    var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

    /*responsive code begin*/
    /*you can remove responsive code if you don't want the slider scales while window resizing*/
    function ScaleSlider() {
        var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
        if (refSize) {
            refSize = Math.min(refSize, 1920);
            jssor_1_slider.$ScaleWidth(refSize);
        }
        else {
            window.setTimeout(ScaleSlider, 30);
        }
    }
    ScaleSlider();
    $(window).bind("load", ScaleSlider);
    $(window).bind("resize", ScaleSlider);
    $(window).bind("orientationchange", ScaleSlider);
    /*responsive code end*/
    

    var jssor_2_options = {
        $AutoPlay: true,
        $SlideDuration: 800,
        $SlideEasing: $Jease$.$OutQuint,
        $ArrowNavigatorOptions: {$Class: $JssorArrowNavigator$},
        $BulletNavigatorOptions: {$Class: $JssorBulletNavigator$}
    };

    var jssor_2_slider = new $JssorSlider$("jssor_2", jssor_2_options);

    /*responsive code begin*/
    /*you can remove responsive code if you don't want the slider scales while window resizing*/
    function ScaleSlider2() {
        var refSize = jssor_2_slider.$Elmt.parentNode.clientWidth;
        if (refSize) {
            refSize = Math.min(refSize, 1920);
            jssor_2_slider.$ScaleWidth(refSize);
        }
        else {
            window.setTimeout(ScaleSlider, 30);
        }
    }
    ScaleSlider();
    $(window).bind("load", ScaleSlider2);
    $(window).bind("resize", ScaleSlider2);
    $(window).bind("orientationchange", ScaleSlider2);
    /*responsive code end*/
            
    $("#sliderButton1").css("border", "2px white solid");
    $("#sliderButton1").css("background-color", "skyblue");
    $("#sliderButton2").css("border", "2px #2e6da4 solid");
    $("#sliderButton2").css("background-color", "#2e6da4");  
    
            
    $("#sliderButton1").click(function(){
        $("#sliderButton1").css("border", "2px white solid");
        $("#sliderButton1").css("background-color", "skyblue");
        $("#sliderButton2").css("border", "2px #2e6da4 solid");
        $("#sliderButton2").css("background-color", "#2e6da4");
        $("#jssor_2").fadeOut(500);
        setTimeout(function(){$("#jssor_1").fadeIn(500);}, 600);

    });     
    
    $("#sliderButton2").click(function(){
         $("#sliderButton2").css("border", "2px white solid");
         $("#sliderButton2").css("background-color", "skyblue");
         $("#sliderButton1").css("border", "2px #2e6da4 solid");
         $("#sliderButton1").css("background-color", "#2e6da4");

        $("#jssor_1").fadeOut(500);
        setTimeout(function(){$("#jssor_2").fadeIn(500);}, 600);
       
    });
    
    
        });