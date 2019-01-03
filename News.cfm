<cfinclude template="header.cfm" >


<style type="text/css">
	.page_title {
	    position: relative;
	    float: left;
	    width: 100%;
	    text-align: center;
	    padding: 220px 0px 120px 0px;
	    background: #fff url(images/News.jpg) no-repeat center top;
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
   <div class="container" style="border: solid; margin-bottom:100px; background-color: rgb(241 241 241);">
   	
  
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


<cfinclude template="inc_subfooter.cfm" >
<cfinclude template="footer.cfm" >