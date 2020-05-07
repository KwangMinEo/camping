<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>�ڶ�_ķ����</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="�ڶ� ķ����">
    <meta name="keyword" content="camp, camping, travel">
    <meta name="robots" content="">
    <!--<link rel="stylesheet" href="Home_css.css">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/Home_css(bootstrap).css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />


    <meta property="og:url" content="https://toritoto.com" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="�ڶ�ķ����" />
    <meta property="og:description" content="�ڶ�ķ����" />
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
                    <h5>�ڶ󼶿����� �Ϸ��</h5>
                    <p>
                        �ڶ󼶿����� �پ��� ���Ÿ��� ���Ÿ�
                        <br>
                        ���ɿ��� �� �� ������ ǳ����� ����ϴ� ������ �Բ� ��ܺ�����.
                    </p>
                </div>
            </div>
            <div class="carousel-item" style="max-height: 600px">
                <img class="d-block w-100" src="img/campfire1.jpg" alt="Second slide">
                <div class="carousel-caption d-block">
                    <h5>ķ����� ���� �ȳ�</h5>
                    <p>
                        ķ�ο��� ���� �� ���� ķ������
                        <br>
                        �����ϰ� ���� ���� ķ���������� ���� �˷��帳�ϴ�.
                    </p>
                </div>
            </div>
            <div class="carousel-item" style="max-height: 600px">
                <img class="d-block w-100" src="img/sparkler1.jpg" alt="Third slide">
                <div class="carousel-caption d-block">
                    <h5>�̴��� �̺�Ʈ</h5>
                    <p>
                        �� �޿��� ��� �� �ִ� ���ٸ� �̺�Ʈ�� ����?
                        <br>
                        ������ �������� ����� ���� �غ��� �پ��� �̺�Ʈ���� �Ѵ���!
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
                        <strong>��������</strong>
                        <span>�������װ� �̺�Ʈ�� Ȯ���ϼ���.</span>
                    </a>
                </li>
                <li><a href="" class="R">
                        <i class="fa fa-calendar-check-o fa-5x" aria-hidden="true"></i>
                        <strong>�����ϱ�</strong>
                        <span>���� ȭ������ �̵��մϴ�.</span>
                    </a>
                </li>
                <li><a href="" class="L">
                        <i class="fa fa-map-marker fa-5x" aria-hidden="true"></i>
                        <strong>��ġ�ȳ�</strong>
                        <span>ķ���� ��ġ�� ������ Ȯ���ϼ���.</span>
                    </a>
                </li>
                <li><a href="" class="C">
                        <i class="fa fa-question-circle fa-5x" aria-hidden="true"></i>
                        <strong>������</strong>
                        <span>������ ���� �����Ű���?</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>

    <footer>
        <div id="footer"></div>
    </footer>

</body></html>
