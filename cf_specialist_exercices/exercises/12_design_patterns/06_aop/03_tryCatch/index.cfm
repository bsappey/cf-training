<cfscript>
    qry = application.wirebox.getInstance( "Musician" ).getQuarterlyReport();
    // qry = application.wirebox.getInstance( "constructedMusician" ).getQuarterlyReport();

    WriteDump( qry );
</cfscript>
