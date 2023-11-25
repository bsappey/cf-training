<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Using valueList()</title>
</head>
<body>
	<h1>Using valueList()</h1>
	
	<cfquery name="qAllUsers">
		SELECT UserID, FirstName, LastName, Email
		FROM tUsers
		ORDER BY FirstName
	</cfquery>
	
	
	<h2>All users</h2>
	
	<p>This is the list of all users in the database :  
		<cfoutput query="qAllUsers">
			#FirstName#<cfif currentRow EQ recordCount>.<cfelse>, </cfif>
		</cfoutput>
	</p>
</body>
</html>
