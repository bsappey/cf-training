<cfscript>
    result = '';
    cachePut('sampleData', 'test data 1','', '','myCacheRegion', true);
    
    result = cacheGet('sampleData', 'myCacheRegion');

    if ( cacheRegionExists('myCacheRegion') ) {
        result = cacheGetAllIds('myCacheRegion')
    }

    // removing region
    //cacheRegionRemove('myCacheRegion');
    
    // remove item from cache region
    // cacheRemove('sampleData', true, 'myCacheRegion', true);

    
    // remove from region with wildcard
    cachePut('othersampleData1', 'test data 1', '', '', 'myCacheRegion', false);
    cachePut('othersampleData2', 'test data 2', '', '', 'myCacheRegion', false);

    cacheRemove('Data', false, 'myCacheRegion', false);
    result = cacheGetAllIds('myCacheRegion')
    

    
    writeDump( result );
</cfscript>