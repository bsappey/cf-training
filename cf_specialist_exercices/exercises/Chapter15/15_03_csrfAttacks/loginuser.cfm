<cfscript>

	
	writeDump(var=form, label="Form scope");

	validate = CSRFverifyToken( form.token );
	
	
	if( validate )
	{
		WriteOutput('<p style="color:green">The #form.token# CSRF token is valid</p>');
	} else
	{
		WriteOutput('<p style="color:red"">The #form.token# CSRF token is NOT valid</p>');
	}
</cfscript>