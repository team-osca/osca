function validPhoneNumberCheck(obj){  
    var pattern =  /^[0-9]{3}-?[0-9]{4}-?[0-9]{4}$/;
    return (obj.value.match(pattern)!=null)
}

$('.putnumber').on('input', function(){
    $('.verificationbtn').attr('disabled', validPhoneNumberCheck(this) ? false : true);
})


let $agreements = $('.agreements');
let $term = $('.term');
let $check = $('.check');
let $notice = $('.receive,.mean');
let $containerPath = $('.container>path');
let $inputPassword = $('input[type=password]');
let $inputText = $('input[type=text]');
let $inputEmail = $('input[type=email]');

let checkColorBlue = 'var(--theme-palette-colors-blue-400)';
let checkColorGray = 'var(--theme-palette-colors-gray-300)';

$agreements.on('click', checkAll);

$term.on('click',changeCheckBox);

$notice.on('click', changeContainerPath);

function checkAll(){
    $check.attr('class', $check.attr('class') == 'check_active' ? 'check' : 'check_active');
    checkEssential();
    changeAllContainerPath($(this).children(':first'));
}

function changeCheckBox() {
    let this_idx = $term.index(this) + 1;
    let checkClassName = $($check[this_idx]).attr('class') == 'check';
    $($check[this_idx]).attr('class', checkClassName ? 'check_active' : 'check');
    checkAgreemnts();
    checkEssential();
    if(this_idx == $term.length){
        changeAllContainerPath($($check[this_idx]));
    }
}

function changeAllContainerPath(obj){
    let checkObjClassName = obj.attr('class') == 'check';

    $containerPath.attr('stroke', checkObjClassName ? checkColorGray : checkColorBlue);
}

function changeContainerPath(){
    let this_idx = parseInt($notice.index(this)/ 2);
    let checkClassName = $($containerPath[this_idx]).attr('stroke') == checkColorBlue;

    $($containerPath[this_idx]).attr('stroke', checkClassName ? checkColorGray : checkColorBlue );
    checkPath();
}

function checkAgreemnts(){
    $('.term>.check_active').length == 4 ? 
        $('.agreements>.check').attr('class','check_active') :
        $('.agreements>.check_active').attr('class','check');
    
}

function checkEssential(){
    let idx = 0;
    let isAllCheck;
    for(let i = 0; i < 3; i++){
        if($($check[i + 1]).attr('class') == 'check_active'){
            idx++;
        } 
    }
    isAllCheck = (idx == 3 ? false : true);
    $('.submission').attr('disabled', isAllCheck);
}

function checkPath(){
    let idx = 0;
    let isAllCheck;
    for(let i = 0; i < 3; i++){
        if($($containerPath[i]).attr('stroke') == checkColorBlue){
            idx++;
        } 
    }
    isAllCheck = (idx == 3 ? 'check_active' : 'check');
    $($check[4]).attr('class', isAllCheck);
    checkAgreemnts();
}