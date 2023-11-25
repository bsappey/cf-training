component accessors="true"
{
	property name="FirstName" type="string";
	property name="LastName" type="string";
	property name="age" type="numeric";
	property name="healthPlan" type="com.InsurancePlan";

	public any function init( firstName, lastName, age, healthPlan )
	{
		setFirstName( arguments.firstName );
		setLastName( arguments.lastName );
		setAge( arguments.age );
		setHealthPlan( arguments.healthPlan );

		return this;
	}
	
	public void function showEmployeeDetails()
	{
		WriteOutput( "<p>Name: #getFirstName()# #getLastName()#</p>" );
		WriteOutput( "<p>Age: #getAge()# years old.</p>" );
		healthPlan.showPlanDetails();
	}
}