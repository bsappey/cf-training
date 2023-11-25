<cfscript>
	sql = "SELECT MovieID, MovieName, Rating, ReleaseDate FROM tMovies";
	params = {};

	if( url.keyExists( "movieID" ) )
	{
		sql = sql & " WHERE MovieID = :MovieID";
		params = { MovieID = { value = url.MovieID, cfsqltype="cf_sql_integer" } };
	}
	
	qMovies = QueryExecute( sql, params, { result="rsltMovies", cachedwithin="#createTimespan( 0, 0, 5, 0 )#" } );

</cfscript>

<cfoutput>
	<h1>Movie Info</h1>

	<cfloop query="qMovies">
		<div><a href="09_09_cachingQueries_script.cfm?movieID=#qMovies.movieID#">#qMovies.MovieName# (#qMovies.MovieID#)</a></div>
	</cfloop>
</cfoutput>

<cfdump var="#rsltMovies#">
