<cfscript>

	hp1 = new com.InsurancePlan( "Kaiser", 100, 100 );
	emp1 = new com.Employee( "Charlie", "Brown", 30, hp1 );
	emp1.showEmployeeDetails();

	// a new plan is available, and Charlie wants it.
	// hp2 = new com.InsurancePlan( "Blue Shield", 10, 15 );
	// emp1.setHealthPlan( hp2 );
	// emp1.showEmployeeDetails();

</cfscript>