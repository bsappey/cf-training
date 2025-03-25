
<cfscript>

    age = 4

    if ( age > 20 )
    {
        WriteOutput( "<p>Welcome to the show!</p>" );
    }
    else if ( age < 21 and age > 12 )
    {
        WriteOutput( "<p>You are allowed in the teen center portion of the club.</p>" );
    }
    else if ( age > 1 and age < 6 )
    {
        WriteOutput( "Children under 6 are allowed in free with a parent." );
    }
    else
    {
        WriteOutput( "<p>Sorry, you are not old enough to enter.</p>" );
    }

    WriteOutput( "<p>Thnk you for using our application</p>" );

</cfscript>
