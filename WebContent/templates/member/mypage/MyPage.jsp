<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mypage</title>
    <script async="" src="https://snap.licdn.com/li.lms-analytics/insight.old.min.js"></script>
    <link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin="anonymous">
    <link rel="preload" as="style" crossorigin="anonymous"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/all.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/member/mypage/css/menuBar.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/member/mypage/css/menuBarDynamic.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/member/mypage/css/body.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/member/mypage/css/bodyDynamic.css">
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
                            <a href="" class="main-bar-nav-top-logo-a" >
                                <svg width="74" height="21" viewBox="0 0 140 32">
                                    <path fill="currentColor"
                                        d="M89.8 2.2l-5.6 2.4v4.8h-3.8v5.2h3.8v10.2c0 4.2 2.6 7 6.6 7 1.6 0 2.6-.4 3.2-.6V26c-.2 0-1 .2-1.8.2-1.6 0-2.4-.6-2.4-2.6v-8.8H94V9.6h-4.2V2.2zM28.6 9.6l-4 14-4.6-14h-5.6l-4.6 14L6 9.6H0l6.8 21.8h6l4.4-14.6 4.6 14.6h6l6.8-21.8zM134.4 2.2v8.6c-1.4-1-3-1.6-4.8-1.8h-.4-1.6c-5 .4-8.2 4.2-9.2 9-.2.8-.2 1.4-.2 2.2V22c.6 5.6 4.4 10 10.2 10 2.4 0 4.4-.6 6-1.8v1.4h5.4V0l-5.4 2.2zm-5.2 24.4c-3 0-5.6-2.4-5.6-6.2 0-4 2.6-6.2 5.6-6.2s5.2 2.2 5.2 6c0 4.2-2.2 6.4-5.2 6.4zM116.2 18c-.8-5.2-4.6-9-10-9s-9.2 3.8-10 9c-.2.8-.2 1.6-.2 2.6v1.6c.6 5.6 4.4 10 10.2 10 4.6 0 8-2.8 9.4-6.8l-5-1.2c-.8 1.8-2.4 3.2-4.4 3.2-2.8 0-4.6-2.2-5-5.2h15.2v-1.6c0-1 0-1.8-.2-2.6zm-14.8 0c.8-2.2 2.4-3.6 4.8-3.6s4 1.6 4.8 3.6h-9.6zM50.6 11c-1.4-1-3.2-1.8-5.2-1.8H44.8h-.6c-5.2.4-8.6 4-9.4 9-.2.8-.2 1.4-.2 2.2v1.8c.6 5.6 4.4 10 10.2 10 2.4 0 4.4-.6 6-1.8v1.4h5.6V9.6h-5.6V11zm-5.2 15.6c-3 0-5.6-2.4-5.6-6.2 0-4 2.6-6.2 5.6-6.2s5.2 2.2 5.2 6c0 4.2-2.2 6.4-5.2 6.4zM71.2 9c-2.2 0-4.6 1-6 3.2V9.6h-5.6v21.8h5.6V18.8c0-2.6 1.4-4.6 4-4.6 2.8 0 3.8 2 3.8 4.4v12.8h5.6V17.6c.2-4.8-2.2-8.6-7.4-8.6z">
                                    </path>
                                </svg>
                            </a>
                        </div>
                        <button id="gnbSignupBtn" class="xsSignUpButton isLoggedIn" type="button" >회원가입하기</button>
                    </div>
                    <ul class="menu">
                        <li ><a href="">채용</a></li>
                        <li ><a href="">이벤트</a></li>
                        <li class="smMoreVisible"><a href="">이력서</a></li>
                        <li class="smMoreVisible"><a href="">커뮤니티</a></li>
                        <li class="smMoreVisible"><a href="">프리랜서</a></li>
                        <li class="smMoreVisible"><a href="">AI 합격예측</a></li>
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
                                <a class="dashboardButton" href="">기업 서비스</a>
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
                                <img alt="유희준 프로필 이미지" src="https://static.wanted.co.kr/oneid-user/profile_default.png" class="Avatar_Avatar__img__kcubw">
                            </div>
                        </div>
                        <div class="aside-me">
                            <div class="aside-me_name">유희준</div>
                            <div class="aside-me_email">yhj3855@naver.com</div>
                            <div class="aside-me_tel">010-8200-3855</div>
                        </div>
                        <a href="setting.jsp" class="aside-edit" target="_blank" rel="noopener noreferrer">기본정보 수정</a>
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
<script src="${pageContext.request.contextPath}/static/member/mypage/js/menuBar.js"></script>
<script src="${pageContext.request.contextPath}/static/member/mypage/js/body.js"></script>
</html>