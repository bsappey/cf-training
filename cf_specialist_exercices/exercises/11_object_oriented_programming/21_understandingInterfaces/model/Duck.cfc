component accessors="true"
{
	property name="color" type="string";
	
	public any function init( color )
	{
		setColor( arguments.color );
		return this;
	}

	public any function fly()
	{
		WriteOutput( "<p>The #getColor()# duck is flying!</p>" );
	}

	public any function swim()
	{
		WriteOutput( "<p>The #getColor()# duck is swimming!</p>" );
	}

	public any function quack()
	{
		WriteOutput( "<p>The #getColor()# duck is quacking!</p>" );
	}

	public any function eat()
	{
		WriteOutput( "<p>The #getColor()# duck is eating!</p>" );
	}

}