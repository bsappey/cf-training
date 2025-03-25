<cfscript>
	if( cgi.request_method neq "post" )
	{
		location( url="index.cfm", addtoken="false" );
	}

	
	// did we get a valid session token?
	validate = CSRFverifyToken( form.token );

	if( !validate )
	{
		location( url="index.cfm", addtoken="false" );
	}
	
	objUser = new model.User();
	qUser   = objUser.search( Email=form.username, Password=form.password );

	if( qUser.recordCount eq 1 )
	{
		lock type="exclusive" scope="session" timeout="20"
		{
			session.loggedin  = true;
			session.userID    = qUser.userID;
			session.firstName = qUser.firstName;
			session.lastName  = qUser.lastName;
		}
				
		sessionRotate();
	
		location( url="listEntries.cfm", addtoken="false" );
	}
	else 
	{	
		location( url="index.cfm?statusMsg=#encodeForURL('Invalid Login')#", addtoken="false" );
	}
</cfscript>