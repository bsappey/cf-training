<cfscript>
	//NOTE : we are using the same sample files for
	//	11_02_entitiesFromExistingTable
	//	11_03_usingORMReload



	sql = 'SELECT * FROM tUsers';
	qUsers = queryExecute(sql);

	writeDump(qUsers);
	
	// newUser = entityNew('User');
	// writeDump(newUser);
</cfscript>