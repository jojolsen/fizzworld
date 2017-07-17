<cfcomponent output="false">
	<cffunction name="getEnvironment" returntype="string" access="public">
		
		<cfreturn LCase(CGI['HTTP_X_ENVIRONMENT'])>
	</cffunction>

	<cffunction name="isLocal" returntype="string" access="public">
		
		<cfreturn getEnvironment() EQ 'local'>
	</cffunction>

	<cffunction name="isDevelopment" returntype="string" access="public">
		
		<cfreturn getEnvironment() EQ 'development'>
	</cffunction>

	<cffunction name="isProduction" returntype="string" access="public">
		
		<cfreturn getEnvironment() EQ 'production'>
	</cffunction>

	<cffunction name="isDebug" returntype="string" access="public">
		
		<cfreturn Application.debug>
	</cffunction>
</cfcomponent>