component
{
    this.datasource = "CFTrainingDSN";

	public boolean function onApplicationStart() 
	{
		application.userModel = new model.User();
		application.orderModel = new modle.Order();
		return true; 
	}
}