component 
{
	this.name = "Blog_App_" & left( hash( getCurrentTemplatePath()), 64 );
	this.applicationTimeout = CreateTimeSpan( 5, 0, 0, 0 ); // 5 days

	include "../../../resources/config/appSettings.cfm";

	this.customTagPaths       = ExpandPath( './customTags/' );

	this.sessionManagement = true;
	this.sessionTimeout = CreateTimeSpan( 0, 0, 45, 0 ); // 45 minutes

	// This prevents the cookie from being read from JavaScript. 
	this.sessioncookie.httpOnly = true;

	include "../../../resources/config/onRequestMethod.cfm";

	public boolean function onApplicationStart() 
	{
		// application.userModel = new model.User();
		application.companyName = "Vandelay Industries";
		return true; 
	}

	public void function onSessionStart() 
	{ 
		// set some defaults whenever a new user logs on.
		session.created 	= Now(); 
		session.IPCreated 	= cgi.remote_addr;
		session.loggedIn  	= false;	
		session.isAdmin 	= false;
	} 

	function onRequestStart( string targetPage ) 
	{
		if( url.keyExists( "reinit" ) )
		{
			lock type="exclusive" scope="application" timeout="20"
			{
				onApplicationStart();
				onSessionStart();
			}
		}
	}
	
	function onError( any Exception, string EventName ) 
	{
		WriteOutput( "Error in the blog app!" );
		WriteDump( arguments.exception );
		WriteDump( arguments.eventName );
	}

	public boolean function onMissingTemplate( required string targetPage ) 
	{ 
		WriteOutput( "The #arguments.targetPage# page was not found!" );
		return true; 
	} 

}