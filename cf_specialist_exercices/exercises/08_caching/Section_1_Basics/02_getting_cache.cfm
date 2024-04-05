<cfscript>
	
	data = cacheget("myCacheData");

	for (user in data) {
		writeOutput(user & '<br>');
	}



</cfscript>