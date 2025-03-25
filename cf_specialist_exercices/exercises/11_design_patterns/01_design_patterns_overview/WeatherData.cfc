component accessors="true" implements="Subject"
{
    property name="observers" type="array";

    property name="temperature" type="numeric";
    property name="humidity" type="numeric";
    property name="pressure" type="numeric";

    public any function init()
    {
        setObservers( [] );
        return this;
    }

    public void function registerObserver( Observer o )
    {
        getObservers().append( arguments.o );
    }

    public void function removeObserver( Observer o )
	{
		var i = getObservers().indexOf( o );
		
		if( i >= 1 )
		{
			observers.remove( i );
		}
	}

    public void function notifyObservers()
    {
        for( var curObserver in getObservers() )
        {
            curObserver.update( getTemperature(), getHumidity(), getPressure() );
        }
    }

    public void function measurementsChanged()
    {
        notifyObservers();
    }

    public void function setMeasurements( numeric temperature, numeric humidity, numeric pressure )
    {
        setTemperature( arguments.temperature );
        setHumidity( arguments.humidity );
        setPressure( arguments.pressure );
        
        measurementsChanged();
    }


     public void function currentDisplay(  )
    {
       writedump(1);abort;
    }
}