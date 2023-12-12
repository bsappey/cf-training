<cfscript>

    arrayOfLocalFiles = directoryList( expandPath( "./exercises/Chapter03" ), false, "name" );

    writeDump( arrayOfLocalFiles );
    abort;

    for( f in arrayOfLocalFiles )
    {
        curFileName = f;
    
        newFileName = Right( curFileName, Len( curFileName ) - 3 );
    
        fileMove( curFileName, newFileName );
    }

</cfscript>