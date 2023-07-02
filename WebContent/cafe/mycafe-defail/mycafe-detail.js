 /* 버튼 클릭 시 이미지 슬라이드 */
let index = 0;
const $slideWrap = $('.cafeImage-cafeImage-slide');
const imageLastIndex =  $('.cafeImage-cafeImage-slide').length - 1;

const prebtn = $('.cafeImage-cafeImage-arrow-left');
const nextbtn = $('.cafeImage-cafeImage-arrow-right');

prebtn.on('click', function() {
    if (index > 0) {             
        index--;        
        $slideWrap.css('transform', `translate(${-700 * index}px)`);
        }
});

nextbtn.on('click', function() {
      if(index < imageLastIndex) {
        index++;
         $slideWrap.css('transform', `translate(${-700 * index}px)`);
    }
});