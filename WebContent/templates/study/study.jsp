<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script async="" src="https://snap.licdn.com/li.lms-analytics/insight.old.min.js"></script>
    <link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin="anonymous">
    <link rel="preload" as="style" crossorigin="anonymous"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
        <style>
            .padding{
                height: 50px;
            }
        </style>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/study/study.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/study/studyDynamic.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/menuBar.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/menuBarDynamic.css"/>
</head>
<body>
    <div id="studyList">
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
                        <li class="smMoreVisible selectedNav"><a href="">커뮤니티</a></li>
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
        <div class="studyPostList">
            <aside class="studyPostList_aside">
                <div class="studyPostList_aside_area">
                    <div class="myProfile">
                        <h2 class="myProfile_title">
                            MY 커뮤니티
                        </h2>
                        <button type="button" class="myProfile_link">
                            <!-- UserAvatar_UserAvatar__Wi20b  -->
                            <div class="user_img myProfile_img_box">
                                <img src="https://static.wanted.co.kr/oneid-user/profile_default.png" alt="">
                            </div>
                            <div class="myProfile_userName_wrapper">
                                <div class="myProfile_loggedIn">
                                    <span class="myProfile_username">
                                        유희준
                                    </span>
                                    <div class="myProfile_badges_wrapper">
                                        <div class="myProfile_badges_box">
                                            <div class="myProfile_badge" data-category="1">개발</div>
                                            <div class="myProfile_badge">신입</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <span class="myProfile_arrow">
                                <svg width="18" height="18"><path d="M5.21967 2.21967C5.48594 1.9534 5.9026 1.9292 6.19621 2.14705L6.28033 2.21967L12.5303 8.46967C12.7966 8.73594 12.8208 9.1526 12.6029 9.44621L12.5303 9.53033L6.28033 15.7803C5.98744 16.0732 5.51256 16.0732 5.21967 15.7803C4.9534 15.5141 4.9292 15.0974 5.14705 14.8038L5.21967 14.7197L10.939 9L5.21967 3.28033C4.9534 3.01406 4.9292 2.5974 5.14705 2.30379L5.21967 2.21967Z" fill="#666666"></path></svg>
                            </span>
                        </button>
                    </div>
                    <div class="writeProfile">
                        <button type="button" class="goToProfile">
                            <div class="writeProfile_message">
                                나를 잘 표현하고 싶다면?
                                <br>
                                커뮤니티 프로필 완성하기
                            </div>
                        </button>
                    </div>
                    <div class="recommendProfile">
                        <h3 class="recommendProfile_title">
                            업데이트된 추천 프로필
                        </h3>
                        <p class="recommendProfile_subtitle">
                            관심있는 프로필을 찾아보세요.
                        </p>
                        <div class="recommendProfile_rows">
                            <a href="" class="recommendProfile_item">
                                <div class="user_img recommend_profile">
                                    <img src="https://static.wanted.co.kr/open_profile/avatar/a4aade4e67d953476152775e4e7cfab07315186edad753631d890a1128b7154a" alt="">
                                </div>
                                <div class="recommend_profile_username">이지수</div>
                                <svg width="6" height="13" viewBox="0 0 6 13" fill="#888888" class="recommend_profile_rightIcon">
                                    <path d="M0.34467 10.4697C0.0517767 10.7626 0.0517767 11.2374 0.34467 11.5303C0.637563 11.8232 1.11244 11.8232 1.40533 11.5303L5.65533 7.28033C5.94822 6.98744 5.94822 6.51256 5.65533 6.21967L1.40533 1.96967C1.11244 1.67678 0.637563 1.67678 0.34467 1.96967C0.0517767 2.26256 0.0517767 2.73744 0.34467 3.03033L4.06434 6.75L0.34467 10.4697Z"></path>
                                </svg>
                            </a>
                        </div>
                        <div class="recommend_profile_action">
                            <button class="recommend_refresh_btn">
                                <span class="button_label">
                                    새로운 프로필 보기
                                    <span class="button_iconWrapper">
                                        <span class="svg_icon_wrapper">
                                            <svg class="svg_icon" viewBox="0 0 24 24"><path d="M7.37374 2.7578C7.62384 2.29823 8.19915 2.12841 8.65872 2.37851L12.453 4.44332L12.5682 4.51706C12.8266 4.70995 12.962 5.0165 12.9465 5.3242C12.9472 5.33886 12.9475 5.35361 12.9475 5.36843C12.9475 5.67552 12.8014 5.94849 12.5749 6.1216L10.2985 9.54035L10.2123 9.65118C9.90279 9.99393 9.38074 10.0674 8.98483 9.80382L8.874 9.71768C8.53125 9.40817 8.45772 8.88612 8.72135 8.49021L9.9678 6.61778C7.12241 7.48689 5.05275 10.1333 5.05275 13.2632C5.05275 17.1001 8.1632 20.2105 12.0001 20.2105C13.869 20.2105 15.6179 19.471 16.913 18.176C18.2081 16.8809 18.9475 15.132 18.9475 13.2632C18.9475 11.3954 18.208 9.64641 16.9127 8.35009C16.5429 7.97997 16.5431 7.38013 16.9132 7.01031C17.2834 6.64048 17.8832 6.64072 18.253 7.01084C19.8998 8.65888 20.8423 10.8879 20.8423 13.2632C20.8423 15.6396 19.8997 17.8688 18.2528 19.5158C16.6058 21.1627 14.3766 22.1053 12.0001 22.1053C7.11676 22.1053 3.15801 18.1465 3.15801 13.2632C3.15801 9.34005 5.71295 6.01369 9.2497 4.8572L7.75303 4.04277L7.64425 3.97373C7.26808 3.69759 7.14449 3.17907 7.37374 2.7578Z"></path></svg>
                                        </span>
                                    </span>
                                </span>
                                <span class="button_interaction"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </aside>
            <main class="studyPostList_content">
                <div class="studyPostList_category">
                     <div class="interest_category">
                        <div class="interestTagSlide interestCategorySlide">
                            <div class="scrollSnap scrollSnap_hide interestSlide ">
                                <div class="scrollSnap_scroll" id="region-button-box">
                                    <!-- <button class="interest_category_button">
                                        <span class="interest_category_button_label">추천</span>
                                        <span class="interest_category_button_interaction"></span>
                                    </button>
                                    <button class="interest_category_button not_select">
                                        <span class="interest_category_button_label">전체</span>
                                        <span class="interest_category_button_interaction"></span>
                                    </button>
                                    <button class="interest_category_button not_select">
                                        <span class="interest_category_button_label">커리어고민</span>
                                        <span class="interest_category_button_interaction"></span>
                                    </button>
                                    <button class="interest_category_button not_select">
                                        <span class="interest_category_button_label">개발</span>
                                        <span class="interest_category_button_interaction"></span>
                                    </button>
                                    <button class="interest_category_button not_select">
                                        <span class="interest_category_button_label">IT/기술</span>
                                        <span class="interest_category_button_interaction"></span>
                                    </button>
                                    <button class="interest_category_button not_select">
                                        <span class="interest_category_button_label">HR</span>
                                        <span class="interest_category_button_interaction"></span>
                                    </button>
                                    <button class="interest_category_button not_select">
                                        <span class="interest_category_button_label">라이프스타일</span>
                                        <span class="interest_category_button_interaction"></span>
                                    </button>
                                    <button class="interest_category_button not_select">
                                        <span class="interest_category_button_label">한입 콘텐츠</span>
                                        <span class="interest_category_button_interaction"></span>
                                    </button>
                                    <button class="interest_category_button not_select">
                                        <span class="interest_category_button_label">서비스기획</span>
                                        <span class="interest_category_button_interaction"></span>
                                    </button> -->
                                </div>
                                <div class="tagSlide_arrow tagSlide_leftArrow">
                                    <button type="button">
                                        <span class="svg_icon_wrapper">
                                            <svg class="svg_icon" viewBox="0 0 18 18"><path d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z"></path></svg>
                                        </span>
                                    </button>
                                </div>
                                <div class="tagSlide_arrow tagSlide_rightArrow tagSlide_visible">
                                    <button type="button">
                                        <span class="svg_icon_wrapper">
                                            <svg class="svg_icon" viewBox="0 0 18 18"><path d="m11.955 9-5.978 5.977a.563.563 0 0 0 .796.796l6.375-6.375a.563.563 0 0 0 0-.796L6.773 2.227a.562.562 0 1 0-.796.796L11.955 9z"></path></svg>
                                        </span>
                                    </button>
                                </div>
                            </div>
                            <button class="interestTagSlide_more ">
                                <svg width="18" height="18" viewBox="0 0 24 24"><path fill="currentColor" d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z"></path></svg>
                            </button>
                        </div>
                        <div class="interestTagSlide_more_smView">
                            <button class="interestTagSlide_more">
                                <svg width="18" height="18" viewBox="0 0 24 24"><path fill="currentColor" d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z"></path></svg>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="studyPostList_body"> 
 	               <%-- study.js --%> 
 	            </div>
           </main>
        </div>
    </div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/study/study.js"></script>
