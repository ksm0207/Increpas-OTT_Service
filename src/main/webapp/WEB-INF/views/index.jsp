<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- Jquery -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- ���� �̹��� �����̴� JS -->
<script type="text/javascript" defer="defer" src="resources/js/main_js/slider.js"></script>
<!-- Ư���� ����Ʈ�� �̹����� �����ְ� ȭ��ǥ Ŭ���� ���� �̹��� �ҷ����� JS  -->
<script type="text/javascript" defer="defer" src="resources/js/main_js/movie_order.js"></script>
<!-- CSS ����ȭ -->
<link rel="stylesheet" type="text/css" href="resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="resources/css/common/footer.css">
<!-- main CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/main/main.css">
<!-- �̹��� �����̴� CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/main/slider.css">
<!-- font awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"rel="stylesheet">

<title>Main</title>
</head>
<body>
	<!-- Header -->
	<jsp:include page="common/header.jsp"></jsp:include>

	<!-- Slider -->
	<jsp:include page="common/slider.jsp"></jsp:include>

	<!-- common -->
	<div class="common_container">
	
		<div class="comment_area">
			<h1>Netflix Top10</h1>
		</div>
		
		<div class="item_box">
			<div class="movie_box_button btn_arrow">
				<a class="netflix_btn_left" onclick="netflix_list('pre','netflix_box',5,5)" ><i class="fas fa-chevron-left"></i></a>
			</div>

			<div class="netflix_box">
				<div class="ott_subject">
					<h2>Netflix</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/netflix.png"></a> 
						<h2>Rank 1</h2>
					</div>
				</div>
			</div>

			<div class="netflix_box">
				<div class="ott_subject">
					<h2>Netflix</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/netflix.png"></a>
						<h2>Rank 2</h2>
					</div>
				</div>
			</div>

			<div class="netflix_box">
				<div class="ott_subject">
					<h2>Netflix</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/netflix.png"></a>
						<h2>Rank 3</h2>
					</div>
				</div>
			</div>


			<div class="netflix_box">
				<div class="ott_subject">
					<h2>Netflix</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/netflix.png"></a>
						<h2>Rank 4</h2>
					</div>
				</div>
			</div>

			<div class="netflix_box">
				<div class="ott_subject">
					<h2>Netflix</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/netflix.png"></a>
						<h2>Rank 5</h2>
					</div>
				</div>
			</div>

			<div class="netflix_box">
				<div class="ott_subject">
					<h2>Netflix</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/netflix.png"></a>
						<h2>Rank 6</h2>
					</div>
				</div>
			</div>

			<div class="netflix_box">
				<div class="ott_subject">
					<h2>Netflix</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/netflix.png"></a>
						<h2>Rank 7</h2>
					</div>
				</div>
			</div>

			<div class="netflix_box">
				<div class="ott_subject">
					<h2>Netflix</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/netflix.png"></a>
						<h2>Rank 8</h2>
					</div>
				</div>
			</div>
			
			<div class="netflix_box">
				<div class="ott_subject">
					<h2>Netflix</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/netflix.png"></a>
						<h2>Rank 9</h2>
					</div>
				</div>
			</div>
			
			<div class="netflix_box">
				<div class="ott_subject">
					<h2>Netflix</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/netflix.png"></a>
						<h2>Rank 10</h2>
					</div>
				</div>
			</div>

			<div class="movie_box_button btn_arrow">
				<a class="netflix_btn_right" onclick="netflix_list('next','netflix_box',5,5)"><i class="fas fa-chevron-right"></i></a>
				<!-- <a class="netflix_btn_right"><i class="fas fa-chevron-right"></i></a> -->
			</div>
		</div>
		<!-- ���ø��� �� -->
		

		<!-- ��í  -->
		<div class="comment_area">
			<h1>Watcha Top10</h1>
		</div>
		
		<div class="item_box">
			<div class="movie_box_button btn_arrow">
				<a class="Watcha_btn_left"><i class="fas fa-chevron-left"></i></a>
			</div>

			<div class="whatcha_box">
				<div class="ott_subject">
					<h2>Watcha</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/watcha.png"></a> 
						<h2>Rank 1</h2>
					</div>
				</div>
			</div>

			<div class="whatcha_box">
				<div class="ott_subject">
					<h2>Watcha</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/watcha.png"></a> 
						<h2>Rank 2</h2>
					</div>
				</div>
			</div>

			<div class="whatcha_box">
				<div class="ott_subject">
					<h2>Watcha</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/watcha.png"></a> 
						<h2>Rank 3</h2>
					</div>
				</div>
			</div>


			<div class="whatcha_box">
				<div class="ott_subject">
					<h2>Watcha</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/watcha.png"></a> 
						<h2>Rank 4</h2>
					</div>
				</div>
			</div>

			<div class="whatcha_box">
				<div class="ott_subject">
					<h2>Watcha</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/watcha.png"></a> 
						<h2>Rank 5</h2>
					</div>
				</div>
			</div>

			<div class="movie_box_button btn_arrow">
				<a class="Watcha_btn_right"><i class="fas fa-chevron-right"></i></a>
			</div>
		</div>
		<!-- ��í  �� -->



		<!-- Wavve  -->
		<div class="comment_area">
			<h1>Wavve Top10</h1>
		</div>
		
		<div class="item_box">
			<div class="movie_box_button btn_arrow">
				<a class="Wavve_btn_left"><i class="fas fa-chevron-left"></i></a>
			</div>
			
			<div class="wavve_box">
				<div class="ott_subject">
					<h2>Wavve</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/wavve.png"></a> 
						<h2>Rank 1</h2>
					</div>
				</div>
			</div>

			<div class="wavve_box">
				<div class="ott_subject">
					<h2>Wavve</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/wavve.png"></a> 
						<h2>Rank 2</h2>
					</div>
				</div>
			</div>

			<div class="wavve_box">
				<div class="ott_subject">
					<h2>Wavve</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/wavve.png"></a> 
						<h2>Rank 3</h2>
					</div>
				</div>
			</div>


			<div class="wavve_box">
				<div class="ott_subject">
					<h2>Wavve</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/wavve.png"></a> 
						<h2>Rank 4</h2>
					</div>
				</div>
			</div>

			<div class="wavve_box">
				<div class="ott_subject">
					<h2>Wavve</h2>
					<div class="m_content">
						<a href="#"><img src="resources/images/wavve.png"></a> 
						<h2>Rank 5</h2>
					</div>
				</div>
			</div>

			<div class="movie_box_button btn_arrow">
				<a class="Wavve_btn_right"><i class="fas fa-chevron-right"></i></a>
			</div>
		</div>
		<!-- Wavve �� -->

	</div>
	<!-- end of main -->
	
	<!-- footer -->
	<jsp:include page="common/footer.jsp"></jsp:include>

</body>
</html>