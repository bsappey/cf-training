<cfscript>
	
	// create automatically by just declaring one in a cacheput()
 	users = ArrayNew( 1 );
	users[ 1 ] = "John";
	users[ 2 ] = "Paul";
	users[ 3 ] = "George";
	users[ 4 ] = "Ringo";

	cachePut('mycachedata', users, createTimespan(0,1,0,0), createTimespan(0,0,5,0),'myCacheRegion', false);

	// get all ids in region
	writedump( cacheGetAllIds('myCacheRegion') ); 
	
</cfscript>