<cfscript>
	
	users = ArrayNew( 1 );
	users[ 1 ] = "John";
	users[ 2 ] = "Paul";
	users[ 3 ] = "George";
	users[ 4 ] = "Ringo";

	// define a cache region with basic properties and create region
	properties = {
        timeToLiveSeconds = 21600,
        timeToIdleSeconds = 3500,
        maxentrieslocalheap = 5,
        eternal = false
    }; 
	cacheRegionNew('myParamCacheRegion', properties, false);
	cachePut('mycachedata', users, '', '','myParamCacheRegion', true);
		
	writeDump( cacheGetProperties('myParamCacheRegion') );

	  
	//setting properties after region creation
	properties = {
        maxentrieslocalheap = 10
    }; 
    cacheSetProperties(properties, 'myParamCacheRegion'); 
	writeDump( cacheGetProperties('myParamCacheRegion') );
	











	
	
	// all configurable properties for a region
	fullProperties = {
		"maxbyteslocaldiskasstring": "0",
		"maxentrieslocaldisk": 10000000,
		"maxbyteslocaloffheap": 0,
		"maxbyteslocalheap": 0,
		"timetoliveseconds": 21600,
		"maxbyteslocaloffheapasstring": "0",
		"eternal": false,
		"clearonflush": true,
		"logging": false,
		"maxbyteslocaldisk": 0,
		"overflowtodisk": false,
		"diskaccessstripes": 1,
		"overflowtooffheapset": false,
		"copyonread": false,
		"maxbyteslocaloffheappercentageset": false,
		"timetoidleseconds": 3500,
		"diskpersistent": false,
		"maxbyteslocaldiskpercentageset": false,
		"memoryevictionpolicy": "lru",
		"statistics": true,
		"maxmemoryoffheapinbytes": 0,
		"diskexpirythreadintervalseconds": 3600,
		"copyonwrite": false,
		"name": "mycacheregion",
		"cacheloadertimeoutmillis": 0,
		"maxentriesincache": 0,
		"maxbyteslocalheappercentageset": false,
		"maxentrieslocalheap": 25,
		"objecttype": "any",
		"maxbyteslocalheapasstring": "0",
		"diskspoolbuffersizemb": 30,
		"maxelementsondisk": 10000000
	  }


	
</cfscript>