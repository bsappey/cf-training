<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Other Query Tag</title>
</head>
<body>
	<h1>Other Query Tag</h1>
    
	<cfdirectory directory="#expandPath('../')#" action="list" name="qDirectory" />
	<!---
	<cfscript>
		qDirectory = directoryList(path=expandPath('../'), listInfo="query", recurse=true, sort="directory asc, name asc" );
	</cfscript>
	--->
	<!---	
	<cfoutput query="qDirectory" group="Directory">
			<p>#directory#</p>
			<ul>
				<cfoutput>
					<li>#name#</li>
				</cfoutput>
			</ul>
		</cfoutput>
	--->
	
	
    <cfdump var="#qDirectory#" />
	
	<!---
	<cfldap server="some.ldap.server" action="query" name="qLdap" start="dc=ldap,dc=server" attributes="cn,o,mail" sort="cn ASC" />
		<ul>
			<cfoutput query="qLdap">
		
				<li>Name : #cn# - Organization : #o# - Mail #mail#</li>
			</cfoutput>
		</ul>
	--->
</body>
</html>