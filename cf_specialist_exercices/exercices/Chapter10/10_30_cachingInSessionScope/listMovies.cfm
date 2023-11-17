<cfset qMovies = application.objMovie.select() />

<cfoutput>

	<div>
		User: #session.info.getFirstName()# #session.info.getLastName()#
	</div>

	<div>
		<h1>Movies</h1>

		<ol>
			<cfloop query="qMovies">
				<li>#qMovies.MovieName#</li>
			</cfloop>
		</ol>
	</div>

</cfoutput>