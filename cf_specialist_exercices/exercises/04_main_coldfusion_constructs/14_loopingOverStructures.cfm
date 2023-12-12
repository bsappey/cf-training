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

	userInfo[ "height" ] = "5 foot 8";


	for( item in userInfo )
	{
		WriteOutput( "<div>#item#</div>" );
		// WriteOutput( "<div>#userInfo[ item ]#</div>" );
		// WriteOutput( "<div>#item#: #userInfo[ item ]#</div>" );
	}

	// userInfo.each( function( key, value ){
	// 	// WriteOutput( "<div>#key#</div>" );
	// 	// WriteOutput( "<div>#value#</div>" );

	// 	WriteOutput( "<div>#key#: #userInfo[ key ]#</div>" );
	// });


</cfscript>