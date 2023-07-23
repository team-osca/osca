$('.formFooter>button').on('click', changeInit);
function changeInit(){
    $.ajax({
        url : "http://localhost:8090/mypageOk.general",        
        success : function(data){
            $('.container>section').html(data);
        }
    })
}

$('.toggleEditable').on('click', function(){
    $('.option-select').attr('disabled',  (_, attr) => !attr);
})
$('.option-select').on('click', function(){
    $(this).toggleClass('active');
});

$('#salary').on('click', () => doModal(salaryModal));
$('#skill').on('click', () => doModal(skillModal));

function doModal(modal){
    $('#mypage').append(modal);
    $('.modal_overlay, .iconButton_nomal').on('click', () => $('.modal_area').remove());
}

