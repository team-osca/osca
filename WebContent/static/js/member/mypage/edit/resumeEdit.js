$('.formFooter>button').on('click', changeInit);
function changeInit(){
    $.ajax({
        url : "http://localhost:8090/static/member/mypage/editText/mypageInit.txt",
        success : function(data){
            $('.container>section').html(data);
        }
    })
}