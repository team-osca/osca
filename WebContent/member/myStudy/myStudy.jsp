<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <title>내 스터디</title>
    <link rel="stylesheet" href="./myStudy.css"/>
  </head>
  <body>
    <div id="_next">
      <div role="presentation" class="NavBar_className_y2qGg" style="position: fixed">
        <div class="MainBar_MainBar_40DX7 isLoggedIn" role="presentation">
          <nav class="MainBar_MainBar_nav_kwHBF">
            <div class="MainBar_MainBar_nav_top_wXy52">
              <div class="MainBar_MainBar_nav_top_logo_Y_Q5D">
                <a
                  href=""
                  class="MainBar_MainBar_logo_bGymr"
                  aria-label="jobsfeed link"
                  data-attribute-id="gnb"
                  data-gnb-kind="jobsfeed"
                >
                오! 스카
                </a>
              </div>
             
            </div>
            <ul class="Menu_className_gGcYQ">
              <li class="" data-attribute-id="gnb" data-gnb-kind="jobs">
                <a href="" class="">스터디</a>
              </li>
              <li class="" data-attribute-id="gnb" data-gnb-kind="event">
                <a href="" class="">카페</a>
              </li>
              <li class="smMoreVisible" data-attribute-id="gnb" data-gnb-kind="resume">
                <a href="" class="">이력서</a>
              </li>
              <li class="smMoreVisible" data-attribute-id="gnb" data-gnb-kind="community">
                <a href="" class="">커뮤니티</a>
              </li>
              <li class="" data-attribute-id="gnb" data-gnb-kind="freelancer">
                <a
                  href=""
                  class=""
                  target="_blank"
                  rel="noopener noreferrer"
                  >프리랜서</a
                >
              </li>
              <li class="smMoreVisible" data-attribute-id="gnb" data-gnb-kind="aiScore">
                <a href="" class="">AI 합격예측</a>
              </li>
            </ul>
            <aside class="Aside_className_e5Bi isLoggedIn">
              <ul>
                <li class="mdMoreVisible profileBox">
                  <button
                    type="button"
                    aria-haspopup="true"
                    aria-expanded="false"
                    data-attribute-id="gnb"
                    data-gnb-kind="photo"
                    class="profileButton"
                    aria-label="avatarButton"
                    data-badge="true"
                  >프로필
                    <div class="avatarBorder">
                      <div
                        class="avatarImage"
                      ></div>
                    </div></button
                  >
                </li>
            </aside>
          </nav>
        </div>
      </div>
      <div class="Container_Profile_7hTY">
        <nav role="presentation" class="Nav_Nav_mBpI5">
          <h2 class="Nav_Nav_title_4b9t6">
            <p>
              스터디 현황
            </p>
         
          </h2>
         <div class="newStudy"> <button class="newStudy-button"
          id="gnbSignupBtn"
          class="xsSignUpButton isLoggedIn"
          type="button"
          data-attribute-id="gnb"
          data-gnb-kind="signupLogin"
        >
         스터디 개설하기
        </button>
      </div></nav>
        <div class="Status_className_AimiS">
          <div class="Aside_className_y5t_H">
            <dl>
              <dt>내 스터디</dt>
              <dd>
                <ul>
                  <li class="active">
                    <a href="" class=""
                      >전체
                      <div class="label_">0</div>
                    </a>
                  </li>
                  <li>
                    <a href="" class=""
                      >내가 개설한 스터디
                      <div class="label_">0</div></a
                    >
                  </li>
                  <li>
                    <a href="" class=""
                      >참여 스터디
                      <div class="label_">0</div></a
                    >
                  </li>
                </ul>
              </dd>
            </dl>
          </div>
          <section>
            <div class="List_wrapper_de_tV">
              <header class="Study-header">
                <ul class="List_row_AXomk">
                  <li class="col col-1">스터디명</li>
                  <li class="col col-2">일자</li>
                  <li class="col col-3">
                    상태
                  </li>
                </ul>
              </header>
              <ul class="Study-content">
                <li class = "col col-1"><a href="" class="click-for-details">본문1</a></li>
                <li class="col col-2">본문2</li>
                <li class="col col-3">본문3
                </li> 
                <button class="edit">수정</button>
                <button class="edit">삭제</button>
              </ul>
              <div class="Study-empty">요청하신 결과가 없습니다.</div>
            </div>
          </section>
        </div>
        <!-- ::after -->
      </div>
    </div>
  </body>
</html>
