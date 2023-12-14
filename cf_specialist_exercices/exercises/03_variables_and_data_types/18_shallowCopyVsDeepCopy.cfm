<cfscript>

	user1 = {
		name = "Joey Ramone",
		age = 55,
		eyeColor = "brown",
		favoriteBooks = [ "Christine", "It", "High Fidelity", "Looking For Alaska" ],
		addressInfo = {
			address = "123 Main Street",
			city = "Brooklyn", 
			state = 'NY',
			postalCode = "12134"
		}
	};

	user2 = user1.copy();
	// user2 = user1.duplicate();

	WriteDump( user1 );
	WriteDump( user2 );

	// user1.favoriteBooks.append( "The Stand" );

	// WriteDump( user1 );
	// WriteDump( user2 );

	// user1.addressInfo.city = "San Francisco";

	// WriteDump( user1 );
	// WriteDump( user2 );

</cfscript>