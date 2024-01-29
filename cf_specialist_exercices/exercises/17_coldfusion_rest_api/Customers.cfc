<cfcomponent rest="true"  restpath="customers" Name="Customers">

 //GET Request to return customers
 //subresources not needed
<cffunction name="get" access="remote" returnType="array" produces="application/json" httpmethod="GET">
	<cfset customers = arrayNew(1)>
   	<cfset customers[1] = "Brian">
   	<cfset customers[2] = "Caroline">
   	<cfset customers[3] = "Noah">
   	<cfset customers[4] = "Elijah">
   	<cfset customers[5] = "Maverick">
	<cfreturn customers />
</cffunction>

 //GET Request to return customers
 //This example accepts a path parameter and returns a single customer from the array
 //dynamic path parameters  {parameter name}
<cffunction name="getCustomer" access="remote" returnType="string" restPath="/orders/{customerID}" produces="application/json" httpmethod="GET">
	<cfargument name="customerID" required="true"restargsource="Path" type="numeric"/>
	<cfset customers = arrayNew(1)>
   	<cfset customers[1] = "Brian">
   	<cfset customers[2] = "Caroline">
   	<cfset customers[3] = "Noah">
   	<cfset customers[4] = "Elijah">
   	<cfset customers[5] = "Maverick">
	<cfreturn customers[arguments.customerID] />
</cffunction>

 

//POST Request to write a new customer to the database
<cffunction name="post" access="remote" returnType="string" produces="application/json" httpmethod="POST">
	//do database insert and validation logic
	//return a successful message in the response
	<cfset message = "Customer has been added.">
	<cfreturn message>
</cffunction>



//PUT Request to edit a customer in the database
<cffunction name="put" access="remote" returnType="string" produces="application/json" httpmethod="PUT">
	//do database update and validation logic
	//return a successful message in the response
	<cfset message = "Customer has been updated.">
	<cfreturn message>
</cffunction>


//DELETE Request to remove a customer in the database
<cffunction name="delete" access="remote" returnType="string" produces="application/json" httpmethod="DELETE">
	//do database delete and validation logic
	//return a successful message in the response
	<cfset message = "Customer has been deleted.">
	<cfreturn message>
</cffunction>

</cfcomponent>

 