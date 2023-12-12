component
{
	variables.musicianName = "";
	variables.age          = "";
	variables.instrument   = "";

	public any function init( string musicianName="", numeric age=0, string instrument="" )
	{
		variables.musicianName = arguments.musicianName;
		variables.age          = arguments.age;
		variables.instrument   = arguments.instrument;
		return this;
	}

	public any function displayMusicianInfo()
	{
		WriteOutput( "<p>Name: #variables.musicianName#</p>" );
		WriteOutput( "<p>Age: #variables.age#</p>" );
		WriteOutput( "<p>Instrument: #variables.instrument#</p>" );
	}

	private any function goOnTour()
	{
		WriteOutput( "<p>The musician is going on tour.</p>" );
	}

}
