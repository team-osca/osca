// 인증번호 받기 버튼
const $authenticationNumberBtn = $('#AuthenticationNumberBtn');

// -----------------휴대폰번호 정규식 체크------------------
$('#phonenumner-input').keyup(function() {
	const phoneNumber = $(this).val();
	checkphoneNumber(phoneNumber);
});


const checkphoneNumber = (phoneNumber) => {
	if (/^010[0-9]{8}$/.test(phoneNumber)) {
		$authenticationNumberBtn.prop('disabled', false);
		$('.isnot-a-phonenumber').css('display', 'none');
	} else {
		$authenticationNumberBtn.prop('disabled', true);
		$('.isnot-a-phonenumber').css('display', 'block');
	}
};
// ----------------휴대폰번호 정규식 체크----------------

//-----------------인증번호 받기 버튼 클릭 이벤트----------
$authenticationNumberBtn.click( function() {
	$.ajax({
		url: "read.post",
		type: "post",
		data: {postId: postId},
		dataType: "json",
		success: function(post){
			$h1.text(post.memberName + "님의 " + postId + "번 게시글");
			let text = "", replyText = "";
			text += "<tr>";
			text += "<td>" + post.postTitle+ "</td>";
			text += "<td>" + post.postContent+ "</td>";
			text += "</tr>";
			$postTable.append(text);
			
			post.replies.forEach(reply => {
				replyText += "<tr>";
				replyText += "<td>" + reply.replyContent+ "</td>";
				replyText += "<td>" + reply.memberName+ "</td>";
				replyText += "</tr>";
			});
			$replyTable.append(replyText);
		},
		error: function(a, b, c){
			console.log(a, b, c);
		}
	});

	// 인증번호가 발송되었씁니다. 메시지 나오게 하는 코드
	$('.Authentication-Number-Guide').css('display', 'block');	
});
//-----------------인증번호 받기 버튼 클릭 이벤트----------

// ----------------문자로 인증번호 확인-----------------
// 키업 시 인증번호 전송 버튼 활성화
$("#input-authCode").keyup(function() {
	if($('#input-authCode').val()) {
		$('.certification-Btn').css('display', 'block');
	}
});

// 버튼 클릭 시 인증번호 보내기
$('.certification-Btn').click( function() {
	
});


// ----------------문자로 인증번호 확인-----------------




// 인증번호 확인
const $checkAuthCode = $('#input-authCode');
$authenticationNumberBtn.on('click', function() {
	$checkAuthCode.attr('readonly', false);
	// 만약 인증번호가 같으면 계속 버튼 활성화
	// 아니라면 비활성화  
})
// 인증번호 확인

