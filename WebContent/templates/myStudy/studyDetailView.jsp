<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>스터디 상세</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/allimages/all-image/favicon.jpg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/myStudy/studyDetailView.css" />
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
  </head>
  <body>
    <header>
      <div role="presentation" class="nav-bar" style="position: fixed; padding-right: initial">
        <div class="main-bar isLoggedIn" role="presentation">
          <nav class="main-bar-nav">

              <div class="main-bar-nav-top">
                <div class="main-bar-nav-top-logo">
                  <a href="" class="main-bar-nav-top-logo-a">
                    <img src="${pageContext.request.contextPath}/static/allimages/all-image/logo.jpg" width="74" height="19" alt="Oh!스카 로고" />
                  </a>
                </div>
              </div>

              <ul class="menu">
                <li class="selectedNav"><a href="">오늘의 스터디</a></li>
                <li><a href="">오늘의 카페</a></li>
                <li class="smMoreVisible"><a href="">내 스터디</a></li>
                <li class="smMoreVisible"><a href="">FAQ</a></li>
                <li class="smMoreVisible"><a href="">Oh!스카 소개</a></li>
              </ul>

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
                  <li class="isNotLoggedIn">
                    <button
                      class="signUpButton"
                      type="button"
                      data-attribute-id="gnb"
                      data-gnb-kind="signupLogin"
                    >
                      회원가입/로그인
                    </button>
                  </li>
                </ul>
              </aside>

          </nav>
        </div>
      </div>
      <div class="padding"></div>
    </header>

    <!-- 바디 -->
    <main class="StudyPostDetail">
      <aside class="PostDetail_side">
        <div>
          <div class="PostDetail_side_top">
            <a href="user profile link">
              <div class="AuthorBox_Study_leftSide large">
                <div class="AuthorBox_avatarWrapper">
                  <div class="AuthorBox_UserAvatar">
                    <img src="https://static.wanted.co.kr/images/profile_default.png" alt="" />
                  </div>
                </div>
                <div class="AuthorBox_verticalBox">
                  <div class="AuthorBox_username">유저네임</div>
                </div>
              </div>
            </a>
          </div>
          <div class="PostDetail_bottom">
            <div class="userInfo">유저 간단 정보</div>
          </div>
        </div>
      </aside>
      <section class="CommunityPostDetail">
        <article class="PostContents">
          <div class="PostContents__header">
            <div class="PostContents__author">
              <a href="user profile link">
                <div class="AuthorBox_header">
                  <div class="AuthorBox_verticalArea">
                    <div class="AuthorBox__avatarWrapper_2">
                      <div class="AuthorBox_UserAvatar">
                        <img src="https://static.wanted.co.kr/images/profile_default.png" alt="" />
                      </div>
                    </div>
                    <div class="AuthorBox__verticalBox">
                      <div class="AuthorBox__userInfo">
                        <div class="AuthorBox_username_post">유저네임</div>
                      </div>
                      <span class="AuthorBox__createAt create_time">방금 전</span>
                    </div>
                  </div>
                </div>
              </a>
            </div>
            <h1 itemprop="headline" class="PostContents__title">스프링 로드맵 스터디 8주 완성</h1>
          </div>
          <div class="PostContents__body">
            스프링을 핵심부터 고급편까지 학습 후, 간단한 토이프로젝트를 진행하는 스터디입니다.

            📌스터디 주제 
            스프링 로드맵 스터디 8주완성 

            📌스터디 목표 
            스프링 로드맵의 '완전한 이해'를 목표 

            📌예상 스터디 일정(횟수) 
            8주 

            📌예상 모집인원 
            6명 

            📌스터디 장소 
            투썸플레이스
            
            <div class="PostContents_metaTags"></div>
            <div class="PostContents__images"></div>
          </div>
          <div class="PostContents_tags">
            <a
              class="PostContents_tag_button"
              data-attribute-id="community__contentDetail__interestTag__click"
              data-content-title="스프링 로드맵 스터디 8주 완성"
              data-content-id="9430"
              data-comment-count="1"
            ></a>
          </div>
          <div class="PostContents_bottomActions">
            <button type="button" class="enroll" data-attribute-id="event__enroll">
              <span class="">스터디 참여 신청</span>
            </button>
            <button
              type="button"
              class="PostContents__menu_button"
              data-attribute-id="community__contentDetail__more__click"
              data-content-title="스프링 로드맵 스터디 8주 완성"
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
                    class="MenuPopup__menu_link__red MenuPopup__menu_link"
                    data-attribute-id="community__contentDetail__more__delete"
                    data-content-title="스프링 로드맵 스터디 8주 완성"
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
                    data-content-title="스프링 로드맵 스터디 8주 완성"
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
          </div>
        </article>
      </section>
    </main>
  </body>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/js/myStudy/studyDetailView.js"></script>
</html>