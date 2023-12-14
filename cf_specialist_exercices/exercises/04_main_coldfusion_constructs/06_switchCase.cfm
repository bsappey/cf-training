<cfscript>

	grade = 3;

	if( grade == 1 )
	{
		WriteOutput( "First graders are in room A-5" );
	}
	else if( grade == 2 )
	{
		WriteOutput( "Second graders are in room B-22" );
	}
	else if( grade == 3 )
	{
		WriteOutput( "Third graders are in room 7" );
	}
	else if( grade == 4 )
	{
		WriteOutput( "Fourth graders are in room D-3" );
	}
	else if( grade == 5 )
	{
		WriteOutput( "Fifth graders are in room 98" );
	}
	else if( grade == 6 )
	{
		WriteOutput( "Sixth graders are in room 54" );
	}
	else 
	{
		WriteOutput( "We don't teach that grade at this school." );	
	}

</cfscript>
