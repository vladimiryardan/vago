<cfinclude template="header.cfm">
 
<cfparam name="url.msg" default="" >

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
    background: #fff url(images/unsubscribe.jpg) no-repeat center top;
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

	<cftry>
    	<!--- send an email to the admin --->
		<cfmail 
				from="#application.mail.user#" 
				subject="#form.subject#" 
				to="#application.mail.user#"
				usetls="true" 
				type="html">
				
				Name: #form.email#<br>
			
		    
		</cfmail>    
    <cfcatch type="Any" >
    </cfcatch>
    </cftry>


	<!--- send a copy to the client --->
	<cftry>
    	<cfmail 
			from="#application.mail.user#" 
			subject="We got your message for VirtualAssistantGo.com" 
			to="#form.email#"
<!---		port="587"
			server="smtp.sendgrid.net"
			username="#_vars.sendgrid.user#"
			password="#_vars.sendgrid.key#"
			usetls="true"--->
			type="html">
			
				We are checking your message. Thank you!<br>
				Message: #form.message#<br>			
		    
		</cfmail>    
    <cfcatch type="Any" >
    </cfcatch>
    </cftry>

	<!---#############CFMAIL ENDS############--->
	
	<!---<cflocation url="unsubcribeSuccess.cfm" addtoken="false" >--->
	
</cfif>

		<cfif mode is "finish">
			<cflocation url="unsubcribeSuccess.cfm">
		</cfif>

		<!--- form handler --->
		<cfif isdefined("submitted")>
		
			
					<!---Checking existence --->
					<cfquery name="unsubscribe" >
						select * from unsubscribe
						where email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.email#">
					</cfquery>
			
					
						
						<cfif unsubscribe.recordCount eq 0>
							
							<!--- insert name if not existing --->
							<cfquery>
								INSERT INTO unsubscribe 
								(  email) 
								VALUES
								(
									<cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar" />
									
								)
							</cfquery>			
					
						</cfif>
				<cflocation url="#cgi.script_NAME#?mode=finish" addtoken="false" >
		</cfif>--->
		



<div class="clearfix"></div>

<div class="page_title"></div>

	
<cfif mode is "default" >
    


<div class="clearfix"></div>

<div class="container">

		
<cfset ID = "">
<cfset email = "">

		 
		 <div class="content_fullwidth" style="padding-top:0px;">
		 	
		 
		    <div class="cforms">
			
			<cfoutput>
            		<form action="#cgi.SCRIPT_NAME#" method="post" id="sky-form" class="sky-form" style="margin-top:50px;">
                    	<h2>
                    	
                    		<span class="line">
                    		</span>
                    		
                    		<span class="text animate fadeIn">
                    			Unsubscribe to E-mail & Newsletter
                    		</span>
                    		<br><br>
                    		
                    		<h6 class="animate fadeInLeft" style="text-align:left;">
                    			To unsubscribe, please enter the e-mail address you want to unsubscribe.
                    			By unsubscribing below, you'll stop receiving Virtual Assistant GO 
                    			invitations and your
                    			email will stop being processed.
                    			Please note that you may continue to receive e-mails for a short time
                    			while our system updates you request
                    		</h6>
                    	</h2>
						<fieldset>
							<div class="row">
								
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
							
						</fieldset>
						<footer>
							<input type="submit" class="button" name="sendmail" value="Unsubscribe">	
							<!---<input type="hidden" name="mode" value="sendmail" >	--->	
							<input type="hidden" name="id" value="#ID#" >	
							<input type="hidden" name="mode" value="sendmail">
							<input type="hidden" name="submitted" value="1">
						</footer>
						
					</form>
            </cfoutput>
			</div>
		</div>
		</div>
	
</cfif>	


<cfif mode is "MessageSent">
	<div class="clearfix"></div>
	<div class="features_sec45">
		<div class="container">
			
			<h1 class="animate resize0"  data-anim-delay="150">
				We have received your request, thank you.
			</h1>
			
		</div>
	</div>
	<div class="clearfix"></div>	
</cfif>	
	
	

<!-- end content area -->
<div class="clearfix margin_top10"></div>


<cfinclude template="footer.cfm">