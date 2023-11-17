component 
{
	this.name = "myBlogApp";
	this.applicationTimeout = createTimeSpan(0, 2, 0, 0); //2 hours
	
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 45, 0);// 45 mins
	
	public void function onSessionStart() {
		
		//set some defaults in the session scope
		session.created = Now();
		session.userAgent = cgi.http_user_agent;
	}
}