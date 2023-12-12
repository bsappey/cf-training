<cfscript>

	movies = [ "Pretty In Pink", "The Breakfast Club", "Labyrinth", "Clue", "Sneakers", "Top Gun" ];

	WriteOutput( "<p>The first movie in the array is: #ArrayFirst( movies )#</p>" );
	WriteOutput( "<p>The first movie in the array is: #movies.first()#</p>" );

	// WriteOutput( "<p>The last movie in the list is: #ArrayLast( movies )#</p>" );
	// WriteOutput( "<p>The last movie in the list is: #movies.last()#</p>" );

	
	// foundIdx = ArrayFind( movies, "The Breakfast Club" );
	// WriteOutput( "<p>The Breakfast Club is movie number #foundIdx# in the list</p>" );
	
	// WriteOutput( "<p>The Breakfast Club is movie number #movies.find( "The Breakfast Club" )# in the list</p>" );



	studentNames = [ "Chino Moreno", "Stephen Carpenter", "Abe Cunningham", "Frank Delgado", "Sergio Vega" ];

	// foundIdx = ArrayFind( studentNames, "Stephen Carpenter" );
	// foundIdx = ArrayFindNoCase( studentNames, "STePhen Carpenter" );
	// foundIdx = studentNames.find( "Steph" );
	// foundIdx = studentNames.findNoCase( "STephen Carpenter" );

	// if( foundIdx == 0 )
	// {
	// 	WriteOutput( "<p>No matching name found.</p>" );
	// }
	// else 
	// {
	// 	WriteOutput( "<p>That is student number #foundIdx# in the array.</p>" );	
	// }

	
	// isFound = ArrayContains( studentNames, "Stephen Carpenter" );
	// isFound = ArrayContainsNoCase( studentNames, "STephen Carpente" );
	// isFound = studentNames.contains( "Stephen Carpenter" );

	// if( isFound )
	// {
	// 	WriteOutput( "<p>Yes that student is in the array</p>" );
	// }
	// else 
	// {
	// 	WriteOutput( "<p>That student was not found.</p>" );
	// }

</cfscript>