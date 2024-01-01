component
{
	public any function init()
	{
		return this;
	}

	public void function getPaid()
	{
		WriteOutput( "<p>The actor is being paid for their recent work.</p>" );
	}

	public void function renewUnionDues( numeric price )
	{
		WriteOutput( "<p>The actor is paying #DollarFormat( arguments.price )# for SAG dues.</p>" );
	}

	public numeric function getTaxes()
	{
		return 500;
	}

}
