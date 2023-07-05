$(".collapsible-sidebar ul li").on("click",function(){
    document.getElementById("first-question-color").style.color="";
    document.getElementById("first-question-background").style.backgroundColor="";
    $(this).addClass("clicked");
    $(".collapsible-sidebar ul li").not(this).removeClass("clicked");
});