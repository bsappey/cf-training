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

	public boolean function onApplicationStart() 
	{
		application.userModel  = new model.User();
		application.orderModel = new model.Order();
		return true; 
	}
}