<cfscript>

    objMovie = new model.Movie();

    qMovies = objMovie.select();

    //qMovies = objMovie.select( 101 );

</cfscript>

<cfoutput>
    <ol>
        <cfloop query="qMovies">
            <li>#qMovies.MovieName#</li>
        </cfloop>
    </ol>
</cfoutput>
