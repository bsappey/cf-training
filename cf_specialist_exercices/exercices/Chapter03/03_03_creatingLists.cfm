<cfscript>

	// basic "string" variables
	person1 = "John";
	person2 = "Paul";
	person3 = "George";
	person4 = "Ringo";

	// also a string variable, but with data separated by commas
	people = "John,Paul,George,Ringo";

	WriteOutput( "<p>The list of people:</p>" );
	WriteOutput( "<p>#people#</p>" );

	// a list containing numbers, but wrapped in quotation marks to make it a "string"
	testScores = "99,84,101";

	WriteOutput( "<p>The list of test scores:</p>" );
	WriteOutput( "<p>#testScores#</p>" );

	// a list containing both numbers and text
	namesAndAges = "David,71,Tony,68,Woody,67,Mick,54";

	WriteOutput( "<p>The list of names and ages:</p>" );
	WriteOutput( "<p>#namesAndAges#</p>" );

</cfscript>