<cfscript>
	if( cgi.request_method neq "post" )
	{
		location( url="index.cfm", addtoken="false" );
	}
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
		
		//WriteDump(var=session, label="The session Scope BEFORE sessionRotate()");
		
		sessionRotate();
		
		//WriteDump(var=session, label="The session Scope AFTER sessionRotate()");
		//abort;

		location( url="listEntries.cfm", addtoken="false" );
	}
	else 
	{
		location( url="index.cfm?statusMsg=Invalid Login", addtoken="false" );
	}
</cfscript>