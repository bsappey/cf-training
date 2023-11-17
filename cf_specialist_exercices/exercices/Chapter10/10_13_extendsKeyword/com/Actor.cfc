component accessors="true" extends="Entertainer"
{
	property name="SAGNumber" type="numeric";

	public any function init( string actorName="", numeric age=0, numeric SAGNumber="" )
	{
		setName( arguments.actorName );
		setAge( arguments.age );
		setSAGNumber( arguments.SAGNumber );
		return this;
	}

	public any function showActorDetails()
	{
		showInfo();
		WriteOutput( "<p>SAG Number: #getSAGNumber()#</p>" );
	}

	public any function renewUnionDues()
	{
		WriteOutput( "<p>The actor is renewing his/her SAG union dues.</p>" );
	}

}
