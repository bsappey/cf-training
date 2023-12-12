<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Creating Components</title>
</head>
<body>
	<h1>Creating Components</h1>
	
	<cfscript>
		comScript = createObject('component', 'com.MusicianScript');
		writeDump(var=comScript, label="ComScript");
	</cfscript>
	
	
	<cfset comTag = createObject('component', 'com.MusicianTag') />
	<cfdump var="#comTag#" label="comTag" />
	
	
	<!--- <cfoutput>
		<p>This scoped variable from the MusicianScript.cfc component = #comScript.instrument# </p>
		<p>This scoped variable from the MusicianTag.cfc component = #comTag.instrument# </p>
	</cfoutput> --->
	
	
	<!---<cfoutput>
		<p>Outputting variables scoped variable from a component generated an error : #comScript.musicianName# </p>
		<p>Outputting variables scoped variable from a component generated an error : #comTag.musicianName# </p>
	</cfoutput>--->
</body>
</html>
