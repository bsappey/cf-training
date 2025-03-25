<cfscript>
	
	data = cacheget("mycachedata");

	if (isNull(data)) {
		writeOutput('Not In cache, rebuilding.<br><br>');
		data = setUserArrayToCache();
	}
	
	for (user in data) {
		writeOutput(user & '<br>');
	}

	array function setUserArrayToCache(){

		var users = ArrayNew( 1 );
		users[ 1 ] = "John";
		users[ 2 ] = "Paul";
		users[ 3 ] = "George";
		users[ 4 ] = "Ringo";	
		cachePut('mycachedata', users, createTimespan(0,1,0,0), createTimespan(0,0,5,0));

		return cacheget("mycachedata");
	}


</cfscript>