<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Accessing query Metadata</title>
</head>
<body>
	<h1>Accessing query Metadata</h1>

	<cfquery name="qAllUsers"> 
		SELECT UserID, FirstName, LastName, Email
		FROM tUsers
		ORDER BY FirstName
	</cfquery>
	
	<!---
	<cfoutput>
		#qAllUsers.cached#
	</cfoutput>
	--->
	<!---
	<cfoutput>
		<h2>All users (#qAllUsers.recordcount# users)</h2>
		<p>The list of columns available is : #qAllUsers.columnList#</p>
	</cfoutput>
	<ul>
		<cfoutput query="qAllUsers">
			<li>User #qAllUsers.currentRow# : #qAllusers.firstName# #qAllusers.lastName#</li>
		</cfoutput>
	</ul>
	--->
	
	<cfdump var="#qAllUsers#" />
</body>
</html>
