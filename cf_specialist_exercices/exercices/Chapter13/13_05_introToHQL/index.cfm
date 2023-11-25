<cfscript>
	allUsers = EntityLoad('User');
	// allUsers = ormExecuteQuery('FROM User');
	writeDump(allUsers);

	// someUsers = entityLoad('User', {password = "password"}, "firstname asc");
	// someUsers = ormExecuteQuery("
	// 	FROM User
	// 	WHERE password = password
	// 	ORDER BY firstname asc
	// ");
	// param name='password', default="password";
	// someUsers = ormExecuteQuery("
	// 	FROM User
	// 	WHERE password = #password#
	// 	ORDER BY firstname asc
	// ");
	// someUsers = ormExecuteQuery("
	// 	FROM User
	// 	WHERE firstname LIKE '%an%'
	// 	ORDER BY firstname asc
	// ");
	// someUsers = ormExecuteQuery("
	// 	FROM User
	// 	WHERE userId >= 6
	// 	ORDER BY firstname asc
	// ");
	// writeDump(someUsers);
</cfscript>

<!--- <cfquery name="someUsers" dbType="hql">
	FROM User
	WHERE userId >= 6 OR firstName = 'Nolan'
	ORDER BY firstname asc
</cfquery>
<cfdump var="#someUsers#" /> --->

