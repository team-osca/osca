const studyPostList = (data) =>{
	return (`
                    <section class="studyPostView">
                        <article class="studyPostItem">
                            <div class="postItem_top">
                                <a href="" class="user_profile_link">
                                    <div class="authorBox_container">
                                        <div class="authorBox">
                                            <div class="authorBox_imgWrapper">
                                                <div class="user_img authorBox_imgArea">
                                                    <img src="https://static.wanted.co.kr/oneid-user/S2U45z9SC2m5YgsMJLdfT7/143e7b840c67a650b7cc3882875d298a86252006efba5c03cb93f3423200dd15" alt="">
                                                </div>
                                            </div>
                                            <div class="authorBox_userInfo_area">
                                                <div class="authorBox_userInfo">
                                                    <div class="authorBox_userInfo_username username">
                                                        유희준
                                                    </div>
                                                    <div class="authorBox_userInfo_usercareer">
                                                        <div class="myProfile_badge" data-category="1">${data.jobVO.jobFieldCategory}</div>
                                                        <div class="myProfile_badge">${data.generalVO.generalCareer}</div>
                                                    </div>
                                                </div>
                                                <span class="authorBox_createAt">5시간 전</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <a href="" class="postItem_body postItem_has_img">
                                <h3 class="postItem_title">${data.studyVO.studyTitle}</h3>
                                <p class="postItem_content">${data.studyVO.studyContents}</p>
                                <picture>
                                    <source media="(min-width: 1200px)" srcset="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fcommunity%2F2023%2F7%2F7fed8c21dbbd2cc657484bc601e5c3132123b78bf1e66c9e54d2fe696a491728&amp;w=384&amp;q=90">
                                    <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fcommunity%2F2023%2F7%2F7fed8c21dbbd2cc657484bc601e5c3132123b78bf1e66c9e54d2fe696a491728&amp;w=310&amp;q=90" alt="post-img" class="postItem_img" srcset="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fcommunity%2F2023%2F7%2F7fed8c21dbbd2cc657484bc601e5c3132123b78bf1e66c9e54d2fe696a491728&amp;w=310&amp;q=90 1x, https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fcommunity%2F2023%2F7%2F7fed8c21dbbd2cc657484bc601e5c3132123b78bf1e66c9e54d2fe696a491728&amp;w=620&amp;q=90 2x, https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fcommunity%2F2023%2F7%2F7fed8c21dbbd2cc657484bc601e5c3132123b78bf1e66c9e54d2fe696a491728&amp;w=930&amp;q=90 3x">
                                </picture>
                                <div class="postItem_tag_list">

                                </div>
                                <div>
                                    ${data.studyVO.studyStatus}
                                    <span>1</span>
                                    /
                                    <span>${data.studyVO.studyTotal}</span> 
                                </div>
                            </a>
                        </article>
                    </section>
	
	`)
}