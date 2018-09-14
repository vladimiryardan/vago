<cfinclude template="header.cfm">

<head>
	<!-- forms -->
	<link rel="stylesheet" href="js/form/sky-forms2.css"  type="text/css" media="all">
	
	<!-- forms -->
	<link rel="stylesheet" href="js/form/sky-forms2.css" type="text/css" media="all">
	
	<!-- MasterSlider -->
	<link rel="stylesheet" href="js/masterslider/style/masterslider.css"/>
	<link rel="stylesheet" href="js/masterslider/skins/default/style.css"/>
</head>

<!---##########Header Ends########## --->

<!---#########CSS Start######### --->

<style type="text/css">
.page_title {
    position: relative;
    float: left;
    width: 100%;
    text-align: center;
    padding: 220px 0px 120px 0px;
    background: #fff url(images/404.jpg) no-repeat center top;
    background-size:cover;
    height:60vh;
	
}


.page_title .title h1.titleCustom{
	margin:0px;
	background:none;
}

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
</style>

<!---##########CSS ENDS########## --->

<div class="page_title">
	<div class="container">
	<h5 style="text-align:center;">Oops! Something went wrong!</h5>
		<div class="ms-layer centext text1 white animate fadeInLeft" data-ease="easeOutExpo">
			<strong>
				Error 500
			</strong>
			<div class="fa fa-cog fa-lg imagede" style=" border: none; border-radius:25px; color:#278ECB; font-size:20px;"></div>
			
			<a onclick="reload()" style="font-size:20px; cursor: pointer;" >Refresh 
			</a><a href="index.cfm" style="font-size:20px;">or Go to Main Page</a>
		</div>
	</div>
	<!-- end page title -->
</div>

<script>
function reload() {
    location.reload()= "pointer";
}
</script>
<cfinclude template="footer.cfm">