<cfscript>
	
	users = ArrayNew( 1 );
	users[ 1 ] = "John";
	users[ 2 ] = "Paul";
	users[ 3 ] = "George";
	users[ 4 ] = "Ringo";

	cachePut('myCacheData', users);

	writeDump( var = users, label = 'Original Array');
	
	// check to make sure object was cached
	writeoutput('<BR><BR>Was Item Cached?' & cacheIdExists('myCacheData'));

</cfscript>
