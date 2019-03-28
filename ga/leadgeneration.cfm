<!---landingPageRequestQuote.cfm--->
<cfif CGI.HTTP_X_Forwarded_For EQ "">
	<!--- Checking proxy address --->
	<cfset real_ipaddress = CGI.REMOTE_ADDR>
<cfelse>
	<cfset real_ipaddress = CGI.HTTP_X_Forwarded_For>
</cfif>

<!--- handler get started --->
<cfif isdefined("form.submitted")>

	<cfquery>
		insert into leads
		(
		leadname,
		leadphone,
		leademail,
		
		leadhost,
		leadwebsite,
		leadpromo,
		leadsrc
		)
		values
		(<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.firstName# #form.lastname#">
		,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.phonenumber# ">
		,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.leademl# ">
		,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.userip#">
		,<cfqueryparam cfsqltype="cf_sql_varchar" value="">
		,<cfqueryparam cfsqltype="cf_sql_varchar" value="Lead Generation Ad landing page">
		,<cfqueryparam cfsqltype="cf_sql_varchar" value="Google ads">
		)
	</cfquery>

	<!--- send mail --->
	<cflocation url="successLG.cfm" addtoken="false">
</cfif>

<!--- 500 credit handler --->
<cfif isdefined("form.credit")>

	<cfquery>
		insert into leads
		(
		leadhost,
		leademail,
		leadpromo,
		leadsrc
		)
		values
		(<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.userip#">
		,<cfqueryparam cfsqltype="cf_sql_varchar" value="#form.email#">
		,<cfqueryparam cfsqltype="cf_sql_varchar" value="500 dollar credit">
		,<cfqueryparam cfsqltype="cf_sql_varchar" value="Google ads">
		)
	</cfquery>

	<!--- send mail --->
	<cflocation url="successLG.cfm" addtoken="false">
</cfif>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="./css/mini-default.min.css" rel="stylesheet">
		<link href="./css/style.min.css" rel="stylesheet">
		<link href="./css/vago.css" rel="stylesheet">
		<title>
			Virtual Assistant Go | Virtual Assistant for Lead Generation, Appointment Setting, Customer 
			Service
		</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" 
		      content="Virtual Assistant for Lead Generation, Appointment Setting, Customer Service">
		<meta name="keywords" 
		      content="Small business lead generation, lead generation, Appointment Setting, Customer Service, Inbound and Outbound Lead Generation Service">
		<meta name="author" content="Virtual Assistant Go">
		<meta property="og:title" 
		      content="Virtual Assistant for Lead Generation, Appointment Setting, Customer Service">
		<meta property="og:description" 
		      content="Small business lead generation, lead generation, Appointment Setting, Customer Service, Inbound and Outbound Lead Generation Service">
		<meta property="og:type" content="website">
		<meta property="og:image" content="page_thumb.png">
		<meta property="og:url" content="https://virtualassistantgo.com">
		<link rel="icon" type="image/png" href="../images/favicon.png">
		<!---mini css feather icons --->
		<script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js">

		</script>
	</head>
	<body cz-shortcut-listen="true">
	
		<div class="index-splash vago">
	  <div class="index-splash-image no-filter"> </div>
	  <div class="index-splash-image"> </div>
	  <h1 class="splash" id="lg"> Lead Generation </h1>
	  <h1 class="splash" id="valg"> Virtual Assistant for Lead Generation</h1>
	  <p class="splash" style="font-size:19px;"> Generate leads of high-quality
	    with our <br>
	    <strong>LEAD GENERATION!</strong> </p>
	  <a class="button splash2" href="tel:+4422376035">	  
	    <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path>
	  <strong>Call us: (442) 237-6035</strong> </a> 
	<a class="button splash" href="#landingRequest"> 
		Get Started 
	</a> 
