  <cfscript>

    objMovie = new model.Movie();

    WriteDump( objMovie.select() );

    objMovie.delete( 101 );

    WriteDump( objMovie.select() );

</cfscript>