
<!DOCTYPE HTML>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html xmlns:th="http://www.thymeleaf.org">
<meta charset="UTF-8" />
<head>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">  
</script>
<div th:replace="fragments/header :: header-css" />
</head>
<body>
		<c:set var="myVal" value="Hello"/> 
	<script type="text/javascript">
		$(document).ready(function() {
	  		$('li.active selected').removeClass('active selected');
	  		$('a[href="' + location.pathname + '"]').closest('li').addClass('active selected'); 
		});
		

		    var val1="${myVal}";
		
		
		setInterval(function(){$('#asd').html(val1); }, 100);
		

		
	</script>
	<div th:replace="fragments/header :: header" />
	
	<!-- Dashboard Wrapper Start -->
		<div class="dashboard-wrapper dashboard-wrapper-lg">

			<!-- Container fluid Starts -->
			<div class="container-fluid">

				<!-- Top Bar Starts -->
				<div class="top-bar clearfix">
					<div class="row gutter">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="page-title">
								<h3>Anasayfa</h3>
								<p>Ustabilir Kontrol Paneli</p>
							</div>
						</div>
					</div>
				</div>
				<!-- Top Bar Ends -->

				<!-- Row starts -->
				<div class="row gutter">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="index-carousel"
						style="height: 300px;position: relative;">
							<div class="index-carousel-item"
							data-flickity-bg-lazyload="https://www.ustasigelsin.com/uploads/images/elektrik-ustasi%281%29.jpg"></div>
							<div class="index-carousel-item"
							data-flickity-bg-lazyload="http://www.kartalsutesisat.com/media/blog/kartal-cevizli-su-tesisat.jpg"></div>
						</div>
					</div>
				</div>
				<!-- Row ends -->

				<!-- Row starts -->
				<div class="row gutter" style="margin-top: 50px;">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="panel">
							<div class="panel-body">
								<div class="callout callout-warning">
									<h4>Hoşgeldiniz</h4>
									<span id="asd">999</span>
									<span th:text="${VALUE}"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Row ends -->

			</div>
			<!-- Container fluid ends -->

		</div>
		<!-- Dashboard Wrapper End -->


		<div th:replace="fragments/footer :: footer" />
</body>
</html>