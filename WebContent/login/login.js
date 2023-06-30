/**
 *         const emailCheck = document.getElementById("emailCheck");
        const phoneCheck = document.getElementById("phoneCheck");
        const result = document.querySelector(".result");
       
        emailCheck.addEventListener("change",(e)=> {
            validEmail(e.target)
        });
        phoneCheck.addEventListener("input",(e) => {
            phoneFormat(e.target)
        });
           
        // 이메일 형식 체크 정규식
        function validEmail(obj){
            console.log(obj)
            if(validEmailCheck(obj)==false){
                result.textContent = '이메일 형식으로 입력해주세요. ex) xxx@000' ;
                result.style.color = "red";
                // obj.value='';
                obj.focus();
                return false;
            }else{
                result.textContent = '올바른 메일 형식입니다.'
                result.style.color = "blue";
            }
        }

        function validEmailCheck(obj){
            var pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
            return (obj.value.match(pattern)!=null)
           
        }
 */