Object.prototype.forEach = Array.prototype.forEach;

const defaultCheckBox = (idx)=>{return (
    `
        <div class="withdraw_checkbox_area" id="checkbox${idx}"></div>
    `
)};
const checkedCheckBox = (idx)=>{return (
    `
        <div class="svg_div" id="checkbox${idx}"><span class="svg_wrapper"><svg viewBox="0 0 12 8" class="check_svg"><path d="M1.5 4L4.5 7L10.5 1" stroke="var(--theme-palette-colors-common-white)" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg></span></div>
    `
)};

function returnCheckBoxType(type, idx){
    return type == "svg_div" ? checkedCheckBox(idx) : defaultCheckBox(idx);
}

let $withdrawCheckArea = $('.withdraw_check_area');

function exchangeCheckBox(element, idx){
    $checkbox = $(`.${element.className}>#checkbox${idx}`);
    if($checkbox){
        $checkbox.remove();
        $(element).prepend(returnCheckBoxType($checkbox.attr('class') == "withdraw_checkbox_area" ? "svg_div" : "withdraw_checkbox_area", idx));
    }
    $('.withdrawBtn').prop('disabled', $('.svg_div').length == 2 ? false : true);

}

$(document).ready(function(){
    $withdrawCheckArea.forEach((element, idx) => {
        $(element).prepend(returnCheckBoxType("withdraw_checkbox_area", idx));
        $(element).on('click', () => exchangeCheckBox(element, idx));
    });
});
