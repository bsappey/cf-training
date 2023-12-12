<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>&lt;cfdump&gt; and writeDump()</title>
</head>
<body>
	<h1>Using &lt;cfdump&gt; and writeDump()</h1>
	
	<p>
	<!--- Dumping a string --->
		<cfset fName = "Damien" />
		<cfdump var="#fName#" />
	<br />
	<!--- Dumping a number --->
		<!--- <cfset age = 43 />
		<cfdump var="#age#" /> --->
	<br />
	<!--- Dumping a boolean --->
		<!--- <cfset hasGlasses = true />
		<cfdump var="#hasGlasses#" /> --->
	<br />
	<!--- Dumping an array --->
		<!--- <cfset beatles = ["John", "Paul", "George", "Ringo"] />
		<cfdump var="#beatles#" label="Dumping an Array"/> --->
	<br />
	<!--- Dumping a structure --->
		<!--- <cfset student =  { name = "Alvin", age = 22,hairColor = "brown" } />
		<cfdump var="#student#" label="Dumping a structure" /> --->
	
	</p>
	
	<p>
	<!--- <cfscript>
		// dumping a string
		fName = 'Damien';
		writeDump(fname);
		writeOutput('<br />');
		
		
		//dumping a number
		age = 43;
		writeDump(age);
		writeOutput('<br />');
		
		//dumping a boolean
		hasGlasses = true;
		writeDump(hasGlasses);
		writeOutput('<br />');
		
		//dumping an array
		beatles = ["John", "Paul", "George", "Ringo"];
		writeDump(var=beatles, label="Dumping an Array");
		writeOutput('<br />');
		
		//dumping a structure
		student = { name = "Alvin", age = 22,hairColor = "brown" };
		writeDump(var=student, label="Dumping a structure");
		writeOutput('<br />');
	</cfscript> --->
	</p>
	
</body>
</html>