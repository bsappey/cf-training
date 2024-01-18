<cfscript>

	weatherData = new WeatherData();

	currentDisplay = new CurrentConditionsDisplay( weatherData );
	extremeDisplay = new ExtremeConditionsDisplay( weatherData );

	// simulate some new weather
	weatherData.setMeasurements( 80, 65, 30 );
	weatherData.setMeasurements( 82, 99, 27 );
	weatherData.setMeasurements( 105, 66, 7 );

</cfscript>

