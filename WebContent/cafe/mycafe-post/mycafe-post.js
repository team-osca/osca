const $textlength = $('.ProgressBar-ProgressBar-graph-bottom-text');
$('div.DynamicTextarea-Textarea>textarea.mycafeDetail-poastDetail-input').focusout(function(e) {
    let count = $(this).val().length;
    $textlength.text(count);
});
