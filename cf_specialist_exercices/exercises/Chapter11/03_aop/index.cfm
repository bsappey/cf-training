<cfscript>
	stu1 = new mycfcs.student();
	result1 = stu1.registerForClass();
	WriteOutput( "<p>#result1#</p>" );

	// stu2 = new mycfcs.student( "John" );
	// result2 = stu2.registerForClass();
	// WriteOutput( "<p>#result2#</p>" );

	// stu3 = CreateObject( "component", "mycfcs.student" ).init( "George" );
	// result3 = stu3.registerForClass();
	// WriteOutput( "<p>#result3#</p>" );

</cfscript>

<!--- <cfset stu4 = CreateObject( "component", "mycfcs.student" ).init( "Paul" ) />
<cfset result4 = stu4.registerForClass() />
<cfoutput><p>#result4#</p></cfoutput> --->

<!--- <cfobject type="component" name="stu5" component="mycfcs.student">
<cfset stu5 = stu5.init( "Ringo" ) />
<cfset result5 = stu5.registerForClass() /> 
<cfoutput><p>#result5#</p></cfoutput> --->
