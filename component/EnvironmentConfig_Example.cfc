<cfcomponent output="false">
	<!--- These functions are only called from a local envrionment because we don't deploy locally so no Octopus variable substitutions occur --->
	<!--- These keys need to be added to EnvironmentConfig.cfc with the values being the Octopus variable names  --->

	<cffunction name="setEnvironmentVariables" returntype="void" access="public">
		
		<cfset Application.default_email_sender = "jdunham@webstaurantstore.com">
		<cfset Application.APIKey = "D3v4P1K3y!">
		<cfset Application.DSN = "MyDSN">
	</cffunction>

	<cffunction name="getName" returntype="string" access="public">
		
		<cfreturn 'FizzleSite_v2_LOCAL'>
	</cffunction>
</cfcomponent>