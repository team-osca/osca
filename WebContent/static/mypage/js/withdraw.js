Object.prototype.forEach = Array.prototype.forEach;

const defaultCheckBox = (
    `
        <div class="withdraw_checkbox_area"></div>
    `
);
const checkedCheckBox = (
    `
        <div class="svg_div"><span class="svg_wrapper"><svg viewBox="0 0 12 8" class="check_svg"><path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-common-white)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg></span></div>
    `
);

function returnCheckBoxType(type){
    return type ? checkedCheckBox : defaultCheckBox;
}

let checked = false;
let $withdrawCheckArea = $('.withdraw_check_area');

function exchangeCheckBox(element, idx){
    console.log(element + " " + idx);
    if($(element)){
        $(element)[idx].remove();
    }
}
function appendCheckBox(){
    $withdrawCheckArea.forEach((element) => {element.prepend(returnCheckBoxType(checked))});
    checked = checked ? false : true;
}
$(document).ready(function(){
    $withdrawCheckArea.prepend(returnCheckBoxType(checked));
    $('.withdraw_checkbox_area').forEach((element, idx) => {
        $(this).on('click', () => exchangeCheckBox(element, idx));
    });
});