<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>자라섬_캠핑장</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="자라섬 캠핑장">
    <meta name="keyword" content="camp, camping, travel">
    <meta name="robots" content="">
    <!--<link rel="stylesheet" href="Home_css.css">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/Home_css(bootstrap).css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />


    <meta property="og:url" content="https://toritoto.com" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="자라섬캠핑장" />
    <meta property="og:description" content="자라섬캠핑장" />
    <meta property="og:image" content="http://toritoto.com/images/logo.jpg" />

    <meta name="msapplication-TileColor" content="#ffffff">

    <meta name="theme-color" content="#ffffff">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://malsup.github.com/jquery.cycle2.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function() {
            $("#main_bar").load("main_bar.html");
            $("#footer").load("footer.html");
        });
    </script>

</head>


<body>

    <!-- //main_menu -->

    <header class="main_menu">
        <div id="main_bar"></div>
    </header>

    <!-- //main_slider -->

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active" style="max-height: 600px">
                <img class="d-block w-100" src="img/camper1.jpg" alt="First slide">
                <div class="carousel-caption d-block">
                    <h5>자라섬에서의 하룻밤</h5>
                    <p>
                        자라섬에서의 다양한 볼거리와 즐길거리
                        <br>
                        도심에서 볼 수 없었던 풍경들을 사랑하는 사람들과 함께 즐겨보세요.
                    </p>
                </div>
            </div>
            <div class="carousel-item" style="max-height: 600px">
                <img class="d-block w-100" src="img/campfire1.jpg" alt="Second slide">
                <div class="carousel-caption d-block">
                    <h5>캠핑취사 관련 안내</h5>
                    <p>
                        캠핑에서 빠질 수 없는 캠핑음식
                        <br>
                        안전하게 즐기기 위한 캠핑취사규정에 대해 알려드립니다.
                    </p>
                </div>
            </div>
            <div class="carousel-item" style="max-height: 600px">
                <img class="d-block w-100" src="img/sparkler1.jpg" alt="Third slide">
                <div class="carousel-caption d-block">
                    <h5>이달의 이벤트</h5>
                    <p>
                        이 달에만 즐길 수 있는 색다른 이벤트는 어떨까요?
                        <br>
                        여행을 떠나고픈 당신을 위해 준비한 다양한 이벤트들을 한눈에!
                    </p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- //Quick_menu -->


    <div align=center>
        <nav class="Quick_manu">
            <ul>
                <li><a href="" class="A">
                        <i class="fa fa-bullhorn fa-5x" aria-hidden="true"></i>
                        <strong>공지사항</strong>
                        <span>공지사항과 이벤트를 확인하세요.</span>
                    </a>
                </li>
                <li><a href="" class="R">
                        <i class="fa fa-calendar-check-o fa-5x" aria-hidden="true"></i>
                        <strong>예약하기</strong>
                        <span>예약 화면으로 이동합니다.</span>
                    </a>
                </li>
                <li><a href="" class="L">
                        <i class="fa fa-map-marker fa-5x" aria-hidden="true"></i>
                        <strong>위치안내</strong>
                        <span>캠핑장 위치와 정보를 확인하세요.</span>
                    </a>
                </li>
                <li><a href="" class="C">
                        <i class="fa fa-question-circle fa-5x" aria-hidden="true"></i>
                        <strong>고객문의</strong>
                        <span>불편한 점이 있으신가요?</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>

    <footer>
        <div id="footer"></div>
    </footer>

</body></html>
