import jquery from "jquery"
window.jQuery = jquery
window.$ = jquery
$(document).ready(function() {
    console.log("ready!");

    $(".step").click(function() {
        $(this).addClass("active").prevAll().addClass("active");
        $(this).nextAll().removeClass("active");
    });

    $(".step01").click(function() {
        $("#line-progress").css("width", "8%");
        $(".step1").addClass("active").siblings().removeClass("active");
    });

    $(".step02").click(function() {
        $("#line-progress").css("width", "50%");
        $(".step2").addClass("active").siblings().removeClass("active");
    });

    $(".step03").click(function() {
        $("#line-progress").css("width", "100%");
        $(".step3").addClass("active").siblings().removeClass("active");
    });


});