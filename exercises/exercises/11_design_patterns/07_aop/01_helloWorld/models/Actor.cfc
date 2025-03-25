component accessors="true"
{
    property name="actorName" type="string";
    property name="age" type="numeric";

	public any function init()
	{
		setActorName( "Keanu Reeves" );
		setAge( 45 );

		return this;
	}

	public any function displayInfo()
	{
		WriteOutput( "<div>" );
		WriteOutput( "Name: " & getActorName() );
		WriteOutput( "<br />" );
		WriteOutput( "Age: " & getAge() );
		WriteOutput( "</div><br><br>" );
	}

}