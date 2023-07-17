<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>내 스터디</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/myStudy/myStudy.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/myStudy/study-header.css" />
    <link
      rel="preload"
      as="style"
      crossorigin="anonymous"
      href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css"
    />
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/allimages/all-image/favicon.jpg">
  </head>
  <body>
    <header>
      <div role="presentation" class="nav-bar" style="position: fixed; padding-right: initial">
        <div class="main-bar isLoggedIn" role="presentation">
          <nav class="main-bar-nav">
            <section>
              <div class="main-bar-nav-top">
                <div class="main-bar-nav-top-logo">
                  <a href="" class="main-bar-nav-top-logo-a">
                    <img src="${pageContext.request.contextPath}/static/allimages/all-image/logo.jpg" width="74" height="16" alt="Oh!스카 로고" />
                  </a>
                </div>
              </div>
            </section>
            <section>
              <ul class="menu">
                <li><a href="">오늘의 스터디</a></li>
                <li><a href="${pageContext.request.contextPath}/listCafe.study">오늘의 카페</a></li>
                <li class="selectedNav"><a href="">내 스터디</a></li>
                <li><a href="">FAQ</a></li>
                <li><a href="">Oh!스카 소개</a></li>
              </ul>
            </section>
            <section>
              <aside class="aside isLoggedIn">
                <ul>
                  <li class="profile moreVisible">
                    <button
                      type="button"
                      aria-haspopup="true"
                      aria-expanded="false"
                      data-attribute-id="gnb"
                      data-gnb-kind="photo"
                      class="profileButton"
                      aria-label="avatarButton"
                      data-badge="true"
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
            </section>
          </nav>
        </div>
      </div>
      <div class="padding"></div>
    </header>

    <!-- 바디 -->
    <div class="Container">
      <!-- 왼쪽 상단부분 -->
      <nav class="Study_status">
        <h2 class="title">
          <p>스터디 현황</p>
        </h2>
        <!-- 오른쪽 상단 개설하기 버튼 -->
        <div class="newStudy">
          <button class="newStudy-button" type="button">
            <span class="PostWriteButton_writeIcon">
              <span class="SvgIcon_SvgIcon__root">
                <svg class="SvgIcon_SvgIcon__root__svg" viewBox="0 0 24 24">
                  <path
                    fill-rule="evenodd"
                    clip-rule="evenodd"
                    d="M17.9338 2.08059C17.5629 1.80534 17.0366 1.83583 16.7002 2.17212L3.43579 15.4323L3.33867 15.5461C3.22211 15.7068 3.1582 15.9013 3.1582 16.1023V19.8947L3.16685 20.0233C3.22958 20.4857 3.62596 20.8421 4.10558 20.8421H7.2678L7.39635 20.8335C7.85877 20.7707 8.21517 20.3744 8.21517 19.8947L8.20652 19.7662C8.14379 19.3038 7.74742 18.9474 7.2678 18.9474H5.05168V16.4956L13.2631 8.28674L15.7123 10.7359L9.7494 16.6985L9.65767 16.8047C9.38244 17.1756 9.41297 17.7019 9.74927 18.0383C10.1192 18.4083 10.719 18.4083 11.0891 18.0384L21.8281 7.30155L21.9198 7.1953C22.195 6.82447 22.1645 6.29818 21.8283 5.96181L18.04 2.17233L17.9338 2.08059ZM17.0521 9.39616L19.8181 6.63032L17.3688 4.18232L14.6031 6.94717L17.0521 9.39616Z"
                  ></path></svg></span
            ></span>
          </button>
          <button
            class="Posting-Button-root Posting-Button-outlined Posting-Button-outlinedPrimary Posting-Button-outlinedSizeMedium InterestCategoryItem-InterestCategoryItem"
            style="background: #36f; color: #fff"
          >
            <span class="Button_Button__label__1Kk0v">등록하기</span
            ><span class="Button_Button__interaction__kkYaa"></span>
          </button>
        </div>
      </nav>

      <div class="Study_status_all">
        <!-- 왼쪽 스터디 타입 리스트  -->
        <div class="Staus-Left-bar">
          <dl>
            <dt>내 스터디</dt>
            <dd>
              <ul>
                <li class="active">
               		<a href="javascript:void(0)" onclick="selectData(1)">전체
                   </a>
                </li>
                <li class="">
                  	<a href="javascript:void(0)" onclick="selectData(2)">내가 개설한 스터디
                   </a>
                </li>
                <li class="">
                  	<a href="javascript:void(0)" onclick="selectData(3)">참여 스터디
                   </a>
                </li>
              </ul>
            </dd>
          </dl>
        </div>
        <!-- 오른쪽 스터디 목록 -->
        <section>
          <div class="List_wrapper">
            <header class="Study-header">
              <ul class="List_row">
                <li class="col col-1">스터디명</li>
                <li class="col col-2">일자</li>
                <li class="col col-3">상태</li>
                <li class="col col-4">인원</li>
                <div class="space"></div>
              </ul>
            </header>
            <!-- <div class="studyListCount">
              <li class="Study-content">
                <div role="presentation">
                  <span class="List-table-td study-name">JAVA기초 스터디 모집</span>
                  <span class="List-table-td create-time">2023. 6. 8</span>
                  <span class="List-table-td status">진행중</span>
                  <span class="List-table-td people-count">1/6</span>
                  <span class="List-table-td option-menu">
                    <button
                      type="button"
                      class="PostContents__menu_button"
                      data-attribute-id="community__contentDetail__more__click"
                      data-content-title="JAVA기초 스터디 모집"
                      data-content-id="9430"
                    >
                      <svg width="24" height="24" viewBox="0 0 24 24">
                        <path
                          fill="currentColor"
                          d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z"
                        ></path>
                      </svg>
                    </button>
                    <div class="MenuPopup">
                      <ul>
                        <li class="MenuPopup_menu_item">
                          <button
                            type="button"
                            class="MenuPopup__menu_link MenuPopup__menu_link__red"
                            data-attribute-id="community__contentDetail__more__delete"
                            data-content-title="JAVA기초 스터디 모집"
                            data-content-id="9430"
                            data-like-count="1"
                            data-comment-count="1"
                          >
                            삭제하기
                          </button>
                        </li>
                        <li class="MenuPopup_menu_item">
                          <a
                            class="MenuPopup__menu_link"
                            data-attribute-id="community__contentDetail__more__edit"
                            data-content-title="JAVA기초 스터디 모집"
                            data-content-id="9430"
                            data-like-count="1"
                            data-comment-count="1"
                            href="/community/edit/9430"
                          >
                            수정하기</a
                          >
                        </li>
                      </ul>
                      <div
                        class="MenuPopup_MenuPopup__bubblePoint MenuPopup_MenuPopup__bubblePoint_bottom"
                      ></div>
                    </div>
                  </span>
                </div>
              </li>
            </div> -->
            <div class="Study-empty">요청하신 결과가 없습니다.</div>
          </div>
        </section>
      </div>
    </div>
  </body>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script>
	/* const $study_name = $(".List-table-td study-name");
	const $study_regis_date = $(".List-table-td create-time");
	const $study_status = $(".List-table-td status"); */
	const $listWrapper = $('.List_wrapper')
	Object.prototype.forEach = Array.prototype.forEach;
	const path = "${pageContext.request.contextPath}"
	let memberId = 1;
	selectData(1);
	
	function selectData(type){
		$.ajax({
			url: path + "/studyOk.study?id=" + memberId + "&type=" + type,
			dataType: "json",
			success: function(datas){
				$(".studyListCount").detach();
				if(datas.length == 0){
					$('.Study-empty').css('display' , 'block');
				}
				else{
					datas.forEach((data)=>{
						$listWrapper.append(li(data));
						console.log(data);
					});				
				}
			},
			error: function(a, b, c){
				console.log(a, b, c);
			}
		});
	}
	
	const li = (data) => {return (`
			<div class="studyListCount">
            <li class="Study-content">
              <div role="presentation">
                <span class="List-table-td study-name">` + data.studyTitle + `</span>
                <span class="List-table-td create-time">`+ data.studyRegistDate.split(" ")[0] +`</span>
                <span class="List-table-td status">`+ data.studyStatus + `</span>
                <span class="List-table-td people-count">`+ data.studyTotal + `</span>
                <span class="List-table-td option-menu">
                  <button type="button" class="PostContents__menu_button">
                    <svg width="24" height="24" viewBox="0 0 24 24">
                      <path fill="currentColor" d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z"></path>
                    </svg>
                  </button>
                  <div class="MenuPopup">
                    <ul>
                      <li class="MenuPopup_menu_item">
                        <button type="button" class="MenuPopup__menu_link MenuPopup__menu_link__red">
                          삭제하기
                        </button>
                      </li>
                      <li class="MenuPopup_menu_item">
                        <a class="MenuPopup__menu_link" href="/community/edit/9430">
                          수정하기
                        </a>
                      </li>
                    </ul>
                    <div class="MenuPopup_MenuPopup__bubblePoint MenuPopup_MenuPopup__bubblePoint_bottom">
                    </div>
                  </div>
                </span>
              </div>
            </li>
          </div>		
	`)}
</script>
 <script src="${pageContext.request.contextPath}/static/js/myStudy/myStudy.js"></script>
</html>