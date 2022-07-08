Kakao.init('2ef3510b8da79df92299f8a6a33d6526');

kakaoLogout(); // 로그인 페이지 접속시 로그아웃 시켜준다

//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
              //(선택적) 이메일 필수 입력을 위한 코드 짜준다
              let email = response.kakao_account.email ;
              let kakaoId = response.id;

              if(email == '' || email == undefined){
                 alert("전체 동의하기 또는 카카오계정(이메일)을 필수 선택해주세요")
                 kakaoLogout();
              }else{
                 responseSuccessLogin(email, kakaoId);//성공시 responseSuccessLogin함수 실행
				 console.log("카카오 email, id 받음")
              }
              
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
  
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  

//카카오아이디와 이메일을 받기 위한 ajax 로직 
function responseSuccessLogin(email, kakaoId) {

    $.ajax({

        type: 'POST',
        url: 'kakao/sns/login',
        data: {
            "email": email,
            "kakaoId": kakaoId
        },
        success: function(response) {
			console.log(response);
			console.log("로그인 성공")
            // 로그인
             location.href = "/";
        },
        fail: function(error) {
		 console.log(error);
		 console.log(에러);
        },
    })
}