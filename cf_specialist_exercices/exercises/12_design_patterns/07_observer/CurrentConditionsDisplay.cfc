component accessors="true" implements="Observer,DisplayElement"
{
	property name="temperature" type="numeric";
	property name="humidity" type="numeric";
	property name="weatherData" type="Subject";

	public any function init( Subject weatherData )	
	{
		setWeatherData( arguments.weatherData );
		weatherData.registerObserver( this );
		return this;
	}

	public void function update( numeric temperature, numeric humidity, numeric pressure )
	{
		setTemperature( arguments.temperature );
		setHumidity( arguments.humidity );
		display();
	}

	public void function display()
	{
		WriteOutput( "<div>Current Conditions: #getTemperature()# degrees and #getHumidity()# % humidity.</div>" );
	}
}
