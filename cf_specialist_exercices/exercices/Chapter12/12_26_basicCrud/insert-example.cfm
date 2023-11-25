<cfscript>

    objMovie = new model.Movie();

    WriteDump( objMovie.select() );

    objMovie.insert( "The Princess Bride", "G", "2/17/2004" );

    WriteDump( objMovie.select() );

</cfscript>