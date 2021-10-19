<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Mirrored from www.binarytheme.com/BTlivedemos/2014/08/29/horizontal-admin/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 14 Jul 2019 14:46:41 GMT -->
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
<title>Food Corner | Add Food Items</title>
<!-- BOOTSTRAP CORE STYLE  -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONT AWESOME STYLE  -->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLE  -->
<link href="assets/css/style.css" rel="stylesheet" />
<!-- GOOGLE FONT -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<div class="navbar navbar-inverse set-radius-zero">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="col-md-3 header-left">
				<h1>
					<a href="index-2.html"><img src="images/logo3.jpg"></a>
				</h1>
			</div>


			</div>

		
		</div>
	</div>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<!-- MENU SECTION END-->
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Add Food Items</h4>

				</div>
			</div>
			<%
				String message = (String) session.getAttribute("message");
				if (message != null) {
				session.removeAttribute("message");
			%>
			<div class="alert alert-success" id="success">Food item added successfully!</div>
			<%
				}
			%>
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-info">
						<div class="panel-heading"></div>
						<div class="panel-body">
							<form role="form" action="AddFood" method="post" enctype="multipart/form-data">
								<div class="form-group">
									<label>Food Item Name</label> <input class="form-control"
										type="text" name="pname" required />
								</div>
								<div class="form-group">
									<label>Description</label> <input class="form-control"
										type="text" style="min-height: 100px;" name="description" required/>
								</div>
								
								<div class="form-group">
									<label>Price</label> <input class="form-control" type="number" min="0"
										name="price" required/>
								</div>
								<div class="form-group">
									<label>MRP Price</label> <input class="form-control"
										type="number" min="0" name="mprice" required/>
								</div>
								
							<div class="form-group">
									<label>Food Item Category</label> <select class="form-control"
										name="category"><option>--Select Category--</option>
										<option>Main Meals</option>
										<option>Short Eats</option>
										<option>Desserts</option></select>
								</div>
								
								<div class="form-group">
									<label>Status</label> <select class="form-control"
										name="status"><option>Available</option>
										<option>Not-Available</option></select>
								</div>
								
								<div class="form-group">
									<label>Upload Image</label> <input type="file" name="uploadLogo" />
								</div>
								<button type="submit" class="btn btn-success" onclick="return confirm('Are you sure want to add this food item?');">Add
									</button>
								<button type="reset" class="btn btn-danger">Reset</button>
							</form>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<jsp:include page="admin-footer.jsp"></jsp:include>
	<!-- FOOTER SECTION END-->
	<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})
				(
						window,
						document,
						'script',
						'../../../../../../www.google-analytics.com/analytics.js',
						'ga');

		ga('create', 'UA-58127580-1', 'auto');
		ga('send', 'pageview');
	</script>
	<%
		} else {
	response.sendRedirect("admin-login.jsp");
	}
	%>
</body>
<script type="text/javascript">
	$(function() {
		$('#success').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#danger').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#warning').delay(3000).show().fadeOut('slow');
	});

	$(function() {
		$('#info').delay(3000).show().fadeOut('slow');
	});
</script>
</html>