<cfscript>

	firstName = "John";

	switch( firstName )
	{
		case "John":
					WriteOutput( "John plays harmonica" );
					break;

		case "Paul":
					WriteOutput( "Paul plays bass" );
					break;

		case "George":
					WriteOutput( "George plans electric guitar" );
					break;

		case "Ringo":
					WriteOutput( "Ringo plays drums." );
					break;

		default: WriteOutput( "That is not a Beatle." );
				 break;
	}

</cfscript>