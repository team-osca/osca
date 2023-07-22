/**
 *  비밀번호 변경 완료 페이지 
 */

$('.go-to-login').click(function() {
	//    let link = contextPath + '/sign_infind_account.member';
	let link = 'http://localhost:8090/signOrLogin.member';
	location.href = link;
});