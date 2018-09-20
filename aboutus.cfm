<cfinclude template="header.cfm" >


<style type="text/css">
	.page_title {
	    position: relative;
	    float: left;
	    width: 100%;
	    text-align: center;
	    padding: 220px 0px 120px 0px;
	    background: #fff url(images/aboutus.jpg) no-repeat center top;
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
            <strong>About Us</strong>
        </div>
        
        <div class="ms-layer centext text2 white" data-effect="bottom(50)" data-duration="2000" data-delay="500" data-ease="easeOutExpo">
            <h5></h5>
       	</div>


</div>
</div><!-- end page title -->

<div class="clearfix"></div>

<div class="title2" style="margin-top:50px;">
	<h2>
	
		<span class="line">
		</span>
		
		<span class="text animate fadeIn">
			Virtual Assistant GO
		</span>
		<em>
			
		</em>
	</h2>
</div>

<br>

<!---##########BODY##########--->

	<div class="container">
    	<p class="animate fadeInRight">
    		VirtualAssistantGO.com is a solution that offers Virtual Assistant to Real Estate agents and 
    		Entrepreneurs. The service will provide quality Virtual Assistant Professional in a cost 
    		effective way and empowering your business. 
    	</p>
		<br>
    	<p class="animate fadeInLeft">
    		Our Virtual Assistants are at an advantage in doing inbound and outbound voice calls. Our Team 
    		has honed and passed this skill to all of their seasoned agents, and have continuosly improved 
    		over the years.. 
    	</p>
    	<br>
    	<p class="animate fadeInRight">
    		Finding reliable, trustworthy, and competent help has always been one of the foremost challenges of 
    		running a successful business and it's even more relevant when using remote resources. 
    		VirtualAssistantGO's team of experienced, reliable, and vetted virtual assistants can provide your business 
    		with support you need.
    	</p>
    	
    	<br><br>
    	
	</div>
    	<div class="features_sec55 two">
		<div class="container">
			<div class="title2 animate fadeIn">
	<h2>
			Virtual Assistant GO Values
		
	</h2>
</div>
			<br/>
			
			<div class="one_half">
			
				<i class="fa fa-users" style=" font-size:30px;">
					&nbsp;Talent
					<p><br>
					Our Virtual Assistants are selected for their innate sense of service and care, 
					as well as their years of professional experience. We look for people who 
					are motivated to contribute to and partner with our clients for the long term.
					</p>
				</i>
				<br>
				<br>
				<i class="fa fa-thumbs-up" style=" font-size:30px;">
					&nbsp;Responsibility
					<p><br>
					Our team takes responsibility 
					for their actions and for speaking up when something isn't working, so that it can 
					be improved. We back that up with our 100% lifetime satisfaction guarantee.
					</p>
				</i>
				<br/>
				<br>
				
				<br/>
				<br>
			</div>
			<!-- end section -->
			<div class="one_half last">
			
				<i class="fa fa-heart" style=" font-size:30px;">
					&nbsp;Friendly & Caring
					<p><br>
					We like working with friendly and caring people. That's why VirtualAssistantGO 
					is all about providing friendly, personalized service. Look forward to working with a motivated 
					team who cares deeply about doing a great job.
					</p>
				</i>
				<br/>
				<br>
				<i class="fa fa-pencil-square" style=" font-size:30px;">
					&nbsp;Paying Attention To Detail
					<p><br>
					We believe that solid execution 
					comes from sweating the details, and one of our team requirements is to care for all the little 
					things that translate into extraordinary results.
					</p>
				</i>
				<br/>
				<br>
			</div>
			<!-- end section -->
			
	</div>
	</div>

<div class="clearfix"></div>
<div class="title2" style="margin-top:50px;">
	<h2>
	
		<span class="line">
		</span>
		
		<span class="text animate fadeIn">
			Our Story
		</span>
		<br>
		<br>
	<div class="container">	
		<p class="animate fadeInRight" style="text-align:left;">
			In today’s corporate world, it is imperative that your company should be able to focus on your main goals 
			to ensure business growth without having to sacrifice your customers’ satisfaction. The good news is, you 
			can now pay attention to the things you have set your company to accomplish- your vision to expand the level 
			and scope of your services, and we’ll take care of your customers’ experience.
		</p>
		<br>
		<p class="animate fadeInLeft" style="text-align:left;">
			Established in February 2009, started with a very modest goal in mind- to give companies 
			the opportunity to save on cost and improve their customer service. We critically emphasize on customer 
			engagement with the help of our seasoned agents trained to always think outside the box. And our brand's 
			promise? To take care of your business as if it is our own. 
		</p>
	</h2>
	</div>
</div>
<!-- ######### JS FILES ######### -->
<!-- get jQuery from the google apis -->
<script type="text/javascript" src="js/universal/jquery.js"></script>

<!-- MasterSlider -->
<script src="js/masterslider/jquery.easing.min.js"></script>
<script src="js/masterslider/masterslider.min.js"></script>

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