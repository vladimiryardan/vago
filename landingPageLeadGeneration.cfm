<head>
	<title>
		Virtual Assistant Go
	</title>
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="keywords" content="Virtual Assistant"/>
	<meta name="description" content="Virtual Assistant"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="images/favicon.png"/>
	
	<!-- Favicon --> 
	<link rel="shortcut icon" href="images/favicon.ico">
	
	<!-- ######### CSS STYLES ######### -->

	<!---mini css --->
	<link rel="stylesheet" href="https://cdn.rawgit.com/Chalarangelo/mini.css/v3.0.1/dist/mini-default.min.css">	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mini.css/3.0.1/mini-default.min.css">	
	<link rel="stylesheet" href="cssminiStyleSheet/mini-style.css"/>
	<link rel="stylesheet" media="screen" href="cssminiStyleSheet/responsive-leyouts.css"/>
	<!---mini css icons --->
	<script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js">	</script>
</head>

<style type="text/css">
	html, body{
	overflow-x:hidden;
	width:100%;
	height:100%;
	}
	
	input {
		display:inline-block;
	}
	
	.depth {
    display: block;
    border: 1px solid rgba(255,255,255,0.6);
    background: linear-gradient(#eee, #fff);
    transition: all 0.3s ease-out;
    box-shadow: inset 0 1px 4px rgba(0,0,0,0.4);
    padding: 5px;
	text-align: center; 
	}	
	
	.monitor {
		height:15%; 
		width:8%;
	}
		
	.page_title
	{
	background:url(cssminiStyleSheet/landingPage.jpg) no-repeat center top;
	width:100%; 
    height:60vh;
	background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
	}
	
	.primary {
		width:40%; 
		margin-left:25%;
		
	}
	.primary:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
    border: 1px solid black;
	}
	.trending-up {
		height:15%; 
		width:5%;
	}
	
	
	@media only screen and (max-height: 600px)
	{
	.vcenter {
	display: inline-block;
	vertical-align: middle;
	float: none;
	}
	.nojustify p{
	text-align:left;
	}
	.features_sec3{
	padding-bottom:25px;
	}
	}
	
	@media only screen and (max-height: 600px) and (max-width: 600px)
	{
	.engage {
	display:none;
	}
	.page_title{
	padding-top:-100px;
	}
	.titleCustom {
	font-size:150%;
	}
	
	}
	
	@media only screen and (max-height: 700px) and (max-width: 600px)
	{
	.engage {
		display:none;
	}
	}

	@media only screen and (max-width: 1000px){
	.vagoLogo {
		display:none;
	}
	}
</style>

<body>
	
	<div class="page_title">
		<div class="titleBody one_half" style="margin-left:5%; ">
			<h1 class="titleCustom">
			
				Get Good Leads Straight to your Inbox
			</h1>
			
			<h4 class="engage" style="color:white; padding:5px 80px 0px 80px; text-align:justify;">
				We engage highly personalized B2B conversations with your ideal customers,
				once they respond your sales team simply picks up the conversation with
				them and work closing the deal
			</h4>
			
			<form style="background-color:transparent; border-color:transparent;">
				<fieldset style="background-color:transparent; border-color:transparent;">
				
					<div class="row">
						<div class="col-sm-12 col-md-12">
							<input class="depth" type="text" name="businessName" placeholder="Business Name" 
							       style="background-color:transparent; width:40%; margin-left:25%;"/>
						</div>
						
						<div class="col-sm-12 col-md-12">
							<input class="depth" type="text" placeholder="Phone Number" onkeypress="return isNumberKey(event)" 
							       style="background-color:transparent; width:40%; margin-left:25%;"/>
						</div>
						<script>
							function isNumberKey(evt){
							var charCode = (evt.which) ? evt.which : event.keyCode
							if (charCode > 31 && (charCode < 48 || charCode > 57))
							return false;
							return true;
							}
						</script>
						<button class="primary">
							<strong>
								Request a Quote
							</strong>
						</button>
					</div>
				</fieldset>
			</form>
			
		</div>
		<!---<div class="one_half last" style="float:right; margin-top:-20%;">
			<img class="vagoLogo" src="imageLandingpage/vago.png" style="width:60%; height:37%; "/>
		</div>--->
		<!-- end page title -->
	</div>
	
	<div class="page_title3" style="background-color:white;/>

	<div class="container">
	 <div class="generate">
		<div class="features_sec32 two" style="padding-bottom:0px; margin-top:-6%;">
			<div class="title box">
				<span class="monitor" data-feather="monitor"></span>
				<span class="trending-up" data-feather="trending-up"></span>
					<script>
  						feather.replace()
					</script>
				<h2 style="color:black;">
					Generating Good Leads 
				</h2>
				</div>
			</div>
			
			<h5 style="color:black;">
				A lot of business experts will tell you to invest in data, tools, statistical analysis,
				and market research, if you want to stay on top of the lead game. However, it is easy to neglect 
				the fact that
				without a team of highly persuasive agents, all of your efforts would be wasted. Hence, instead 
				of concentrating
				on the technicalities, you have to make sure that your people will do anything to get that 
				potential customer.
			</h5>
		</div>
	</div>
	</div>
	<!-- end page title -->
	<div class="features_sec32 two" style="background-color:#f3f3f3;">
	<div class="container">
	<div class="clearfix margin_top3">
	</div>
	
	<div class="one_third">
	
		<div class="box">
		
			<span data-feather="loader" style="height:80px; width:80px;">
			</span>
					<script>
  						feather.replace()
					</script>
			<br/>
			<br/>
			<h5>
				Get CREATIVE
			</h5>
			<p style="text-align:center;">
				Don't stick to only specific ways of producing your leads, just because these are proven and
				tested. Do not be afraid to try uncommon methods of getting new customers. You'll never know
				when you might get an entirely fresh market when you least expect it. 
			</p>
		</div>
		<!-- end section -->
	</div>
	<!-- end all sections -->
	<div class="one_third">
	
		<div class="box">
		
			<span data-feather="trash" style="height:80px; width:80px;">
			</span>
					<script>
  						feather.replace()
					</script>
			<br/>
			<br/>
			<h5 >
				REPLENISH your assets
			</h5>
			<p style="text-align:center;">
				Do not re-use the same website, listing, or directory you have utilized for years. More often
				than not, it will only bring you the same leads or in worse scenario, give you clients that are
				already booked by your competition.
			</p>
		</div>
		<!-- end section -->
	</div>
	<!-- end all sections -->
	<div class="one_third last">
	
		<div class="box">
		
			<span data-feather="smile" style="height:80px; width:80px;">
			</span>
					<script>
  						feather.replace()
					</script>
			<br/>
			<br/>
			<h5>
				MOTIVATE regularly 
			</h5>
			<p style="text-align:center;">
				Motivation doesn't mean financial gratification. Encourage your people to do well. Successful
				lead generation campaigns boil down to dedicated people, so the more they feel useful, the more
				gains you get. 
			</p>
		</div>
		<!-- end section -->
	</div>
