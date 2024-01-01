<cfscript>
	
	// key names can be just about anything (all are valid)	
	cacheKey = 'myApp.cachdata.usercache.#randRange(1111,9999)#';
	// cacheKey = '@^&*(^&*())';
	// cacheKey = createuuid();


	structBandMembers = { harmonica: "John",
							bass: "Paul",
							guitar: "George",
							drums: "Ringo"
						};

	cachePut(cacheKey, structBandMembers, createTimespan(0,1,0,0), createTimespan(0,0,15,0));

	writeDump( var = cacheGet( cacheKey ), label="Data for cache key: #cacheKey#" );

	writeDump( var =  cacheGetAllIds(), label="Cache Keys" );

</cfscript>