component
{
    include "../../../ressources/config/appSettings.cfm";
	include "../../../ressources/config/onRequestMethod.cfm";
	this.name = "10_27_cachingApplicationScope";

	this.mappings[ "/model" ] = getDirectoryFromPath(getCurrentTemplatePath()) & "model/";
	this.sessionmanagement = true;
	this.sessointimeout = CreateTimeSpan( 0, 2, 0, 0 );
	
	public boolean function onApplicationStart() 
	{
		application.objMovie = new model.Movie(); 
		application.objLogin = new model.Login();
        return true; 
    } 

}
