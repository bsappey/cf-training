<cfscript>

	myQuery = queryExecute('select * from tusers');
	cachePut('mySampleQuery', myQuery, createTimespan(0,1,0,0), createTimespan(0,0,15,0));
	
	myObject = new sample();
	cachePut('mySampleObject', myObject, createTimespan(0,1,0,0), createTimespan(0,0,15,0));

	myFile = fileRead( expandpath('sample_file.txt') );
	cachePut('mySampleFile', myFile, createTimespan(0,1,0,0), createTimespan(0,0,15,0));

	cacheGetAll = cacheGetAllIds();
	writeDump( cacheGetAll );
	
	for (i in cacheGetAll) {
		writeDump( var = cachegetmetadata(i), label="Cache object: #i#" );
	}

</cfscript>
