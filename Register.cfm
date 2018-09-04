<cfinclude template="header.cfm">

<!---##########Header Start###########--->
<head>
	  
<!-- forms -->
<link rel="stylesheet" href="js/form/sky-forms2.css" type="text/css" media="all">

<!-- forms -->
<link rel="stylesheet" href="js/form/sky-forms2.css" type="text/css" media="all">


<!-- MasterSlider -->
<link rel="stylesheet" href="js/masterslider/style/masterslider.css" />
<link rel="stylesheet" href="js/masterslider/skins/default/style.css" />
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
    background: #fff url(images/register.jpg) no-repeat center top;
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

<cfif mode is "sendmail" >

	<!---############CFMAIL############--->
	<cfmail 
			from="#email#" 
			subject="#phone#" 
			to="jacobdeanpostanes@gmail.com"
			
			username=""
			password=""
			port="587"
			server="smtp.sendgrid.net"
			usetls="true" 
			type="html">
		
		 <cfmailpart type="text/html" charset="utf-8">#name#</cfmailpart>
		 <cfmailpart type="text/html" charset="utf-8">#email#</cfmailpart>
		 <cfmailpart type="text/html" charset="utf-8">#phone#</cfmailpart>
	     <cfmailpart type="text/html" charset="utf-8">#bName#</cfmailpart>
	    
	</cfmail>
	
	<!---#############CFMAIL ENDS############--->

</cfif>

<cfif mode is "finish">
	<cflocation url="registerSuccess.cfm">
</cfif>

<!--- form handler --->
<cfif isdefined("submitted")>
	
<!---############DATABASE NOTE NEED TO CHECK############--->
	
	<!---Checking existence --->
	<cfquery name="contactUs">
		select * from contactUs
		where name = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.email#">
	</cfquery>

	<cfif mode is "default">
	
		<cfif contactUs.recordCount eq 0>
		
			<!--- insert name if not existing --->
			<cfquery>
				INSERT INTO contactUs
				( name, email, phone, bname)
				VALUES
				(<cfqueryparam value="#form.name#" cfsqltype="cf_sql_varchar"/>
				,<cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar"/>
				,<cfqueryparam value="#form.phone#" cfsqltype="cf_sql_varchar"/>
				,<cfqueryparam value="#form.bName#" cfsqltype="cf_sql_varchar"/>
				)
			</cfquery>
		</cfif>
	</cfif>
	<cflocation url="#cgi.script_NAME#?mode=finish" addtoken="false">
</cfif>

<!---#################################################### --->	

<div class="clearfix"></div>

<div class="page_title">
<div class="container">

		<div class="ms-layer centext text1 white animate fadeInLeft" data-ease="easeOutExpo">
            <strong>Virtual Assistant Go </strong>
        </div>
        
        <div class="ms-layer centext text2 white animate fadeInRight" data-effect="bottom(50)" data-duration="2000" data-delay="500" data-ease="easeOutExpo">
            <h5>Focus On What You Do Best! Our Virtual Assistant Will take Care Of The Rest</h5>
       	</div>


</div>
</div><!-- end page title -->


<cfif mode is "default" >
    


<div class="clearfix"></div>
<div class="content_fullwidth less">


<div class="container">

		
<cfset ID = "">
<cfset name = "">
<cfset email = "">
<cfset phone = "">
<cfset bName = "">   

	<div class="features_sec45">
		<div class="container">
		
			<h6 class="animate" data-anim-type="fadeInUp" data-anim-delay="100">
				- Welcome to virtualassistantgo.com -
			</h6>
			
			<h1 class="animate resize0" data-anim-type="fadeInUp" data-anim-delay="150">
				We've Been 
				<em>
					Expecting
				</em>
				You
				<b>
					This Could be the Beginning of a Beautiful Relationship
				</b>
			</h1>
			<div class="harrow_line"></div>
        	<p2 class="less2 animate" data-anim-type="fadeInUp" data-anim-delay="200" 
        	    style="text-align:left">
        		Most business owners, professionals, coaches, consultants, entrepreneurs
        		have more to-dos than they can manage. The good news? Virtualassistantgo makes it easier
        		with a team of highly skilled, experienced & reliable assistants, we take these to-dos 
        		off of your hands and give you the time to focus on growing your business and 
        		doing what you do best!
        	</p2>
		</div>
	</div>
	<!-- end features section -->
	
	<!---##########FORM START###########--->
		 <div class="one_half animate fadeInLeft">
		 	
		 
		    <div class="reg_form" style="padding-top:0px;">
			
			<cfoutput>
            		<form action="#cgi.SCRIPT_NAME#" method="post" id="sky-form" class="sky-form" style="margin-top:50px;">
						<header>
							Please Fill out your Details Below and One of our Staff will Contact you
							<strong>
								Shortly
							</strong>
						</header>
						<fieldset>
							<div class="row">
								<section class="col col-6">
									<label class="label">
										Name
									</label>
									<label class="input">
										<i class="icon-append icon-user">
										</i>
										<input type="text" name="name" id="name" value="#name#" required="true">
									</label>
								</section>
								<section class="col col-6">
									<label class="label">
										E-mail
									</label>
									<label class="input">
										<i class="icon-append icon-envelope-alt">
										</i>
										<input type="email" name="email" id="email" value="#email#" required="true">
									</label>
								</section>
                        	<section class="col col-6">
                        		<label class="label">
                        			Phone
                        		</label>
                        		<label class="input">
                        			<i class="icon-append fa-phone">
                        			</i>
                        			<input type="phone" name="phone" id="phone" value="#phone#"  required="true">                       			      
                        		</label>
                        	</section>
							<section class="col col-6">
									<label class="label">
										Business Name
									</label>
									<label class="input">
										<i class="icon-append fa-building">
										</i>
										<input type="bName" name="bName" id="bName" value="#bName#">
									</label>
								</section>
						</fieldset>
						<footer>
							<input type="submit" class="button" name="sendmail" value="Submit">	
							<!---<input type="hidden" name="mode" value="sendmail" >	--->	
							<input type="hidden" name="id" value="#ID#" >	
							<input type="hidden" name="mode" value="sendmail">
							<input type="hidden" name="submitted" value="1">
						</footer>
						
					</form>
            </cfoutput>
			</div>
		</div>
				<div class="one_half last animate fadeInRight" style="margin-top:50px;">
					<br>
					<h4 class="color">
						Want to Grow Your Business?
					</h4>
					
                	<h5>
                		Feel free to talk to our online representative at any time using our 
                		Live Chat system
                		on our 
                		<a href="https://www.onevoix.com" target="_blank" style="color:blue">
                			website 
                		</a>
                		or through our 
                		<a href="contact.cfm" target="_blank" style="color:blue">
                		Contact Us
                		</a>
                		page and we'll respond as soon as posible
                	</h5>
                	<h5>
                		Please be patient while waiting for response. (24/7 Support!) Phone General 
                		Inquiries: +1 844-214-8777 or +63917 795-0990 
                	</h5>
                	<h5>
                		Email: info@onevoix.com
                	</h5>
					<!-- end section -->
				</div>
		</div>
	</div>
			</cfif>	
	
		<!-- end section -->
		
	
<!-- end content area -->
<div class="clearfix margin_top10">
</div>

<cfinclude template="footer.cfm">