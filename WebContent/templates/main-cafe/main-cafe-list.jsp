<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cafe 목록 보기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main-cafe/cafe-all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main-cafe/main-cafe-header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main-cafe/cafe-main-list.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main-cafe/cafe-footer.css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main-cafe/cafe-main-banner.css"> 
    <link rel="preload" as="style" crossorigin="anonymous"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">

</head>

<body>
    <!-- 여기에서 쓰이는 svg는?
    ★ Scalable Vector Graphics로 확장 가능한 벡터 그래픽
    ★ 크기를 확대하거나 축소할 수 있는, 수학적 함수를 이용해 도형이나 선을 그려서 표현한 그래픽
    ★ jpg, png 파일에 비해서 선명도가 좋음
    -->

    <header>
        <div role="presentation" class="nav-bar" style="position: fixed; padding-right: initial;">
            <div class="main-bar isLoggedIn" role="presentation">
                <nav class="main-bar-nav">
                    <section>
                        <div class="main-bar-nav-top">
                            <div class="main-bar-nav-top-logo">
                                <button type="button" aria-label="job category menu button" data-attribute-id="gnb" data-gnb-kind="jobCategoryMenu"
                                    class="main-bar-hamberger">
                                    <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ficon-menu.png&amp;w=17&amp;q=75"
                                        alt="hamberger menu" height="14" style="width:17px;height:14px;object-fit:contain">
                                </button>
                                <a href="" class="main-bar-nav-top-logo-a" aria-label="jobsfeed link" data-attribute-id="gnb"
                                    data-gnb-kind="jobsfeed"><svg width="74" height="21" viewBox="0 0 140 32">
                                        <path fill="currentColor"
                                            d="M89.8 2.2l-5.6 2.4v4.8h-3.8v5.2h3.8v10.2c0 4.2 2.6 7 6.6 7 1.6 0 2.6-.4 3.2-.6V26c-.2 0-1 .2-1.8.2-1.6 0-2.4-.6-2.4-2.6v-8.8H94V9.6h-4.2V2.2zM28.6 9.6l-4 14-4.6-14h-5.6l-4.6 14L6 9.6H0l6.8 21.8h6l4.4-14.6 4.6 14.6h6l6.8-21.8zM134.4 2.2v8.6c-1.4-1-3-1.6-4.8-1.8h-.4-1.6c-5 .4-8.2 4.2-9.2 9-.2.8-.2 1.4-.2 2.2V22c.6 5.6 4.4 10 10.2 10 2.4 0 4.4-.6 6-1.8v1.4h5.4V0l-5.4 2.2zm-5.2 24.4c-3 0-5.6-2.4-5.6-6.2 0-4 2.6-6.2 5.6-6.2s5.2 2.2 5.2 6c0 4.2-2.2 6.4-5.2 6.4zM116.2 18c-.8-5.2-4.6-9-10-9s-9.2 3.8-10 9c-.2.8-.2 1.6-.2 2.6v1.6c.6 5.6 4.4 10 10.2 10 4.6 0 8-2.8 9.4-6.8l-5-1.2c-.8 1.8-2.4 3.2-4.4 3.2-2.8 0-4.6-2.2-5-5.2h15.2v-1.6c0-1 0-1.8-.2-2.6zm-14.8 0c.8-2.2 2.4-3.6 4.8-3.6s4 1.6 4.8 3.6h-9.6zM50.6 11c-1.4-1-3.2-1.8-5.2-1.8H44.8h-.6c-5.2.4-8.6 4-9.4 9-.2.8-.2 1.4-.2 2.2v1.8c.6 5.6 4.4 10 10.2 10 2.4 0 4.4-.6 6-1.8v1.4h5.6V9.6h-5.6V11zm-5.2 15.6c-3 0-5.6-2.4-5.6-6.2 0-4 2.6-6.2 5.6-6.2s5.2 2.2 5.2 6c0 4.2-2.2 6.4-5.2 6.4zM71.2 9c-2.2 0-4.6 1-6 3.2V9.6h-5.6v21.8h5.6V18.8c0-2.6 1.4-4.6 4-4.6 2.8 0 3.8 2 3.8 4.4v12.8h5.6V17.6c.2-4.8-2.2-8.6-7.4-8.6z">
                                        </path>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </section>
                    <section>
                        <ul class="menu">
                            <li><a href="">Oh!스카 소개</a></li>
                            <li><a href="">FAQ</a></li>
                            <li><a href="">오늘의 스터디</a></li>
                            <li><a href="">오늘의 카페</a></li>
                        </ul>
                    </section>
                    <section>
                        <aside class="aside isLoggedIn">
                            <ul>
                                <li>
                                    <button type="button" class="searchButton" aria-label="Search" aria-haspopup="true" aria-expanded="false" data-attribute-id="gnb" data-gnb-kind="search"><svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="18" height="18" viewBox="0 0 18 18"><defs><path id="qt2dnsql4a" d="M15.727 17.273a.563.563 0 10.796-.796l-4.875-4.875-.19-.165a.563.563 0 00-.764.028 5.063 5.063 0 111.261-2.068.562.562 0 101.073.338 6.188 6.188 0 10-1.943 2.894l4.642 4.644z"></path></defs><g fill="none" fill-rule="evenodd"><use fill="#333" fill-rule="nonzero" stroke="#333" stroke-width=".3" xlink:href="#qt2dnsql4a"></use></g></svg></button>
                                </li>
                                <li class="aside-li">
                                    <button type="button" class="notiButton" aria-label="Notification Center" aria-haspopup="true" aria-expanded="false" data-attribute-id="gnb" data-gnb-kind="bell"><svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="18" height="18" viewBox="0 0 18 18"><defs><path id="bpnpn3yn0a" d="M7.554 14.813h3.183a1.689 1.689 0 01-3.183 0zm1.592 2.25a2.813 2.813 0 002.812-2.813.563.563 0 00-.562-.563h-7.5c-.31 0-.541-.014-.699-.04.018-.036.04-.077.066-.123.036-.065.354-.605.46-.8.477-.875.735-1.676.735-2.599V6.75c0-2.656 2.057-4.688 4.688-4.688 2.63 0 4.687 2.032 4.687 4.688v3.375c0 .923.258 1.724.736 2.6.106.194.424.734.46.799.026.046.047.087.065.123-.157.026-.389.04-.698.04a.564.564 0 000 1.126c1.263 0 1.896-.221 1.896-1.002 0-.26-.092-.494-.28-.833-.045-.083-.361-.619-.456-.792-.395-.724-.598-1.355-.598-2.061V6.75c0-3.28-2.563-5.813-5.812-5.813S3.333 3.47 3.333 6.75v3.375c0 .706-.203 1.337-.598 2.06-.094.174-.41.71-.456.793-.188.339-.279.572-.279.833 0 .78.632 1.002 1.896 1.002H6.39a2.813 2.813 0 002.756 2.25z"></path></defs><g fill="none" fill-rule="evenodd"><g transform="translate(-1079 -16) translate(224 7) translate(855 9)"><mask id="1dencd96ob" fill="#fff"><use xlink:href="#bpnpn3yn0a"></use></mask><use fill-rule="nonzero" stroke="currentColor" stroke-width=".3" xlink:href="#bpnpn3yn0a"></use><g fill="currentColor" mask="url(#1dencd96ob)"><path d="M0 0H18V18H0z"></path></g></g></g></svg></button>
                                    <span class="aside-li-alarm" style="background-color: rgb(51, 102, 255); width: 13px; height: 13px;"><svg width="5" height="5" viewBox="0 0 6 6"><g fill="#fff" fill-rule="nonzero"><path d="M6.647 11L6.647 7.259 6.688 7.259 9.158 11 11 11 11 5 9.353 5 9.353 8.357 9.322 8.357 7.089 5 5 5 5 11z" transform="translate(-123 -375) translate(20 365) translate(98 5)"></path></g></svg></span>
                                </li>
                                <li class="profile moreVisible">
                                    <button type="button" aria-haspopup="true" aria-expanded="false" data-attribute-id="gnb" data-gnb-kind="photo" class="profileButton" aria-label="avatarButton" data-badge="true">
                                        <div class="avatarBorder">
                                            <div class="avatarImage" style="background-image:url(https://static.wanted.co.kr/oneid-user/profile_default.png), url(https://static.wanted.co.kr/images/profile_default.png)">
                                            </div>
                                        </div>
                                    </button>
                                </li>
                                <li class="leftDivision mdMoreVisible" data-attribute-id="gnb" data-gnb-kind="forEmployers">
                                    <a class="dashboardButton" href="">기업 서비스</a>
                                </li>
                            </ul>
                        </aside>
                    </section>    
                </nav>
            </div>
        </div>
        <div class="padding"></div>
    </header>    

    <main>
    <div class="cafe-list">
            <section class="section">
                <div class="topBanner" style="height: 300px; background-color: #ffffff;">
                    <!-- 슬릭 트랙리스트 -->
                    <div id="wrapper">
                        <div id="slider-wrap">
                            <ul id="slider">
                               <li>
                                    <img src="${pageContext.request.contextPath}/static/allimages/main-cafe/cafe-banner01.png">
                               </li>
                               <li>
                                    <img src="${pageContext.request.contextPath}/static/allimages/main-cafe/cafe-banner02.png">
                               </li>
                               <li>
                                    <img src="${pageContext.request.contextPath}/static/allimages/main-cafe/cafe-banner03.png">
                               </li>
                               <li>
                                    <img src="${pageContext.request.contextPath}/static/allimages/main-cafe/cafe-banner01.png">
                                </li>
                                <li>
                                    <img src="${pageContext.request.contextPath}/static/allimages/main-cafe/cafe-banner02.png">
                                </li>
                                <li>
                                    <img src="${pageContext.request.contextPath}/static/allimages/main-cafe/cafe-banner03.png">
                                </li>
                               <li>
                                    <img src="${pageContext.request.contextPath}/static/allimages/main-cafe/cafe-banner03.png">
                               </li>
                            </ul>
                                     <!-- 컨트롤 버튼-->
                            <div class="btns" id="next"></div>
                            <div class="btns" id="previous"></div>                       
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
            </section>
            <!-- cafe-list 뿌려지는 부분 section -->
            <section style="background-color: #ffffff;">
                <div class="cafe-list-body" style="padding-top: 59px;">
                    <h1 class="header-title" style="font-size: 22px; margin: 0 229.6px;">
                        다양한 지역에서 오늘의 카페를 만나보세요!
                    </h1>
                    <div class="header-title-edge" style="height:1px;width:1519.2px;color:white;"></div>
                    <div class="isLoggedIn filter-box filter-header cafe-list-filter-header">
                        <div class="region-filter-container">
                            <div class="interestTagSlide categoryList">
                                <div class="scrollsnap scrollsnap-hidden regionTagSlide_width">
                                    <div class="scrollsnap-hidden scrollsnap2 scrollsnap3 scrollsnap4 tagSlide-content-interval">
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color" id="all-content-color" style="color: #3366FF;  --button-color: #3366FF;">
                                            <span class="region-button-contentButton ">전체</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">서울</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">경기</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">인천</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">대전</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">대구</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">부산</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">광주</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">울산</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">강원</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">전남</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">전북</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">경남</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">경북</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">충남</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">충북</span>
                                        </button>
                                        <button class="button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">제주</span>
                                        </button>
                                    </div>
                                    <div class="tagslide-arrow tagslide-rightarrow tagslide-arrow-visible">
                                        <button type="button" class="rightarrow-button">
                                            <span class="arrow-SvgIcon" style="width: 20px; height: 20px;">
                                                <svg class="SvgIcon" viewBox="0 0 18 18">
                                                    <path d="m11.955 9-5.978 5.977a.563.563 0 0 0 .796.796l6.375-6.375a.563.563 0 0 0 0-.796L6.773 2.227a.562.562 0 1 0-.796.796L11.955 9z">                                                    </path>
                                                </svg>
                                            </span>
                                        </button>
                                    </div>
                                    <div class="tagslide-arrow tagslide-leftarrow">
                                        <button type="button" class="leftarrow-button">
                                            <span class="arrow-SvgIcon" style="width: 20px; height: 20px;">
                                                <svg class="SvgIcon" viewBox="0 0 18 18">
                                                    <path d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z">                                                    </path>
                                                </svg>
                                            </span>
                                        </button>
                                    </div>
     
                                    <div class="tagslide-arrow tagslide-leftarrow"></div>
                                </div>
                            </div>
                            <hr class="main-category-divider header-divider">
                        </div>
                        </div>
                    <ul class="all-cafe-list cafe-list-container">
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src="https://scontent-gmp1-1.xx.fbcdn.net/v/t1.18169-9/24909847_200121040547717_241202769586942938_n.png?_nc_cat=100&ccb=1-7&_nc_sid=174925&_nc_ohc=f-RhMTp8drgAX8WBSPM&_nc_ht=scontent-gmp1-1.xx&oh=00_AfCV5kA64O1S7PJ68WBnmPXAGlMZvuveS1ueCoLeOv_Ekw&oe=64CE7151" alt="바나프레소">
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                카공 카페
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">바나프레소</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                    <div class="tag tag-responsive">
                                        <span>#카공</span>
                                        <span>#24시</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src="https://yt3.googleusercontent.com/ytc/AGIKgqNlMJh1pZSWeJwAad-JXFD9unHMnfPcKlyDzGlhdg=s176-c-k-c0x00ffffff-no-rj" alt="투썸플레이스">
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                카공 카페
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">투썸플레이스</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                    <div class="tag tag-responsive">
                                        <span>#카공</span>
                                        <span>#24시</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FNbNOz%2FbtqyPVj4VCV%2FnFh85UIfBBu8xDFa798Vz0%2Fimg.jpg" alt="이디야커피">
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                카공 카페
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">이디야커피</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                    <div class="tag tag-responsive">
                                        <span>#카공</span>
                                        <span>#24시</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F9951424F5E738F4330" alt="스타벅스">
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                카공 카페
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">스타벅스</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                    <div class="tag tag-responsive">
                                        <span>#카공</span>
                                        <span>#24시</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>         
                </div>
            </section>

            <section>
                <footer class="cafe_footer">
                    <div class="footer_content container" style="height:213.1px;">
                        <div class="row" style="text-align: center; height: 64.6px;">
                            <div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_logo" style="text-align: left;">
                                <a href="">
                                <img src="https://theme.zdassets.com/theme_assets/9309779/4f2fb72a20c8e2ee37a305ef38ef1d144774a8df.png" margin-top="21px" width="125px" alt="원티드 로고">
                                </a>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_1">
                                <a href="">
                                    <h3 style="color: #666666 !important; font-size: 16px; margin-top: 25px; font-weight: 400;">Oh!스카 소개</h3>
                                </a>
                            </div>
            
                            <div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_2">
                                <a href="">
                                    <h3 style="color: #666666 !important; font-size: 16px; margin-top: 25px; font-weight: 400;">오늘의 스터디</h3>
                                </a>
                            </div>
            
                            <div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_3">
                                <a href="">
                                    <h3 style="color: #666666 !important; font-size: 16px; margin-top: 25px; font-weight: 400;">오늘의 카페</h3>
                                </a>
                            </div>
                        </div>
            
                        <aside class="footer_content text-center" style="padding: 15px 0;">
                            <div class="container" style="padding-left: 0px; padding-right: 0px; height: 58.5px;">
                                <p class="footer_info" style="color:#666666 !important; font-size: 13px;">
                                    (주)원티드랩 (대표이사:이복기) | 서울특별시 송파구 올림픽로 300 롯데월드타워 35층 | 통신판매번호 : 2020-서울송파-3147호
                                </p>
                                <p class="footer_info" style="color:#666666 !important; font-size: 13px;">           
                                    유료직업소개사업등록번호 : (국내) 제2020-3230259-14-5-00018호 | 사업자등록번호 : 299-86-00021 |  02-539-7118
                                </p>
                                <p class="footer_info" style="color:#666666 !important; font-size: 13px;">           
                                    © Wantedlab, Inc
                                </p>
                            </div>
                        </aside>
                    </div>
                </footer>
            </section>
        </div>
    </main>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main-cafe/cafe-region.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main-cafe/cafe-main-banner.js"></script>
<script>
let cafes = `${cafes}`;
console.log(cafes)
</script>
</html>>