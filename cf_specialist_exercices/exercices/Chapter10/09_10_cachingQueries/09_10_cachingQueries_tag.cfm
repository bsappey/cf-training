<cfquery name="qMovies" result="rsltMovies" cachedwithin="#createTimespan( 0, 0, 5, 0 )#">
	SELECT MovieID, MovieName, Rating, ReleaseDate
	FROM tMovies
	<cfif IsDefined( "url.movieID" )>
		WHERE MovieID = <cfqueryparam value="#url.movieID#" cfsqltype="integer" />
	</cfif>
</cfquery>

<cfoutput>
	<h1>Movie Info</h1>

	<cfloop query="qMovies">
		<div><a href="09_09_cachingQueries_tag.cfm?movieID=#qMovies.MovieID#">#qMovies.MovieName# (#qMovies.MovieID#)</a></div>
	</cfloop>
</cfoutput>

<cfdump var="#rsltMovies#">
