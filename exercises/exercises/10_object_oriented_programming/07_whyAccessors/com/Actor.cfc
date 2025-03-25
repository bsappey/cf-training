component
{
	this.actorName = "";
	this.age       = "";
	this.SAGNumber = "";

	public any function init( string actorName="", numeric age=0, numeric SAGNumber="" )
	{
		this.actorName = arguments.actorName;
		this.age       = arguments.age;
		this.SAGNumber = arguments.SAGNumber;
		return this;
	}

	public any function showActorDetails()
	{
		WriteOutput( "<p>Name: #this.actorName#</p>" );
		WriteOutput( "<p>Age: #this.age#</p>" );
		WriteOutput( "<p>SAG Number: #this.SAGNumber#</p>" );
	}

	public any function renewUnionDues()
	{
		WriteOutput( "<p>The actor is renewing his/her SAG union dues.</p>" );
	}

}
