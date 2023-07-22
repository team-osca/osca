<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width
    , initial-scale=1.0">
    <title>main</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/mainPage/mainPage.css">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/allimages/all-image/favicon.jpg">
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
                                 <!-- 슬릭 트랙리스트
                                    <button type="button" class="main-bar-hamberger">
                                        <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ficon-menu.png&w=17&q=75" alt="hamberger menu" height="14" style="width:17px; height:14px; object-fit:contain">
                                    </button>
                                   -->
                                    <a href=" " class="main-bar-nav-top-logo-a">
                                        <img class="osca" src="${pageContext.request.contextPath}/static/allimages/main-page/logo.jpg">
                                    </a>
                                </div>
                            </div>
                        </section>
                        <section>
                        <div id="memberRoleValue" data-member-role="<%= session.getAttribute("memberRole") %>"></div>
						<div id="memberIdValue" data-member-id="<%= session.getAttribute("memberId") %>"></div>
                            <ul class="menu">
                                <li>
                                    <a href="">Oh!스카 소개</a>
                                </li>
                                <li>
                                    <a href="">FAQ</a>
                                </li>
                                <li>
                                    <a href="">오늘의 스터디</a>
                                </li>
                                <li>
                                    <a href="">오늘의 카페</a>
                                </li>
                                <li id="nav-my-cafe" style="display: none;">
                                    <a href="">내 카페</a>
                                </li>
                                <li id="nav-my-study" style="display: none;">
                                    <a href="">내 스터디</a>
                                </li>                                                                                                
                            </ul>
                        </section>
                        <section>
                         <form action="${pageContext.request.contextPath}/signOrLogin.member">
                            <aside class="aside">
                                <ul>
                                    <li class="signUp" id="nav-signup-login" style="display:block;" >
                                        <a href="${pageContext.request.contextPath}/signOrLogin.member" class="signUpBtn" >회원가입/로그인</a>
                                    </li>
                                    <li class="profile"  id="profile-pic" style="display:none;" >
                    <button
                      type="button"
                      class="profileButton"
                    >
                      <div class="avatarBorder">
                        <div
                          class="avatarImage"
                          style="
                            background-image: url(https://static.wanted.co.kr/oneid-user/profile_default.png),
                              url(https://static.wanted.co.kr/images/profile_default.png);
                          "
                        ></div>
                      </div>
                    </button>
                  </li>
               
                                </ul>
                            </aside>
                           </form>
                        </section>
                    </nav>
                </div>
            </div>
            <div class="padding"></div>
        </header>
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
                            <!-- 슬릭 트랙리스트 -->
                            <div id="wrapper">
                                <div id="slider-wrap">
                                    <ul id="slider">
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/d.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/e.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/f.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/a.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/b.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/c.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/d.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/e.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/f.png">
                                        </li>
                                        <li class="current_banner">
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/a.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/b.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/c.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/d.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/e.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/f.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/a.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/b.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/c.png">
                                        </li>
                                        <li>
                                            <img src="${pageContext.request.contextPath}/static/allimages/main-page/d.png">
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <button type="button" class="topBanner-arrow topBanner-nextArrow">
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
                                내 스터디 바로가기
                            </div>
                        </div>
                    </a>
                </aside>
                <article class="study-tag">
                    <div class="study-list">
                        <header class="study-list-header">
                            <div class="study-list-wrapper">
                                <h2 class="study-title">
                                    <p>#인기있는 스터디</p>
                                    <img src="https://cdn3.iconfinder.com/data/icons/baby-154/512/book_kid_school_educate_fairy_tale_learning-64.png">
                                    <span>소개합니다</span>
                                </h2>
                                <div class="study-title-button">
                                    <a href="#">
                                        <span>스터디 더보기</span>
                                        <span class="study-list-arrow">
                                            <svg xmlns="https://www.w3.org/2000/svg" width="6" height="10" viewBox="0 0 6 10" fill="none">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M0.34467 8.24802C0.0517767 8.51161 0.0517767 8.93898 0.34467 9.20257C0.637563 9.46617 1.11244 9.46617 1.40533 9.20257L5.65533 5.37773C5.94822 5.11414 5.94822 4.68677 5.65533 4.42317L1.40533 0.59833C1.11244 0.334736 0.637563 0.334736 0.34467 0.59833C0.0517767 0.861923 0.0517767 1.28929 0.34467 1.55288L4.06434 4.90045L0.34467 8.24802Z" fill="currentColor"></path>
                                            </svg>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </header>
                        <div class="study-slider-container">
                            <div class="study-slider study-initialized">
                                <div class="studylist">
                                    <div class="studytrack" style="width: 6480px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
                                        <div class="study-slide" style="outline: none; width: 540px;">
                                            <div>
                                                <div class="card-container">
                                                    <a href="#" class>
                                                        <header role="img" style="background-image: url(${pageContext.request.contextPath}/static/allimages/main-page/01.png); width: 520px; height: 100px;" class="board-content" >
                                                        </header>
                                                        <div class="card-content">
                                                            <div class="card-body">
                                                                <div class="card-image">
                                                                    <img src="${pageContext.request.contextPath}/static/allimages/main-page/design.png" style="width: 42px; height: 42px;">
                                                                </div>
                                                                <div class="card-info">
                                                                    <p class="card-info-title">canvas three.js 화면 개발</p>
                                                                    <p class="card-info-category">프론트엔드</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="study-slide" style="outline: none; width: 540px;">
                                            <div>
                                                <div class="card-container">
                                                    <a href="#" class>
                                                        <header role="img" style="background-image: url(${pageContext.request.contextPath}/static/allimages/main-page/02.png); width: 520px; height: 100px;" class="board-content" >
                                                        </header>
                                                        <div class="card-content">
                                                            <div class="card-body">
                                                                <div class="card-image">
                                                                    <img src="${pageContext.request.contextPath}/static/allimages/main-page/big-data.png" style="width: 42px; height: 42px;">
                                                                </div>
                                                                <div class="card-info">
                                                                    <p class="card-info-title">한동석의 DROP THE TABLE</p>
                                                                    <p class="card-info-category">빅데이터</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
                <article class="cafe-tag">
                    <div class="cafe-list">
                        <header class="cafe-list-header">
                            <div class="cafe-list-wrapper">
                                <h2 class="cafe-title">
                                    <p>#인기있는 카페</p>
                                    <img src="https://cdn0.iconfinder.com/data/icons/set-02-coffee-colors-doodle/91/Coffee_Doodle_Colors_97-64.png">
                                    <span>소개합니다</span>
                                </h2>
                                <div class="cafe-title-button">
                                    <a href="#">
                                        <span>카페 더보기</span>
                                        <span class="cafe-list-arrow">
                                            <svg xmlns="https://www.w3.org/2000/svg" width="6" height="10" viewBox="0 0 6 10" fill="none">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M0.34467 8.24802C0.0517767 8.51161 0.0517767 8.93898 0.34467 9.20257C0.637563 9.46617 1.11244 9.46617 1.40533 9.20257L5.65533 5.37773C5.94822 5.11414 5.94822 4.68677 5.65533 4.42317L1.40533 0.59833C1.11244 0.334736 0.637563 0.334736 0.34467 0.59833C0.0517767 0.861923 0.0517767 1.28929 0.34467 1.55288L4.06434 4.90045L0.34467 8.24802Z" fill="currentColor"></path>
                                            </svg>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </header>
                        <div class="cafe-slider-container">
                            <div class="cafe-slider cafe-initialized">
                                <div class="cafelist">
                                    <div class="cafetrack" style="width: 6480px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
                                        <div class="cafe-slide" style="outline: none; width: 540px;">
                                            <div>
                                                <div class="card-container">
                                                    <a href="#" class>
                                                        <header role="img" style="background-image: url('https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F49%2F1eeyyoie3qgnqsj0__1080_790.jpg&w=520&q=100')" class="board-content" >
                                                        </header>
                                                        <div class="card-content">
                                                            <div class="card-body">
                                                                <div class="card-image">
                                                                    <img src="${pageContext.request.contextPath}/static/allimages/main-page/talk.png" style="width: 42px; height: 42px;">
                                                                </div>
                                                                <div class="card-info">
                                                                    <p class="card-info-title">시끌벅적한 곳이 더 집중이 잘 된다면</p>
                                                                    <p class="card-info-category">서울 서초구</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cafe-slide" style="outline: none; width: 540px;">
                                            <div>
                                                <div class="card-container">
                                                    <a href="#" class>
                                                        <header role="img" style="background-image: url('https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F136%2Fjhtqznnhtixesx0t__1080_790.jpg&w=520&q=100')" class="board-content" >
                                                        </header>
                                                        <div class="card-content">
                                                            <div class="card-body">
                                                                <div class="card-image">
                                                                    <img src="${pageContext.request.contextPath}/static/allimages/main-page/cafe.png" style="width: 42px; height: 42px;">
                                                                </div>
                                                                <div class="card-info">
                                                                    <p class="card-info-title">차분한 분위기가 좋다면</p>
                                                                    <p class="card-info-category">성남시 분당구</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
                <article class="osca-advertisement osca-adv-container" style="background-image: url"https://static.wanted.co.kr/images/home/ai_banner/ai_banner_bg.png";">
                    <div class="osca-adv">
                        <img src="${pageContext.request.contextPath}/static/allimages/main-page/osca.png">
                    </div>
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
<script src="${pageContext.request.contextPath}/static/js/mainPage/mainPage_uheejoonVer.js"></script>
<script src="${pageContext.request.contextPath}/static/js/mainPage/mainPage_login_status.js"></script>

</html>