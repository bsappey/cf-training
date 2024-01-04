<cfscript>
	

	// remove single cache item
	cacheKeys = 'mySampleObject';
	cacheRemove(cacheKeys, false);


	// get all ids and remove them
	// cacheKeys = cacheGetAllIds().tolist();
	// cacheRemove(cacheKeys, false);
	
	// remove all the easier way
	// cacheKeys = 'ALL'
	// cacheRemoveAll();

	writeoutput('Cache removed : #cacheKeys#');
	
</cfscript>