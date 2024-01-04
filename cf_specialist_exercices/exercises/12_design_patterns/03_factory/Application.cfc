component
{
	variables.dbPath = expandPath("/ressources/database/Derby/");
	
	this.name 			   = "FactoryDemoApp";
    this.datasource    	   = "CFTrainingDSN";
	this.sessionManagement = true;
	this.sessionTimeout    = createTimeSpan(0, 0, 45, 0);// 45 mins	

	this.datasources = {
        CFTrainingDSN = {
            url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300", 
            driver = "Apache Derby Embedded"
        }
    };

	this.dbType = "derby";

	public boolean function onApplicationStart() 
	{	
		application.SQLFactory = new model.SQLFactory( this.dbType )
		application.userModel  = application.SQLFactory.makeMyObject( "User" );
		application.orderModel = application.SQLFactory.makeMyObject( "Order" );
		return true; 
	}
}