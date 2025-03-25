<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Queries of Query</title>
</head>
<body>
	<h1>Queries of Query</h1>

	<cfquery name="qMovies" result="qMoviesResult" cachedwithin="#createTimeSpan(0, 0, 5, 0)#">
		SELECT MovieID, MovieName, ReleaseDate, Rating 
		FROM tMovies
	</cfquery>
	
	<h2>All Movies</h2>
	<ul>
		<cfoutput query="qMovies">
			<li><a href="09_10_queriesOfQuery.cfm?movieID=#qMovies.movieID#">#qMovies.MovieName#</a></li>
		</cfoutput>
	</ul>
	
	<cfif url.keyExists( "movieID" )>

		<cfquery name="qDetails" result="qDetailsResults">
			SELECT MovieID, MovieName, ReleaseDate, Rating 
			FROM tMovies
			WHERE MovieID = <cfqueryparam value="#url.movieID#" cfsqltype="cf_sql_integer" />
		</cfquery>
	</cfif>
	
	<cfif IsDefined( "qDetails" )>
		<h2>Movie Details</h2>
		<cfoutput>
		<div>
			<div>Name: #qDetails.MovieName#</div>
			<div>Rating: #qDetails.Rating#</div>
			<div>Released: #DateFormat( qDetails.ReleaseDate, 'mm/dd/yyyy' )#</div>
		</div>
		<cfdump var="#qDetailsResults#" label="qDetailsResults"/>
		</cfoutput>
	</cfif>
	
	<cfdump var="#qMoviesResult#" label="qMoviesResult" />
</body>
</html>
