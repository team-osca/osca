/*클래스 이름으로 가져와서 기능 넣기!!*/ 
const questions = document.querySelectorAll(".sidenav-item");
questions.forEach(question=>question.addEventListener("click",changeContent));

function changeContent(){
    $("#answer-content-header").html("안녕하세요");
    $("#answer-content-main").html("안녕하세요");  
    $(this).css('color','#3366FF');
}