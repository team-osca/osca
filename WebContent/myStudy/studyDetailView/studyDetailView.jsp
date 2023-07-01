<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>스터디 상세</title>
    <link rel="icon" type="image/x-icon" href="https://i.ibb.co/THGWCGF/FAVICON.jpg">
    <link rel="stylesheet" href="studyDetailView.css" />
    <link rel="preload" as="style" crossorigin="anonymous"
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
  <link rel="stylesheet"
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
  
</head>
  <body>
    <!-- 헤더 -->
    <div class="NavBar_Header" style="position: fixed">
      <div class="Header_isLoggedIn">
        <nav class="Full_Header">
          <div class="Header_left">
            <div class="Header_left_logo">
              <img class="logo_img" src="https://i.ibb.co/YNfQCNW/Oh-Sca-LOGOjpg.jpg" alt="" />
            </div>
          </div>
          <ul class="Header_menu">
            <li>
              <a href="" class="">스터디</a>
            </li>
            <li>
              <a href="" class="">카페</a>
            </li>
            <li>
              <a href="" class="">내 스터디</a>
            </li>
            <li>
              <a href="" class="">FAQ</a>
            </li>
            <li>
              <a href="">사이트 소개</a>
            </li>
          </ul>
          <aside class="Header_right_isLoggedIn">
            <ul>
              <li class="profileBox">
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
        </nav>
      </div>
    </div>
    
    <div class="Padding"></div>
    <!-- 바디 -->
    <main class="StudyPostDetail">
      <aside class="PostDetail_side">
        <div>
          <div class="PostDetail_side_top">
            <a href="user profile link">
              <div class="AuthorBox_Study_leftSide large">
                <div class="AuthorBox_avatarWrapper">
                  <div class="AuthorBox_UserAvatar">
                    <img
                      src="https://static.wanted.co.kr/images/profile_default.png"
                      alt=""
                    />
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
                        <img
                          src="https://static.wanted.co.kr/images/profile_default.png"
                          alt=""
                        />
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
            <h1 itemprop="headline" class="PostContents__title">
              아침형 인간이 되고 싶어요
            </h1>
          </div>
          <div class="PostContents__body">
            하지만 올빼미는 인간이 될 수 없죠 ㅠㅠ 그러니 아침형 올빼미가 되어보는
            스터디를 해 보려고 합니다. 같이 하실 분 모집합니다!
            <div class="PostContents_metaTags"></div>
            <div class="PostContents__images"></div>
          </div>
          <div class="PostContents_tags">
            <a
              class="PostContents_tag_button"
              data-attribute-id="community__contentDetail__interestTag__click"
              data-content-title="아침형 인간이 되고 싶어요"
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
              data-content-title="아침형 인간이 되고 싶어요"
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
                    class="MenuPopup__menu_link__red"
                    data-attribute-id="community__contentDetail__more__delete"
                    data-content-title="아침형 인간이 되고 싶었으나"
                    data-content-id="9430"
                    data-like-count="1"
                    data-comment-count="1"
                  >
                    삭제하기
                  </button>
                </li>
                <li class="MenuPopup_MenuPopup__menu_item__p_vG7">
                  <a
                    class="MenuPopup_MenuPopup__menu_link___Rsar"
                    data-attribute-id="community__contentDetail__more__edit"
                    data-content-title="아침형 인간이 되고 싶었으나"
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
                class="MenuPopup_MenuPopup__bubblePoint__j2qkU MenuPopup_MenuPopup__bubblePoint_bottom__EqWcp"
              ></div>
            </div>
          </div>
        </article>
      </section>
    </main>
  </body>
</html>
