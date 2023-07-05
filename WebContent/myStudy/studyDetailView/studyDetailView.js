
    const $modal = $('.MenuPopup');
    const $menuButton = $('.PostContents__menu_button');


    // 클릭시 열림! 재클릭시 닫힘!!
    $menuButton.click(function() {
    $modal.toggleClass('toggle');
    });