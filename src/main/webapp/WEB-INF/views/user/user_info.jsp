<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS 공통화 -->
<link rel="stylesheet" type="text/css" href="resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="resources/css/common/footer.css">
<!-- main CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/main/main.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">

<!-- user_info CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/user/user_info.css">


<title>Insert title here</title>
</head>
<body>

	<!-- Header -->
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="common_container">
		<!-- 여기다 작업하세요 -->
		<h2>${vo.u_id} 님의 마이페이지 입니다.</h2>
		<div class="com">
			<div class="TBox img">
				<div class="img_area">
					<c:if test="${vo.fname ne null}">
						<img class="profileImg" src="${vo.fname }" alt="${id }"/>
					</c:if>
					<c:if test="${vo.fname eq null}">
						<div class="profileImg">${vo.idImg }</div>
					</c:if>
				</div>
			</div>
			<div class="MBox profile">
				<div class="Boxp p1">
					<p>Level : ${vo.u_level }</p>
				</div>
				<div class="Boxp p2">
					<p>ID : ${vo.u_id }</p>
				</div>
				<div class="Boxp p3">
					<p>가입한 이메일 : ${vo.u_email }</p>
				</div>
				<div class="Boxp p4">
					<p>내가 쓴 리뷰 수 : ${vo.reviewEA }</p>
				</div>
				<div class="Boxp p5">
					<p>About_me</p></br>
					<p class="about_me">${vo.about_me }</p>
				</div>
			</div>
			<button class="BBox butter" type="button">프로필 이미지 변경</button>
		</div>
	</div>
	<div id="dialog" title="다이얼로그 테스트">
		<form action="" method="post" enctype="multipart/form-data" name="">
   			<div><img id="preImage"/></div>
   			<span>닉네임 : ${vo.u_name }</span></br>
   			<span>변경할 이름: <input type="text" id="u_name" name="u_name"></span></br></br>
   			<span>About_me: <input type="text" id="about_me" name="about_me"/></span></br></br>
	        <input type='file' id="filename" name="filename"/>
	        <input type="hidden" id="u_user" name="u_idx" value="${vo.u_idx}"/>
	        <!--                           현재프로젝트.경로요청/saveFIle이라는 폴더안에/객체.변수명 ( 지금은 없는관계로.. 에러가 발생하는것 같음 --> 
	        <!-- <img id="preImage" src="${pageContext.request.contextPath}/saveFile/${noticeVO.filename}" alt="image_title" onerror='this.src="${pageContext.request.contextPath}/images/no_img.jpg"'/> -->
   			<!--  Error: src="${pageContext.request.contextPath}/saveFile/${noticeVO.filename}" alt="image_title" onerror='this.src="${pageContext.request.contextPath}/images/no_img.jpg" -->
	    			    	
			<div class="logBtn">
				<button class="logBtn0" type="button">확인</button>
				<button class="logBtn" type="button">최소</button>
			</div>
    	</form>
	</div>
	<!-- footer -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script type="text/javascript">
	$(function() {
		console.log('Ready');
		
		$('.BBox').on('click', function() {
			console.log('BBox Ready');
			$( "#dialog" ).dialog({
				//resizable: false
				width: 500,
				height: 500
			});
		});

		$('.logBtn').on('click', function () {
			$( "#dialog" ).dialog('close');
		});
		
        $("#filename").on('change', function(){
            readURL(this);
     
    	});
        $(".logBtn0").on("click", function () {
        	
        	var u_idx = $("#u_user").val();
        	console.log("U_idx===================>>"+u_idx);
        	var s_file = $("#filename")[0].files[0];
        	alert(typeof(s_file));
        	var u_name = $("#u_name").val();
        	console.log("u_name===================>>"+u_name);
        	var about_me = $("#about_me").val();
        	
        	//sendImage(u_idx, s_file);
        	
        		
        	if( s_file != null){
        		alert('쓰기 준비')
        		sendImage(u_idx, s_file, u_name, about_me);
        	}else{
        		alert("닉네임 변경합니다");
        		sendImage(u_idx, s_file, u_name, about_me);
        	}
        	console.log(u_idx);
        	console.log(typeof(s_file));
        	
		})
			
	});
	function readURL(input) {
        if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function (e) {
              $('#preImage').attr('src', e.target.result);
           }
           reader.readAsDataURL(input.files[0]);
        }
       
    }
	function sendImage(u_idx, s_file, u_name, about_me){
		
		console.log("SendImgae====================>>" + u_idx);
		
		var frm = new FormData();
		//파일을 보내야할때는 폼에 담아서 보내야한다.
		
		console.log(u_idx);
       	console.log(typeof(s_file));
		
		//보내고자 하는 자원을 위해서 만든 폼객체에 파라미터로 넣어준다.
		frm.append("u_idx", u_idx);
		
		if(u_name != null){
			console.log("u_name=====================================================>>>>"+u_name);
			frm.append("u_name", u_name);
		}
		if(s_file != null)
			frm.append("s_file", s_file);
		
		if(about_me != null)
			frm.append("about_me", about_me);
		
		//비동기식 통신
		$.ajax({
			url: "saveImage",
			data: frm,
			type: "post",
			contentType: false, //파일의형식 - enpType으로 가기 위해서 파일의 형식을 없애버렸다.
			processData: false,
			cache: false,
			dataType: "json", // 서버로부터 받을 데이터 형식
		}).done(function(data){
			$( "#dialog" ).dialog('close');
			var path = data.path; //이미지가 저장된 경로
			var fname = data.fname; // 파일명
			$('.profileImg').attr('src', path);
			console.log(path);
			console.log(fname);
		}).fail(function(err){
			//서버에서 오류가 발생 시
			console.log(err);
		});
	}

</script>
</body>
</html>