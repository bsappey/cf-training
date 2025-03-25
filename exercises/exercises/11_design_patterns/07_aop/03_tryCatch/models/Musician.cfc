component accessors="true"
{
    property name="name" type="string" default="Ringo Starr";
    property name="instrument" type="string" default="Drums";


	public any function init( string name = getName(), 
                              string instrument = getInstrument() )
	{
        setName( arguments.name );
        setInstrument( arguments.instrument );

		return this;
	}

	public string function displayMusicianDetails()
	{
		var output = "Name: #getName()# <br />Instrument: #getInstrument()#";
		return output;
	}

	public query function getQuarterlyReport()
	{
		var qry = queryExecute( "SELECT MusicianID, TotalSales FROM tTableThatDoesNotExist" );

		return qry;
	}

}