<cfscript>
	
	data = cacheget("mycachedata");

	if (isNull(data)) {
		writeDump('cached data not found');
	} else {
		for (user in data) {
			writeOutput(user & '<br>');
		}
	}
	
</cfscript>