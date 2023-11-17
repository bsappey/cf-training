component accessors="true"
{
	property name="departmentName" type="string";
	property name="teamMembers" type="array"; // Array of Employees

	public any function init( string departmentName )
	{
		setDepartmentName( arguments.departmentName );
		setTeamMembers( [] );

		return this;
	}

	public void function addEmployee( Employee emp )
	{
		getTeamMembers().append( arguments.emp );
	}
	
	public void function displayDepartmentInfo()
	{
		WriteOutput( "<p>Department Name: #getDepartmentName()#</p>" );
		WriteOutput( "<p>There are #getTeamMembers().len()# people in this department.</p>" );

		for( var t in getTeamMembers() )
		{
			t.showEmployeeDetails();
		}
	}
}