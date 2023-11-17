<cfscript>

	hp1 = new com.InsurancePlan( "Kaiser", 100, 100 );
	emp1 = new com.Employee( "Chandler", "Bing", 30, hp1 );
	
	hp2 = new com.InsurancePlan( "Blue Shield", 75, 55 );
	emp2 = new com.Employee( "Rachael", "Greene", 29, hp2 );

	hp3 = new com.InsurancePlan( "Kaiser", 85, 200 );
	emp3 = new com.Employee( "Phoebe", "Buffet", 29, hp3 );

	dept1 = new com.Department( "Marketing" );
	dept1.addEmployee( emp1 );
	dept1.addEmployee( emp2 );
	dept1.addEmployee( emp3 );

//	dept1.displayDepartmentInfo();

	emp4 = new com.Employee( "Ross", "Geller", 28, hp1 );
	emp5 = new com.Employee( "Monica", "Geller", 27, hp1 );

	dept2 = new com.Department( "Tech Support" );
	dept2.addEmployee( emp4 );
	dept2.addEmployee( emp5 );

//	dept2.displayDepartmentInfo();

	comp1 = new com.Company( "Vandelay Industries" );
	comp1.addDepartment( dept1 );
	comp1.addDepartment( dept2 );

	comp1.showCompanyDetails();
	
</cfscript>