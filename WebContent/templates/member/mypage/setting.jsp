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
                           <img src="${pageContext.request.contextPath}/static/allimages/all-image/logo.jpg" height="18px" width="82px" alt="Oh!스카 로고"> 
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
                    <p color="var(--theme-palette-colors-black-100)" class="user_name">${member.memberName}님, 환영해요.</p>
                </section>
                <section class="setting_area">
                    <p color="var(--theme-palette-colors-black-100)" class="setting_area_title">계정 관리</p>
                    <p color="var(--theme-palette-colors-gray-700)" class="setting_area_content">서비스에서 사용하는 내 계정 정보를 관리할 수 있습니다.</p>
                    <ul class="setting_container">
                        <li id="EMAIL_CHANGE" tabindex="0" class="fixed_area">
                            <p color="var(--theme-palette-colors-black-100)" class="update_title">이메일</p>
                            <p color="var(--theme-palette-colors-gray-900)" class="fixed_update_content">${member.memberEmail}</p>
                        </li>
                        <li id="NAME_CHANGE" tabindex="0" class="update_area">
                            <p color="var(--theme-palette-colors-black-100)" class="update_title">이름</p>
                            <p color="var(--theme-palette-colors-gray-600)" class="update_content">${member.memberName}</p>
                            <span class="svg_wrapper">
                                <svg viewBox="0 0 8 14" color="var(--theme-palette-colors-gray-600)" class="do_modal_svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M0.969605 13.0303C1.2625 13.3232 1.73737 13.3232 2.03027 13.0303L7.53027 7.53033C7.82316 7.23744 7.82316 6.76257 7.53027 6.46967L2.03033 0.969673C1.73744 0.676778 1.26257 0.676775 0.969673 0.969667C0.676778 1.26256 0.676776 1.73743 0.969667 2.03033L5.93928 7L0.969605 11.9697C0.676712 12.2626 0.676712 12.7374 0.969605 13.0303Z" fill="var(--theme-palette-colors-gray-600)">
                                    </path>
                                </svg>
                            </span>
                        </li>
                        <li id="PHONE_CHANGE" tabindex="0" class="update_area">
                            <p color="var(--theme-palette-colors-black-100)" class="update_title">휴대폰 번호</p>
                            <p color="var(--theme-palette-colors-gray-600)" class="update_content">${member.memberPhonenumber}</p>
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
                <p color="var(--theme-palette-colors-gray-600)" class="copyright">© Oh! 스카, Inc.</p>
            </div>
        </div>
    </div>

        <!-- 모달! -->

</body>
<script type="text/javascript">
	let nameeeee = "${member.memberName}";
</script>
<script src="${pageContext.request.contextPath}/static/js/member/mypage/setting.js"></script>
</html>