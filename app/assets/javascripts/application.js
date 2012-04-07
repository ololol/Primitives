// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require_tree .

$(document).ready(function (){
    $("p.random_button").click(function(event){
        $("span.button_panel").hide();
        $("div#random_generator").show();
    });

    $("p.custom_button").click(function(event){
        $("span.button_panel").hide();
        $("div#custom_generator").show();
    });

    $("#panel").tabSlideOut({
        tabHandle: '.handle',
        pathToTabImage: 'assets/rewind.png',
        tabLocation: 'right',
        imageHeight: '32px',
        imageWidth: '32px',
        speed: 300,
        action: 'click',
        topPos: '10px',
        fixedPosition: true
    });

    $(".handler").click(function(event){
        getWidth($("div#panel"))
    });

    $('#enemy > li').hover(
        function () {
            var $this = $(this);
            $('a',$this).stop(true,true).animate({
                    'bottom':'-15px'
                }, 300);
        },

        function () {
            var $this = $(this);
            $('a',$this).stop(true,true).animate({
                    'bottom':'-50px'
                }, 300);
        }
    );
});