<cfscript>

	people = "Mick,,,,Keith,,,,Charlie,Ronnie,,,,,Bill";

	numItems = ListLen( people );
	// numItems = ListLen( people, ",", true );


	WriteOutput( "<p>The list contains #numItems# items.</p>" );

	// WriteOutput( "<p>The first item is: #ListFirst( people )#</p>" );
	// WriteOutput( "<p>The second item is: #ListGetAt( people, 2, ",", true )#</p>" );

</cfscript>