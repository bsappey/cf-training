<cfscript>

	aryPunkBands = [ "7 Seconds", "Green Day", "Fugazi", "Descendents", "The Clash" ];

	WriteOutput( "<ol>" );

	// notice we're starting with i = 1 
	// because arrays in CFML are 1-based, not 0-based
	for( i = 1; i <= aryPunkBands.len(); i++ )
	{
		WriteOutput( "<li>#aryPunkBands[ i ]#</li>" );
	}

	// for( p in aryPunkBands )
	// {
	// 	WriteOutput( "<li>#p#</li>" );
	// }

	WriteOutput( "</ol>" );

</cfscript>