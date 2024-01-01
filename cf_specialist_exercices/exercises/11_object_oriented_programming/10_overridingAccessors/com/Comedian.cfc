component accessors="true"
{
	property name="comedianName" type="string";
	property name="age" type="numeric";
	property name="location" type="string"; 

	public any function init( string comedianName, numeric age, string location )
	{
		setComedianName( arguments.comedianName );
		setAge( arguments.age );
		setLocation( arguments.location );

		return this;
	}

	public void function setAge( numeric newAge )
	{
		if( arguments.newAge lt 1 or arguments.newAge gt 100 )
		{
			throw( message="setAge() received an invalid value" );
			abort;
		}
		else 
		{
			variables.age = arguments.newAge;	
		}
	}

	public string function getAge()
	{
		return variables.age & " years old";
	}

	public any function showComedianDetails()
	{
		WriteOutput( "<p>Name: #getComedianName()#</p>" );
		WriteOutput( "<p>Age: #getAge()#</p>" );
		WriteOutput( "<p>Location: #getLocation()#</p>" );
	}

}
