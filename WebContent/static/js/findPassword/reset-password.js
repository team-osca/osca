$('#pw-input').on("focus", function(){
    let $this = $(this);    
    if(!$this.val()) {
        $this.css('border', '1px solid blue');        
    }
    $this.keyup(function() {
        let regex = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?\d)(?=.*?[^\w\s]).{8,16}$/;
        if(!regex.test($this.val())) {
            $this.attr('style', 'border: 1px solid red !important');
            $('#check-pw-msg').css('display', 'block');
        } else {
            $this.css('border', '1px solid blue');
            $('#check-pw-msg').css('display', 'none');            
        }
    });
});

$('#pw-input-check').on('focus', function() {
    let $this = $(this);    
    if(!$this.val()) {
        $this.css('border', '1px solid blue');        
    }
    $this.keyup(function() {
        if ( $('#pw-input').val() !== $this.val()) {
            $this.attr('style', 'border: 1px solid red !important');
            $('#not-eq-err').css('display', 'block');
        } else {
            $this.css('border', '1px solid blue');
            $('#not-eq-err').css('display', 'none');
            ButtonActivation();
        }
    });

}); 

function ButtonActivation () {
    $('.continue').attr('disabled', false);
    $('.continue-text').attr('disabled', false);    
}




