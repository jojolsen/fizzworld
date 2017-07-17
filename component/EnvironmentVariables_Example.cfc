<cfcomponent output="false">
	<!--- These functions are only called from a local envrionment because we don't deploy locally so no Octopus variable substitutions occur --->
	<!--- These keys need to be added to EnvironmentConfig.cfc with the values being the Octopus variable names  --->

	<cffunction name="getEnvironmentVariables" returntype="struct" access="public">
		
		<cfset var environmentVariables = {
			DefaultEmailSender : "jdunham@webstaurantstore.com"
			, APIKey : "D3v4P1K3y!"
			, DSN : "MyDSN"
		}>

		<cfreturn environmentVariables>
	</cffunction>

	<cffunction name="getName" returntype="string" access="public">
		
		<cfreturn 'FizzleSite_v2_LOCAL'>
	</cffunction>
</cfcomponent>