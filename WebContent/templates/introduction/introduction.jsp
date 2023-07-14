<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oh! 스카</title>
    <link rel="icon" type="image/x-icon" href="../all-images/favicon.png">
    <link rel="stylesheet" href="introduction.css">
    <link rel="preload" as="style" crossorigin="anonymous"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">


</head>

<body>
    <header>
        <div id="header">
            <div class = "header_wrapper common_wrapper">
                <div class="header_nav_logo">
                    <a href="#vision">
                        <img src="https://i.ibb.co/YNfQCNW/Oh-Sca-LOGOjpg.jpg" alt=""" height="18px" width="82px" alt="Oh!스카 로고">
                    </a>
                        
                    </div>
                    <nav class="header_nav_wrapper common_wrapper" style="width: 978px;"> 
                        <!-- 메인 화면으로 페이지 추가하면 됨 -->
                        <a class="header_nav_box" href="">Oh!스카 홈</a>
                        <div class="header_nav_line"></div>
                        <ul class="header_nav_items">
                            <!-- 오늘의 스터디 페이지로 이동 -->
                            <li><a href="">스터디</a></li>
                            <!-- 오늘의 카페 페이지로 이동 -->
                            <li><a href="">카페</a></li>
                            <li><a href="">내 카페</a></li>
                             <!-- FAQ 페이지로 이동 -->
                             <li><a href="http://127.0.0.1:5500/team-project/FAQ/FAQ.html">FAQ</a></li>
                            <li><a href="#introduction">Oh!스카 소개</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>

    <main>
        <section id="vision">
            <div class="vision_hero">
                <div class="vision_hero_wrapper common_wrapper">
                    <h1 class="vision_hero_text">
                        자국민들의 IT 기술이
                        <br>
                        성장할 수 있도록 
                    </h1>
                </div>
            </div>
            <div class="vision_statement">
                <div class="common_wrapper vision_statement_wrapper">
                    <p>
 						Oh!스카는 ‘ 자국민의 IT 기술을 상향 평준화 시킨다’는 미션 아래 스터디, 카페 등 다양한 서비스를 제공합니다.                    </p>
                    <p>
                        Oh!스카에서는 다양한 IT 스터디 개설과 참여가 가능하고, 공부하기 좋은 카페 관련 정보를 제공하고 있습니다.
                    </p>
                </div>
            </div>
        </section>
        <section id="introduction">
            <div class="introduction_title">
                <p>Oh!스카는 자국민의 IT 기술 상향 평준화를 위한 스터디 플랫폼입니다.</p>
            </div>
            <div class="introduction_content_outer">
                <div class="introduction_content_inner common_wrapper">
                    <div class="introduction_content_item">
                    <img src="https://www.wantedlab.com/img/status_icon_1.png" width="326px" height="auto" alt="주요 현황 이미지1">
                        <p>oh!스카에서는 누구든지 원하는 스터디를 개설하고 참여할 수 있습니다. </p>
                    </div>
                    <div class="introduction_content_item">
                        <img src="https://www.wantedlab.com/img/status_icon_2.png" width="326px" height="auto" alt="주요 현황 이미지1">
                            <p>어떤 카페에서 공부할지 고민될 때 Oh!스카를 통해 고민을 해결하세요.</p>
                    </div>
                    <div class="introduction_content_item">
                        <img src="https://www.wantedlab.com/img/status_icon_3.png" width="326px" height="auto" alt="주요 현황 이미지1">
                            <p>누구와 어디서 어떤 방식으로 공부할지 걱정될 때는 Oh!스카를 보세요.</p>
                    </div>    
                </div>
            </div>
        </section>
    </main>
    
    <footer id="footer">
        <div class="footer_wrapper common_wrapper">
            <div class="footer_section" style="height:66px">
                <div class="footer_section_link" style="height:66px">
                    <img src="../all-images/logo.jpg" height="20px" width="90px" alt="Oh!스카 로고">
                    <a href="">스터디</a>
                    <a href="">카페</a>
                    <a href="http://127.0.0.1:5500/team-project/FAQ/FAQ.html">FAQ</a>
                </div>
            </div>
            <div class="footer_line"></div>
            <div class="footer_section">
                <div>
                    <p class="footer_address">
                        (주)코리아교육그룹 | 서울특별시 강남구 강남대로 286(3,4층) | 통신판매업번호: 제 2019-서울강남-01371호
                        <br>
                        Email: ddazua@koreaedugroup.com | FAX: 02-6959-0789 | 대표전화: 1588-6222
                    </p>
                </div>
            </div>
        </div>
    </footer>
</body>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script>
    $("#introduction").click(function(e){
    e.preventDefault();
    });
</script>
</html>