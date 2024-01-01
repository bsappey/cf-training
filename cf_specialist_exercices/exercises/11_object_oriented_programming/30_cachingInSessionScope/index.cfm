<cfscript>
	if( cgi.request_method eq "post" )
	{
		// assume we had some validation code in here somewhere that found a 
		// matching user in the database. but for simplicity in this demo, 
		// we're skipping that part.
		qLogin = application.objLogin.select( form.email, form.password );

		if( qLogin.recordCount eq 1 )
		{
			myDetails = new model.UserInfo();
			myDetails.setUserID( qLogin.UserID );
			myDetails.setFirstName( qLogin.firstName );
			myDetails.setLastName( qLogin.lastName );
			myDetails.setEmail( qLogin.email );
			session.info = myDetails;
			
			location( url="listMovies.cfm", addtoken="no" );
		}
		else 
		{
			location( url="index.cfm", addtoken="no" );
		}
	}
</cfscript>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="./assets/styles.css" rel="stylesheet">

	<title>Login Page</title>
</head>
<body>

	<div class="flex-container">
		<div>
			<form name="frmLogin" id="frmLogin" method="post" action="index.cfm">
				<div>
					<label for="Email">Email:</label>
				</div>
				<div>
					<input type="email" name="Email" id="Email" size="20" value="" Autofocus />
				</div>
				<div>
					<label for="password">Password: </label>
				</div>
				<div>
					<input type="password" name="password" id="password" size="20" value="" />
				</div>
				<div>
					<input type="submit" name="btnLogin" id="btnLogin" value="Log In" />
				</div>
			</form>
		</div>
	</div>

</body>
</html>