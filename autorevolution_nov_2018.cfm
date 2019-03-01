<cfinclude template="header.cfm" >


<style type="text/css">
	.page_title {
	    position: relative;
	    float: left;
	    width: 100%;
	    text-align: center;
	    padding: 0px 0px 120px 0px;
	    background: #fff url(images/303030Color.jpg) no-repeat center top;
	
	    height:10vh;
		
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
	.header {
	    background-color: #333;
	}	
</style>

<div class="clearfix"></div>

<div class="page_title">
<div class="container">

		<div class="ms-layer centext text1 white" data-ease="easeOutExpo">
            <strong> </strong>
        </div>
        
        <div class="ms-layer centext text2 white" data-effect="bottom(50)" data-duration="2000" data-delay="500" data-ease="easeOutExpo">
            <p></p>
       	</div>


</div>
</div><!-- end page title -->

<div class="clearfix"></div>

<div class="container">
<div class="title2" style="margin-top:50px;">
	<h2>
	
		<span class="line">
		</span>
		
		<span class="text">
			News
		</span>
		
	</h2>
</div>

 <h3 style="text-align:center;"><b>Autorevolution November 2018</b></h3>
   <div class="container" style="border: solid; margin-bottom:100px; background-color: rgb(241 241 241); ">
   	
  
    <div class="britechart js-stacked-bar-chart-tooltip-container card--chart"></div>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/d3/4.5.0/d3.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/britecharts@2/dist/bundled/britecharts.min.js'></script>

   	<script>
   		var stackedBarData = {
   		data: [
   		{ stack: "Email Acquired", name: "emailAcquired1", views: 46, date: "2018-11-05" },
   		{ stack: "Number of Calls", name: "numberOfCalls1", views: 260, date: "2018-11-05" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 46, date: "2018-11-06" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 262, date: "2018-11-06" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 37, date: "2018-11-07" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 278, date: "2018-11-07" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 47, date: "2018-11-08" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 273, date: "2018-11-08" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 52, date: "2018-11-09" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 312, date: "2018-11-09" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 14, date: "2018-11-12" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 150, date: "2018-11-12" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 40, date: "2018-11-13" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 335, date: "2018-11-13" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 39, date: "2018-11-14" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 248, date: "2018-11-14" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 47, date: "2018-11-15" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 217, date: "2018-11-15" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 40, date: "2018-11-16" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 224, date: "2018-11-16" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 45, date: "2018-11-19" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 214, date: "2018-11-19" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 30, date: "2018-11-20" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 192, date: "2018-11-20" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 22, date: "2018-11-21" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 271, date: "2018-11-21" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 29, date: "2018-11-26" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 216, date: "2018-11-26" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 47, date: "2018-11-27" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 263, date: "2018-11-27" },
   		{ stack: "Email Acquired", name: "emailAcquired2", views: 39, date: "2018-11-28" },
   		{ stack: "Number of Calls", name: "numberOfCalls2", views: 280, date: "2018-11-28" },
   		] };
   		var stackedBarChart = new britecharts.stackedBar(),
   		chartTooltip = britecharts.tooltip(),
   		container = d3.select('.js-stacked-bar-chart-tooltip-container'),
   		containerWidth = container.node() ? container.node().getBoundingClientRect().width : false,
   		tooltipContainer;
   		stackedBarChart.
   		tooltipThreshold(600).
   		width(containerWidth).
   		grid('horizontal').
   		isAnimated(true).
   		stackLabel('stack').
   		nameLabel('date').
   		valueLabel('views').
   		on('customMouseOver', function () {
   		chartTooltip.show();
   		}).
   		on('customMouseMove', function (dataPoint, topicColorMap, x, y) {
   		chartTooltip.update(dataPoint, topicColorMap, x, y);
   		}).
   		on('customMouseOut', function () {
   		chartTooltip.hide();
   		});
   		container.datum(stackedBarData.data).call(stackedBarChart);
   		chartTooltip.
   		topicLabel('values').
   		dateLabel('key').
   		nameLabel('stack').
   		title('Autorevolution');
   		tooltipContainer = d3.select('.js-stacked-bar-chart-tooltip-container .metadata-group');
   		tooltipContainer.datum([]).call(chartTooltip);
   	</script>

<p> 
	&nbsp;Total Email acquired = 620 
</p>
<p>
	&nbsp;Total Number of Calls = 4055
</p>
 </div>
</div>

<!-- ######### JS FILES ######### -->
<!-- get jQuery from the google apis -->
<script type="text/javascript" src="js/universal/jquery.js">

</script>

<!-- MasterSlider -->
<script src="js/masterslider/jquery.easing.min.js">

</script>
<script src="js/masterslider/masterslider.min.js">

</script>

<script type="text/javascript">
(function($) {
 "use strict";

	var slider = new MasterSlider();

	 slider.setup('masterslider' , {
		 width:1920,    // slider standard width
		 height:670,   // slider standard height
		 layout:'fullwidth',
		 view:"basic"
	});
	
})(jQuery);
</script>

<!---<meta charset="UTF-8"> 
	
<style >

</style>
<div class="clearfix marb12"></div>
--->
<footer class="footer">

<div class="top_footer empty"></div><!-- end footer top section -->

<div class="copyright_info">
	<div class="container">
	
		<div class="clearfix divider_dashed10"></div>
	    
	    <div class="one_half" data-anim-type="fadeInRight">
	    
	        Copyright 2013 <a href="https://www.onevoix.com" target="_blank">Onevoix.com.</a> All rights reserved.  
	        <a href="Terms.cfm">Terms of Use</a> | <a href="privacy.cfm">Privacy Policy</a> | <a href="cookie.cfm">Cookie Policy</a>
	        
	    </div>
	    
	    <div class="one_half last">
	        
	        <ul class="footer_social_links">
	            <li data-anim-type="zoomIn"><a href="https://www.facebook.com/onevoix" target="_blank"><i class="fa fa-facebook"></i></a></li>
	            <li data-anim-type="zoomIn"><a href="https://twitter.com/OnevoixPh" target="_blank"><i class="fa fa-twitter"></i></a></li>
	            <li data-anim-type="zoomIn"><a href="https://plus.google.com/111795207316993122223?rel=author" target="_blank"><i class="fa fa-google-plus"></i></a></li>
	            <li data-anim-type="zoomIn"><a href="https://linkedin.com/company/onevoix" target="_blank"><i class="fa fa-linkedin"></i></a></li>
	            <li data-anim-type="zoomIn"><a href="https://www.youtube.com/user/onevoix" target="_blank"><i class="fa fa-youtube"></i></a></li>
	        </ul>
	            
	    </div>
	    
	</div>
</div><!-- end copyright info -->

<div class="clearfix"></div>

</footer>


<a href="#" class="scrollup">Scroll</a>
<!-- end scroll to top of the page-->


<!-- ######### JS FILES ######### -->
<!-- get jQuery from the google apis -->
<script type="text/javascript" src="js/universal/jquery.js"></script>


<!-- animations -->
<script src="js/animations/js/animations.min.js" type="text/javascript"></script>

<!-- mega menu -->
<script src="js/mainmenu/bootstrap.min.js"></script> 
<script src="js/mainmenu/customeUI.js"></script> 

<!-- MasterSlider -->
<script src="js/masterslider/jquery.easing.min.js"></script>

<!-- scroll up -->
<script src="js/scrolltotop/totop.js" type="text/javascript"></script>

<!-- sticky menu -->
<script type="text/javascript" src="js/mainmenu/sticky-main.js"></script>
<script type="text/javascript" src="js/mainmenu/modernizr.custom.75180.js"></script>

<script type="text/javascript" src="js/universal/custom.js"></script>

<!--Cookie Popup -->
<script src="js/jquery-eu-cookie-law-popup.js"></script>


<cfif cgi.HTTP_HOST CONTAINS 'virtualassistantgo'>
	<!--- use in vago prod --->	
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-51354712-3"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
	
	  gtag('config', 'UA-51354712-3');
	</script>	

</cfif>

</body>
</html>


