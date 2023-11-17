<cfscript>

	function computeAverage( required numeric test1, required numeric test2, required numeric test3, string testType )
	{
		var average = ( arguments.test1 + arguments.test2 + arguments.test3 ) / 3;

		if( StructKeyExists( arguments, "testType" ) )
		{
			WriteOutput( "<p>The #arguments.testType# average is #average#</p>" );	
		}
		else 
		{
			WriteOutput( "<p>The average is #average#</p>" );	
		}
	}

	computeAverage( 65, 77, 87 );
	computeAverage( 99, 35, 25, "English" );


</cfscript>