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

	<cffunction name="getEnvironmentConfigObj" returntype="component" access="public">
		
		<cfif !structKeyExists(request, 'EnvironmentConfigObj')>
			<cfif isLocal()>
				<cfset request.EnvironmentConfigObj = createObject('component', 'component.EnvironmentConfig_Example')>
			<cfelse>
				<cfset request.EnvironmentConfigObj = createObject('component', 'component.EnvironmentConfig')>
			</cfif>
		</cfif>

		<cfreturn request.EnvironmentConfigObj>
	</cffunction>

	<cffunction name="setEnvironmentVariables" returntype="void" access="public">
		
		<cfset getEnvironmentConfigObj().setEnvironmentVariables()>
	</cffunction>

	<cffunction name="getName" returntype="string" access="public">
		
		<cfreturn getEnvironmentConfigObj().getName()>
	</cffunction>
</cfcomponent>