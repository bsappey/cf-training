<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>The blog app</title>
</head>
<body>
	<h1>Welcome to the Blog App</h1>
	<cfset application.color =  "red" />
	<cfoutput>
		<p>This application's color is #application.color#</p>
	</cfoutput>
	<p>To the <a href="login.cfm">Login page</a></p>
	<!--- <cfdump var="#application#" /> --->
</body>
</html>
