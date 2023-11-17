<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>The Constructor Method</title>
</head>
<body>
	<h1>The Constructor Method</h1>
	
	<cfset musician1 = createObject('component', 'com.Musician').init("John Lennon", 64, "harmonica") />
	<cfscript>
		musician2 = createObject('component', 'com.Musician').init("Paul McCartney", 70, "bass guitar" );
		actor1 = createObject('component', 'com.Actor').init("Tom Cruise", 51, 999);
		actor2 = createObject('component', 'com.Actor').init("Molly Ringwald", 44, 123);
	</cfscript>
	
	
	<h2>Musician 1 Info</h2>
	<cfset musician1.displayMusicianInfo() />
	
	<h2>Musician 2 Info</h2>
	<cfset musician2.displayMusicianInfo() />
	
	<h2>Actor 1 Info</h2>
	<cfset actor1.showActorDetails() />
	
	<h2>Actor 2 Info</h2>
	<cfset actor2.showActorDetails() />
	
	
	
</body>
</html>
