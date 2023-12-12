<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>What is ColdFusion?</title>
</head>
<body>
	<cfif isDefined('form.name')>
		<cfoutput>
			<p>Dear #form.name#,<p>
			<p>Welcome to the Adobe ColdFusion Specialist Certification Program.</p>
		</cfoutput>
	<cfelse>
		<form method="POST">
			<div>
				<label for="name">Your Name</label>
				<input name="name" id="name" type="text" />
			</div>
			<div>
				<button type="submit">Send</button>
			</div>
		</form>
	</cfif>
</body>
</html>