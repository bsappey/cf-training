<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Displaying Query data</title>
</head>
<body>
	<h1>Displaying query Data</h1>
	
	<cfquery name="qAllUsers">
		SELECT UserID, FirstName, LastName, Email
		FROM tUsers
		ORDER BY FirstName
	</cfquery>
	
	
	
	<cfdump var="#qAllUsers#" />
</body>
</html>
