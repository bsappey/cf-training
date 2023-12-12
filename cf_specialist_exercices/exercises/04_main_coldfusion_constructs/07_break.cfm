<cfscript>

	grade = 4;

	switch( grade )
	{
		case 1: WriteOutput( "First graders are in room A-5" );
				break;

		case 2: WriteOutput( "Second graders are in room B-22" );
				break;

		case 3: WriteOutput( "Third graders are in room 17." );
				break;

		case 4: WriteOutput( "Fourth graders are in room D-3" );
				break;

		case 5: WriteOutput( "Fifth graders are in room 98" );
				break;

		case 6: WriteOutput( "Sixth graders are in room 54" );
				break;

		default: WriteOutput( "We don't teach that grade at this school." );
				 break;
	}

</cfscript>
