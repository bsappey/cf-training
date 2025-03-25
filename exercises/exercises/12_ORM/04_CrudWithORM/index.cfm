<cfscript>
	sql = 'SELECT * FROM tUsers';
	qUsers = queryExecute(sql);

	writeDump(qUsers);

	/////////////////////
	// Create operation
	////////////////////
	// newUser = createObject('component', 'com.User');
	// newUser = new com.User();
	// newUser = entityNew('User');
	// newUser.setFirstName('Damien');
	// newUser.setLastName('Bruyndonckx');
	// newUser.setEmail('damien@company.com');
	// newuser.setPassword('123456789');
	// EntitySave(newUser);
	// writeDump(newUser);

	// qUsersAfterSave = queryExecute(sql);
	// writeDump(qUsersAfterSave);
	/////////////////////
	// read operation
	////////////////////
	// allUsers = entityLoad('User');
	// qAllusers = entityToQuery(allUsers);
	// writeDump(allUsers);
	// writeDump(qAllusers);

	// oneUser = entityLoaÒd('User', 5);
	// oneUser = entityLoad('User', 5, true);
	// oneUser = entityLoadByPK('User', 5);
	// writeDump(oneUser);

	// someUsers = entityLoad('User', {password = "password"});
	// someUsers = entityLoad('User', {password = "password", firstName = "Nolan"});
	// someUsers = entityLoad('User', {password = "password"}, "firstname asc");
	// writeDump(someUsers);

	/////////////////////
	// Update operation
	////////////////////
	// oneUser = entityLoad('User', {firstName = "Damien"}, true);
	// oneUser.setEmail('damien@vandeleyindustries.biz');

	/////////////////////
	// Delete operation
	////////////////////
	// oneUser = entityLoad('User', {firstName = "Damien"}, true);
	// EntityDelete(oneUser);



</cfscript>
