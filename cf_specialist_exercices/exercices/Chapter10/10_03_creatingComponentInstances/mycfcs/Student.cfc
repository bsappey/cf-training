component
{
	public any function init( string studentName="" )
	{
		variables.studentName = arguments.studentName;
		return this;
	}

	public any function registerForClass()
	{
		if( variables.studentName.len() )
		{
			return "#variables.studentName# has been registered for class!";
		}
		else 
		{
			return "The student has been registered for class!";
		}
	}
}