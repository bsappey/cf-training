component 
{
	remote void function loginUser( username, password, token )
	{
		// did we get a valid session token?
		var validate = CSRFverifyToken( arguments.token );
		if( !validate )
		{
			location( url="index.cfm", addtoken="false" );
		}

		var objUser = new model.User();
		var qUser   = objUser.search( Email=arguments.username, Password=arguments.password );

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

			location( url="../listEntries.cfm", addtoken="false" );
		}
		else 
		{
			location( url="../index.cfm?statusMsg=#encodeForURL('Invalid Login')#", addtoken="false" );
		}
	}

	remote void function logoutUser()
	{
		
		lock type="exclusive" scope="session" timeout="20"
		{
			sessionInvalidate();
		}
		
		location( url="../index.cfm", addtoken="false" );
	}

	remote void function updateProfile( firstName, lastName, Email, Password, headshot )
	{
		try
		{
			////////////////////////////////////////////////////////////////////////////////////////////////////////
			//step 2 - examine the fileUpload() function
			//the signature is FileUpload(destination, filefield)
			//Destination is getTempDirectory() it is a temporary directory outside the web root = > best practice
			//FileField is "headshot" It is the name of the <input type="file"> tag in the html form
			//FileUpload returns a data structure that we save into the uploadedFile variable.
			//finally, we dump the uploadedFile variable and abort.
			////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			var uploadedFile = fileUpload( getTempDirectory(), "headshot");
			
			//writeDump(uploadedFile);//Comment out for step 4
			//abort;//Remove the abort; on step 4
			
			//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//step 4 - we use the information found in the uploadedFile structure to move the file to its definitive location
			//We use fileMove(source, destination) for that operation
			//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			var sourcePathAndFile = uploadedFile.serverdirectory & "/" & uploadedFile.serverFile;
			fileMove( sourcePathAndFile, ExpandPath( "../headshots/#uploadedFile.serverFile#" ) );

		}
		catch( any e )
		{
			WriteOutput( "Problem uploading the file: #e.message#" );
			abort;
		}

		var profileArgs = {
			userID = arguments.UserID,
			firstName = arguments.firstName,
			lastName  = arguments.lastName,
			Email = arguments.email,
			Password = arguments.password,
			HeadshotFileName = uploadedFile.serverFile
		};

		var objUser = new model.User().update( argumentCollection=profileArgs );

		location( url="../profile.cfm?status=#encodeForURL('Saved!')#", addtoken="false" );
	}

	remote query function getAllUsers()
	{
		return new model.User().select();
	}

}