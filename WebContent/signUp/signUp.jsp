<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="singup.css">
</head>
<body style="overflow: unset;">
    <div id="signup">
        <div class="page">
            <div class="area">
                <div class="areabox">
                    <div class="title">
                        <div class="cancel">
                            <button tyoe="button" class="cancelbtn">
                                <p data-testid="Typography" color="var(--theme-palette-colors-black-100)" class="cancellation">취소</p>
                            </button>
                        </div>
                        <div class="signuptitle">
                            <p data-testid="Typography" color="var(--theme-palette-colors-black-100)" class="signuppage">회원가입</p>
                        </div>
                        <div class="blank"></div>
                    </div>
                    <div class="formbox">
                        <form>
                            <div>
                                <div class="box">
                                    <label data-testid="Typography" color="var(--theme-palette-colors-gray-600)" for="email" class="label">이메일</label>
                                </div>
                                <input type="email" placeholder="이메일을 입력해주세요." name="email" data-testid="Input_email" class="form-input" value disabled>
                            </div>
                            <div class="box">
                                <label data-testid="Typography" color="var(--theme-palette-colors-gray-600)" for="username" class="label">이름</label>
                            </div>
                            <input type="text" placeholder="이름을 입력해주세요." name="username" data-testid="Input_username" class="form-input" value>
                            <div class="phonenumber">
                                <label data-testid="Typography" color="var(--theme-palette-colors-gray-600)" for="mobile" class="label">휴대폰 번호</label>
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
                                    <input type="text" placeholder="(예시)01013245768" name="mobile" data-testid="Input_moblile" class="putnumber" value>
                                    <button type="button" data-testid="Button" class="verificationbtn" disabled>
                                        <span data-testid="Typography" color="var(--theme-palette-colors-black-100)" class="getverification">인증번호 받기</span>
                                    </button>
                                </div>
                                <div class="verification">
                                    <input type="text" placeholder="인증번호를 입력해주세요." name="authCode" data-testid="Input_authCode" readonly class="authenticationcode" value>
                                </div>
                            </div>
                            <div>
                                <label data-testid="Typography" color="var(--theme-palette-colors-gray-600)" for="password" class="label">비밀번호</label>
                            </div>
                            <input type="password" placeholder="비밀번호를 입력해주세요." name="password" data-testid="Input_password" class="passwordbox" value>
                            <input type="password" placeholder="비밀번호를 다시 한번 입력해주세요." name="passwordConfirm" data-testid="Input_passwordConfirm" class="passwordbox" value>
                            <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="description">영문 대소문자, 숫자, 특수문자를 3가지 이상으로 조합해 8자 이상 16자 이하로 입력해주세요.</p>
                            <div class="agreements">
                                <div class="check"></div>
                                <input type="checkbox" name="is_agree_all" data-testid="TermsOption_checkbox_is_agree_all" class="checkbox">
                                <div class="content">
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-900)" class="agree-all">전체 동의</p>
                                </div>
                            </div>
                            <hr class="district">
                            <div class="term">
                                <div class="check"></div>
                                <input type="checkbox" name="is_above_14" data-testid="TermsOption_checkbox_is_above_14" class="checkbox">
                                <div class="content">
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="context">만 14세 이상입니다. (필수)</p>
                                </div>
                            </div>
                            <div class="term">
                                <div class="check"></div>
                                <input type="checkbox" name="is_above_14" data-testid="TermsOption_checkbox_is_above_14" class="checkbox">
                                <div class="content">
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="context">원티드 이용약관 동의 (필수)</p>
                                </div>
                                <a data-testid="Typography" color="var(--theme-palette-colors-gray-600)" href="https://id.wanted.jobs/terms/ko" target="_blank" class="more">자세히</a>
                            </div>
                            <div class="term">
                                <div class="check"></div>
                                <input type="checkbox" name="is_collect_information" data-testid="TermsOption_checkbox_is_collect_information" class="checkbox">
                                <div class="content">
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="context">원티드 개인정보 수집 및 이용 동의 (필수)</p>
                                </div>
                                <a data-testid="Typography" color="var(--theme-palette-colors-gray-600)" href="https://id.wanted.jobs/privacy/ko" class="more">자세히</a>
                            </div>
                            <div class="term">
                                <div class="check"></div>
                                <input type="checkbox" name="is_accept_event_all" data-testid="TermsOption_checkbox_is_accept_event_all" class="checkbox">
                                <div class="content">
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="context">채용 소식, 커리어 콘텐츠, 이벤트 등 원티드 맞춤 정보 받기</p>
                                </div>
                            </div>
                            <div class="inform">
                                <label class="notice">
                                    <input data-testid="TermsCheck_checkicon_accept_marketing_email" name="accept_marketing_email" type="checkbox">
                                    <span class="receive">
                                        <svg viewBox="0 0 12 8" class="container">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-blue-400)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="mean">이메일</p>
                                </label>
                                <label class="notice">
                                    <input data-testid="TermsCheck_checkicon_accept_marketing_email" name="accept_marketing_email" type="checkbox">
                                    <span class="receive">
                                        <svg viewBox="0 0 12 8" class="container">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-blue-400)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="mean">앱 푸시</p>
                                </label>
                                <label class="notice">
                                    <input data-testid="TermsCheck_checkicon_accept_marketing_email" name="accept_marketing_email" type="checkbox">
                                    <span class="receive">
                                        <svg viewBox="0 0 12 8" class="container">
                                            <path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-blue-400)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                    <p data-testid="Typography" color="var(--theme-palette-colors-gray-600)" class="mean">문자 메시지</p>
                                </label>
                            </div>
                            <div class="complete">
                                <div class="completebox"></div>
                                <div class="upper-padding"></div>
                                <button type="submit" disabled data-testid="Button" class="submission">
                                    <span data-testid="Typography" color="var(--theme-palette-colors-black-100)" class="signupcomplete">가입하기</span>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>