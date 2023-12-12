component {
    variables.dbPath = expandPath("/ressources/database/Derby/");

	this.name = "11_01_enablingColdFusionORM";
	this.applicationTimeout = createTimeSpan(0,2,0,0); //2h
	this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0,0,45,0); //45 min
    
    this.datasource = "CFTrainingDSN";

	this.datasources = {
        CFTrainingDSN = {
            url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300", 
            driver = "Apache Derby Embedded"
        }
    };
    
    public void function onRequest( required string targetPage ) 
    { 
        if ( !DirectoryExists( variables.dbPath ) ) 
        {
            include "/ressources/database/buildDB.cfm";
        }

        include arguments.targetPage;
    }

}
