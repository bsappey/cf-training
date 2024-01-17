<cfscript>
    // objAuthor = application.wirebox.getInstance( "bookAuthor" );
    objAuthor = application.wirebox.getInstance( "constructedAuthor" );

    rslt = objAuthor.displayAuthorDetails();

    writeOutput( rslt );
</cfscript>
