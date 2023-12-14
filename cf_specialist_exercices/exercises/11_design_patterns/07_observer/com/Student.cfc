component
{
	public any function init( string studentName="" )
	{
		variables.studentName = arguments.studentName;
		return this;
	}

	public any function registerForClass( required string className )
	{
		if( variables.studentName.len() )
		{
			WriteOutput( "<p>#variables.studentName# has been registered for #arguments.className#!</p>" );
		}
		else 
		{
			WriteOutput( "<p>The student has been registered for #arguments.className#!</p>" );
		}
	}

	public any function doHomework()
	{
		WriteOutput( "<p>The student is doing homework.</p>" );
	}
}