<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=
    , initial-scale=1.0">
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css">
    <link rel="stylesheet" href="mainpage.css">
</head>
<body>
    <div id="mainpage">
        <header>
            <div role="presentation" class="nav-bar" style="position: fixed; padding-right: initial;">
                <div class="main-bar isLoggedIn" role="presentation">
                    <nav class="main-bar-nav">
                        <section>
                            <div class="main-bar-nav-top">
                                <div class="main-bar-nav-top-logo">
                                    <button type="button" class="main-bar-hamberger">
                                        <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ficon-menu.png&w=17&q=75" alt="hamberger menu" height="14" style="width:17px; height:14px; object-fit:contain">
                                    </button>
                                    <a href="" class="main-bar-nav-top-logo-a">
                                        <svg width="74" hieght="21" viewBox="0 0 140 32">
                                            <path fill="currentColor" d="M89.8 2.2l-5.6 2.4v4.8h-3.8v5.2h3.8v10.2c0 4.2 2.6 7 6.6 7 1.6 0 2.6-.4 3.2-.6V26c-.2 0-1 .2-1.8.2-1.6 0-2.4-.6-2.4-2.6v-8.8H94V9.6h-4.2V2.2zM28.6 9.6l-4 14-4.6-14h-5.6l-4.6 14L6 9.6H0l6.8 21.8h6l4.4-14.6 4.6 14.6h6l6.8-21.8zM134.4 2.2v8.6c-1.4-1-3-1.6-4.8-1.8h-.4-1.6c-5 .4-8.2 4.2-9.2 9-.2.8-.2 1.4-.2 2.2V22c.6 5.6 4.4 10 10.2 10 2.4 0 4.4-.6 6-1.8v1.4h5.4V0l-5.4 2.2zm-5.2 24.4c-3 0-5.6-2.4-5.6-6.2 0-4 2.6-6.2 5.6-6.2s5.2 2.2 5.2 6c0 4.2-2.2 6.4-5.2 6.4zM116.2 18c-.8-5.2-4.6-9-10-9s-9.2 3.8-10 9c-.2.8-.2 1.6-.2 2.6v1.6c.6 5.6 4.4 10 10.2 10 4.6 0 8-2.8 9.4-6.8l-5-1.2c-.8 1.8-2.4 3.2-4.4 3.2-2.8 0-4.6-2.2-5-5.2h15.2v-1.6c0-1 0-1.8-.2-2.6zm-14.8 0c.8-2.2 2.4-3.6 4.8-3.6s4 1.6 4.8 3.6h-9.6zM50.6 11c-1.4-1-3.2-1.8-5.2-1.8H44.8h-.6c-5.2.4-8.6 4-9.4 9-.2.8-.2 1.4-.2 2.2v1.8c.6 5.6 4.4 10 10.2 10 2.4 0 4.4-.6 6-1.8v1.4h5.6V9.6h-5.6V11zm-5.2 15.6c-3 0-5.6-2.4-5.6-6.2 0-4 2.6-6.2 5.6-6.2s5.2 2.2 5.2 6c0 4.2-2.2 6.4-5.2 6.4zM71.2 9c-2.2 0-4.6 1-6 3.2V9.6h-5.6v21.8h5.6V18.8c0-2.6 1.4-4.6 4-4.6 2.8 0 3.8 2 3.8 4.4v12.8h5.6V17.6c.2-4.8-2.2-8.6-7.4-8.6z"></path>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                        </section>
                        <section>
                            <ul class="menu">
                                <li>
                                    <a href="">Oh!스카 소개</a ::after>
                                </li>
                                <li>
                                    <a href="">FAQ</a ::after>
                                </li>
                                <li>
                                    <a href="">오늘의 스터디</a ::after>
                                </li>
                                <li>
                                    <a href="">오늘의 카페</a ::after>
                                </li>
                            </ul>
                        </section>
                        <section>
                            <aside class="aside isLoggedIn">
                                <ul>
                                    <li>
                                        <button type="button" class="searchButton">
                                            <svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="18" height="18" viewBox="0 0 18 18">
                                                <defs>
                                                    <path id="qt2dnsql4a" d="M15.727 17.273a.563.563 0 10.796-.796l-4.875-4.875-.19-.165a.563.563 0 00-.764.028 5.063 5.063 0 111.261-2.068.562.562 0 101.073.338 6.188 6.188 0 10-1.943 2.894l4.642 4.644z"></path>
                                                </defs>
                                                <g fill="none" fill-rule="evenodd">
                                                    <use fill="#333" fill-rule="nonzero" stroke="#333" stroke-width=".3" xlink:href="#qt2dnsql4a"></use>
                                                </g>
                                            </svg>
                                        </button>
                                    </li>
                                    <li class="signUp">
                                        <button class="signUpBtn" type="button">회원가입/로그인</button>
                                    </li>
                                    <li class="leftDivision mdMoreVisible"::before>
                                        <a class="dashboardBtn" href="">기업 서비스</a>
                                    </li>
                                </ul>
                            </aside>
                        </section>
                    </nav>
                </div>
            </div>
            <div class="padding"></div>
        </header>
    </div>
        <main>
            <section class="section">
                <div class="topBanner">
                    <div class="slick-slider slick-initialized">
                        <button type="button" class="topBanner-arrow topBanner-prevArrow">
                            <span class="svgIcon">
                                <svg class="svgIcon-root" viewBox="0 0 18 18">
                                    <path d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z"></path>
                                </svg>
                            </span>
                        </button>
                        <div class="slick-list" style="padding: 0px 50px;">
                            <div class="slick-slider slick-initialized">
                                <button type="button" class="topBanner-arrow topBanner-nextArrow">
                                    <span class="svgIcon">
                                        <svg class="svgIcon-root" viewBox="0 0 18 18">
                                            <path d="m11.955 9-5.978 5.977a.563.563 0 0 0 .796.796l6.375-6.375a.563.563 0 0 0 0-.796L6.773 2.227a.562.562 0 1 0-.796.796L11.955 9z"></path>
                                        </svg>
                                    </span>
                                </button>
                            </div>
                            <!-- 슬릭 트랙리스트 -->
                            <div id="wrapper">
                                <div id="slider-wrap">
                                    <ul id="slider">
                                       <li>
                                            <img src="banner/images/001.png">
                                       </li>
                                       <li>
                                            <img src="banner/images/002.png">
                                       </li>
                                       <li>
                                            <img src="banner/images/003.png">
                                       </li>
                                       <li>
                                            <img src="banner/images/004.png">
                                       </li>
                                       <li>
                                            <img src="banner/images/005.png">
                                       </li>
                                       <li>
                                            <img src="banner/images/006.png">
                                       </li>
                                       <li>
                                            <img src="banner/images/006.png">
                                       </li>
                                    </ul>
                                     <!-- 컨트롤 버튼-->
                                    <div class="btns" id="next"></div>
                                    <div class="btns" id="previous"></div>
                                      <ul>
                                      </ul>
                                    </div>
                                </div>
                            
                             </div>
                        </div>
                        <button type="button" class="topBanner-arrow topBanner-prevArrow">
                            <span class="svgIcon">
                                <svg class="svgIcon-root" viewBox="0 0 18 18">
                                    <path d="m11.955 9-5.978 5.977a.563.563 0 0 0 .796.796l6.375-6.375a.563.563 0 0 0 0-.796L6.773 2.227a.562.562 0 1 0-.796.796L11.955 9z"></path>
                                </svg>
                            </span>
                        </button>
                    </div>
                </div>
                <aside class="lineBanner">
                    <a href="https://www.wanted.co.kr/wdlist" class>
                        <div class="lineBanner_link">
                            <div class="lineBanner_box box_gradient">
                                <svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="28" height="28" viewBox="0 0 18 18">
                                    <defs>
                                        <path id="qt2dnsql4a" d="M15.727 17.273a.563.563 0 10.796-.796l-4.875-4.875-.19-.165a.563.563 0 00-.764.028 5.063 5.063 0 111.261-2.068.562.562 0 101.073.338 6.188 6.188 0 10-1.943 2.894l4.642 4.644z"></path>
                                    </defs>
                                    <g fill="none" fill-rule="evenodd">
                                        <use fill="#fff" fill-rule="nonzero" stroke="#fff" stroke-width=".3" xlink:href="#qt2dnsql4a"></use>
                                    </g>
                                </svg>
                                채용 중인 포지션 보러가기
                            </div>
                        </div>
                    </a>
                </aside>
                <article class="matched_jobList matching-container" style="background-image: url"https://static.wanted.co.kr/images/home/ai_banner/ai_banner_bg.png";">
                    <header class="matched_jobList_title_wrapper matched_jobList_title_wrapper_notMatched">
                        <div class="matched_jobList_aiBanner">
                            <div class="matched_jobList_aiBanner_container">
                                <div class="matched_jobList_aiBanner_container_titleWrapper">
                                    <img src="https://static.wanted.co.kr/images/ai/logo-wantedai.png" width="113" alt="logo-wantedai" style="margin-bottom: 3px;">
                                    <p class="matched_jobList_aiBanner_container_titleWrapper_title">가 제안하는 합격률 높은 포지션</p>
                                </div>
                                <p class="Typography_matched_jobList_aiBanner_container_titleWrapper">
                                    회원가입 후, 이력서와 포지션 분석을 통해
                                    <br ::after></br>
                                    적합한 포지션을 추천받으세요!
                                </p>
                            </div>
                            <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fhome%2Fai_banner%2Fidentify_people.png&w=486&q=75" alt>
                            <button type="button" class="style-wrapper">
                                <p class="start-now">지금 시작하기</p>
                            </button>
                        </div>
                        <h2 class="matched_jobList_title"></h2>
                    </header>
                </article>
            </section>
            <footer class="footer">
                <div class="footer-rowClass"> 
                    <div class="nav-links">
                        <a class="nav-links-logo" href="https://www.wanted.co.kr/">
                            <svg width="31.4%" height="100%" viewBox="0 0 79 32">
                                <path fill="#24e0a6" d="M27.755 5.155A15.953 15.953 0 0015.992 0C7.152 0-.012 7.164-.012 16.004s7.164 16.004 16.004 16.004c4.653 0 8.84-1.985 11.763-5.155A15.953 15.953 0 0031.996 16c0-4.183-1.606-7.992-4.241-10.845z"></path>
                                <path fill="#438bff" d="M51.286 5.155A15.953 15.953 0 0039.523 0c-8.84 0-16.004 7.164-16.004 16.004s7.164 16.004 16.004 16.004c4.653 0 8.84-1.985 11.763-5.155A15.953 15.953 0 0055.527 16c0-4.179-1.61-7.992-4.241-10.845z"></path>
                                <path fill="#2c5bf2" d="M74.812 5.155A15.953 15.953 0 0063.049 0c-8.84 0-16.004 7.164-16.004 16.004s7.164 16.004 16.004 16.004c4.653 0 8.84-1.985 11.763-5.155A15.953 15.953 0 0079.053 16c0-4.183-1.61-7.992-4.241-10.845z"></path>
                                <path fill="#24e0bc" d="M27.755 5.155A15.953 15.953 0 0015.992 0C7.152 0-.012 7.164-.012 16.004s7.164 16.004 16.004 16.004c4.653 0 8.84-1.985 11.763-5.155A15.953 15.953 0 0123.514 16c0-4.183 1.61-7.992 4.241-10.845z"></path>
                                <path fill="#438bff" d="M51.282 5.155C48.359 1.985 44.171 0 39.519 0s-8.84 1.985-11.763 5.155a15.953 15.953 0 014.241 10.853c0 4.187-1.61 8-4.241 10.853 2.923 3.17 7.111 5.155 11.763 5.155s8.84-1.985 11.763-5.155c-2.631-2.853-4.241-6.662-4.241-10.853s1.61-8 4.241-10.853z"></path>
                                <path fill="#3a68f9" d="M27.755 5.155a15.953 15.953 0 00-4.241 10.853c0 4.187 1.61 8 4.241 10.853 2.631-2.853 4.241-6.662 4.241-10.853s-1.606-8-4.241-10.853z"></path>
                                <path fill="#2c5bf2" d="M63.049 0c-4.653 0-8.84 1.985-11.763 5.155a15.953 15.953 0 014.241 10.853c0 4.187-1.61 8-4.241 10.853a15.953 15.953 0 0011.763 5.155c8.84 0 16.004-7.164 16.004-16.004C79.053 7.164 71.885 0 63.049 0z"></path>
                                <path fill="#0049db" d="M51.282 5.155a15.953 15.953 0 00-4.241 10.853c0 4.187 1.61 8 4.241 10.853a15.953 15.953 0 004.241-10.853c.004-4.191-1.606-8-4.241-10.853z"></path>
                            </svg>
                            <svg width="62.96%" height="100%" viewBox="0 0 140 32">
                                <path fill="currentColor" d="M89.8 2.2l-5.6 2.4v4.8h-3.8v5.2h3.8v10.2c0 4.2 2.6 7 6.6 7 1.6 0 2.6-.4 3.2-.6V26c-.2 0-1 .2-1.8.2-1.6 0-2.4-.6-2.4-2.6v-8.8H94V9.6h-4.2V2.2zM28.6 9.6l-4 14-4.6-14h-5.6l-4.6 14L6 9.6H0l6.8 21.8h6l4.4-14.6 4.6 14.6h6l6.8-21.8zM134.4 2.2v8.6c-1.4-1-3-1.6-4.8-1.8h-.4-1.6c-5 .4-8.2 4.2-9.2 9-.2.8-.2 1.4-.2 2.2V22c.6 5.6 4.4 10 10.2 10 2.4 0 4.4-.6 6-1.8v1.4h5.4V0l-5.4 2.2zm-5.2 24.4c-3 0-5.6-2.4-5.6-6.2 0-4 2.6-6.2 5.6-6.2s5.2 2.2 5.2 6c0 4.2-2.2 6.4-5.2 6.4zM116.2 18c-.8-5.2-4.6-9-10-9s-9.2 3.8-10 9c-.2.8-.2 1.6-.2 2.6v1.6c.6 5.6 4.4 10 10.2 10 4.6 0 8-2.8 9.4-6.8l-5-1.2c-.8 1.8-2.4 3.2-4.4 3.2-2.8 0-4.6-2.2-5-5.2h15.2v-1.6c0-1 0-1.8-.2-2.6zm-14.8 0c.8-2.2 2.4-3.6 4.8-3.6s4 1.6 4.8 3.6h-9.6zM50.6 11c-1.4-1-3.2-1.8-5.2-1.8H44.8h-.6c-5.2.4-8.6 4-9.4 9-.2.8-.2 1.4-.2 2.2v1.8c.6 5.6 4.4 10 10.2 10 2.4 0 4.4-.6 6-1.8v1.4h5.6V9.6h-5.6V11zm-5.2 15.6c-3 0-5.6-2.4-5.6-6.2 0-4 2.6-6.2 5.6-6.2s5.2 2.2 5.2 6c0 4.2-2.2 6.4-5.2 6.4zM71.2 9c-2.2 0-4.6 1-6 3.2V9.6h-5.6v21.8h5.6V18.8c0-2.6 1.4-4.6 4-4.6 2.8 0 3.8 2 3.8 4.4v12.8h5.6V17.6c.2-4.8-2.2-8.6-7.4-8.6z"></path>
                            </svg>
                        </a>
                        <div class="nav-links-links">
                            <a href="https://www.wantedlab.com/">기업소개</a>
                            <a href="https://help.wanted.co.kr/hc/ko/">고객센터</a>
                            <a href="https://blog.wantedlab.com/">원티드 블로그</a>
                            <a href="https://www.wanted.co.kr/terms">이용약관</a>
                            <a href="https://www.wanted.co.kr/privacy"><b>개인정보 처리방침</b></a>
                        </div>
                    </div>
                    <div class="social-links">
                        <a href="https://www.instagram.com/wantedjobs.kr/">
                            <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fuserweb%2Fsocial_instagram.png&w=20&q=100" alt="instagram">
                        </a>
                        <a href="https://www.youtube.com/channel/UC0tGZ6MqieGG2m5lA5PeQsw">
                            <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fuserweb%2Fsocial_youtube.png&w=25&q=100" alt="youtube">
                        </a>
                        <a href="https://www.facebook.com/wantedkr">
                            <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fuserweb%2Fsocial_facebook.png&w=20&q=100" alt="facebook">
                        </a>
                        <a href="https://blog.naver.com/wantedlab">
                            <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fuserweb%2Fsocial_blog.png&w=20&q=100" alt="blog">
                        </a>
                        <a href="https://apps.apple.com/kr/app/id1074569961">
                            <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fuserweb%2Fsocial_apple.png&w=17&q=100" alt="apple">
                        </a>
                        <a href="https://play.google.com/store/apps/details?id=com.wanted.android.wanted">
                            <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fuserweb%2Fsocial_google.png&w=17&q=100" alt="google">
                        </a>
                    </div>
                </div>
                <div class="footer-rowClass footer-border">
                    <p class="footer-footerText">
                        오!스카 (대표이사:정유진) | 서울특별시 강남구 테헤란로 146 | 번호 : 010-6545-1769
                        <br>
                        © Oh!sca, Inc.
                    </p>
                </div>
            </footer>
        </main>
        <div></div>
        <div></div>
    </div>
</body>
<script src="mainpage.js"></script>
</html>