</div>
		
		<div class="row">
  <div class="col-sm-8 col-sm-offset-2">
    <div class="row">
      <div class="col-lg-7">
        <div class="container vago2">
          <h1>Generate leads of high-quality with our <br>
            <strong>LEAD GENERATION!</strong><br><br> </h1>
          <p> <strong>Virtual Assistant GO</strong> has been working with multiple <strong>COMPANIES</strong> that require virtual assistance for lead generation, 
            and have also proven to turn those leads into potential clients! <br>
            <br>
            We have <strong>LEAD GENERATORS</strong> that have mastered how to work on this global platform, both successfully 
            and efficiently! Whether you are busy in an important business meeting, or even out traveling the
            world with your family, and without internet access, <strong>YOUR LEAD GENERATION IS WORKING!</strong> </p>
        </div>
      </div>
      <div class="col-lg-5" id="landingRequest">
        <div class="container vago3">
          <div class="details">
            <div class="lead2">
              <span class="lead" >To get started with this hassle-free 
                online journey just  fill in the form</span> 
            </div>
            <div class="divider2"></div>
            
           <cfoutput>
           	 <form method="post" action="#cgi.script_name#" style="background-color: transparent;">
	              <fieldset>
	                <div class="row">
	                  <div class="col-sm-12 col-md-6">
	                    <input type="text" name="firstname" id="firstName" placeholder="First Name">
	                  </div>
	                  <div class="col-sm-12 col-md-6">
	                    <input type="text" name="lastname" id="lastname" placeholder="Last Name">
	                  </div>
	                  <div class="col-sm-12 col-md-12">
	                    <input class="depth" type="text" id="leademl" name="leademl" placeholder="Email">
	                  </div>
	                  <div class="col-sm-12 col-md-12">
	                    <input class="depth" type="text" name="phonenumber" placeholder="Phone Number" onkeypress="return isNumberKey(event)">
	                  </div>
	                  <br><br>
	                  
	                  	<input type="hidden" name="userip" value="#real_ipaddress#">
						<input type="hidden" name="submitted" value="1">
							
	                 <div class="col-sm-12 col-md-12">
	                  <button type="submit" class="inverse btn2">
	                  <strong> 
	                  	
	                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-send">
	                    <line x1="22" y1="2" x2="11" y2="13"></line>
	                    <polygon points="22 2 15 22 11 13 2 9 22 2"></polygon>
	                  </svg>
	                  &nbsp;Contact Us </strong>
	                  </button>
						</div>
	                </div>
	              </fieldset>
	            </form>
           </cfoutput>
            
            
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<br>
		<div class="row padded alt-back vago4">
			<div class="col-sm-12 col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24"
				     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
				     stroke-linejoin="round" class="feather feather-map monitor">
					<polygon points="1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6">
					</polygon>
					<line x1="8" y1="2" x2="8" y2="18">
					</line>
					<line x1="16" y1="6" x2="16" y2="22">
					</line>
				</svg>
				
				<h1>
					<i>
						"Our finely-tuned techniques on lead generation, and other marketing secrets
						could surely put your BRAND, or even YOURSELF, on the map!"
					</i>
				</h1>
				<br>
				<p>
					Our Virtual Assistant on 
					<strong>
						LEAD GENERATION
					</strong>
					has exceptional communication and conversational skills.
					They are experienced in both inbound and outbound calling for your business and marketing
					needs. 
					<br>
					<br>
					<strong>
						YOUR LEAD GENERATOR
					</strong>
					is equipped with the best tools to perfectly execute and accomplish any given
					task. All of our Virtual Assistants work in an office in the Philippines, where they are
					properly
					managed to provide the best results! It's like you just hired a whole office itself! 
					<br>
					<br>
					With a little provided product knowledge coming from you, your Virtual Assistant will
					definitely
					help you 
					<strong>
						INCREASE YOUR PRODUCTIVITY
					</strong>
					and turn those leads into 
					<strong>
						INCOME
					</strong>
					. 
				</p>
			</div>
		</div>
		
		<div class="row padded primary-section" id="credit" style="padding-top:50px; padding-bottom:50px;">
			<div class="col-sm-8 col-sm-offset-2">
				<div class="row">
					<div class="col-lg-7">
						<div class="container">
							<h1 class="claim" id="claim">
								<strong>
									CLAIM YOUR $500 CREDITS NOW!
								</strong>
							</h1>
						</div>
					</div>
					<div class="col-lg-5">
						<div class="container vago4">
							<div class="details" id="details" style="background-color:rgb(24,24,24,.6)">
								<p style="color:white;">
									
									<cfoutput>
                                    	<form method="post" action="#cgi.script_name#" style="background-color: transparent;">
											<fieldset>
												<div class="input-group fluid" id="inputGroup">
													<input type="email"  action="" name="email" id="Email" placeholder="E-mail" required="required">
													<button type="submit" class="inverse">
														<strong>
															Send
														</strong>
													</button>
												</div>
											</fieldset>
											<input type="hidden" name="credit" value="1">
											<input type="hidden" name="userip" value="#real_ipaddress#">
										</form>
                                    </cfoutput>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="row padded alt-back2">
			<div class="col-sm-12 col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24"
				     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
				     stroke-linejoin="round" class="feather feather-user-check trending-up">
					<path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2">
					</path>
					<circle cx="8.5" cy="7" r="4">
					</circle>
					<polyline points="17 11 19 13 23 9">
					</polyline>
				</svg>
			
				<h2 class="feature-header"> <strong>IT'S LIKE YOU JUST HIRED A WHOLE OFFICE ITSELF!</strong> </h2>
    <br>
  	<p>
  		Most virtual assistants are either home-based, or self-employed. But not us. Our virtual 
  		assistants get to take advantage of our office' amenities and resources. We are working in a 
  		very professional environment, equipped with top of the line technology and facilities. Imagine 
  		yourself not just with a virtual assistant, but with a fully functioning, and tailor made 
  		virtual office just for you! 
  	</p>
  </div>
</div>
<br><br>
		<div class="row padded primary-section">
  <div class="col-sm-12 col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
    <h1 class="feature-header"> <strong>GET STARTED NOW!</strong> </h1>
    <br>
    <h3> <strong><i>"With a little provided product knowledge coming from you, your Virtual Assistant will definitely 
      help you INCREASE YOUR PRODUCTIVITY and turn those leads into INCOME!"</i></strong> </h3>
    <p style="text-align:center;"> <a href="#landingRequest" class="button"> Get Started </a> </p>
  </div>
</div>
    	<footer>
    		<div class="row">
    			<div class="col-sm-8 col-sm-offset-2">
    				<div class="row">
    				
    					<div class="container vago2">
    						<p>
    							<strong>
    								Get in touch with someone right now, Call Us at 
    								<a class="telNum" href="tel:+14422376035" style="color:#383838;">+1 (442) 237-6035</a> 
    							</strong>
    						</p>
    					</div>
    				</div>
    			</div>
    		</div>
    	</footer>

<script>
	feather.replace()
	var bName = document.getElementById("businessName").required;
	function isNumberKey(evt){
	var charCode = (evt.which) ? evt.which : event.keyCode
	if (charCode > 31 && (charCode < 48 || charCode > 57))
	return false;
	return true;
	}
</script> 
							
	</body>
</html>