$('.formFooter>button').on('click', changeInit);
function changeInit(){
    $.ajax({
        url : "http://localhost:8090/mypageOk.general",
        success : function(data){
            $('.container>section').html(data);
        }
    })
}