<cfinclude template="header.cfm">
    
<head>
<meta http-equiv="refresh" content="5; URL=https://virtualassistantgo.com/index.cfm">
<meta name="keywords" content="automatic redirection">
</head>
     <!-- forms -->
    <link rel="stylesheet" href="js/form/sky-forms2.css" type="text/css" media="all">

<!---############CSS############--->

<style type="text/css">
.page_title {
    position: relative;
    float: left;
    width: 100%;
    text-align: center;
    padding: 220px 0px 120px 0px;
    background: #fff url(images/contactsuccess.jpg) no-repeat center top;
    background-size:cover;
    height:100vh;
	margin-bottom:30px;
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

<!---##############CSS ENDS##############--->

<!---##############Title Head############ --->

<div class="clearfix"></div>

<div class="page_title">
	<div class="content_fullwidth less">
		
		<div class="reg_form">
			<h1 class="animate resize0" data-anim-type="fadeInUp" data-anim-delay="150">
					Thank You! 
			</h1>
			
        	<h5 style="color:gray;">
        		We just receive your request to unsubscribe on our email and newsletter
        	</h5>
        	<h5 style="color:gray;">
        		<p> Auto-redirects in 5 Seconds</p>
        	</h5>
				<progress value="0" max="5" id="progressBar"></progress>
	        <br />				
		</div>
	</div>
</div><!-- end page title -->
<div class="clearfix"></div>

<script>
	var timeleft = 5;
	var downloadTimer = setInterval(function(){
	document.getElementById("progressBar").value = 5 - --timeleft;
	if(timeleft <= 0)
	clearInterval(downloadTimer);
	},1000);
</script>


<cfinclude template="footer.cfm">