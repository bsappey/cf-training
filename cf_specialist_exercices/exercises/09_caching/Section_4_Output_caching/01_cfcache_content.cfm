<cfcache action="cache" timespan="#createtimespan(0,0,15,0)#" idletime="#createtimespan(0,0,0,5)#">
	<!DOCTYPE html>
	<html>
		<body>
		<cfoutput>Random Number #randrange(111,999)#</cfoutput>
		<h1>My First Heading</h1>

		<p>My first paragraph.</p>

		</body>
	</html>
</cfcache>
