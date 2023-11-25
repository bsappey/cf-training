component extends="Duck" implements="ISwimmable,IQuackable,IFlyable,IEatable"
{
	public void function swim()
	{
		WriteOutput( "<p>The #getColor()# mallard is swimming in the river.</p>" );
	}

	public void function quack()
	{
		WriteOutput( "<p>The #getColor()# mallard is quacking...QUACK!</p>" );
	}

	public void function fly()
	{
		WriteOutput( "<p>The #getColor()# mallard is flying in the air!</p>" );
	}	

	public void function eat()
	{
		WriteOutput( "<p>The #getColor()# mallard is eating food.</p>" );
	}	
}