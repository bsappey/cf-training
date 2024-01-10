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
		if( getTemperature() < 0 )
		{
			WriteOutput( "FREEZING ALERT! Current temp is #getTemperature()# -- be mindful of ice and snow!" );
		}
		else if( getTemperature() > 100 )
		{
			WriteOutput( "HEAT STROKE ALERT! High temperatores today. Remember to stay hydrated!" );
		}
	}
}
