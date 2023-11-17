<cfscript>

	name1 = "John";
	name2 = "Paul";
	name3 = "George";
	name4 = "Ringo";

	users = ArrayNew( 1 );
	users[ 1 ] = "John";
	users[ 2 ] = "Paul";
	users[ 3 ] = "George";
	users[ 4 ] = "Ringo";
	WriteDump( users );

	// ArrayAppend( users, "Pete" );
	// ArrayAppend( users, "Stuart" );
	// WriteDump( users );


	// users = [ "John", "Paul", "George", "Ringo" ];
	// users.append( "Pete" );
	// users.append( "Stuart" );
	// WriteDump( users );	


	// userData = ArrayNew( 1 );
    // userData[ 1 ] = "James Hetfield";
    // userData[ 2 ] = 48;
    // ArrayAppend( userData, "123 Main Street" );
    // userData.append( Now() );

    // WriteDump( userData );

    // userData = [ "James Hetfield", 48, "123 Main Street", Now() ];
    // WriteDump( userData );

</cfscript>