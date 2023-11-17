<cfscript>

    objMovie = new model.Movie();

    qResults = objMovie.search( MovieName="The" );
    WriteDump( qResults );

    qResults = objMovie.search( Rating="PG" );
    WriteDump( qResults );

</cfscript>