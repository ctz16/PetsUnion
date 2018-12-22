
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>shop</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
				function hideURLbar(){ window.scrollTo(0,1); } </script>
				
		<!-- Custom Theme files -->
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
		<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style -->  
		<link href="css/animate.min.css" rel="stylesheet" type="text/css" media="all" />   
		<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- carousel slider -->  
		<!-- //Custom Theme files -->
		
		<!-- font-awesome icons -->
		<link href="css/font-awesome.css" rel="stylesheet"> 
		<!-- //font-awesome icons -->
		
		<!-- js -->
		<script src="js/jquery-2.2.3.min.js"></script> 
		<script src="js/owl.carousel.js"></script>
		<!-- //js --> 
		
		<!-- web-fonts -->
		<link href='http://fonts.useso.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Offside' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
		<!-- web-fonts --> 
		
		<!-- scroll to fixed--> 
		<script src="js/jquery-scrolltofixed-min.js" type="text/javascript"></script>
		<script>
			$(document).ready(function() {

				// Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

				$('.header-two').scrollToFixed();   
				// previous summary up the page.

				var summaries = $('.summary');
				summaries.each(function(i) {
					var summary = $(summaries[i]);
					var next = summaries[i + 1];

					summary.scrolltofixed({
						margintop: $('.header-two').outerheight(true) + 10, 
						zindex: 999
					});
				});
			});
		</script>
		<!-- //scroll to fixed--> 
		
		<!-- start-smooth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>	
		<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
		</script>
		<!-- //end-smooth-scrolling -->
		
		<!--flex slider-->
		<script defer src="js/jquery.flexslider.js"></script>
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<script>
			// Can also be used with $(document).ready()
			$(window).load(function() {
			  $('.flexslider').flexslider({
				animation: "slide",
				controlNav: "thumbnails"
			  });
			});
		</script>
		<!--flex slider-->

		<!-- smooth-scrolling-of-move-up -->
		<script type="text/javascript">
			$(document).ready(function() {
	
				var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
				};
		
				$().UItoTop({ easingType: 'easeOutQuart' });
		
			});
		</script>
		<!-- //smooth-scrolling-of-move-up --> 
		
		<!-- the jScrollPane script -->
		<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
		<!-- //the jScrollPane script -->
		
		<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
		<!-- the mousewheel plugin --> 
				
	</head>
	
<body>
	<!-- header -->
	<div class="header">
		<div class="uniform-header"><!--header-one--> 
			<div class="uniform-header-right">
				<ul>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i> 我的账号<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.html">登录 </a></li> 
							<li><a href="signup.html">注册</a></li> 
							<li><a href="login.html">我的订单</a></li>  
						</ul> 
					</li> 
				</ul>
			</div>
			<div class="clearfix"> </div> 
		</div>
		
		<div class="header-two"><!-- header-two -->
			<div class="container">
				<div class="header-logo">
					<h1><a href="index.html"><span>PETS</span>union </a></h1>
					<h2>Your stores. Your friends.</h2> 
				</div>	
				<div class="header-search">
					<form method="#">
						<input type="search" id="search" placeholder="请输入您要搜索的关键词..." required="">
						<button type="button" id="submit" class="btn btn-default" aria-label="Left Align" >
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>		
		</div><!-- //header-two -->
		


	<div class="shop-page">
		<div class="container">
			<h2>shopDetail</h2>
			<div class="detail_images">
				<div id="shopImg" src=""></div>
			</div>
			<div class="row-fluid">
				<form action="" id="shopDetailForm">
					<input type="text" class="form-control" name="shopName" value="name" id="in1">
					<input type="text" class="form-control" name="instruction" value="address" id="in2">
					<input type="text" class="form-control" name="address" value="address" id="in3">
					<input type="text" class="form-control" name="shopHours" value="address" id="in4">
					<input type="text" class="form-control" name="shopTel" value="address" id="in4">
				</form>
				<a class="btn btn-primary" id="confirm1">确认修改</a>
			</div>
		</div>

		<script type="text/javascript">
			$(document).ready(function(){
				$("#confirm1").click(function(){
					x=$("#shopDetailForm").serializeArray();
					$.post("ShopDetailUpdateServlet",{flag:0});
					$.post("ShopDetailUpdateServlet",x)
				})
			})
		</script>
	
		<div class="container">
			<h2>Service</h2>
			<div class="box-content">
				<table class="table table-striped table-bordered datatable">
				  <thead>
					  <tr>
						  <th>serviceIntro</th>
						  <th>serviceType</th>
						  <th>petsType</th>
						  <th>price</th>
					  </tr>
				  </thead>
				  <tbody>
					<tr id="tr0">
						<td class="center">intro1</td>
						<td class="center">type1</td>
						<td class="center">petstype1</td>
						<td class="center">price</td>
					</tr>
				
					<tr id="tr1">
					<form id="form1">
						<td class="center">
							<input type="text" class="form-control" name="serviceIntro" value="name">
						</td>
						<td class="center">
							<input type="text" class="form-control" name="serviceType" value="name">
						</td>
						<td class="center">
							<input type="text" class="form-control" name="petsType" value="name">
						</td>
						<td class="center">
							<input type="text" class="form-control" name="price" value="name">
						</td>
					</form>
					</tr>
				
				  </tbody>
			  </table>    
			  <div class="col">
					<a class="btn btn-primary" id="new1">新建</a>
					<a class="btn btn-primary" id="confirm2">确认</a>
			  </div>
			  
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#new1").click(function(){
			var newItem='<tr id="tr1">'
			newItem+='<td class="center"><input type="text" class="form-control" name="serviceIntro" value="name"></td>'
			newItem+='<td class="center"><input type="text" class="form-control" name="serviceType" value="name"></td>'
			newItem+='<td class="center"><input type="text" class="form-control" name="petsType" value="name"></td>'
			newItem+='<td class="center"><input type="text" class="form-control" name="price" value="name"></td></tr>'
			$("tbody").append(newItem);
			$("#confirm2").show();
			alert("new finish");
		})
	})
	</script>

	<script type="text/javascript">
		$("#confirm2").click(function(){
			x=$("#form1").serializeArray();
			$.post("ShopDetailUpdateServlet",{"flag":1});
			$.post("ShopDetailUpdateServlet",x,function(){
			alert("post finish");
		})
		$("#tr1").remove();
		alert("finish");
		$("#confirm2").hide();
		})
	</script>

		
		<!-- return to searchShop -->
		<script type="text/javascript">
		$("button#submit").click(function (){
			var $value=document.getElementById("search").value;
			window.location.href = "searchShop.jsp?search="+$value;
		});
		</script>
		<!-- return to searchShop -->
		
	<!-- //cart-js -->  
	
	<!-- menu js aim -->
	<script src="js/jquery.menu-aim.js"> </script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
	<!-- //menu js aim --> 
	
    <script src="js/bootstrap.js"></script>
</body>
</html>