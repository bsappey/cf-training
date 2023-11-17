<cfscript>

function computeAverage( test1, test2, test3 )
{
	var average = ( arguments.test1 + arguments.test2 + arguments.test3 ) / 3;

	return average;
}

string function formatAnswer( required string answer, string testType )
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

</cfscript>