</div>
</div>
	<div class="clearfix">
	</div>
	
	<div class="features_sec2" style="background:#1565C0;">
		<div class="container">
		
			<div class="title1">
				<h2>
					<span class="line">
					</span>
					<span class="text" style="background:#1565C0;">
						What you need to remember !
						<div>
					</span>
				</h2>
			</div>
			<p style="color:white; text-align:center;">
				Lead generation is a crucial campaign for any company to handle. Many factors contribute to the
				success or failure of such goals.
				Technology has truly upgraded our standards in advertising, marketing and sales. It is for this
				reason that many business are focused
				in data management. However, we need to consider that the real essence of the operation lies in
				the connection between the potential
				client and the representatives on the other end of the phone line. After all, what creates a
				loyal customer is the trust that they give
				to the person they spoke with and the great experience that came with it. 
			</p>
		</div>
	</div>
						</div>
	<!-- end features section 2 -->
</body>

<footer>

	<!---<!-- end links -->
	<div class="copyright_info" style="margin-top:-5px;">
		<div class="container">
		
			<div class="one_half">
			
				Copyright 2019 
				<a href="https://www.virtualassistantgo.com" target="_blank">
					www.virtualassistantgo.com
				</a>
				All rights reserved. 
			</div>--->
			
		<!---	<div class="one_half last">
			
				<ul class="footer_social_links">
					<li data-anim-type="zoomIn">
						<a href="https://www.facebook.com/assistantGO/" target="_blank">
							<i data-feather="map-pin">
							</i>
						</a>
					</li>
					<li data-anim-type="zoomIn">
						<a href="https://twitter.com/assistantgo" target="_blank">
							&nbsp;
							<i data-feather="twitter">
							</i>
						</a>
					</li>
					<li data-anim-type="zoomIn">
						<a href="https://linkedin.com/company/onevoix" target="_blank">
							&nbsp;
							<i data-feather="linkedin">
							</i>
						</a>
					</li>
					<li data-anim-type="zoomIn">
						<a href="https://www.youtube.com/watch?v=a_3VOkhQBmM&t=26s" target="_blank">
							&nbsp;
							<i data-feather="youtube">
							</i>
						</a>
					</li>
					<script>
						feather.replace()
					</script>
				</ul>
			</div>--->
		</div>
	</div>
	<!-- end copyright info --> 
</footer>
<!-- end footer -->

<script>
		var link = document.createElement('link');
		link.type = 'images/favicon.png';
		link.rel = 'shortcut icon';
		link.href = 'images/favicon.png';
		document.getElementsByTagName('head')[0].appendChild(link);
	</script>