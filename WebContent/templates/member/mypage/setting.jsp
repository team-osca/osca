<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/setting.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/settingDynamic.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <style>
                /* validate */
        input.error, text.error{
            border:1px solid #ff4343;
        }
        label.error{
            color: #ff4343;
            font-weight: 400;
            font-size: 0.9em;
        }
    </style>
    <title>setting</title>
</head>
<body style="overflow: unset;">
    <div id="setting_page">
        <div class="container">
            <div class="menubar_box">
                <div class="menubar">
                    <a tabindex="0">
                        <span class="svg_wrapper">
                            <svg viewBox="0 0 343 43" class="menubar_svg">
                                <path d="M9.36401 41H17.4851L23.6023 21.8047L29.7722 41H37.8933L46.9636 12.5234H38.8425L33.5691 30.8223L27.3992 12.5234H19.8054L13.6355 30.8223L8.36206 12.5234H0.240967L9.36401 41ZM46.9109 26.709C46.9109 34.1182 51.6042 41.6855 60.78 41.6855C63.9177 41.7119 66.6072 40.8154 68.7957 39.2598V41H76.2312V12.5234H68.7957V14.2637C66.6072 12.708 63.9177 11.8115 60.78 11.8379C51.6042 11.8379 46.9109 19.2998 46.9109 26.709ZM54.1355 26.709C54.1091 21.6201 57.5896 18.7197 61.6238 18.6934C65.6052 18.7197 68.7429 21.541 68.7429 26.6562C68.7429 31.7979 65.6052 34.8037 61.6238 34.7773C57.4578 34.8037 54.1091 31.7979 54.1355 26.709ZM80.7664 41H88.4656V24.5996C88.4656 21.3037 90.3904 18.7197 93.7917 18.6934C97.4568 18.7197 99.0125 21.1982 99.0125 24.3887V41H106.712V23.0176C106.712 16.7949 103.495 11.7588 96.4285 11.7324C93.4226 11.7588 90.074 13.0508 88.3074 15.8457V12.5234H80.7664V41ZM108.927 19.3262H114.094V32.5625C114.094 38.0996 117.549 41.6855 123.112 41.6855C125.353 41.6855 126.751 41.29 127.436 41V34.3027C127.041 34.4609 125.986 34.5664 125.063 34.5664C122.875 34.5664 121.741 33.749 121.741 31.2441V19.3262H127.436V12.5234H121.741V2.97852L114.2 6.14258V12.5234H108.927V19.3262ZM129.968 26.7617C129.968 34.9619 135.215 41.7119 143.837 41.6855C150.112 41.7119 154.647 38.0996 156.651 32.8789L149.796 31.4551C148.662 33.9072 146.579 35.5156 143.837 35.5156C140.172 35.5156 137.693 32.6416 137.087 28.7656H157.6C157.679 28.1064 157.706 27.4473 157.706 26.7617C157.706 18.0605 151.984 11.8379 143.837 11.8379C135.373 11.8379 129.968 18.5352 129.968 26.7617ZM137.456 23.4395C138.405 20.6445 140.673 18.6934 143.837 18.6934C147.001 18.6934 149.295 20.6445 150.27 23.4395H137.456ZM160.237 26.709C160.237 34.9883 165.484 41.7119 174.106 41.6855C177.244 41.7119 179.933 40.7891 182.122 39.2598V41L189.505 41.0527V0.0253906L181.964 2.97852V14.1582C179.643 12.6025 176.901 11.8379 174.106 11.8379C165.616 11.8379 160.237 18.4033 160.237 26.709ZM167.409 26.709C167.409 21.5938 170.889 18.7197 174.897 18.6934C178.931 18.7197 182.043 21.541 182.069 26.6035C182.043 31.7979 178.931 34.8037 174.897 34.7773C170.784 34.8037 167.409 31.7979 167.409 26.709Z" fill="var(--theme-palette-colors-gray-900)"></path><path d="M217.931 42.0547C226.711 42.0547 233.118 35.6211 233.118 26.7617C233.118 17.9023 226.711 11.4688 217.931 11.4688C209.15 11.4688 202.743 17.9023 202.743 26.7617C202.743 35.6211 209.15 42.0547 217.931 42.0547ZM210.337 26.7617C210.337 21.8838 213.527 18.3242 217.931 18.3242C222.334 18.3242 225.524 21.8838 225.524 26.7617C225.524 31.6396 222.334 35.1992 217.931 35.1992C213.527 35.1992 210.337 31.6396 210.337 26.7617Z" fill="var(--theme-palette-colors-gray-900)"></path><path d="M243.429 41V24.125C243.481 21.0928 245.802 18.5352 248.966 18.5352C252.42 18.5352 254.187 20.8291 254.187 24.7578V41H261.78V22.6484C261.78 15.6875 257.825 11.4688 251.655 11.4688C248.201 11.4688 245.327 13.1035 243.429 15.793V12.5234H235.835V41H243.429Z" fill="var(--theme-palette-colors-gray-900)"></path><path d="M264.497 26.7617C264.497 35.6211 270.746 42.0547 279.315 42.0547C285.433 42.0547 290.442 38.8643 292.868 33.248L285.538 31.4551C284.325 33.8018 282.137 35.1992 279.315 35.1992C275.545 35.1992 272.908 32.7207 272.249 28.7656H294.028C294.081 28.1064 294.134 27.4473 294.134 26.7617C294.107 17.9023 287.885 11.4688 279.315 11.4688C270.746 11.4688 264.497 17.9023 264.497 26.7617ZM272.592 23.4922C273.066 20.5654 275.519 18.3242 279.315 18.3242C283.06 18.3242 285.485 20.5654 286.013 23.4922H272.592Z" fill="var(--theme-palette-colors-gray-900)"></path><path d="M297.273 2.82031V41H304.866V2.82031H297.273Z" fill="var(--theme-palette-colors-gray-900)"></path><path d="M309.693 41H322.243C334.794 41 342.256 33.5117 342.282 21.9102C342.256 10.335 334.821 2.82031 322.296 2.82031H309.693V41ZM317.286 34.0391V9.78125H322.296C330.206 9.78125 334.662 14.5537 334.689 21.9102C334.662 29.293 330.18 34.0391 322.243 34.0391H317.286Z" fill="var(--theme-palette-colors-gray-900)">
                                </path>
                            </svg>
                        </span>
                    </a>
                    <div class="logout_box">
                        <div class="more_action">
                            <button type="button" class="_button">
                                <span color="var(--theme-palette-colors-black-100)" class="button_text"></span>
                                <span class="svg_wrapper">
                                    <svg viewBox="0 0 24 24" class="more_svg">
                                    <path d="m5 3.25c-0.9665 0-1.75 0.7835-1.75 1.75s0.7835 1.75 1.75 1.75 1.75-0.7835 1.75-1.75-0.7835-1.75-1.75-1.75zm7 0c-0.9665 0-1.75 0.7835-1.75 1.75s0.7835 1.75 1.75 1.75 1.75-0.7835 1.75-1.75-0.7835-1.75-1.75-1.75zm7 0c-0.9665 0-1.75 0.7835-1.75 1.75s0.7835 1.75 1.75 1.75 1.75-0.7835 1.75-1.75-0.7835-1.75-1.75-1.75zm-14 7c-0.9665 0-1.75 0.7835-1.75 1.75s0.7835 1.75 1.75 1.75 1.75-0.7835 1.75-1.75-0.7835-1.75-1.75-1.75zm7 0c-0.9665 0-1.75 0.7835-1.75 1.75s0.7835 1.75 1.75 1.75 1.75-0.7835 1.75-1.75-0.7835-1.75-1.75-1.75zm7 0c-0.9665 0-1.75 0.7835-1.75 1.75s0.7835 1.75 1.75 1.75 1.75-0.7835 1.75-1.75-0.7835-1.75-1.75-1.75zm-14 7c-0.9665 0-1.75 0.7835-1.75 1.75s0.7835 1.75 1.75 1.75 1.75-0.7835 1.75-1.75-0.7835-1.75-1.75-1.75zm7 0c-0.9665 0-1.75 0.7835-1.75 1.75s0.7835 1.75 1.75 1.75 1.75-0.7835 1.75-1.75-0.7835-1.75-1.75-1.75zm7 0c-0.9665 0-1.75 0.7835-1.75 1.75s0.7835 1.75 1.75 1.75 1.75-0.7835 1.75-1.75-0.7835-1.75-1.75-1.75z" clip-rule="evenodd" fill="var(--theme-palette-colors-black-100)" fill-rule="evenodd">
                                    </path>
                                    </svg>
                                </span>
                            </button>
                        </div>
                        <hr class="seperator">
                        <button type="button" class="_button">
                            <span color="var(--theme-palette-colors-black-100)" class="button_text">로그아웃</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="main_contents">
                <section class="profile_image_container">
                    <div class="profile_image_box">
                        <img width="80" height="80" src="https://static.wanted.co.kr/oneid-user/profile_default.png">
                        <label class="profile_image_area">
                            <input accept=".jpg, .png" type="file" id="input-file" style="display: none;">
                            <span class="profile_image_svg_container">
                                <svg viewBox="0 0 15 15" class="profile_image_svg">
                                    <path d="m11.697 0.14712c-0.2936-0.2179-0.7103-0.19376-0.9766 0.072463l-10.501 10.498-0.076884 0.09c-0.092277 0.1273-0.14287 0.2812-0.14287 0.4404v3.0023l0.0068466 0.1018c0.049662 0.366 0.36346 0.6482 0.74315 0.6482h2.5034l0.10177-0.0068c0.36607-0.0497 0.64823-0.3635 0.64823-0.7432l-0.00685-0.1018c-0.04966-0.366-0.36346-0.6482-0.74315-0.6482h-1.7544v-1.941l6.5007-6.4987 1.9389 1.9389-4.7206 4.7203-0.07262 0.0841c-0.21789 0.2936-0.19372 0.7103 0.07252 0.9766 0.29286 0.2929 0.76774 0.2929 1.0607 1e-4l8.5017-8.5 0.0726-0.0841c0.2179-0.29358 0.1937-0.71023-0.0725-0.97652l-2.999-3-0.0841-0.072632zm-0.698 5.7915 2.1897-2.1896-1.939-1.938-2.1895 2.1888 1.9388 1.9388z" clip-rule="evenodd" fill="currentColor" fill-rule="evenodd">
                                    </path>
                                </svg>
                            </span>
                        </label>
                    </div>
                    <p color="var(--theme-palette-colors-black-100)" class="user_name">유희준님, 환영해요.</p>
                </section>
                <section class="setting_area">
                    <p color="var(--theme-palette-colors-black-100)" class="setting_area_title">계정 관리</p>
                    <p color="var(--theme-palette-colors-gray-700)" class="setting_area_content">서비스에서 사용하는 내 계정 정보를 관리할 수 있습니다.</p>
                    <ul class="setting_container">
                        <li id="EMAIL_CHANGE" tabindex="0" class="fixed_area">
                            <p color="var(--theme-palette-colors-black-100)" class="update_title">이메일</p>
                            <p color="var(--theme-palette-colors-gray-900)" class="fixed_update_content">yhj3855@naver.com</p>
                        </li>
                        <li id="NAME_CHANGE" tabindex="0" class="update_area">
                            <p color="var(--theme-palette-colors-black-100)" class="update_title">이름</p>
                            <p color="var(--theme-palette-colors-gray-600)" class="update_content">유희준</p>
                            <span class="svg_wrapper">
                                <svg viewBox="0 0 8 14" color="var(--theme-palette-colors-gray-600)" class="do_modal_svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M0.969605 13.0303C1.2625 13.3232 1.73737 13.3232 2.03027 13.0303L7.53027 7.53033C7.82316 7.23744 7.82316 6.76257 7.53027 6.46967L2.03033 0.969673C1.73744 0.676778 1.26257 0.676775 0.969673 0.969667C0.676778 1.26256 0.676776 1.73743 0.969667 2.03033L5.93928 7L0.969605 11.9697C0.676712 12.2626 0.676712 12.7374 0.969605 13.0303Z" fill="var(--theme-palette-colors-gray-600)">
                                    </path>
                                </svg>
                            </span>
                        </li>
                        <li id="PHONE_CHANGE" tabindex="0" class="update_area">
                            <p color="var(--theme-palette-colors-black-100)" class="update_title">휴대폰 번호</p>
                            <p color="var(--theme-palette-colors-gray-600)" class="update_content">+82 010-8200-3855</p>
                            <span class="svg_wrapper">
                                <svg viewBox="0 0 8 14" color="var(--theme-palette-colors-gray-600)" class="do_modal_svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M0.969605 13.0303C1.2625 13.3232 1.73737 13.3232 2.03027 13.0303L7.53027 7.53033C7.82316 7.23744 7.82316 6.76257 7.53027 6.46967L2.03033 0.969673C1.73744 0.676778 1.26257 0.676775 0.969673 0.969667C0.676778 1.26256 0.676776 1.73743 0.969667 2.03033L5.93928 7L0.969605 11.9697C0.676712 12.2626 0.676712 12.7374 0.969605 13.0303Z" fill="var(--theme-palette-colors-gray-600)">
                                    </path>
                                </svg>
                            </span>
                        </li>
                    </ul>
                </section>
                <section class="setting_area">
                    <p color="var(--theme-palette-colors-black-100)" class="setting_area_title">개인 정보 보호</p>
                    <p color="var(--theme-palette-colors-gray-700)" class="setting_area_content">서비스에서 사용하는 내 계정 정보를 관리할 수 있습니다.</p>
                    <ul class="setting_container">
                        <li id="PASSWORD_CHANGE" tabindex="0" class="update_area">
                            <p color="var(--theme-palette-colors-black-100)" class="update_title">비밀번호 변경</p>
                            <p color="var(--theme-palette-colors-gray-600)" class="update_content"></p>
                            <span class="svg_wrapper">
                                <svg viewBox="0 0 8 14" color="var(--theme-palette-colors-gray-600)" class="do_modal_svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M0.969605 13.0303C1.2625 13.3232 1.73737 13.3232 2.03027 13.0303L7.53027 7.53033C7.82316 7.23744 7.82316 6.76257 7.53027 6.46967L2.03033 0.969673C1.73744 0.676778 1.26257 0.676775 0.969673 0.969667C0.676778 1.26256 0.676776 1.73743 0.969667 2.03033L5.93928 7L0.969605 11.9697C0.676712 12.2626 0.676712 12.7374 0.969605 13.0303Z" fill="var(--theme-palette-colors-gray-600)">
                                    </path>
                                </svg>
                            </span>
                        </li>
                        <li id="MEMBER_EXIT" tabindex="0" class="update_area">
                            <p color="var(--theme-palette-colors-black-100)" class="update_title">회원 탈퇴</p>
                            <p color="var(--theme-palette-colors-gray-600)" class="update_content"></p>
                            <span class="svg_wrapper">
                                <svg viewBox="0 0 8 14" color="var(--theme-palette-colors-gray-600)" class="do_modal_svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M0.969605 13.0303C1.2625 13.3232 1.73737 13.3232 2.03027 13.0303L7.53027 7.53033C7.82316 7.23744 7.82316 6.76257 7.53027 6.46967L2.03033 0.969673C1.73744 0.676778 1.26257 0.676775 0.969673 0.969667C0.676778 1.26256 0.676776 1.73743 0.969667 2.03033L5.93928 7L0.969605 11.9697C0.676712 12.2626 0.676712 12.7374 0.969605 13.0303Z" fill="var(--theme-palette-colors-gray-600)">
                                    </path>
                                </svg>
                            </span>
                        </li>
                    </ul>
                </section>
            </div>
            <div class="more_info">
                <div class="more_info_wrapper">
                    <a color="var(--theme-palette-colors-black-100)" href="https://id.wanted.jobs/terms/ko" target="_blank" class="terms_of_Use">이용약관</a>
                    <a color="var(--theme-palette-colors-black-100)" href="https://id.wanted.jobs/privacy/ko?user=true" target="_blank" class="privacy_policy">개인정보처리방침</a>
                </div>
                <p color="var(--theme-palette-colors-gray-600)" class="copyright">© Wantedlab, Inc.</p>
            </div>
        </div>
    </div>

        <!-- 모달! -->

</body>
<script src="${pageContext.request.contextPath}/static/js/member/mypage/setting.js"></script>
</html>