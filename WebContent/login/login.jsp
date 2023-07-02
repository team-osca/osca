<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css">
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div id="login">
        <!-- 전체 페이지 영역 -->
        <div class="area">
            <!-- 로그인 박스 영역 -->
            <div class="boxarea">
                <div class="box">
                    <div class="setting">
                        <div class="logo">
                            <span class="logobox">
                                <svg viewBox="0 0 93 28" class="wanted"> 
                                    <path d="M4.77051 23H8.68066L11.626 13.7578L14.5967 23H18.5068L22.874 9.28906H18.9639L16.4248 18.0996L13.4541 9.28906H9.79785L6.82715 18.0996L4.28809 9.28906H0.37793L4.77051 23ZM22.8486 16.1191C22.8486 19.6865 25.1084 23.3301 29.5264 23.3301C31.0371 23.3428 32.332 22.9111 33.3857 22.1621V23H36.9658V9.28906H33.3857V10.127C32.332 9.37793 31.0371 8.94629 29.5264 8.95898C25.1084 8.95898 22.8486 12.5518 22.8486 16.1191ZM26.3271 16.1191C26.3145 13.6689 27.9902 12.2725 29.9326 12.2598C31.8496 12.2725 33.3604 13.6309 33.3604 16.0938C33.3604 18.5693 31.8496 20.0166 29.9326 20.0039C27.9268 20.0166 26.3145 18.5693 26.3271 16.1191ZM39.1494 23H42.8564V15.1035C42.8564 13.5166 43.7832 12.2725 45.4209 12.2598C47.1855 12.2725 47.9346 13.4658 47.9346 15.002V23H51.6416V14.3418C51.6416 11.3457 50.0928 8.9209 46.6904 8.9082C45.2432 8.9209 43.6309 9.54297 42.7803 10.8887V9.28906H39.1494V23ZM52.708 12.5645H55.1963V18.9375C55.1963 21.6035 56.8594 23.3301 59.5381 23.3301C60.6172 23.3301 61.29 23.1396 61.6201 23V19.7754C61.4297 19.8516 60.9219 19.9023 60.4775 19.9023C59.4238 19.9023 58.8779 19.5088 58.8779 18.3027V12.5645H61.6201V9.28906H58.8779V4.69336L55.2471 6.2168V9.28906H52.708V12.5645ZM62.8389 16.1445C62.8389 20.0928 65.3652 23.3428 69.5166 23.3301C72.5381 23.3428 74.7217 21.6035 75.6865 19.0898L72.3857 18.4043C71.8398 19.585 70.8369 20.3594 69.5166 20.3594C67.752 20.3594 66.5586 18.9756 66.2666 17.1094H76.1436C76.1816 16.792 76.1943 16.4746 76.1943 16.1445C76.1943 11.9551 73.4395 8.95898 69.5166 8.95898C65.4414 8.95898 62.8389 12.1836 62.8389 16.1445ZM66.4443 14.5449C66.9014 13.1992 67.9932 12.2598 69.5166 12.2598C71.04 12.2598 72.1445 13.1992 72.6143 14.5449H66.4443ZM77.4131 16.1191C77.4131 20.1055 79.9395 23.3428 84.0908 23.3301C85.6016 23.3428 86.8965 22.8984 87.9502 22.1621V23L91.5049 23.0254V3.27148L87.874 4.69336V10.0762C86.7568 9.32715 85.4365 8.95898 84.0908 8.95898C80.0029 8.95898 77.4131 12.1201 77.4131 16.1191ZM80.8662 16.1191C80.8662 13.6562 82.542 12.2725 84.4717 12.2598C86.4141 12.2725 87.9121 13.6309 87.9248 16.0684C87.9121 18.5693 86.4141 20.0166 84.4717 20.0039C82.4912 20.0166 80.8662 18.5693 80.8662 16.1191Z" fill="var(--theme-palette-colors-black-100)"></path>
                                </svg>
                            </span>
                        </div>
                        <form>
                            <h1 data-testid="Typography" color="var(--theme-palette-colors-black-100)" class="topphr">하나의 계정으로<br>더욱 편리하게</h1>
                            <h2 data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="bottomphr">원티드가 제공하는 서비스를<br>하나의 계정으로 모두 이용할 수 있습니다.</h2>
                            <div>
                                <div class="emailbox">
                                    <label data-testid="Typography" color="var(--theme-palette-colors-gray-600)" for="email" class="subject">이메일</label>
                                </div>
                                <input type="email" placeholder="이메일을 입력해주세요." name="email" data-testid="Input_email" class="emailCheck" value>
                            </div>
                            <button type="submit" disabled data-testid="Button" data-attribute-id="signupLogin__start" data-method="email" class="email-next">
                                <span data-testid="Typography" color="var(--theme-palette-colors-black-100)" class="keep">이메일로 계속하기</span>
                            </button>
                            <p data-testid="Typography" color="var(--theme-palette-colors-gray-500)" class="else">또는</p>
                            <div class="icons">
                                <button type="button" data-attribute-id="signupLogin__start" data-method="apple" class="apple-login">
                                    <span class="apple-account">
                                        <svg viewBox="0 0 57 56" class="apple-link">
                                            <path d="M0.5 28C0.5 12.536 13.036 0 28.5 0C43.964 0 56.5 12.536 56.5 28C56.5 43.464 43.964 56 28.5 56C13.036 56 0.5 43.464 0.5 28Z" fill="black"></path>
                                            <path d="M28.8182 19.359C30.0068 19.359 31.4968 18.5307 32.384 17.4264C33.1876 16.4256 33.7736 15.0279 33.7736 13.6302C33.7736 13.4404 33.7568 13.2506 33.7233 13.0953C32.4008 13.147 30.8104 14.0098 29.8561 15.1659C29.1028 16.046 28.4164 17.4264 28.4164 18.8413C28.4164 19.0484 28.4499 19.2555 28.4666 19.3245C28.5503 19.3418 28.6843 19.359 28.8182 19.359ZM24.6329 40.2381C26.2568 40.2381 26.9767 39.1165 29.0023 39.1165C31.0615 39.1165 31.5135 40.2036 33.3215 40.2036C35.0961 40.2036 36.2847 38.5126 37.4064 36.8561C38.6619 34.958 39.1809 33.0944 39.2144 33.0081C39.0972 32.9736 35.6988 31.5414 35.6988 27.5209C35.6988 24.0352 38.3773 22.465 38.528 22.3442C36.7535 19.7214 34.0581 19.6524 33.3215 19.6524C31.3294 19.6524 29.7055 20.8947 28.6843 20.8947C27.5794 20.8947 26.1229 19.7214 24.3986 19.7214C21.1173 19.7214 17.7858 22.5168 17.7858 27.7969C17.7858 31.0755 19.0247 34.5438 20.5481 36.787C21.8539 38.6851 22.9923 40.2381 24.6329 40.2381Z" fill="white"></path>
                                        </svg>
                                    </span>
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="opt1">Apple</p>
                                </button>
                                <button type="button" data-attribute-id="signupLogin__start" data-method="google" class="google-login">
                                    <span class="google-account">
                                        <svg viewBox="0 0 57 56" class="google-link">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.6657 28.3122C41.6657 27.34 41.5789 26.4044 41.4158 25.5068H28.5V30.8112H35.8813C35.5629 32.5255 34.5968 33.9792 33.1446 34.9514V38.3922H37.5758C40.1693 36.0044 41.6657 32.4889 41.6657 28.3122Z" fill="#3D82F0"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M28.5003 41.7146C32.2032 41.7146 35.3072 40.4864 37.5761 38.3927L33.1449 34.9504C31.9167 35.7733 30.3457 36.2594 28.5003 36.2594C24.9285 36.2594 21.9053 33.8472 20.8264 30.606H16.2443V34.1595C18.5011 38.6411 23.1396 41.7146 28.5003 41.7146Z" fill="#31A752"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M20.8261 30.606C20.5518 29.7831 20.3964 28.9039 20.3964 28.0002C20.3964 27.0966 20.5518 26.2174 20.8261 25.3945V21.841H16.244C15.316 23.6924 14.7857 25.7877 14.7857 28.0002C14.7857 30.2128 15.316 32.3081 16.244 34.1595L20.8261 30.606Z" fill="#F9BA00"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M28.5003 19.7407C30.5133 19.7407 32.322 20.4325 33.7422 21.7917L37.6767 17.8588C35.3011 15.6447 32.1971 14.2855 28.5003 14.2855C23.1396 14.2855 18.5011 17.359 16.2443 21.842L20.8264 25.394C21.9053 22.1529 24.9285 19.7407 28.5003 19.7407Z" fill="#E64234"></path>
                                        </svg>
                                    </span>
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="opt2">Google</p>
                                </button>
                                <button type="button" data-attribute-id="signupLogin__start" data-method="kakao" class="kakao-login">
                                    <span class="kakao-account">
                                        <svg viewBox="0 0 57 56" class="kakao-link">
                                            <path d="M0.5 28C0.5 12.536 13.036 0 28.5 0C43.964 0 56.5 12.536 56.5 28C56.5 43.464 43.964 56 28.5 56C13.036 56 0.5 43.464 0.5 28Z" fill="#FEE500"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M28.5 16.2063C21.5606 16.2063 15.9286 20.5812 15.9286 25.9617C15.9286 29.3183 18.1034 32.2474 21.4223 34.0326L20.0269 39.1492C20.0005 39.2509 20.006 39.3583 20.0424 39.4569C20.0788 39.5555 20.1446 39.6406 20.2307 39.7008C20.3169 39.761 20.4195 39.7934 20.5246 39.7937C20.6297 39.7939 20.7324 39.7621 20.8189 39.7023L26.9286 35.6417C27.444 35.6417 27.972 35.7297 28.5 35.7297C35.4394 35.7297 41.0714 31.3549 41.0714 25.9617C41.0714 20.5686 35.4394 16.2063 28.5 16.2063Z" fill="#181600"></path>
                                        </svg>
                                    </span>
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="opt3">Kakao</p>
                                </button>
                            </div>
                            <button class="forgot">
                                <p data-testid="Typography" color="var(--theme-palette-colors-gray-700)" class="forgot-account">계정을 잊으셨나요?<span class="find">
                                    <svg viewBox="0 0 12 12" color="var(--theme-palette-colors-gray-600)" class="find-account">
                                        <path d="M3.34467 9.71967C3.05178 10.0126 3.05178 10.4874 3.34467 10.7803C3.63756 11.0732 4.11244 11.0732 4.40533 10.7803L8.65533 6.53033C8.94822 6.23744 8.94822 5.76256 8.65533 5.46967L4.40533 1.21967C4.11244 0.926777 3.63756 0.926777 3.34467 1.21967C3.05178 1.51256 3.05178 1.98744 3.34467 2.28033L7.06434 6L3.34467 9.71967Z" fill="var(--theme-palette-colors-gray-600)"></path>
                                    </svg>
                                </span></p>
                            </button>
                            <hr class="district">
                            <div class="terms">
                                <a data-testid="Typography" color="var(--theme-palette-colors-gray-700)" href="https://id.wanted.jobs/terms/ko" target="_blank" class="conditions">이용약관</a>
                                <a data-testid="Typography" color="var(--theme-palette-colors-gray-700)" href="https://id.wanted.jobs/privacy/ko?user=true" target="_blank" class="privacy">개인정보처리방침</a>
                            </div>
                            <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="label">© Wantedlab, Inc.</p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src = "email-validation.js"></script>
</html>