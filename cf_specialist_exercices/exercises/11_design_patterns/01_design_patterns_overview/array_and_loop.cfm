<cfscript>

    myArray = [ "John", "Paul", "George", "Ringo" ];

    for( i = 1; i lte myArray.len(); i++ )
    {
        WriteOutput( "<p>#myArray[ i ]#</p>" );
    }

</cfscript>