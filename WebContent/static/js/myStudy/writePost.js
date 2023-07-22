
// 엔터키가 눌렸을 때 게시글의 창 길이 증가
$(document).ready(function() {
 	$modal.hide();
    /*const $contentTextarea = $('.Paper_PostWritePaper__content textarea');
    let height = parseInt($contentTextarea.css('height'), 10);
    
    $contentTextarea.on('keyup', function(event) {
      if (event.which === 13) {
        height += 28;
        $contentTextarea.css('height', height + 'px');
      }
    });*/
  });


  const $buttons = $('.SelectTagsModal_interestsTags button');

  $buttons.click(function() {
    // 이전에 선택된 버튼이 있을 경우 active 클래스 제거
    $buttons.parent().removeClass('SelectTagsModal_active');

    // 클릭한 버튼에 active 클래스 추가
    $(this).parent().addClass('SelectTagsModal_active');
  });


//   모달
  const $modal = $('.Modal_Modal__root');
  const $blur = $('.Modal_Modal__root__blur');
  const $backdrop = $('.Modal_Modal__root__backdrop');
  const $openmodal = $('.TagPanel_tagWrapper>button');

// 클릭시 열림!!!!
    $openmodal.click(
        function () {  
            $modal.show();
            /*$blur.css('backdrop-filter', 'blur(4px)').css('-webkit-backdrop-filter', 'blur(4px)');
            $backdrop.css('visibility','visible');*/

    });
// 클릭시 꺼짐

const $close = $('.SvgIcon_SvgIcon__root__close');

function hideModal(){
    $modal.css('z-index', '-100');
    $blur.css('backdrop-filter', 'none').css('-webkit-backdrop-filter', 'none');
    $backdrop.css('visibility','hidden');
}
    $close.click(hideModal);


  // 확인 누르는 버튼
const $ok = $('.Button_Button__interaction');

$ok.click(function() {
  hideModal();

  // 모달창에서 선택된 태그
  const $selectedTag = $('.SelectTagsModal_active');
  // 메인창에서 보일 태그
  const $showTag = $('.selectedTagButton');
  const $hiddenTag = $('.HideWhenTagOk');

  // active 클래스를 가진 버튼의 텍스트 가져오기
  let text = $selectedTag.text();
  $showTag.text(text).css('visibility', 'visible');
  $hiddenTag.css('display', 'none');
});