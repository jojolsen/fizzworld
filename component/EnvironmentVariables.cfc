<cfcomponent output="false">
	<!--- These functions can only be called if the site is running on the dev/test/prod servers, because once they are deployed from Octopus, the variables will be substituted to actual values --->
	<!--- The single-pound signs cause an error because it is invalid CFML syntax --->
	<!--- The values defined below need to be added to the Octopus Deploy variables and deploy process in the format #{VariableName} --->

	<cffunction name="getEnvironmentVariables" returntype="struct" access="public">
		
		<cfset var environmentVariables = {
			DefaultEmailSender : "#{DefaultEmailSender}"
			, APIKey : "#{ProductionAPIKey}"
			, DSN : "#{DSN}"
		}>

		<cfreturn environmentVariables>
	</cffunction>

	<cffunction name="getName" returntype="string" access="public">
		
		<cfreturn "#{ApplicationName}">
	</cffunction>
</cfcomponent>