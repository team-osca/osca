$('.mainResume-edit').on('click', changeResumeEdit);
$('.enterInterestArea-edit').on('click', changeSkillEdit);

function changeResumeEdit(){
    $.ajax({
        url : "http://localhost:8090/static/js/member/mypage/editText/resumeEdit.txt",
        success : function(data){
            $('.container>section').html(data);
        }
    })    
}

function changeSkillEdit(){
    $.ajax({
        url : "http://localhost:8090/static/js/member/mypage/editText/skillEdit.txt",
        success : function(data){
            $('.container>section').html(data);
        }
    })
}