<script>
	const $studyPostList = $('.studyPostList_body');
	
	const path = "${pageContext.request.contextPath}"
	selectData();
	function selectData(type){
		$.ajax({
			url: path + "/studyListOk.study",
			dataType: "json",
			success: function(datas){
				datas.forEach((data)=>{
					console.log(data)
					$studyPostList.append(studyPostList(data));
					if(data.skillVO.length != 0){		
						data.skillVO.forEach((skill)=>{
							$('.postItem_tag_list').append('<button type="button" class="postItem_tag">' + skill.skillListSkill + '</button>')						
						})
					}
				})				
			},
			error: function(a, b, c){
				console.log(a, b, c);
			}
		});
	}
	
	const REGION = ["전체", "서울","경기","인천","대전","대구","부산","광주","울산","강원","전남","전북","경남","경북","충남","충북","제주"];
	
	function init_region_button() {
		   /*style="color: #3366FF;  --button-color: #3366FF;"*/
		   REGION.forEach((data) => {
		      $('#region-button-box').append(`
		         <button class="interest_category_button not_select">
		                <span class="interest_category_button_label">` + data + `</span>
		                <span class="interest_category_button_interaction"></span>
		            </button>
		      `)
		   })
		   /*
		   $('.region-button').on('click', function() {
		      getCafeList($(this).children('.region-button-contentButton').text())
		   })
		   */
		};
		
		init_region_button();
	

	
	
</script>
</html>