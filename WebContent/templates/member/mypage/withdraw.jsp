<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css">
    <title>withdrawPage</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/withdraw.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/withdrawDynamic.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

</head>
<body>
    <div id="withdraw_page">
        <div class="container">
            <div class="menubar_box">
                <div class="menubar">
                    <a tabindex="0">
                        <span class="svg_wrapper">
                            <img src="${pageContext.request.contextPath}/static/allimages/all-image/logo.jpg" height="18px" width="90px" alt="Oh!스카 로고">
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

            <div class="main_wrapper">
                <div class="main_container">
                    <div class="main_box">
                        <div class="main_">
                            <div class="content_area">
                                <h1 color="var(--theme-palette-colors-black-100)" class="content_title">회원 탈퇴 시 주의사항</h1>
                                <div>
                                    <p color="var(--theme-palette-colors-black-100)" class="content_area_title">탈퇴하기 전에</p>
                                    <p color="var(--theme-palette-colors-black-100)" class="content_area_content">· 탈퇴 시 OneID를 통해 등록한 서비스의 모든 정보가 영구적으로 삭제되며, 다시는 복구할 수 없습니다.</p>
                                </div>
                                <div>
                                    <p color="var(--theme-palette-colors-black-100)" class="content_area_title">미리 백업하기</p>
                                    <p color="var(--theme-palette-colors-black-100)" class="content_area_content">· OneID로 등록한 서비스에서 정보 백업을 원하실 경우, 탈퇴 이전에 해당 서비스에서 백업을 진행해 주세요.</p>
                                </div>
                                <div>
                                    <p color="var(--theme-palette-colors-black-100)" class="content_area_title">미리 관리하기</p>
                                    <p color="var(--theme-palette-colors-black-100)" class="content_area_content">· 서비스 이용 중 본인의 OneID 계정에 귀속되지 않은 정보는 자동으로 삭제되지 않으며, 탈퇴 시 수정이나 삭제가 불가능합니다. OneID 계정에 귀속되지 않은 정보를 수정하거나 삭제하려는 경우, 회원 탈퇴 이전에 해당 서비스에서 수정 또는 삭제를 진행해 주세요.</p>
                                </div>
                                <hr class="content_area_seperator">
                                <div>
                                    <p color="var(--theme-palette-colors-black-100)" class="withdraw_account_title">탈퇴하려는 계정</p>
                                    <div class="withdraw_account_info">
                                        <div class="withdraw_account_profile">
                                            <img width="32" height="32" src="https://static.wanted.co.kr/oneid-user/profile_default.png">
                                        </div>
                                        <p color="var(--theme-palette-colors-black-100)" class="withdraw_account_email">${member.memberEmail}</p>
                                    </div>
                                </div>
                                <div>
                                    <p color="var(--theme-palette-colors-black-100)" class="withdraw_account_title">삭제되는 정보</p>
                                    <div class="withdraw_account_area">
                                        <div target="_blank" rel="noopener noreferrer" tabindex="0" class="withdraw_account_info_svg_box">
                                            <div class="withdraw_account_info_svg">
                            					<img src="${pageContext.request.contextPath}/static/allimages/all-image/logo.jpg" height="16px" width="120px" alt="Oh!스카 로고">
                                            </div>
                                            <p color="var(--theme-palette-colors-gray-900)" class="withdraw_account_info_svg_space"></p>
                                        </div>
                                        <p color="var(--theme-palette-colors-black-100)" class="withdraw_account_info_title">Oh! 스카</p>
                                        <div>
                                            <p color="var(--theme-palette-colors-black-100)" class="withdraw_account_info_content">· 활동 데이터</p>
                                            <p color="var(--theme-palette-colors-black-100)" class="withdraw_account_info_content">· 미지급된 채용 보상금 및 포인트 데이터</p>
                                        </div>
                                    </div>
                                    <hr class="withdraw_account_seperator">
                                </div>
                                <div>
                                    <div class="withdraw_check_area">
                                        <!-- checkbox 삽입 withdraw.js -->
                                        <input type="checkbox" name="no_refund_agree" class="withdraw_checkbox">
                                        <div class="withdraw_checkbox_content_area">
                                            <p color="var(--theme-palette-colors-gray-600)" class="withdraw_checkbox_content">회원 탈퇴 이후 미결된 금액을 받을 수 없음을 이해했으며 동의합니다.</p>
                                        </div>
                                    </div>
                                    <div class="withdraw_check_area">
                                        <!-- checkbox 삽입 withdraw.js -->
                                        <input type="checkbox" name="no_refund_agree" class="withdraw_checkbox">
                                        <div class="withdraw_checkbox_content_area">
                                            <p color="var(--theme-palette-colors-gray-600)" class="withdraw_checkbox_content">회원 탈퇴를 진행하여 해당 OneID 계정에 귀속된 모든 정보를 삭제하는 데 동의합니다.</p>
                                        </div>
                                    </div>
                            </div>
                            <button type="button" class="withdrawBtn" disabled=""><span color="var(--theme-palette-colors-black-100)" class="button_text">회원 탈퇴</span></button>
                            <button type="button" class="withdrawCanselBtn"><span color="var(--theme-palette-colors-black-100)" class="button_text">회원 탈퇴 취소</span></button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</body>
<script src="${pageContext.request.contextPath}/static/js/member/mypage/withdraw.js"></script>
</html>