<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <title>testPage</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</head>
<body>
	<input id="generalUniversity" placeholder="${general.generalUniversity}"></input>
	<button class="save_bt" type="button">추가하기</button>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
$(".save_bt").click(function(){
    // ajax 통신
    var $generalUniversity=$("#generalUniversity").val();

    $.ajax({
        type : "POST",            // HTTP method type(GET, POST) 형식이다.
        url : "insertOk.general",  // 컨트롤러에서 대기중인 URL 주소이다.
        data : $generalUniversity,            // Json 형식의 데이터이다.
        success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
            // 응답코드 > 0000
            alert(res.code);
        },
        error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
            alert("통신 실패.")
        }
    });
});

/* $(function() {
	var save_bt = $('#save_bt'); // 저장할 버튼을 변수에 선언
	let data, memberId = 2;
	save_bt.click(function() {
		var generalUniversity = $('#generalUniversity').html(); // 전송할 값이 있는 요소
		$.ajax({
			url: 'insertOk.general', // 서버에 전달할 파일명
			dataType: 'json',
			type: 'post',
			data: {'memberId':memberId,'generalUniversity': generalUniversity}, // 전송할 파라미터 1
			success: function(result) {
				console.log(result)
			    alert('Success'); // 성공시 코드
			}
		});
	})
}) */

</script>
</html>









