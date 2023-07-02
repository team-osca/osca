<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>게시글 작성</title>
    <link rel="icon" type="image/x-icon" href="https://i.ibb.co/THGWCGF/FAVICON.jpg" />
    <link rel="stylesheet" href="writePost.css" />
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
    <!-- 고정된 등록하기 -->
    <main class="PostWrite __9mT5h">
      <form id="write">
        <div class="Header_PostWrite __yoM82">
          <div class="Header_PostWrite__content __o8Uvu">
            <div class="Header_PostWrite__button __Js48X">
              <button
                class="Button_Button __root__V1ie3"
                type="submit"
                form="write"
                aria-label="registration button"
                disabled=""
              >
                <span class="Button__label">등록하기</span>
                <span class="Button__interaction __kkYaa"></span>
              </button>
            </div>
          </div>
        </div>
        <!-- 글 작성 -->
        <div class="PostWrite__content __t7rnC">
          <div class="Paper_PostWritePaper __zgggO">
            <div class="TagPanel_tagPanel __G236R">
              <div class="TagPanel_tagMessage __HTFWX">
                <span>지역 태그 선택</span>
                <!-- <span class="TagPanel_tagMessage_hint__Uio3u">(1~3개)</span>
                <span class="TagPanel_tagMessage_required__JhAPt">*</span> -->
              </div>
              <div class="TagPanel_tagWrapper ___bVxE">
                <button type="button" aria-label="Open Select Tag Modal">
                  <svg width="34" height="34" viewBox="0 0 34 34">
                    <path
                      d="M0 17C0 7.61116 7.61116 0 17 0V0C26.3888 0 34 7.61116 34 17V17C34 26.3888 26.3888 34 17 34V34C7.61116 34 0 26.3888 0 17V17Z"
                      fill="#F2F4F7"
                    ></path>
                    <path
                      d="M17.7432 10.6482C17.6935 10.2822 17.3797 10 17 10C16.5858 10 16.25 10.3358 16.25 10.75V16.25H10.75L10.6482 16.2568C10.2822 16.3065 10 16.6203 10 17C10 17.4142 10.3358 17.75 10.75 17.75H16.25V23.25L16.2568 23.3518C16.3065 23.7178 16.6203 24 17 24C17.4142 24 17.75 23.6642 17.75 23.25V17.75H23.25L23.3518 17.7432C23.7178 17.6935 24 17.3797 24 17C24 16.5858 23.6642 16.25 23.25 16.25H17.75V10.75L17.7432 10.6482Z"
                      fill="#666666"
                    ></path>
                  </svg></button
                ><button
                  type="button"
                  class="TagPanel_tagPlaceholder __uBCPy"
                  aria-label="Open Select Tag Modal"
                >
                  <picture
                    ><source
                      type="image/webp"
                      srcset="
                        https://static.wanted.co.kr/images/community/tag_empty.webp    1x,
                        https://static.wanted.co.kr/images/community/tag_empty@2x.webp 2x,
                        https://static.wanted.co.kr/images/community/tag_empty@3x.webp 3x
                      " />
                    <img
                      srcset="
                        https://static.wanted.co.kr/images/community/tag_empty.png    1x,
                        https://static.wanted.co.kr/images/community/tag_empty@2x.png 2x,
                        https://static.wanted.co.kr/images/community/tag_empty@3x.png 3x
                      "
                      src="https://static.wanted.co.kr/images/community/tag_empty@3x.png"
                      alt="empty tag"
                  /></picture>
                </button>
                <div class="TagPanel_slider__pRBBp">
                  <div class="TagPanel_scroll__X9CwD">
                    <div class="TagPanel_scroll_list__61HCC"></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="AutoTextarea __odSEo Paper_PostWritePaper__title __0zYfC">
              <textarea
                class="AutoTextarea__textarea __zScTG"
                name="title"
                placeholder="제목을 입력해주세요."
                required
                style="height: 38px"
              ></textarea
              ><textarea
                class="AutoTextarea__textarea __zScTG AutoTextarea__hidden __ScJax"
                readonly
                style="height: 38px"
              ></textarea>
            </div>
            
            <div class="Paper_PostWritePaper__content __KM9Nk">
              <div class="AutoTextarea __odSEo">
                <textarea
                  class="AutoTextarea__textarea __zScTG"
                  name="content"
                  placeholder="스터디 주제, 장소, 시간 등 자세하게 안내해주세요!"
                  required
                  style="height:28px"
                ></textarea
                ><textarea
                  class="AutoTextarea__textarea __zScTG AutoTextarea__hidden __ScJax" readonly style="height: 28px;"
                ></textarea>
              </div>
            </div>
          </div>
        </div>
      </form>
      <!-- 사진첨부 아이콘 -->
      <input class="PostWrite_PostPhotoFile __YOQL3" type="file" accept="image/png, image/jpeg" />
      <div class="PostWrite_PostPhotoButton __SIrUN">
        <button
          type="button"
          class="PhotoButton_PhotoButton __uSl7I"
          aria-label="add photo button"
          data-attribute-id="community__content__addImage"
        >
        <label for="img" class="label-file"> 
          <svg
            xmlns="https://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            fill="none"
          >
            <path
              fill-rule="evenodd"
              clip-rule="evenodd"
              d="M7.52489 11.47L9.9908 13.9387L15.4533 8.46998C15.7462 8.17668 16.2216 8.17668 16.5145 8.46998L22.5076 14.47C22.6481 14.6106 22.727 14.8012 22.727 15V19.0395C22.727 19.4539 22.3909 19.7897 21.9765 19.7895L1.99951 19.7763C1.58501 19.776 1.24932 19.4396 1.25 19.0251L1.273 4.99877C1.27368 4.58465 1.60987 4.24946 2.02399 4.25L22.001 4.27632C22.4163 4.27686 22.7521 4.61486 22.75 5.0302L22.727 9.4677C22.7248 9.88191 22.3873 10.216 21.9731 10.2138C21.5589 10.2117 21.2249 9.87414 21.227 9.45993L21.2461 5.77532L2.77177 5.75099L2.75123 18.2768L21.227 18.289V15.3104L15.9839 10.0613L10.5214 15.53C10.2285 15.8233 9.75313 15.8233 9.46017 15.53L6.99425 13.0613L5.52718 14.53C5.23446 14.8231 4.75959 14.8234 4.46653 14.5306C4.17346 14.2379 4.17319 13.763 4.46591 13.47L6.46361 11.47C6.75658 11.1767 7.23192 11.1767 7.52489 11.47ZM9 9.75H5C4.58579 9.75 4.25 9.41421 4.25 9C4.25 8.58579 4.58579 8.25 5 8.25H9C9.41421 8.25 9.75 8.58579 9.75 9C9.75 9.41421 9.41421 9.75 9 9.75Z"
              fill="currentColor"
            ></path>
            <mask id="mask0_150_2361" maskUnits="userSpaceOnUse" x="1" y="4" width="22" height="16">
              <path
                fill-rule="evenodd"
                clip-rule="evenodd"
                d="M7.52489 11.47L9.9908 13.9387L15.4533 8.46998C15.7462 8.17668 16.2216 8.17668 16.5145 8.46998L22.5076 14.47C22.6481 14.6106 22.727 14.8012 22.727 15V19.0395C22.727 19.4539 22.3909 19.7897 21.9765 19.7895L1.99951 19.7763C1.58501 19.776 1.24932 19.4396 1.25 19.0251L1.273 4.99877C1.27368 4.58465 1.60987 4.24946 2.02399 4.25L22.001 4.27632C22.4163 4.27686 22.7521 4.61486 22.75 5.0302L22.727 9.4677C22.7248 9.88191 22.3873 10.216 21.9731 10.2138C21.5589 10.2117 21.2249 9.87414 21.227 9.45993L21.2461 5.77532L2.77177 5.75099L2.75123 18.2768L21.227 18.289V15.3104L15.9839 10.0613L10.5214 15.53C10.2285 15.8233 9.75313 15.8233 9.46017 15.53L6.99425 13.0613L5.52718 14.53C5.23446 14.8231 4.75959 14.8234 4.46653 14.5306C4.17346 14.2379 4.17319 13.763 4.46591 13.47L6.46361 11.47C6.75658 11.1767 7.23192 11.1767 7.52489 11.47ZM9 9.75H5C4.58579 9.75 4.25 9.41421 4.25 9C4.25 8.58579 4.58579 8.25 5 8.25H9C9.41421 8.25 9.75 8.58579 9.75 9C9.75 9.41421 9.41421 9.75 9 9.75Z"
                fill="white"
              ></path>
            </mask>
            <g mask="url(#mask0_150_2361)">
              <rect width="24" height="24" fill="currentColor"></rect>
            </g></svg
          >
        </label>
          <input type="file" name="images" id="img" multiple
          style="display: none" />
        </button>
      </div>
    </main>

  </body>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="writePost.js"></script>
</html>
