<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/allimages/all-image/favicon.jpg">
    <title>mypage</title>
    <script async="" src="https://snap.licdn.com/li.lms-analytics/insight.old.min.js"></script>
    <link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin="anonymous">
    <link rel="preload" as="style" crossorigin="anonymous"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/menuBar.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/menuBarDynamic.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/body.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/bodyDynamic.css">
    <style>
        .padding{
            height: 50px ;
        }
    </style>
</head>
<body>
    <body > 
    <div id="mypage">
        <div role="presentation" class="nav-bar" style="position: fixed; padding-right: initial;">
            <div class="main-bar isLoggedIn" role="presentation">
                <nav class="main-bar-nav">
                    <div class="main-bar-nav-top">
                        <div class="main-bar-nav-top-logo">
                            <button type="button" class="main-bar-hamberger">
                                <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ficon-menu.png&amp;w=17&amp;q=75"
                                    alt="hamberger menu" height="14" style="width:17px;height:14px;object-fit:contain">
                            </button>
                            <a href="http://localhost:8090/home.member" class="main-bar-nav-top-logo-a" >
                            	<img src="${pageContext.request.contextPath}/static/allimages/all-image/logo.jpg" height="18px" width="82px" alt="Oh!스카 로고">
                            </a>
                        </div>
                        <button id="gnbSignupBtn" class="xsSignUpButton isLoggedIn" type="button" >회원가입하기</button>
                    </div>
                    <ul class="menu">
                        <li ><a href="">오늘의 스터디</a></li>
                        <li ><a href="">오늘의 카페</a></li>
                        <li class="smMoreVisible"><a href="${pageContext.request.contextPath}/templates/introduction/introduction.jsp">FAQ</a></li>
                        <li class="smMoreVisible"><a href="${pageContext.request.contextPath}/templates/faq/faq-main.jsp">오!스카 소개</a></li>
                    </ul>
                    <aside class="aside isLoggedIn">
                        <ul>
                            <li>
                                <button type="button" class="searchButton"><svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="18" height="18" viewBox="0 0 18 18"><defs><path id="qt2dnsql4a" d="M15.727 17.273a.563.563 0 10.796-.796l-4.875-4.875-.19-.165a.563.563 0 00-.764.028 5.063 5.063 0 111.261-2.068.562.562 0 101.073.338 6.188 6.188 0 10-1.943 2.894l4.642 4.644z"></path></defs><g fill="none" fill-rule="evenodd"><use fill="#333" fill-rule="nonzero" stroke="#333" stroke-width=".3" xlink:href="#qt2dnsql4a"></use></g></svg></button>
                            </li>
                            <li class="aside-li">
                                <button type="button" class="notiButton" ><svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="18" height="18" viewBox="0 0 18 18"><defs><path id="bpnpn3yn0a" d="M7.554 14.813h3.183a1.689 1.689 0 01-3.183 0zm1.592 2.25a2.813 2.813 0 002.812-2.813.563.563 0 00-.562-.563h-7.5c-.31 0-.541-.014-.699-.04.018-.036.04-.077.066-.123.036-.065.354-.605.46-.8.477-.875.735-1.676.735-2.599V6.75c0-2.656 2.057-4.688 4.688-4.688 2.63 0 4.687 2.032 4.687 4.688v3.375c0 .923.258 1.724.736 2.6.106.194.424.734.46.799.026.046.047.087.065.123-.157.026-.389.04-.698.04a.564.564 0 000 1.126c1.263 0 1.896-.221 1.896-1.002 0-.26-.092-.494-.28-.833-.045-.083-.361-.619-.456-.792-.395-.724-.598-1.355-.598-2.061V6.75c0-3.28-2.563-5.813-5.812-5.813S3.333 3.47 3.333 6.75v3.375c0 .706-.203 1.337-.598 2.06-.094.174-.41.71-.456.793-.188.339-.279.572-.279.833 0 .78.632 1.002 1.896 1.002H6.39a2.813 2.813 0 002.756 2.25z"></path></defs><g fill="none" fill-rule="evenodd"><g transform="translate(-1079 -16) translate(224 7) translate(855 9)"><mask id="1dencd96ob" fill="#fff"><use xlink:href="#bpnpn3yn0a"></use></mask><use fill-rule="nonzero" stroke="currentColor" stroke-width=".3" xlink:href="#bpnpn3yn0a"></use><g fill="currentColor" mask="url(#1dencd96ob)"><path d="M0 0H18V18H0z"></path></g></g></g></svg></button>
                                <span class="aside-li-alarm" style="background-color: rgb(51, 102, 255); width: 13px; height: 13px;"><svg width="5" height="5" viewBox="0 0 6 6"><g fill="#fff" fill-rule="nonzero"><path d="M6.647 11L6.647 7.259 6.688 7.259 9.158 11 11 11 11 5 9.353 5 9.353 8.357 9.322 8.357 7.089 5 5 5 5 11z" transform="translate(-123 -375) translate(20 365) translate(98 5)"></path></g></svg></span>
                            </li>
                            <li class="profile mdMoreVisible">
                                <button type="button" class="profileButton">
                                    <div class="avatarBorder">
                                        <div class="avatarImage" style="background-image:url(https://static.wanted.co.kr/oneid-user/profile_default.png), url(https://static.wanted.co.kr/images/profile_default.png)">
                                        </div>
                                    </div>
                                </button>
                            </li>
                            <li class="leftDivision mdMoreVisible" >
                                <a class="dashboardButton" href="">oh! 스카</a>
                            </li>
                            <li class="aside_visibleMenu">
                                <button class="menuButton" type="button">
                                    <svg width="18" height="18" viewBox="0 0 24 24">
                                        <path fill="currentColor" d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z">
                                        </path>
                                    </svg>
                                </button>
                            </li>
                        </ul>
                    </aside>
                </nav>
            </div>


        </div>
        <div class="padding"></div>

        <!-- start of 기본 html -->
        <div class="container_profile">
            <nav role="presentation" class="nav_title_area">
                <h2 class="nav_title">
                    <p>프로필</p>
                    <button type="button" class="nav_button">프로필</button>
                </h2>
            </nav>
            <div class="container">
                <aside class="__aside container_aside">
                    <header class="aside-header">
                        <div class="aside-avatar">
                            <div class="avatar_root avatar_sizeMedium aside-avatar_image">
                                <img alt="프로필 이미지" src="https://static.wanted.co.kr/oneid-user/profile_default.png" class="Avatar_Avatar__img__kcubw">
                            </div>
                        </div>
                        <div class="aside-me">
                            <div class="aside-me_name">${member.memberName}</div>
                            <div class="aside-me_email">${member.memberEmail}</div> 
                            <div class="aside-me_tel">${member.memberPhonenumber}</div>
                        </div>
                        <a href="${pageContext.request.contextPath}/settingOk.member" class="aside-edit" target="_blank" rel="noopener noreferrer">기본정보 수정</a>
                    </header>
                    <div class="matchUpStatus matchUpStatus_">
                        <a href="" class="matchUpStatus-item">
                            <span class="matchUpStatus-label">관심 있음</span>
                            <strong class="matchUpStatus-value">0</strong>
                        </a>
                        <a href="" class="matchUpStatus-item">
                            <span class="matchUpStatus-label">열람</span>
                            <strong class="matchUpStatus-value">0</strong>
                        </a>
                        <a href="" class="matchUpStatus-item">
                            <span class="matchUpStatus-label">받은 제안</span>
                            <strong class="matchUpStatus-value">0</strong>
                        </a>
                    </div>
                </aside>

                <section>
                    <!-- ajax -->
                </section>

            </div>
        </div>
    </div>
    <!-- end of 기본 html -->
</body>
<script src="${pageContext.request.contextPath}/static/js/member/mypage/menuBar.js"></script>
<script src="${pageContext.request.contextPath}/static/js/member/mypage/body.js"></script>
</html>