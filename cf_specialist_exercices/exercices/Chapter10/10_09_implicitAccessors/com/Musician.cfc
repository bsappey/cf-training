component
{
	variables.musicianName = "";
	variables.age          = "";
	variables.instrument   = "";

	public any function init( string musicianName="", numeric age=0, string instrument="" )
	{
		// variables.musicianName = arguments.musicianName;
		// variables.age          = arguments.age;
		// variables.instrument   = arguments.instrument;

		setMusicianName( arguments.musicianName );
		setAge( arguments.age );
		setInstrument( arguments.instrument );

		return this;
	}

	// setters (mutators)
	public void function setMusicianName( string newName )
	{
		variables.musicianName = arguments.newName;
	}

	public void function setAge( numeric newAge )
	{
		variables.age = arguments.newAge;
	}

	public void function setInstrument( string newInstrument )
	{
		variables.instrument = arguments.newInstrument;
	}

	// getters (accessors)
	public string function getMusicianName()
	{
		return variables.musicianName;
	}

	public numeric function getAge()
	{
		return variables.age;
	}

	public string function getInstrument()
	{
		return variables.instrument;
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
