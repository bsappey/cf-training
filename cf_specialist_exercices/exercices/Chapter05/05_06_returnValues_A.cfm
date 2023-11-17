<cfscript>

	numeric function computeAverage( test1, test2, test3 )
	{
		var average = ( arguments.test1 + arguments.test2 + arguments.test3 ) / 3;

		return average;
	}

	void function display( required string answer, string testType )
	{
		if( StructKeyExists( arguments, "testType" ) )
		{
			WriteOutput( "<p>The #arguments.testType# average is #answer#</p>" );	
		}
		else 
		{
			WriteOutput( "<p>The average is #answer#</p>" );	
		}
	}

	average1 = computeAverage( 43, 100, 87 );
	display( average1 );

	average2 = computeAverage( 55, 77, 91 );
	display( average2, "English" );

	average3 = computeAverage( 100, 81, 84 );
	display( average3, "History" );

	average4 = computeAverage( 8, 42, 91 );
	display( average4 );

</cfscript>