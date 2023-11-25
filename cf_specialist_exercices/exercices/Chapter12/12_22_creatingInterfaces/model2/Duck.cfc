component accessors="true"
{
	property name="color" type="string";
	
	public any function init( color )
	{
		setColor( arguments.color );
		return this;
	}

}