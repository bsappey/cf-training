<cfscript>

	function computeAverage( test1, test2, test3 )
	{
		var average = ( arguments.test1 + arguments.test2 + arguments.test3 ) / 3;

		return average;
	}

	any function display( required string answer, string testType )
	{
        var output = "";

		if( StructKeyExists( arguments, "testType" ) )
		{
			output = "<p>The #arguments.testType# average is #answer#</p>";
		}
		else 
		{
			output = "<p>The average is #answer#</p>";
        }
        
        return output;
	}

	average1 = computeAverage( 43, 100, 87 );
    formattedOutput = display( average1 );
    WriteOutput( formattedOutput );

	average2 = computeAverage( 55, 77, 91 );
    formattedOutput = display( average2, "English" );
    WriteOutput( formattedOutput );

	average3 = computeAverage( 100, 81, 84 );
    formattedOutput = display( average3, "History" );
    WriteOutput( formattedOutput );

	average4 = computeAverage( 8, 42, 91 );
    formattedOutput = display( average4 );
    WriteOutput( formattedOutput );

</cfscript>