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

	<cffunction name="getEnvironmentVariablesObj" returntype="component" access="public">
		
		<cfif !structKeyExists(request, 'EnvironmentConfigObj')>
			<cfif isLocal()>
				<cfset request.EnvironmentConfigObj = createObject('component', 'component.EnvironmentVariables_Example')>
			<cfelse>
				<cfset request.EnvironmentConfigObj = createObject('component', 'component.EnvironmentVariables')>
			</cfif>
		</cfif>

		<cfreturn request.EnvironmentConfigObj>
	</cffunction>

	<cffunction name="getEnvironmentVariables" returntype="struct" access="public">
		
		<cfreturn getEnvironmentVariablesObj().getEnvironmentVariables()>
	</cffunction>

	<cffunction name="getName" returntype="string" access="public">
		
		<cfreturn getEnvironmentVariablesObj().getName()>
	</cffunction>
</cfcomponent>