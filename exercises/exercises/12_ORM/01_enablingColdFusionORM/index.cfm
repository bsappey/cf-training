<cfscript>
	
	app = createObject("component", "Application");
	if(isDefined('app.ormEnabled')){
		writeOutput('<h1>ORM is enabled in this application.</h1>');
	} else {
		writeOutput('<h1>ORM is NOT enabled in this application (Default).</h1>');
	}

	//writeDump(ormGetSession());
</cfscript>