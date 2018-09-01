<cfinclude template="header.cfm">
 

 <!-- forms -->
<link rel="stylesheet" href="js/form/sky-forms2.css" type="text/css" media="all">


<!-- MasterSlider -->
<link rel="stylesheet" href="js/masterslider/style/masterslider.css" />
<link rel="stylesheet" href="js/masterslider/skins/default/style.css" />

<style type="text/css">
.page_title {
    position: relative;
    float: left;
    width: 100%;
    text-align: center;
    padding: 220px 0px 120px 0px;
    background: #fff url(images/contact.png) no-repeat center top;
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

<cfif mode is "sendmail" >


<cfmail 
		from="#email#" 
		subject="#subject#" 
		to="jacobdeanpostanes@gmail.com"
		
		username=""
		password=""
		port="587"
		server="smtp.sendgrid.net"
		usetls="true" 
		type="html">
	
	 <cfmailpart type="text/html" charset="utf-8">#name#</cfmailpart>
	 <cfmailpart type="text/html" charset="utf-8">#email#</cfmailpart>
	 <cfmailpart type="text/html" charset="utf-8">#subject#</cfmailpart>
    <cfmailpart type="text/html" charset="utf-8">#message#</cfmailpart>
    
</cfmail>

</cfif>

<cfif mode is "finish">
	<cflocation url="registerSuccess.cfm">
</cfif>

<!--- form handler --->
		<cfif isdefined("submitted")>
		
			
					<!---Checking existence --->
					<cfquery name="contactUs" >
						select * from contactUs
						where name = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.name#s">
					</cfquery>
			
					<cfif mode is "default">
						
						<cfif contactUs.recordCount eq 0>
							
							<!--- insert name if not existing --->
							<cfquery>
								INSERT INTO contactUs 
								( name, email, subject, message) 
								VALUES
								(
									<cfqueryparam value="#form.name#" cfsqltype="cf_sql_varchar" />,
									<cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar" />,
									<cfqueryparam value="#form.subject#" cfsqltype="cf_sql_varchar" />,
									<cfqueryparam value="#form.message#" cfsqltype="cf_sql_varchar" />
									
								)
							</cfquery>			
						</cfif>
					</cfif>
				<cflocation url="#cgi.script_NAME#?mode=finish" addtoken="false" >
		</cfif>
		



<div class="clearfix"></div>

<div class="page_title">
<div class="container">

		<div class="ms-layer centext text1 white" data-ease="easeOutExpo">
            <strong>Contact Us </strong>
        </div>
        
        <div class="ms-layer centext text2 white animate fadeIn" data-effect="bottom(50)" data-duration="2000" data-delay="500" data-ease="easeOutExpo">
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
<cfset subject = "">
<cfset message = "">   
		 
		 <div class="one_half animate fadeInLeft">
		 	
		 
		    <div class="cforms">
			
			<cfoutput>
            		<form action="#cgi.SCRIPT_NAME#" method="post" id="sky-form" class="sky-form" style="margin-top:50px;">
						<header>
							Send Us a 
							<strong>
								Message!
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
							</div>
							<section>
								<label class="label">
									Subject
								</label>
								<label class="input">
									<i class="icon-append icon-tag">
									</i>
									<input type="text" name="subject" id="subject" value="#subject#" required="true">
								</label>
							</section>
							<section>
								<label class="label">
									Message
								</label>
								<label class="textarea">
									<i class="icon-append icon-comment">
									</i>
									<textarea rows="4" name="message" id="message" value="#message#" required="true"></textarea>
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
					<h4 class="color">
						Ask a Question?
					</h4>
					
					<h5>
						Thank you for using virtualassistantgo.com
						Please complete the form, so we can provide quick and
						efficient service. If this is an urgent matter Please
						Contact Us at (442) 237-6035
					</h5>
					<h5>
						Monday to Friday 7:00am - 10pm EST
					</h5>
					<!-- end section -->
				</div>
		</div>
	</div>
			</cfif>	
	

<!-- end content area -->
<div class="clearfix margin_top10"></div>


<cfinclude template="footer.cfm">