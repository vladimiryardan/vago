<cfcomponent output="false" >
	<!--- cfsilent is used all over application.cfc coz there are extra whitespaces included 
	in the request --->
	<cfsilent>
		<!--- Set up the application. --->
		<cfset THIS.Name = hash( getCurrentTemplatePath() ) />
		<cfset THIS.ApplicationTimeout = CreateTimeSpan( 1, 0, 0, 0 ) />
		<cfset THIS.SessionManagement = true />
		<cfset this.sessionTimeout = createTimeSpan( 0, 4, 0, 0 ) />
		<cfset this.datasource = "jake2" >
	</cfsilent>
	
	<cffunction name="onRequest" access="public" returntype="void"
	            output="true" hint="I process the user's CFM request.." >
		<cfargument name="template" type="string" required="true"
		            hint="I am the template requested by the user." />
	
		<!--- Check to see if reset flag exists in URL. --->
		<cfif structKeyExists( url, "reset" ) >
			<cfhtmlhead text='<script type="text/javascript">alert("Application was refreshed.");</script>' >
			<cfset this.onApplicationStart() />
		</cfif>
		<cfsilent>
			<!---CODE BLOCK - all codes in this block should exist --->
			<!--- all pages will have a mode of default --->
			<cfparam name="mode" default="default" >
			<cfparam name="mode" default="finish" >
			<!--- all form variables are made available in the url scope --->
			<cfif IsDefined( "Form" ) >
				<cfset StructAppend( URL, Form, true ) >
			</cfif>
			<!---CODE BLOCK ENDS --->
		</cfsilent>
		<!--- Include the requested page. --->
		<cfinclude template="#arguments.template#" />
		<cfreturn>
	</cffunction>
	
	<cffunction name="onRequestStart" output="false" >
		<cfargument name="targetPage" />
	
	</cffunction>
	
	<cffunction name="OnApplicationStart" access="public" returntype="boolean"
	            output="false" hint="Fires when the application is first created." >
		<cfreturn true >
	</cffunction>
	
</cfcomponent>