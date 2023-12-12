<cfscript>

    objMovie = new model.Movie();

    WriteDump( objMovie.select() );

    // WriteDump( objMovie.select( 101 ) );

</cfscript>

<!---
<cfset qMovies = application.objMovie.select() />

<cfoutput>
	<h2>Movies</h2>
	<ul>
		<cfloop query="qMovies">
			<li>#qMovies.MovieName#</li>
		</cfloop>
	</ul>
</cfoutput>
--->