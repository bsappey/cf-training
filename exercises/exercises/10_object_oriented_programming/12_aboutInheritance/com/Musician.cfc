component accessors="true" 
{
	property name="musicianName" type="string";
	property name="age" type="numeric";
	property name="instrument" type="string";	


	public any function init( string musicianName="", numeric age=0, string instrument="" )
	{
		setMusicianName( arguments.musicianName );
		setAge( arguments.age )
		setInstrument( arguments.instrument );

		return this;
	}

	public void function setAge( numeric newAge )
	{
		if( arguments.newAge lt 0 )
		{
			throw( message="Error in Musician.setAge. Value cannot be negative." );
			abort;
		}

		variables.age = arguments.newAge;
	}


	public any function displayMusicianInfo()
	{
		WriteOutput( "<p>Name: #getMusicianName()#</p>" );
		WriteOutput( "<p>Age: #getAge()#</p>" );
		WriteOutput( "<p>Instrument: #getInstrument()#</p>" );
	}

	private any function goOnTour()
	{
		WriteOutput( "<p>The musician is going on tour.</p>" );
	}

}
