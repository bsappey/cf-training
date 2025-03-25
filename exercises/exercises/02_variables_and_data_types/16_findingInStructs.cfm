<cfscript>
	userInfo = {
		name = "Joey Ramone",
		age  = 25,
		hairColor = "black",
		weight = "200lbs",
		address = "123 Main Street",
		city = "Brooklyn",
		state = "CA",
		postalCode = "11321",
		email = "joey@ramones.biz"
	};

	// userInfo.insert( "height", "5 foot 8" );
	

	if( userInfo.keyExists( "height" ) )
	{
		WriteOutput( "Joey's height is #userInfo.height#" );

		// WriteOutput( "Joey's height is #userinfo.find( 'height' )#" );
	
		// WriteDump( userinfo.findKey( 'state' ) );

		// WriteDump( userInfo.findValue( 'CA' ) );
	}
	else 
	{
		WriteOutput( "We don't have height data for that person." );
	}	

	// if( StructKeyExists( userInfo, "height" ) )
	// {
	// 	WriteOutput( "Joey's height is #userInfo.height#" );
	// 	WriteOutput( "Joey's height is #structFind( userinfo, 'height' )#" );
	
	// 	WriteDump( structFindKey( userinfo, 'state' ) );

	// 	WriteDump( structFindValue( userinfo, 'CA' ) );
	// }
	// else 
	// {
	// 	WriteOutput( "We don't have height data for that person." );
	// }


</cfscript>