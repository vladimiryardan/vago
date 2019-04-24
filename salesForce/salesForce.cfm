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
	<cflocation url="../registerSuccess.cfm" addtoken="false">
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
	<cflocation url="../registerSuccess.cfm" addtoken="false">
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
		<meta property="robots" content="noindex, follow"/>
			
		<link rel="icon" type="image/png" href="../images/favicon.png">
				
	</head>
	<body cz-shortcut-listen="true">
	
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
				<div class="row">
					<div class="col-lg-7">
						<div class="container vago2">
						
							<h1>
								<img src="images/vago2.png" >
								<b>
									How can we help you today? 
								</b>
							</h1>
							<h3 class="bInformation">
								Fill in the form and we will get back to you 
								<br>
								in two working days
							</h3>
							<h3 class="fWeight">
								<strong>
									SALES ENQUIRIES 
								</strong>
							</h3>
                        	<p>
                        	If you are considering one of our products, fill in the form. If you need 
                        	to get in touch with a sales person right now, call us at +1 (442) 237-6035 
                        	</p>
                        	
                        	<h3 class="fWeight">
								<strong>
									SUPPORT ENQUIRIES 
								</strong>
							</h3>
                        	<p>
                        		If you are a concerned customer, and would need immediate help, please 
                        		visit our Support Portal to find Frequently Asked Questions and Solutions 
                        		fast!
                        	</p>
						
							
							<h3 class="fWeight">
								<strong>
									OTHER ENQUIRIES 
								</strong>
							</h3>
							<ul>
								<li class="enquiries">
									If you're looking for opportunities to have a partnership with Salesforce.com, go right ahead and fill up the form available, and we'll get back to you as soon as possible.
								</li>
								<li class="enquiries">
									If you're interested in having an exciting career at Salesforce.com, please click here and apply to start a wonderful and fruitful career with Salesforce.com.
								</li>
								<li>
									If you want to come visit or schedule a meeting in person, our local office address can be found here. (Scheduled meetings must be arranged through a call.)
								</li>
							</ul>
							<br>
							<br>
						</div>
					</div>
					<div class="col-lg-5" id="landingRequest">
						<div class="container vago3">
							<div class="details">
								<div class="lead2">
									<h3 style="color:white;"><i>Say hello!</i><h3>
									<span class="lead">
										
										Fill in the form with your basic information, along with your comments or questions, and we will get back to you as soon as possible.
									</span>
								</div>
								
								<div class="divider2">
								</div>
								
								<cfoutput>
									<form method="post" action="#cgi.script_name#" style="background-color: transparent;" 
									      onsubmit="gtag_report_conversion()">
										<fieldset>
											<div class="row">
												<div class="col-sm-12 col-md-12">
													<input type="text" name="firstname" id="firstName" placeholder="First Name"
													       class="depth" required="required" maxlength="20">
												</div>
												<div class="col-sm-12 col-md-12">
													<input type="text" name="lastname" id="lastname" placeholder="Last Name"
													       class="depth" required="required" maxlength="20">
												</div>
												<div class="col-sm-12 col-md-12">
													<input class="depth" type="email" id="leademl" name="leademl"
													       placeholder="Email" required="required" maxlength="50">
												</div>
												<div class="col-sm-12 col-md-12">
													<input class="depth" type="text" name="phonenumber" placeholder="Phone"
													       onkeydown="return ( event.ctrlKey || event.altKey 
										                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
										                    || (95<event.keyCode && event.keyCode<106)
										                    || (event.keyCode==8) || (event.keyCode==9) 
										                    || (event.keyCode>34 && event.keyCode<40) 
										                    || (event.keyCode==46) )" maxlength="20">
												</div>
												
												<br>
												<br>
												
												<input type="hidden" name="userip" value="#real_ipaddress#">
												<input type="hidden" name="submitted" value="1">
												
												<div class="col-sm-12 col-md-12">
													<button type="submit" class="inverse btn2">
														<strong>
															Contact Us 
														</strong>
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
		<h1 style="text-align:center;">
			LET OUR CUSTOMERS DO THE TALKING
		</h1>
		<br>
    	<div class="container">
    	
    		<div class="row cCard">
    			<div class="col-sm col-md-last col-lg-normal comments">
    				<svg class="feather feather-message-square sc-dnqmqq jxshSx trending-up" 
                	     xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24"
                	     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                	     stroke-linejoin="round" aria-hidden="true" data-reactid="801">
                		<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z">
                		</path>
                	</svg>
                		<p style="text-align:center;">Alen Salamun</p>
                	<p class="tComment" id="tComment">
                		<i>"Simple, they take security serious. Meaning serious SOC with appropriate detection
                		mechanisms to detect even user side attacks as phishing very quickly!"</i>
                	</p>
    			</div>
	    			<div class="col-sm col-sm-first col-md-last comments2">
	    				<svg class="feather feather-message-square sc-dnqmqq jxshSx trending-up" 
                	     xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24"
                	     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                	     stroke-linejoin="round" aria-hidden="true" data-reactid="801">
                		<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z">
                		</path>
                	</svg>
	                		<p style="text-align:center;">Leonard Haynes </p>
	                	<p class="tComment" id="tComment">
	                		<i>"It's very simple. Ease of access and ease of use. They are continually building and 
	                		engage customers directly on social media every time there's any kind of bump"</i>
	                	</p>
	    			</div>
    			<div class="col-sm col-md-first col-lg-normal comments3">
                	<svg class="feather feather-message-square sc-dnqmqq jxshSx trending-up" 
                	     xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24"
                	     fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                	     stroke-linejoin="round" aria-hidden="true" data-reactid="801">
                		<path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z">
                		</path>
                	</svg>
                	    		
                	
                	<p style="text-align:center;">Jennifer White</p>
                	<p class="tComment" id="tComment">
                		<i>"I used to take up so much time doing my daily cold calling. Now all I have to do is just
                		show myself at the client's door. I cant believe I just tried having a Virtual Assistant now!"</i>
                	</p>
    			</div>
    		</div>
    	</div>
	<br>
		<footer class="salesForceFooter">
    		<div class="row">
    			<div class="col-sm-8 col-sm-offset-2">
    				<div class="row">
    				
    					<div class="container vago2">
    						
    						<p class="fText">
    							
    							<strong>
    								Get in touch with someone right now, Call Us  
    								<a class="telNum" href="tel:+14422376035" style="color:white;">
    									
    									+1 (442) 237-6035</a> 
    							</strong>
    						</p>
    					</div>
    				</div>
    			</div>
    		</div>
    	</footer>
	</body>
</html>