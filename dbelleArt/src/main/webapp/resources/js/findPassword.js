$(function () {

    let findPassword = document.getElementById('findPassword2');
    let findEmail = document.getElementById('find-email');
    let send = document.getElementById('sendEmail');

    findPassword.addEventListener('click', function () {
        resetElement();
    });

    function resetElement(){
        $("#find-email").val('');
        $("#vaildEmail").text('');
    }


    // 정규표현식을 정의합니다.
    function email_check(email) {

        let regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        return (email != '' && email != 'undefined' && regex.test(email));

    }

    function setValidText(){
        let email = findEmail.value;
        if (!email_check(email)) {
            $("#vaildEmail").text('잘못된 형식의 이메일 주소입니다.').css("color","red");
            return false;
        }else{
            $("#vaildEmail").text('유효한 이메일 주소입니다.').css("color","green");
            return true;
        }
    }


    findEmail.addEventListener('focusout', function () {
        setValidText();
    });


    send.addEventListener('click', function () {
        if(setValidText()){
            sendEmailProcess();
            alert('이메일로 초기화 비밀번호가 전송되었습니다.');
            location.href="/login"
        }
    });

    function sendEmailProcess() {
        let email = findEmail.value;
        $.ajax({
                type: "POST",
                url: '/email/sendEmailProcess',
                data:{
                    "email" : email
                },
                success: function(response){
                },
                error:function(request,status,error){
                    const errorMsg = JSON.parse(request.responseText);
                    alert("ERROR CODE: "+request.status+"\n"+
                        "ERROR MESSAGE: "+errorMsg.message+"\n"+
                        "상태가 지속될 경우 관리자에게 문의해주세요");
                }
            }
        );

    }

});
