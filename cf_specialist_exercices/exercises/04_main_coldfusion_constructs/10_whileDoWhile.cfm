<cfscript>

	i = 10;

	WriteOutput( "<ol>" );

	while( i < 20 )
	{
		WriteOutput( "<li>Hello</li>" );
		i++;
	}
	// do
	// {
	// 	WriteOutput( "<li>Hello</li>" );
	// 	i++;
	// }
	// while( i > 20 );

	WriteOutput( "</ol>" );

</cfscript>