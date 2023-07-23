$('.formFooter>button').on('click', changeInit);
function changeInit(){
    $.ajax({
        url : "http://localhost:8090/templates/member/mypage/mypageInit.jsp",
        success : function(data){
            $('.container>section').html(data);
        }
    })
}