<cfcomponent output="false" extends="component.Environment">
	<!--- These functions can only be called if the site is running on the dev/test/prod servers, because once they are deployed from Octopus, the variables will be substituted to actual values --->
	<!--- The single-pound signs cause an error because it is invalid CFML syntax --->
	<!--- The values defined below need to be added to the Octopus Deploy variables and deploy process in the format #{VariableName} --->

	<cffunction name="setEnvironmentVariables" returntype="void" access="public">
		
		<cfset Application.default_email_sender = "#{DefaultEmailSender}">
		<cfset Application.APIKey = "#{ProductionAPIKey}">
		<cfset Application.DSN = "#{DSN}">
	</cffunction>

	<cffunction name="getName" returntype="string" access="public">
		
		<cfreturn "#{ApplicationName}">
	</cffunction>
</cfcomponent>