<cfscript>

	hp = new com.InsurancePlan( "Kaiser", 100, 100 );

	emp1 = new com.Employee( "Charlie", "Brown", 30, hp );

	emp1.showEmployeeDetails();

</cfscript>