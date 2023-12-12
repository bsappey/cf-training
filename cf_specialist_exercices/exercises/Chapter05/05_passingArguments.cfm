<cfscript>

	function computeAverage( required test1, required test2, required test3, testType )
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

	computeAverage( 99, 100, 55 );
	computeAverage(test1=99, test2=100, test3=55);

	args1 = {
		test1 = 99,
		test3 = 55,
		test2 = 100
	};
	computeAverage( argumentCollection=args1 );

	
	computeAverage( 99, 100, 55, "History" );
	computeAverage( test1=99, test2=100, test3=55, testType="History" );

	args2 = {
		test1 = 99,
		test2 = 100,
		test3 = 55,
		testType = "History"
	};
	computeAverage( argumentCollection=args2 );

</cfscript>