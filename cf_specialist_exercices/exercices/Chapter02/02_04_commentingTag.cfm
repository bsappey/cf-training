<!---
	index.cfm

	This is the index file for the company website.

	Written by Nolan, May 2019
--->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>
</head>
<body>

	<!-- Users listing -->
	<h2>Users</h2>

	<cfset aryUsers = [ "John", "Paul", "George", "Ringo" ] />
	<cfloop array="#aryUsers#" index="curUser">
		<cfoutput>
			<div>#curUser#</div>
		</cfoutput>
	</cfloop>

	<!-- Employees listing -->
	<h2>Employees</h2>
	<cfscript>
		aryEmployees = [ "Mick", "Keith", "Charlie", "Ron", "Brian" ];	// this is our list of new employees
		/*
		for( e in aryEmployees )
		{
			WriteOutput( "<div>#e#</div>" );
		}
		*/
	</cfscript>
</body>
</html>
