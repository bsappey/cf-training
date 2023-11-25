<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Using Query parameters</title>
</head>
<body>
	<h1>Using Query parameters</h1>
	
	<cfquery name="qMovies">
		SELECT MovieID, MovieName, ReleaseDate, Rating 
		FROM tMovies
	</cfquery>
	
	
	<h2>All Movies</h2>
	<ul>
		<cfoutput query="qMovies">
			<li><a href="09_06_usingQueryParams.cfm?movieID=#qMovies.movieID#">#qMovies.MovieName#</a></li>
		</cfoutput>
	</ul>
	

	<cfif url.keyExists( "movieID" )>
		<cfquery name="qDetails" result="qDetailsResults">
			SELECT MovieID, MovieName, ReleaseDate, Rating 
			FROM tMovies
			WHERE MovieID = #url.movieID#
		</cfquery>

		
		<h2>Movie Details</h2>
		<cfoutput>
			<div>
				<div>Name: #qDetails.MovieName#</div>
				<div>Rating: #qDetails.Rating#</div>
				<div>Released: #DateFormat( qDetails.ReleaseDate, 'mm/dd/yyyy' )#</div>
			</div>
		</cfoutput>
		<cfdump var="#qDetails#" />
	</cfif>

</body>
</html>
