<cfscript>

    objMovie = new model.Movie();

    WriteDump( objMovie.select() );

    objMovie.update( 101, "TOP GUN", "G", "4/12/1985" );

    WriteDump( objMovie.select() );

</cfscript>