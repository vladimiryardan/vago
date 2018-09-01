<cfinclude template="header.cfm">
    
     <!-- forms -->
    <link rel="stylesheet" href="js/form/sky-forms2.css" type="text/css" media="all">

<div class="clearfix">
</div>
<br/>

	<div class="clearfix marb10">
	</div>
	
	<div class="container">


		<cfif mode is "finish">
			<cflocation url="registerSuccess.cfm" >
			
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
								( type, name, email, phone, bName) 
								VALUES
								(
									<cfqueryparam value="#form.type#" cfsqltype="cf_sql_varchar" />,
									<cfqueryparam value="#form.name#" cfsqltype="cf_sql_varchar" />,
									<cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar" />,
									<cfqueryparam value="#form.phone#" cfsqltype="cf_sql_varchar" />,
									<cfqueryparam value="#form.bName#" cfsqltype="cf_sql_varchar" />
								)
							</cfquery>			
						</cfif>
					</cfif>
				<cflocation url="#cgi.script_NAME#?mode=finish" addtoken="false" >
		</cfif>
	

			<cfif mode is "default" >
			<br>
			<br>
				<h4>
					Feel free to talk to our online representative at any time you please using our Live Chat system 
					on our <a href="https://www.onevoix.com" style="color:blue">website </a>or one of the below instant messaging programs.
				</h4>
				<br/>
				<p>
					Please be patient while waiting for response. (24/7 Support!) 
					<strong>
						Phone General Inquiries: +1 844-214-8777 or +63917 795-0990
					</strong>
				</p>
				<br/>
				<br/>
				<br/>	
				
				<cfset ID = "">
				<cfset type = "">
				<cfset name = "">
				<cfset phone = "">		
				<cfset email ="">	
				<cfset bName = "">
				
			<div class="cforms">
			
			<cfoutput>
				
				<div class="reg_form">
					
				
            		<form action="#cgi.SCRIPT_NAME#" method="post" id="sky-form" class="sky-form">
						<header>
							Please Enter Required 
							<strong>
								Details
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
										<input type="phone" name="phone" id="phone" value="#phone#" required="true">
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
								
								
							</div>
						</fieldset>
						<footer>
							<input type="submit" class="button" name="Submit" value="Submit">			
							<input type="hidden" name="id" value="#ID#" >	
							<input type="hidden" name="mode" value="#mode#">
							<input type="hidden" name="submitted" value="1">
						</footer>
						
					</form>
				</div>
            </cfoutput>
			</div>
			
			</cfif>	
	
		<!-- end section -->
		
	</div>
</div>
<!-- end content area -->
<div class="clearfix margin_top10">
</div>

<cfinclude template="footer.cfm">