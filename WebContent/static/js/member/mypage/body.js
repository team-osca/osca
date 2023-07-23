$(document).ready(function(){
    $.ajax({
    	url : "http://localhost:8090/mypageOk.general",
        success : function(data){
            $('.container>section').html(data);
        }
    })
});



const salaryModal = (`
    <div class="modal_area">
        <div class="modal">
            <div class="modal_header">
                현재 연봉
                <button type="button" class="iconButton_root iconButton_nomal" style="font-size: 18px;">
                    <span class="iconButton_label">
                        <span class="svgIcon">
                            <svg class="svgIcon_svg" viewBox="0 0 24 24"><path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z" fill="#999"></path></svg>
                        </span>
                    </span>
                    <span class="iconButton_interaction"></span>
                </button>
            </div>
            <div class="modal_body">
                <div class="selector_wrapper">
                    <div class="selector_selectWrapper">
                        <div class="salarySelector_select">
                            <select>
                                <option value="year">연간</option>
                                <option value="month">월간</option>
                            </select>
                        </div>
                        <div class="salarySelector_select">
                            <select>
                                <option value="KRW">원 (한국)</option>
                                <option value="JPY">¥ (일본)</option>
                                <option value="SGD">$ (싱가폴)</option>
                                <option value="TWD">NT$ (대만)</option>
                            </select>
                        </div>
                        <div class="salarySelector_input">
                            <input type="text" placeholder="입력해주세요" value="3,500">
                            <span class="salarySelector_text">만원</span>
                        </div>
                        <button class="salarySelector_submitBtn" type="button">완료</button>
                    </div>
                </div>
            </div>
        </div>
        <div role="presentation" class="modal_overlay"></div>
    </div> 
`)
const skillModal = (`
    <div class="modal_area">
        <div class="modal">
            <div class="modal_header">
                스킬 선택
                <button type="button" class="iconButton_root iconButton_nomal" style="font-size: 18px;">
                    <span class="iconButton_label">
                        <span class="svgIcon">
                            <svg class="svgIcon_svg" viewBox="0 0 24 24"><path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z" fill="#999"></path></svg>
                        </span>
                    </span>
                    <span class="iconButton_interaction"></span>
                </button>
            </div>
            <div class="modal_body" style="min-height: 340px; height: calc(100% - 54px);">
                <div class="skillInputModal">
                    <div class="selector_selectWrapper">
                        <div class="style_wrapper">
                            <label for="skills" class="style_label">스킬</label>
                            <div class="style_body">
                                <div class="inputSearch_wrapper">
                                    <div class="inputSearch_box">
                                        <input type="text" class="inputSearch" placeholder="보유 스킬을 검색해주세요." autocomplete="off">
                                        <svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="18" height="18" viewBox="0 0 18 18"><defs><path id="qt2dnsql4a" d="M15.727 17.273a.563.563 0 10.796-.796l-4.875-4.875-.19-.165a.563.563 0 00-.764.028 5.063 5.063 0 111.261-2.068.562.562 0 101.073.338 6.188 6.188 0 10-1.943 2.894l4.642 4.644z"></path></defs><g fill="none" fill-rule="evenodd"><use fill="#333" fill-rule="nonzero" stroke="#333" stroke-width=".3" xlink:href="#qt2dnsql4a"></use></g></svg>
                                    </div>
                                </div>
                            </div>
                            <div class="style_guidance"></div>
                        </div>
                        <ul class="tags_wrapper skill_tag">
                            <li class="tags">
                                <span class="tags_title">파이썬</span>
                                <button type="button" class="tags_button">
                                    <span class="svgIcon"><svg class="svgIcon_svg" viewBox="0 0 24 24">
                                        <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path></svg>
                                    </span>
                                </button>
                            </li>
                            <li class="tags">
                                <span class="tags_title">JAVA</span>
                                <button type="button" class="tags_button">
                                    <span class="svgIcon"><svg class="svgIcon_svg" viewBox="0 0 24 24">
                                        <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path></svg>
                                    </span>
                                </button>
                            </li>
                            <li class="tags">
                                <span class="tags_title">AWS</span>
                                <button type="button" class="tags_button">
                                    <span class="svgIcon"><svg class="svgIcon_svg" viewBox="0 0 24 24">
                                        <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path></svg>
                                    </span>
                                </button>
                            </li>
                            <li class="tags">
                                <span class="tags_title">AWS</span>
                                <button type="button" class="tags_button">
                                    <span class="svgIcon"><svg class="svgIcon_svg" viewBox="0 0 24 24">
                                        <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path></svg>
                                    </span>
                                </button>
                            </li>
                            <li class="tags">
                                <span class="tags_title">AWS</span>
                                <button type="button" class="tags_button">
                                    <span class="svgIcon"><svg class="svgIcon_svg" viewBox="0 0 24 24">
                                        <path d="M5.93289 4.6068C5.56201 4.33162 5.03569 4.36219 4.69935 4.69853C4.32938 5.0685 4.32938 5.66834 4.69935 6.03831L10.6611 12L4.69935 17.9617L4.60763 18.0679C4.33244 18.4388 4.36302 18.9651 4.69935 19.3015L4.80561 19.3932C5.17649 19.6684 5.7028 19.6378 6.03914 19.3015L12.0009 13.3402L17.9626 19.3015L18.0688 19.3932C18.4397 19.6684 18.966 19.6378 19.3023 19.3015C19.6723 18.9315 19.6723 18.3317 19.3023 17.9617L13.3406 12L19.3023 6.03831L19.3941 5.93206C19.6693 5.56118 19.6387 5.03487 19.3023 4.69853L19.1961 4.6068C18.8252 4.33162 18.2989 4.36219 17.9626 4.69853L12.0009 10.6598L6.03914 4.69853L5.93289 4.6068Z"></path></svg>
                                    </span>
                                </button>
                            </li>
                        </ul>s

                    </div>
                </div>
            </div>
        </div>
        <div role="presentation" class="modal_overlay"></div>
    </div>
`)