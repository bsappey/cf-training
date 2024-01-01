
<cfcache action="flush" expireURL="04_expiring_cache.cfm?cacheid=3">

<!DOCTYPE html>
<html>
	<body>
		<cfoutput>Random Number #randrange(111,999)#</cfoutput>
		<h1>My First Heading</h1>
		<cfcache action="cache" 
				 timespan="#createtimespan(0,0,15,0)#" 
			 	 idletime="#createtimespan(0,0,1,0)#" 
				 usequerystring="true">
			<h5>
				<cfoutput>Cached Random Number #randrange(1111,9999)#</cfoutput>
			</h5>
			<h3>cacheid = <cfoutput>#url?.cacheid ?: 'None'#</cfoutput></h3>
		</cfcache>

		<p>My first paragraph.</p>
		<ul>
			<li><a href="?">None</a></li>
			<li><a href="?cacheid=1">Sample 1</a></li>
			<li><a href="?cacheid=2">Sample 2</a></li>
			<li><a href="?cacheid=33">Sample 33</a></li>
		</ul>
	</body>
</html>