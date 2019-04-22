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
		<!---mini css feather icons --->
		<script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
				
	</head>
	<body cz-shortcut-listen="true">
	
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
				<div class="row">
					<div class="col-lg-7">
						<div class="container vago2">
						
							<h1>
								<b>
									How can we help you today? 
								</b>
							</h1>
							<h3>
								Fill in the form and we will get back to you 
								<br>
								in two working days
							</h3>
							<p>
								<strong>
									SALES ENQUIRIES 
								</strong>
							</p>
                        	<p>
                        	If you are considering one of our products, fill in the form. If you need 
                        	to get in touch with a sales person right now, call us at 800-1301-448 
                        	(Singapore, 800-967-655 (Hong Kong), or +65 6302 5700 (International). 
                        	<br>
                        	<br>
                        	<p>
								<strong>
									SUPPORT ENQUIRIES 
								</strong>
							</p>
                        	<p>
                        		If you are a concerned customer, and would need immediate help, please 
                        		visit our Support Portal to find Frequently Asked Questions and Solutions 
                        		fast!
                        	</p>
							<br>
							
							<p>
								<strong>
									OTHER ENQUIRIES 
								</strong>
							</p>
							<ul>
								<li>
									If you're looking for opportunities to have a partnership with Salesforce.com, go right ahead and fill up the form available, and we'll get back to you as soon as possible.
								</li>
								<li>
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
									<span class="lead">
										<b>Say hello!</b> <br>
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
													       onkeypress="return isNumberKey(event)" maxlength="20">
												</div>
												<div class="col-sm-12 col-md">
													<textarea class="tArea" type="text" name="comments" placeholder="Questions / Comments"
													          maxlength="500">
													</textarea>
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
			<footer>
    		<div class="row">
    			<div class="col-sm-8 col-sm-offset-2">
    				<div class="row">
    				
    					<div class="container vago2">
    						<p>
    							<strong>
    								Get in touch with someone right now, Call Us  
    								<a class="telNum" href="tel:+14422376035" style="color:#383838;">+1 (442) 237-6035</a> 
    							</strong>
    						</p>
    					</div>
    				</div>
    			</div>
    		</div>
    	</footer>
	</body>
</html>