<cfscript>

	studentNames = "Chino Moreno,Stephen Carpenter,Abe Cunningham,Frank Delgado,Sergio Vega";

	foundIdx = ListFind( studentNames, "Steph" );
	// foundIdx = ListContains( studentNames, "Steph" );
	// foundIdx = ListFindNoCase( studentNames, "STephen Carpenter" );
	// foundIdx = ListContainsNoCase( studentNames, "stEPH" );
	// foundIdx = studentNames.listFind( "Steph" );
	// foundIdx = studentNames.listContains( "Steph" );
	// foundIdx = studentNames.listFindNoCase( "stEPH" );
	// foundIdx = studentNames.listContainsNoCase( "stEPH" );

	if( foundIdx == 0 )
	{
		WriteOutput( "<p>No matching name found.</p>" );
	}
	else 
	{
		WriteOutput( "<p>That is student number #foundIdx# in the list.</p>" );	
	}

</cfscript>