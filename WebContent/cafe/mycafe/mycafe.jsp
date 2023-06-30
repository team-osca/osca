<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preload" as="style" crossorigin="anonymous"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
<link rel="stylesheet" href="mycafe-header.css" />
<link rel="stylesheet" href="mycafe-section.css" />
<title>mycafe</title>
</head>
<body>
    <div class="__naxt">
      <div role="presentation" class="navbar" style="position: fixed; padding-right: initial">
        <div class="mainbar isLoggedIn" role="presentation">
          <nav class="mainbar-nav">
            <div class="mainbar-nav-top">
              <div class="mainbar-nav-logo">
                <a href="/jobsfeed" class="mainbar-logo-plus" aria-label="jobsfeed link"
                  ><img src="logo/logo.png" alt="logo" width="74" height="17"
                /></a>
              </div>
              <button id="SignupBtn" class="xsSignUpButton isLoggedIn" type="button">
                회원가입하기
              </button>
            </div>
            <ul class="menu">
              <li class="">
                <a href="/wdlist" class="">스터디</a>
              </li>
              <li class="">
                <a href="/events" class="">카페</a>
              </li>
              <li class="smMoreVisible">
                <a href="/cv/list" class="">내카페</a>
              </li>
              <li class="smMoreVisible">
                <a href="/community" class="">FAQ</a>
              </li>
              <li class="smMoreVisible">
                <a href="/aiscore/resume" class="">사이트 소개</a>
              </li>
            </ul>
            <aside class="aside isLoggedIn">
              <ul>
                <li class="mdMoreVisible profileBox aside_hasNewMywantedAlarm">
                  <button
                    type="button"
                    aria-haspopup="true"
                    aria-expanded="false"
                    `
                    class="profileButton"
                    aria-label="avatarButton"
                  >
                    <div class="avatarBorder">
                      <div
                        class="avatarImage"
                        style="
                          background-image: url(https://static.wanted.co.kr/oneid-user/profile_default.png),
                            url(https://static.wanted.co.kr/images/profile_default.png);
                        "
                      ></div>
                    </div></button
                  ><span
                    class="Badge_Badge__BJTzL"
                    style="background-color: rgb(51, 102, 255); width: 13px; height: 13px"
                    ><svg width="5" height="5" viewBox="0 0 6 6">
                      <g fill="#fff" fill-rule="nonzero">
                        <path
                          d="M6.647 11L6.647 7.259 6.688 7.259 9.158 11 11 11 11 5 9.353 5 9.353 8.357 9.322 8.357 7.089 5 5 5 5 11z"
                          transform="translate(-123 -375) translate(20 365) translate(98 5)"
                        ></path>
                      </g></svg
                  ></span>
                </li>
              </ul>
              <div class="Aside_visibleMenu__Dki9n"></div>
            </aside>
          </nav>
        </div>
      </div>
      <div class="Padding_padding"></div>
      <div class="Container-Profile">
        <nav role="presentation" class="Nav_Nav">
          <h2 class="Nav-Nav-title">
            <p>내 카페</p>
          </h2>
          <div align="right" style="padding-right: 50px;">
             <button class="cafe-post-button">
                <span class="cafe-post-button-container"
              ><span class="cafe-post-button-wrapper"
                ><svg class="cafe-post-button-image" viewBox="0 0 24 24">
                  <path
                    fill-rule="evenodd"
                    clip-rule="evenodd"
                    d="M17.9338 2.08059C17.5629 1.80534 17.0366 1.83583 16.7002 2.17212L3.43579 15.4323L3.33867 15.5461C3.22211 15.7068 3.1582 15.9013 3.1582 16.1023V19.8947L3.16685 20.0233C3.22958 20.4857 3.62596 20.8421 4.10558 20.8421H7.2678L7.39635 20.8335C7.85877 20.7707 8.21517 20.3744 8.21517 19.8947L8.20652 19.7662C8.14379 19.3038 7.74742 18.9474 7.2678 18.9474H5.05168V16.4956L13.2631 8.28674L15.7123 10.7359L9.7494 16.6985L9.65767 16.8047C9.38244 17.1756 9.41297 17.7019 9.74927 18.0383C10.1192 18.4083 10.719 18.4083 11.0891 18.0384L21.8281 7.30155L21.9198 7.1953C22.195 6.82447 22.1645 6.29818 21.8283 5.96181L18.04 2.17233L17.9338 2.08059ZM17.0521 9.39616L19.8181 6.63032L17.3688 4.18232L14.6031 6.94717L17.0521 9.39616Z"
                  ></path></svg></span
            ></span>
            </button>
        </div>
        </nav>
        <div class="Status">
          <div class="Aside-inStatus">
            <dl>
              <dt>내 카페 홍보글 괸리</dt>
              <dd>
                <ul>
                  <li class="active">
                    <a href="#" class=""
                      >전체
                      <div class="label_">0</div></a
                    >
                  </li>
                  <li class="">
                    <a href="#" class=""
                      >기간 만료된 게시글
                      <div class="label_">0</div></a
                    >
                  </li>
                </ul>
              </dd>
            </dl>
          </div>
          <section>
            <div class="List-wrapper">
              <header class="Offers-header">
                <ul class="List-row">
                  <li class="col col-1">회사명</li>
                  <li class="col col-2">일자</li>
                  <li class="col col-3">상태</li>
                </ul>
              </header>
              <div class="Offers-empty"></div>
              <ul class="Offers-content">
              <!----------------------------- 내 카페 리스트 목록  ---------------------------------------------->
                <li class="List-List-table-tr">
                  <div role="presentation">
                    <span class="List-List-table-td List-List-table-td-cafe-logo"
                      ><img
                        src="https://static.wanted.co.kr/images/wdes/0_5.9f18933a.jpg"
                        alt="cafeLogo" /></span
                    ><span class="List-List-table-td List-List-table-td-cafe-name"
                      >나우콤 글로벌 서비스(Nowcom Global Service – Korea LLC)</span
                    ><span class="List-List-table-td List_List_table_td_position__8yMM_"
                      >Jr. Database Engineer</span
                    ><span class="List-List-table-td List-List-table-td-create-time"
                      >2023. 6. 26</span
                    ><span class="List-List-table-td List-List-table-td-status"
                      >접수</span
                    ><span
                      class="List-List-table-td List-List-table-td-recommendation"
                      >추천인 없음</span
                    ><span
                      class="List-List-table-td List-List-table-td-reward"
                    ></span>
                  </div>
                </li>                
                <li class="List-List-sensor"></li>
                <!----------------------------- 내 카페 리스트 목록  ---------------------------------------------->
              </ul>
            </div>
          </section>
          <div class="MatchUpModal-modalContainer"></div>
        </div>
      </div>
    </div>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="mycafe.js"></script>
</html>