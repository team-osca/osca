<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="https://i.ibb.co/THGWCGF/FAVICON.jpg" />
    <title>Document</title>
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/signUp/signUp.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css">
   
</head>
<body style="overflow: unset;">
    <div id="signup">
        <div class="page">
            <div class="area">
                <div class="areabox">
                    <div class="title">
                        <!--   뒤로가기 버튼   -->
                    <form action="${pageContext.request.contextPath}/signOrLogin.member"  style="
						    display: flex;
						    /* flex: 1 1 0%; */
						    -webkit-box-pack: center;
						    justify-content: center;
						    -webkit-box-align: center;
						    align-items: center;
						">
                        <div class="cancel">
                            <button type="sumbit" class="cancelbtn" id="cancelbtn">
                                <p color="var(--theme-palette-colors-black-100)" class="cancellation">취소</p>
                            </button>
                        </div>
                        </form>
<!--   회원가입   -->
                        <div class="signuptitle">
                            <p color="var(--theme-palette-colors-black-100)" class="signuppage">회원가입</p>
                        </div>
                        <div class="blank"></div>
                    </div>
                    <!--   회원가입   입력창-->
                    <div class="formbox">
      				<form action="${pageContext.request.contextPath}/SignUpOk.member">
                            <div>
                                <div class="box">
                                    <label color="var(--theme-palette-colors-gray-600)" for="email" class="label">이메일</label>
                                </div>
                                <input type="email" name="email" class="form-input" <% String userEmail = (String) session.getAttribute("userEmail"); %>value="<%= userEmail %>" disabled>
                            </div>
                            <div class="box">
                                <label color="var(--theme-palette-colors-gray-600)" for="username" class="label">이름</label>
                            </div>
                            <!--   이름   입력창-->
                            <input type="text" placeholder="이름을 입력해주세요." name="memberName" class="form-input" value>
                            <div class="phonenumber">
                                <label color="var(--theme-palette-colors-gray-600)" for="mobile" class="label">휴대폰 번호</label>
                            </div>
                            <div>

                                <div class="country">
                                    <select class="countrylist">
                                        <option value="KR">South Korea +82</option>
                                        <option value="JP">Japan +81</option>
                                        <option value="TW">Taiwan +886</option>
                                        <option value="HK">Hong Kong +852</option>
                                        <option value="SG">Singapore +65</option>
                                    </select>
                                    <div class="down">
                                        <span class="arrowbox">
                                            <svg viewBox="0 0 10 6" class="arrow">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M5 3.93934L1.28033 0.21967C0.987437 -0.0732233 0.512563 -0.0732233 0.21967 0.21967C-0.0732233 0.512563 -0.0732233 0.987437 0.21967 1.28033L4.46967 5.53033C4.76256 5.82322 5.23744 5.82322 5.53033 5.53033L9.78033 1.28033C10.0732 0.987437 10.0732 0.512563 9.78033 0.21967C9.48744 -0.0732233 9.01256 -0.0732233 8.71967 0.21967L5 3.93934Z" fill="var(--theme-palette-colors-gray-900)"></path>
                                            </svg>
                                        </span>
                                    </div>
                                </div>
                                              
                                <div class="number">
                            <!--  번호   입력창-->
                                         
                                    <input type="text" placeholder="(예시)01013245768" name="memberPhone" class="putnumber" id="phoneNumber-input" value>
            
                            <!--  인증번호 받기 번호   버튼-->
                                    <button type="button" class="verificationbtn" id= "AuthenticationNumberBtn" disabled>
                                        <span color="var(--theme-palette-colors-black-100)" class="getverification">인증번호 받기</span>
                                    </button>
                                </div>
                                  <p color="var(--theme-palette-colors-red-400)" class="isnot-a-phonenumber">올바른 전화번호를 입력해주세요.</p>
                         <!--  인증번호 입력-->
                                <div class="verification check-phonenumber-wrapper">
                                    <input type="text" placeholder="인증번호를 입력해주세요." id="input-authCode" name="authCode" readonly class="authenticationcode check-phonenumber" value>
                             <button type="button" class="certification-Btn">
      					<span
        					color="var(--theme-palette-colors-black-100)"
        					class="certification-Number-Btn-span"
        					>인증하기
        				</span>
    				</button>
    				    </div><p var(--theme-palette-colors-blue-400) class="Authentication-Number-Guide">인증번호가 요청되었습니다.</p>
                            </div>
                            <div>
                                <label color="var(--theme-palette-colors-gray-600)" for="password" class="label">비밀번호</label>
                            </div>
                               <!--  비밀번호 입력-->
                            <input type="password" placeholder="비밀번호를 입력해주세요." name="memberPassword" class="passwordbox" id="pw-input" value>
                                            <p id="check-pw-msg" color="var(--theme-palette-colors-red-400)" class="pw-error">올바르지 않은 비밀번호입니다.</p>
                                            <input type="password" placeholder="비밀번호를 다시 한번 입력해주세요." name="passwordConfirm" class="passwordbox" id="pw-input-check" value>
                                                                    <p id="not-eq-err" color="var(--theme-palette-colors-red-400)" class="pw-error">비밀번호가 서로 일치하지 않습니다.</p>
                            <p color="var(--theme-palette-colors-gray-600)" class="description">영문 대소문자, 숫자, 특수문자를 3가지 이상으로 조합해 8자 이상 16자 이하로 입력해주세요.</p>

                            <!-- 회원 유형  -->
                            <div>
                            <div class="box">
                                <label color="var(--theme-palette-colors-gray-600)" for="username" class="label">회원 유형</label>
                            </div>          
                            <div class="term2">
                                <div class="check2">
                                    <span class="check_svg_box">
                                        <svg viewBox="0 0 12 8" class="check_svg">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-common-white)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </div>
                                <input type="checkbox" name="memberRole" class="checkbox" id="memberRoleCheckbox">
                                <input type="hidden" name="memberRole" id="memberRoleHiddenInput" value="0">
                                <div class="content">
                                    <p color="var(--theme-palette-colors-gray-600)" class="context">카페 회원으로 가입합니다.</p>
                                </div>
                            </div>
                            <hr class="district">
                            </div>
                            <!-- 회원 유형 -->
                            <div class="agreements">
                                <div class="check">
                                    <span class="check_svg_box">
                                        <svg viewBox="0 0 12 8" class="check_svg">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-common-white)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </div>
   <!--  체크박스 -->
                                <input type="checkbox" name="is_agree_all" class="checkbox">
                                <div class="content">
                                    <p color="var(--theme-palette-colors-gray-900)" class="agree-all">전체 동의</p>
                                </div>
                            </div>
                            <hr class="district">
                            <div class="term">
                                <div class="check">
                                    <span class="check_svg_box">
                                        <svg viewBox="0 0 12 8" class="check_svg">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-common-white)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </div>
                                <input type="checkbox" name="is_above_14" class="checkbox">
                                <div class="content">
                                    <p color="var(--theme-palette-colors-gray-600)" class="context">만 14세 이상입니다. (필수)</p>
                                </div>
                            </div>
                            <div class="term">
                                <div class="check">
                                    <span class="check_svg_box">
                                        <svg viewBox="0 0 12 8" class="check_svg">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-common-white)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </div>
                                <input type="checkbox" name="is_above_14" class="checkbox">
                                <div class="content">
                                    <p color="var(--theme-palette-colors-gray-600)" class="context">오스카 이용약관 동의 (필수)</p>
                                </div>
                                <a color="var(--theme-palette-colors-gray-600)" href="https://id.wanted.jobs/terms/ko" target="_blank" class="more">자세히</a>
                            </div>
                            <div class="term">
                                <div class="check">
                                    <span class="check_svg_box">
                                        <svg viewBox="0 0 12 8" class="check_svg">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-common-white)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </div>
                                <input type="checkbox" name="is_collect_information" class="checkbox">
                                <div class="content">
                                    <p color="var(--theme-palette-colors-gray-600)" class="context">오스카 개인정보 수집 및 이용 동의 (필수)</p>
                                </div>
                                <a color="var(--theme-palette-colors-gray-600)" href="https://id.wanted.jobs/privacy/ko" class="more">자세히</a>
                            </div>
                            <div class="term">
                                <div class="check">
                                    <span class="check_svg_box">
                                        <svg viewBox="0 0 12 8" class="check_svg">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-common-white)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </div>
                               
                                <input type="checkbox" name="is_accept_event_all" class="checkbox">
                                <div class="content">
                                    <p color="var(--theme-palette-colors-gray-600)" class="context">채용 소식, 커리어 콘텐츠, 이벤트 등 오스카 맞춤 정보 받기</p>
                                </div>
                            </div>
                            <div class="inform">
                                <label class="notice">
                                    <input name="accept_marketing_email" type="checkbox">
                                    <span class="receive">
                                        <svg viewBox="0 0 12 8" class="container">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-gray-300)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                    <p color="var(--theme-palette-colors-gray-600)" class="mean">이메일</p>
                                </label>
                                <label class="notice">
                                    <input name="accept_marketing_email" type="checkbox">
                                    <span class="receive">
                                        <svg viewBox="0 0 12 8" class="container">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-gray-300)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                    <p color="var(--theme-palette-colors-gray-600)" class="mean">앱 푸시</p>
                                </label>
                                <label class="notice">
                                    <input name="accept_marketing_email" type="checkbox">
                                    <span class="receive">
                                        <svg viewBox="0 0 12 8" class="container">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-gray-300)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                    <p color="var(--theme-palette-colors-gray-600)" class="mean">문자 메시지</p>
                                </label>
                            </div>
                               <!--  가입 버튼 -->
                            <div class="complete">
                                <div class="completebox"></div>
                                <div class="upper-padding"></div>
                                <button  type="button" disabled class="submission" name="finishButton">
                                    <span color="var(--theme-palette-colors-black-100)" class="signupcomplete">가입하기</span>
                                </button>
                            </div>
                               <!--  모달창    --> 
         <div class="modal_area1">
      <div class="modal1">
        <div class="modal_message1">
          <div class="content11">
            <p class="upper-text1">가입이 완료되었어요!</p>
            <img class="firework1" src="https://cdn4.iconfinder.com/data/icons/carnival-and-amusement-flat-colors/64/confetti-64.png">
          </div>
          <div class="content21">
            <p class="bottom-text1">오!스카의 멤버가 되신 것을 축하합니다.</p>
          </div>
        </div>
        <div class="modal_button1">
          <button type="submit" class="more1">
            <span color="var(--theme-palette-colors-black-100)" class="button-text1">로그인하기</span>
          </button>
        </div>
      </div>
    </div>
		
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
                          
    
</body>
  <script>
  	let contextPath = "${pageContext.request.contextPath}"
  </script>
<script src="${pageContext.request.contextPath}/static/js/signUp/signUp.js"></script>
</html>