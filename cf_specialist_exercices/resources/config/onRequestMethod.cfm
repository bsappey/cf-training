<cfscript>
	public void function onRequest( required string targetPage ) 
	{ 
		if ( !DirectoryExists( variables.dbPath ) ) 
		{
            include "/resources/database/buildDB.cfm";
		}

        include arguments.targetPage;
    }
</cfscript>
