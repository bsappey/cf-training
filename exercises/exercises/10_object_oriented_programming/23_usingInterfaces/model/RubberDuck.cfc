component extends="Duck" implements="ISwimmable,IQuackable"
{
	public void function swim()
	{
		WriteOutput( "<p>The #getColor()# rubber duck is floating in the tub.</p>" );
	}

	public void function quack()
	{
		WriteOutput( "<p>The #getColor()# rubber duck is quacking...SQUEAK!</p>" );
	}
}