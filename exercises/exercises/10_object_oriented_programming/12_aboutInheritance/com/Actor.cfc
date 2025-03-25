component accessors="true"
{
	property name="actorName" type="string";
	property name="age" type="numeric";
	property name="SAGNumber" type="numeric";

	public any function init( string actorName="", numeric age=0, numeric SAGNumber="" )
	{
		setActorName( arguments.actorName );
		setAge( arguments.age );
		setSAGNumber( arguments.SAGNumber );
		return this;
	}

	public any function showActorDetails()
	{
		WriteOutput( "<p>Name: #getActorName()#</p>" );
		WriteOutput( "<p>Age: #getAge()#</p>" );
		WriteOutput( "<p>SAG Number: #getSAGNumber()#</p>" );
	}

	public any function renewUnionDues()
	{
		WriteOutput( "<p>The actor is renewing his/her SAG union dues.</p>" );
	}

}
