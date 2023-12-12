<cfscript>

	// also a string variable, but with data separated by commas
	people = "John,Paul,George,Ringo";

	WriteOutput( "<p>The list of people:</p>" );
	WriteOutput( "<p>#people#</p>" );


	// newList = listChangeDelims( people, "$" );

	// WriteOutput( "<p>The new list of people:</p>" );
	// WriteOutput( "<p>#newList#</p>" );

	// WriteOutput( "<p>The list contains #ListLen( newList )# items.</p>" );
	// WriteOutput( "<p>The list contains #ListLen( newList, "$" )# items.</p>" );

</cfscript>