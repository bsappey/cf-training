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
	
	<cfscript>
		sql = 'SELECT MovieID, MovieName, ReleaseDate, Rating FROM tMovies';

		qMovies = queryExecute(sql);

	</cfscript>
	
	<h2>All Movies</h2>
	<ul>
		<cfoutput query="qMovies">
			<li><a href="09_08_usingQueryExecute.cfm?movieID=#qMovies.movieID#">#qMovies.MovieName#</a></li>
		</cfoutput>
	</ul>
	

	<cfif url.keyExists( "movieID" )>
		<cfscript>
			sql = 'SELECT MovieID, MovieName, ReleaseDate, Rating FROM tMovies WHERE MovieID = ?';
			aParams = [{value = url.movieID, cfsqltype = 'cf_sql_integer'}];
			stOptions = {result = 'qDetails_results'};

			qDetails = queryExecute(sql, aParams, stOptions);

		</cfscript>

		
		<h2>Movie Details</h2>
		<cfoutput>
			<div>
				<div>Name: #qDetails.MovieName#</div>
				<div>Rating: #qDetails.Rating#</div>
				<div>Released: #DateFormat( qDetails.ReleaseDate, 'mm/dd/yyyy' )#</div>
			</div>
			<p>The executed SQL is #qDetails_results.sql#</p>

			<cfdump var="#qDetails_results#">
		</cfoutput>
	</cfif>

</body>
</html>
