component accessors="true"
{
	property name="companyName" type="string";
	property name="departments" type="array";

	public any function init( string name )
	{
		setCompanyName( arguments.name );
		setDepartments( [] );

		return this;
	}

	public void function addDepartment( Department d )
	{
		getDepartments().append( arguments.d );
	}
	
	public void function showCompanyDetails()
	{
		WriteOutput( "<p>Company Name: #getCompanyName()#</p>" );

		for( var d in getDepartments() )
		{
			d.displayDepartmentInfo();
		}
	}
}