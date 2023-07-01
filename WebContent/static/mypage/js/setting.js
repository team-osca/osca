$body = $('body');
$settingContainer = $('.setting_container >li:not(:last)');

$inputFile = $('#input-file');
$settingPage = $('#setting_page');
$updateContent = $('.update_content');

$settingContainer.on('click', showModal);

$inputFile.on('change', function(){
    
})

function showModal() {
    modalData[this.id]();
    $body.css('overflow', 'hidden');

    $('.submit_button').attr('disabled', true);
    $('.cansel_button, .exit_svg_box').on('click', hideModal);
}
function hideModal(){
    $('.modal_area').remove();
    $body.css('overflow', 'unset');
}

function drawModal(modalConent) {
    $settingPage.append(modalConent);
}

const NAME_CHANGE = function(){
    drawModal(NAME_MODAL);
}
const PHONE_CHANGE = function(){
    drawModal(PHONE_MODAL);
}
const PASSWORD_CHANGE = function(){
    drawModal(PASSWORD_MODAL);
}
const modalData = {NAME_CHANGE , PHONE_CHANGE, PASSWORD_CHANGE};


const NAME_MODAL = (
    `
    <div class="modal_area">
        <div class="modal">
            <div class="modal_title_area">
                <div class="modal_white_space"></div>
                <div class="modal_title_box">
                    <p  color="var(--theme-palette-colors-black-100)" class="modal_title">
                        <span  color="var(--theme-palette-colors-black-100)" class="modal_title_text">이름</span>
                    </p>
                </div>
                <div class="exit_svg_area">
                    <button type="button" class="exit_svg_box">
                        <span class="svg_wrapper">
                            <svg viewBox="0 0 24 24" class="exit_svg">
                                <path d="M17.97 19.03a.749.749 0 1 0 1.06-1.06l-6.5-6.5a.749.749 0 0 0-1.06 0l-6.5 6.5a.749.749 0 1 0 1.06 1.06L12 13.06l5.97 5.97zM12 10.94 6.03 4.97a.749.749 0 1 0-1.06 1.06l6.5 6.5a.749.749 0 0 0 1.06 0l6.5-6.5a.749.749 0 1 0-1.06-1.06L12 10.94z"></path>
                            </svg>
                        </span>
                    </button>
                </div>
            </div>
            <div class="modal_content_area">
                <form>
                    <div class="modal_input_area">
                        <input type="text" placeholder="이름을 입력해주세요." name="username" class="modal_input" value="유희준">
                    </div>
                    <div class="modal_button_area">
                        <button type="button"  class="cansel_button">
                            <span color="var(--theme-palette-colors-black-100)" class="button_text">취소</span>
                        </button>
                        <button type="submit"  class="submit_button">
                            <span color="var(--theme-palette-colors-black-100)" class="button_text">저장</span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    `
);
const PHONE_MODAL = (
    `
    <div class="modal_area">
        <div class="modal">
            <div class="modal_title_area">
                <div class="modal_white_space"></div>
                <div class="modal_title_box">
                    <p color="var(--theme-palette-colors-black-100)" class="modal_title">
                        <span color="var(--theme-palette-colors-black-100)" class="modal_title_text">휴대폰 번호</span>
                    </p>
                </div>
                <div class="exit_svg_area">
                    <button type="button" class="exit_svg_box">
                        <span class="svg_wrapper">
                            <svg viewBox="0 0 24 24" class="exit_svg">
                                <path d="M17.97 19.03a.749.749 0 1 0 1.06-1.06l-6.5-6.5a.749.749 0 0 0-1.06 0l-6.5 6.5a.749.749 0 1 0 1.06 1.06L12 13.06l5.97 5.97zM12 10.94 6.03 4.97a.749.749 0 1 0-1.06 1.06l6.5 6.5a.749.749 0 0 0 1.06 0l6.5-6.5a.749.749 0 1 0-1.06-1.06L12 10.94z"></path>
                            </svg>
                        </span>
                    </button>
                </div>
            </div>
            <div class="modal_content_area">
                <form>
                    <div class="modal_input_area">
                        <div>
                            <div class="auth_area">
                                <input type="text" placeholder="(예시) 01013245768" name="mobile" class="input_mobile" value="" readonly>
                                <button type="button" class="auth_button">
                                    <span color="var(--theme-palette-colors-black-100)" class="button_text">번호 변경</span>
                                </button>
                            </div>
                            <div class="auth_area">
                                <input type="text" placeholder="인증번호를 입력해주세요." name="authCode" readonly="" class="input_authCode" value="">
                            </div>
                            <p color="var(--theme-palette-colors-green-400)" class="auth_info">인증되었습니다.</p>
                            <!-- <p color="var(--theme-palette-colors-blue-400)" class="auth_request_info">인증번호가 요청되었습니다.</p> -->
                            <!-- <p color="var(--theme-palette-colors-blue-400)" class="auth_time">유효시간 02:52</p> -->
                        </div>
                    </div>
                    <div class="modal_button_area">
                        <button type="button" class="cansel_button">
                            <span color="var(--theme-palette-colors-black-100)" class="button_text">취소</span>
                        </button>
                        <button type="submit" class="submit_button">
                            <span color="var(--theme-palette-colors-black-100)" class="button_text">저장</span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    `
);
const PASSWORD_MODAL = (
    `
    <div class="modal_area">
        <div class="modal">
            <div class="modal_title_area">
                <div class="modal_white_space"></div>
                <div class="modal_title_box">
                    <p color="var(--theme-palette-colors-black-100)" class="modal_title">
                        <span color="var(--theme-palette-colors-black-100)" class="modal_title_text">비밀번호 변경</span>
                    </p>
                </div>
                <div class="exit_svg_area">
                    <button type="button" class="exit_svg_box">
                        <span class="svg_wrapper">
                            <svg viewBox="0 0 24 24" class="exit_svg">
                                <path d="M17.97 19.03a.749.749 0 1 0 1.06-1.06l-6.5-6.5a.749.749 0 0 0-1.06 0l-6.5 6.5a.749.749 0 1 0 1.06 1.06L12 13.06l5.97 5.97zM12 10.94 6.03 4.97a.749.749 0 1 0-1.06 1.06l6.5 6.5a.749.749 0 0 0 1.06 0l6.5-6.5a.749.749 0 1 0-1.06-1.06L12 10.94z"></path>
                            </svg>
                        </span>
                    </button>
                </div>
            </div>
            <div class="modal_content_area">
                <form>
                    <div class="modal_input_area">
                        <div class="password_area"><label color="var(--theme-palette-colors-gray-600)" for="email" class="input_password_label">현재 비밀번호</label></div>
                        <input type="password" placeholder="비밀번호를 입력해주세요." name="oldPassword" class="input_password" value="">
                        <div class="password_area"><label color="var(--theme-palette-colors-gray-600)" for="email" class="input_password_label">새 비밀번호</label></div>
                        <input type="password" placeholder="새 비밀번호를 입력해주세요." name="password"  class="input_password" value="" aria-autocomplete="list">
                        <input type="password" placeholder="새 비밀번호를 다시 한번 입력해주세요." name="passwordConfirm" class="input_password" value="">
                        <p color="var(--theme-palette-colors-gray-600)" class="input_info">영문 대소문자, 숫자, 특수문자를 3가지 이상으로 조합해 8자 이상 16자 이하로 입력해주세요.</p>
                    </div>
                    <div class="modal_button_area">
                        <button type="button" class="cansel_button">
                            <span color="var(--theme-palette-colors-black-100)" class="button_text">취소</span>
                        </button>
                        <button type="submit" class="submit_button">
                            <span color="var(--theme-palette-colors-black-100)" class="button_text">저장</span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    `
);