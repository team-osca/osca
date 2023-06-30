/* 게시글 textarea 포커시 아웃 됬을 때 게시글 글자 수를 구해서 맨 밑에 표시해 준다.  */
const $textlength = $('.ProgressBar-ProgressBar-graph-bottom-text');
$('div.DynamicTextarea-Textarea>textarea.mycafeDetail-poastDetail-input').focusout(function(e) {
    let count = $(this).val().length;
    $textlength.text(count);
});
