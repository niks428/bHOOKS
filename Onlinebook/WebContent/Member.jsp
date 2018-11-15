<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<meta charset="UTF-8">
<title>bHOOKS</title>
<!-- google fonts-->
<link href="https://fonts.googleapis.com/css?family=Raleway"
	rel="stylesheet">

<!--font ausome-->
<link rel="stylesheet"
	href="font-awesome-4.7.0/css/font-awesome.min.css">

<!-- style.css-->
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
</head>

<body>

	<!-- cheks for user cache & login session -->
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		if (session.getAttribute("username") == null)
			response.sendRedirect("Login.jsp");
	%>


	<!--nav-->
	<nav>
	<form action="Logout" method="get">
		<ul class="con">
			<li><a href="#" class="logo">bHOOKS<i
					class="fa fa-arrow-down"></i></a></li>
					
			<li><button type="submit">Logout</button></li>
			
			<li><a href="#">BOOK PRINTING</a></li>
			<li><a href="#">eBOOKS</a></li>
			<li><a href="#">BOOK DESIGN</a></li>
			<li><a href="#">SELL YOUR BOOKS</a></li>
			<li><a href="#">PRICING</a></li>
		</ul>
		</form>
	</nav>

	<!--end of nav-->

	<!--banner-->
	<header id="banner">
		<div class="banner-title">
			<h4 class="banner-text">The Complete Self-Publishing Package -
				just $1,699 $1,999.</h4>
			<div class="banner-underline">
				<button type="button">Learn more</button>
			</div>



		</div>
	</header>
	<!--End of Banner-->

	<!--Skill Section-->
	<section id="skills">
		<div class="skills-container">
			<!--article-->
			<article class="skills-item">
				<i class="fa fa-code"></i>
				<h1>Printed Books</h1>
				<p>
					Whether you need 25 books or 10,000, BookBaby is your best choice.<br>
					<a href="abc.html">Learn more</a>
				</p>
			</article>
			<!--article-->
			<article class="skills-item">
				<i class="fa fa-file-text-o"></i>
				<h1>eBooks</h1>
				<p>
					Hands-on, expert eBook file conversion starting at just $99.<br>
					<a href="abc.html">Learn more</a>
				</p>
			</article>
			<!--article-->
			<article class="skills-item">
				<i class="fa fa-map-o"></i>
				<h1>Printed Books, eBooks, & POD</h1>
				<p>
					Everything you need for your book launch–now on sale! <br>
					<a href="abc.html">Learn more</a>
				</p>
			</article>

			<!--article-->
			<article class="skills-item">
				<i class="fa fa-map-o"></i>
				<h1>Printed Books, eBooks, & POD</h1>
				<p>
					Everything you need for your book launch–now on sale! <br>
					<a href="abc.html">Learn more</a>
				</p>
			</article>


		</div>
	</section>
	<!--End of Skills section-->

	<!--Services-->
	<section id="services">
		<!--title-->
		<div class="title">
			<div class="title-text">
				<h5>Everything your book needs is right here</h5>
			</div>
			<div class="title-underline"></div>
		</div>
		<!--End Of Title-->

		<div class="services-container">
			<!--article-->
			<article class="services-item services-item-black">
				<div class="front-text">
					<i class="fa fa-pencil-square" aria-hidden="true"></i>
					<h1>Professional Editing</h1>
				</div>
				<div class="back-text">
					<h2>Introducing bHOOKS Editing Services.</h2>
					<h5>The first truly affordable book editing solution for
						self-published authors.</h5>

					<button type="button">Read More</button>
				</div>
			</article>
			<!--End Of article-->

			<!--article-->
			<article class="services-item services-item-black">
				<div class="front-text">
					<i class="fa fa-tablet" aria-hidden="true"></i>
					<h1>eBook Distribution</h1>
				</div>
				<div class="back-text">
					<h1>Your eBook—on sale around the globe</h1>
					<p>With over 15 new stores added to our eBook retail
						network—including Amazon KDP Select Publishing and Google
						Play—BookBaby introduces your book tomore readers worldwide than
						anyone else.</p>
					<button type="button">Read More</button>
				</div>
			</article>

			<!--End Of article-->
			<!--article-->
			<article class="services-item services-item-black">
				<div class="front-text">
					<i class="fa fa-pencil-square-o"></i>
					<h1>Design Service</h1>
				</div>
				<div class="back-text">
					<h1>Book Cover Design Services</h1>
					<p>A great book cover design is your best sales tool. A
						professionally designed cover will instantly (and attractively)
						convey the essence of what your book is about.</p>
					<button type="button">Read More</button>
				</div>
			</article>

			<!--End Of article-->
			<!--article-->
			<article class="services-item services-item-black">
				<div class="front-text">
					<i class="fa fa-line-chart"></i>
					<h1>eBook Conversion</h1>
				</div>
				<div class="back-text">
					<h1>Why bHOOKS is your best choice for eBook conversion</h1>
					<p>
						Our eBook conversion service includes: <br>Manuscript
						conversion. <br>Graphics conversion. <br>QC check. <br>Free
						customer service support.
					</p>
					<button type="button">Read More</button>
				</div>
			</article>

			<!--End Of article-->
		</div>
	</section>

	<!--end of Services-->

	<!--Projects -->
	<section id="projects">

		<!--title-->
		<div class="title">
			<div class="title-text">
				<h4>Not sure where to start?</h4>
			</div>
			<div class="title-underline"></div>
		</div>
		<!--End of title-->

		<div class="project-container">
			<!--item-->
			<article class="project-item">
				<img src="images/p1.jpg" alt="">
				<div class="img-text">
					<h1>Build-A-Book</h1>
					<h6>
						Learn what goes into making your book, from the cover style to the
						paper stock.<br>
						<a href="abc.html">Start here.</a>
					</h6>
				</div>
			</article>
			<!--end of item-->
			<!--item-->
			<article class="project-item">
				<img src="images/p2.jpg" alt="">
				<div class="img-text">
					<h1>Five steps is all it takes</h1>
					<h6>
						All the essential information you need to go from manuscript to
						market place.<br>
						<a href="abc.html">Learn More.</a>
					</h6>
				</div>
			</article>
			<!--end of item-->
			<!--item-->
			<article class="project-item">
				<img src="images/p3.png" alt="">
				<div class="img-text">
					<h1>Experts on call</h1>
					<h6>
						Need some help? We’re here for you. Just call us at 877-961-6878.<br>
						<a href="abc.html">Start here.</a>
					</h6>
				</div>
			</article>
			<!--end of item-->
		</div>
	</section>
	<!--End of Projects -->
	<!--Filler Sectin-->
	<section id="filler-contact">
		<h1>We Are Proffesionls</h1>
		<button type="button">contact us</button>
	</section>

	<!--End Filler Sectin-->

	<!--footer-->
	<footer>
		<div class="footer-text">
			<h3>copyright &copy; 2018.All Rights reserved</h3>
		</div>
		<div class="footer-icons">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a> <a href="#"><i
				class="fa fa-google-plus"></i></a>
		</div>
	</footer>



</body>
</html>