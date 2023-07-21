$('.mainResume-edit').on('click', changeResumeEdit);
$('.enterInterestArea-edit').on('click', changeSkillEdit);

function changeResumeEdit(){
    $.ajax({
        url : "http://localhost:8090/templates/member/mypage/resumeEdit.jsp",
        success : function(data){
        $('.container>section').html(data);
        }
    })    
}

function changeSkillEdit(){
    $.ajax({
        url : "http://localhost:8090/templates/member/mypage/skillEdit.jsp",
        success : function(data){
            $('.container>section').html(data);
        }
    })
}