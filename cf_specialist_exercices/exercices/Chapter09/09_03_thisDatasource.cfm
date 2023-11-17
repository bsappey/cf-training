<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>using this.datasource</title>
</head>
<body>
	<h1>Using this.datasource in Application.cfc</h1>

	<cfquery name="qAllusers" datasource="CFTrainingDSN">
		SELECT UserID, firstName, lastName, Email
		FROM tUsers
		ORDER BY firstName
	</cfquery>
	

	<cfdump var="#qAllusers#" />
</body>
</html>
