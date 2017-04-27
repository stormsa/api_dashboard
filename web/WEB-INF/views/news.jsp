<%--
  Created by IntelliJ IDEA.
  User: Vinh
  Date: 11/01/2017
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %><html>
<head>
    <title>meteo</title>
    <script src="<c:url value="/resources/js/jquery/jquery-2.2.3.min.js" />"></script>
    <script>
        $(window).ready(function(){
            var bool = 0;
            var url = ' https://newsapi.org/v1/sources?language=en';
            $.getJSON(url, function (json) {
                for(var i in json.sources){
                    var info = json.sources[i];
                    if(bool == 0) {
                        $(".carousel-inner").append("<div id=new_id" + info.id + " class='item active' style='margin-bottom:20px;' >" +
                                "                        <div class='carousel-content'>" +
                                "                            <div class='title'>"+ info.name+"</div>" +
                                "                            <div class='desc'>" + info.description + "</div>" +
                                " </div>"+
                                " </div>")
                        bool = 1;
                    }else{
                        $(".carousel-inner").append("<div id=new_id" + info.id + " class='item' style='margin-bottom:20px;' >" +
                                "                        <div class='carousel-content'>" +
                                "                            <div class='title'>"+ info.name+"</div>" +
                                "                            <div class='desc'>" + info.description + "</div>" +
                                "                        </div>"+
                                "                    </div>")
                    }
                }

            });
        });

    </script>
</head>
<body>

<h1 class="titlearea win-type-ellipsis">
    <span class="pagetitle" >News Monde !</span>
</h1>
<div id="carousel" class="carousel slide" data-ride="carousel">
    <!-- Wrapper for slides -->
    <div class="row">
        <div class="">
            <div class="carousel-inner">

            </div>
            <!-- Controls -->
            <a id="prev" class="left carousel-control" href="#text-carousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a id="next" class="right carousel-control" href="#text-carousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>
    <script>
        setCarouselHeight('#carousel');

        function setCarouselHeight(id)
        {
            var slideHeight = [];
            $(id+' .item').each(function()
            {
                // add all slide heights to an array
                slideHeight.push($(this).height());
            });

            // find the tallest item
            max = Math.max.apply(null, slideHeight);

            // set the slide's height
            $(id+' .carousel-content').each(function()
            {
                $(this).css('height',max+'px');
            });
        }
        $(document).ready(function () {
            //rotation speed and timer
            var speed = 5000;

            var run = setInterval(rotate, speed);
            var slides = $('.item');
            var container = $('.carousel-inner div');
            var elm = container.find(':first-child').prop("tagName");
            var item_width = container.width();
            var previous = 'prev'; //id of previous button
            var next = 'next'; //id of next button
            slides.width(item_width); //set the slides to the correct pixel width
            container.parent().width(item_width);
            container.width(slides.length * item_width); //set the slides container to the correct total width
            container.find(elm + ':first').before(container.find(elm + ':last'));
            resetSlides();

            //if user clicked on prev button

            $('#buttons a').click(function (e) {
                //slide the item

                if (container.is(':animated')) {
                    return false;
                }
                if (e.target.id == previous) {
                    container.stop().animate({
                        'left': 0
                    }, 1500, function () {
                        container.find(elm + ':first').before(container.find(elm + ':last'));
                        resetSlides();
                    });
                }

                if (e.target.id == next) {
                    container.stop().animate({
                        'left': item_width * -2
                    }, 1500, function () {
                        container.find(elm + ':last').after(container.find(elm + ':first'));
                        resetSlides();
                    });
                }

                //cancel the link behavior
                return false;
            });
            //if mouse hover, pause the auto rotation, otherwise rotate it
            container.parent().mouseenter(function () {
                clearInterval(run);
            }).mouseleave(function () {
                run = setInterval(rotate, speed);
            });
            function resetSlides() {
                //and adjust the container so current is in the frame
                container.css({
                    'left': -1 * item_width
                });
            }
        });

        //a simple function to click next link
        //a timer will call this function, and the rotation will begin

        function rotate() {
            $('#next').click();
        }
    </script>
</body>
</html>
