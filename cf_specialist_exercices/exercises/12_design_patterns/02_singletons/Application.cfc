component
{
    this.datasource = "CFTrainingDSN";

	public boolean function onApplicationStart() 
	{
		application.objSecurity = new com.SecurityUtils();
		return true; 
	}
}