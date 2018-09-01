<cfinclude template="header.cfm">

<head>
    <!-- MasterSlider -->
	<link rel="stylesheet" href="js/masterslider/style/masterslider.css" />
    <link rel="stylesheet" href="js/masterslider/skins/default/style.css" />
	
</head>

<div class="mstslider" style="margin-top:50px;">

	<!-- masterslider -->
	<div class="master-slider ms-skin-default" id="masterslider">
	
		<!-- slide -->
		<div class="ms-slide slide-1" data-delay="7" style=" height:450px;">
		
			<!-- slide background -->
			<img 
			src="images/womantyping.jpg" alt="" width="100%"
			object-fit="contain" max-width="1400px";/>
			<div class="ms-layer centext text1 white" style="top:230px" data-ease="easeOutExpo">
				<strong>
					What is a Virtual Assistant?
				</strong>
			</div>
			
			<div class="ms-layer centext text2 white" style="top:305px" data-effect="bottom(50)" 
			     data-duration="2000" data-delay="500" data-ease="easeOutExpo">
				Our skilled virtual assistants are ready to bring your business to a new level!
			</div>
			
			<div class="ms-layer centext sdbut" style="top:380px" data-effect="bottom(100)" 
			
			data-ease="easeOutExpo">
				<a href="register.cfm">
					Request a Consultation
				</a>
			</div>
		</div>
	</div>
</div>

<div class="clearfix">
</div>

<div class="content_fullwidth" style="padding:40px 0px 50px 0px;">
	<div class="container">
	
		<div class="blog_post">
			<div class="blog_postcontent">
				
				<ul class="post_meta_links">
					<li>
						<a href="">
							<img class="imgprofile" src="http://placehold.it/80x80" alt=""/>
						</a>
						&nbsp;&nbsp;
					</li>
					<li>
						<a href="#" class="date">March 21, 2018</a>
					</li>
					<li class="post_by">
						<i>
							by:
						</i>
						<a href="#"> Randy Duermyer</a>
					</li>
					<li class="post_categoty">
						<i>
							in:
						</i>
						<a href="#">Onevoix</a>
					</li>
					<li class="post_comments">
						<i>
							note:
						</i>
						<a href="#">Comments</a>
					</li>
				</ul>
				<div class="clearfix">
				</div>
				<div class="margin_top1">
				</div>
            	<p>
            	
            		A Virtual Assistant (VA) is a person who provides support services to other businesses 
            		from a remote location. The term originated in the 1990s as the ability to work 
            		virtually due to technology improvements, such as high-speed Internet, document 
            		sharing, and other advancements, made working remotely a reality.
            		
            	</p>
            	
				<br>
				<p>
					Virtual assistants are especially in demand by entrepreneurs and online businesses 
            		that need help but don't want to bring on staff in their location. However, many small 
            		and mid-size businesses use virtual support, especially for specific tasks such as 
            		social media management.
				</p>
				
				<br>
				
				<p>
					<b>
						What do Virtual Assistants do? 
					</b>
					
				</p>
				<br>
				
            	<p>
            	
            		Theoretically, a VA can do anything any other support staff does, except bring the 
            		coffee. (Although when home-delivery coffee is created, the VA will be able to do that 
            		too!). However, virtual support duties are not limited to clerical work. Many VAs 
            		provide marketing, web design and other services.
            	</p>
            	
            	<br>
            	
            	<p>
            		Some virtual assistants specialize in a specific skill set. For example, a marketing 
            		or PR virtual assistant only does marketing or PR work. Other virtual assistants do a 
            		variety of duties but within a specific industry. For example, a real estate virtual 
            		assistant does many tasks, but only for Realtor clients.
            	</p>
            	
            	<br>
            	
            	<p>
            		Most virtual assistants run their own home-based virtual assistant business. This 
            		allows them to earn more (usually $25 per hour or more depending on the tasks offered) 
            		and have greater control over the duties they perform. However, many small businesses 
            		hire virtual assistants in an employment or contract position. These VAs usually earn 
            		$10 to $15 per hour depending on the skill set required. Finally, many VAs use 
            		freelance sites or microwork sites to find quick, time-limited projects. These don't 
            		usually pay well, but they can offer a start to a new VA.
            	</p>
				
				<br>
				
				<p>
					<b>
						How to Hire a VA 
					</b>
				</p>
				<br>
            	<p>
            		While virtual support is a great home business idea, getting virtual help is crucial 
            		for home business owners to maximize income and facilitate growth. As a home business 
            		owner, there comes a time in which it's impossible to do everything, at least well 
            		enough to be efficient and effective. Hiring a virtual assistant frees up your time so 
            		you can focus on the work that will make money. Plus, many virtual assistants are 
            		better than you at some tasks. It's always faster and less expensive in the long run 
            		to hire out duties you're not skilled at.
            	</p>
				
				<br>
				
            	<p>
            		The first step in hiring a virtual assistant is to make a list of the tasks you want 
            		to outsource. Make a complete list, prioritizing the activities you want to delegate 
            		first. For example, if managing email is time-consuming and tedious, put that at the 
            		top of your list. Or maybe tech issues are taking too much time, you can outsource 
            		website management.
            	</p>
				
				<br>
				
            	<p>
            		The next step is determining who to hire. There are many ways to hire a virtual 
            		assistant. You can use a VA service that hires and trains the VA, and then assigns you 
            		one based on the services you need. You can go through a freelance service such as 
            		Upwork (formerly Elance and ODesk). The final option is to engage your network for a 
            		referral. While you can put an ad out looking for a virtual assistant, finding one 
            		that is already vetted will save you time and headache.
            	</p>
				
				<br>
				
            	<p>Source:<a href="https://www.thebalancesmb.com/virtual-assistant-1794441">&nbsp; www.thebalancesmb.com</i></a></li></p>
				
			</div>
		</div>
	</div>
</div>
<div class="clearfix">
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
		 width:1400,    // slider standard width
		 height:600,   // slider standard height
		 layout:'fullwidth',
		 view:"basic"
	});
	
})(jQuery);
</script>
<!-- /# end post -->
<cfinclude template="footer.cfm">