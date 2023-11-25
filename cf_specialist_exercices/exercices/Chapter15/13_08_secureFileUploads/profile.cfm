<cfscript>
	bUserExists = false;

	lock scope="session" type="readonly" timeout="20"
	{
		if( structKeyExists( session, "loggedin" ) )
		{
			if( session.loggedin eq true )
			{
				bUserExists = true;
			}
		}
	}

	if( bUserExists )
	{
		qUser = new model.User().select( session.userID );
	}
	else 
	{
		// user isn't logged in, bounce to the home page
		_url = "index.cfm?statusMsg=#encodeForURL( 'You must log in first.' )#";
		location( url=_url, addtoken=false );
	}
	
</cfscript>

<cf_HeaderAndFooter pageTitle="Profile">
	<cfoutput>
		<form name="frmProfile" id="frmProfile" method="post" action="./controllers/userController.cfc?method=updateProfile" enctype="multipart/form-data">

			<input type="hidden" name="userID" id="userID" value="#qUser.userID#">

			<div class="full-width">
				<label for="firstName">First Name</label>
				<input type="text" name="firstName" id="firstName" value="#qUser.firstName#" placeholder="First Name">
			</div>
			<div class="full-width">
				<label for="lastName">Last Name</label>
				<input type="text" name="lastName" id="lastName" value="#qUser.lastName#" placeholder="Last Name">
			</div>
			<div class="full-width">
				<label for="Email">Email</label>
				<input type="email" name="Email" id="Email" value="#qUser.email#" placeholder="Email">
			</div>
			<div class="full-width">
				<cfif Len( qUser.HeadshotFileName )>
					<img src="headshots/#qUser.HeadshotFileName#" width="260" height="400" alt="Headshot of #qUser.FirstName# #qUser.LastName#">
				</cfif>
				<label for="headshot">Headshot</label>
				<input type="file" name="headshot" id="headshot" value="Upload Image">
			</div>
			<div class="full-width">
				<label for="password">Password</label>
				<input type="password" name="password" id="password" value="#qUser.password#" placeholder="Password">
			</div>
			<div>
				<input type="submit" name="btnSave" id="btnSave" value="Save">
			</div>
		</form>

		<cfif url.keyExists( "status" )>
			<div class="status-box">#url.status#</div>
		</cfif>

	</cfoutput>
</cf_HeaderAndFooter>