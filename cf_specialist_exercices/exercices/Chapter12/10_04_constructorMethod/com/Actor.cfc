component
{
	variables.actorName = "";
	variables.age       = "";
	variables.SAGNumber = "";

	public any function init( string actorName="", numeric age=0, numeric SAGNumber="" )
	{
		variables.actorName = arguments.actorName;
		variables.age       = arguments.age;
		variables.SAGNumber = arguments.SAGNumber;
		return this;
	}

	public any function showActorDetails()
	{
		WriteOutput( "<p>Name: #variables.actorName#</p>" );
		WriteOutput( "<p>Age: #variables.age#</p>" );
		WriteOutput( "<p>SAG Number: #variables.SAGNumber#</p>" );
	}
}
