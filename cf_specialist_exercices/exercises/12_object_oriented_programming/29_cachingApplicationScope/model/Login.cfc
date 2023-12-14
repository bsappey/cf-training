component 
{
	public any function init()
	{
		return this;
	}
	
	public query function select( email, password )
	{
		var sql = "SELECT UserID, FirstName, LastName, Password, Email FROM tUsers
				   WHERE Email = :Email
				     AND Password = :Password
				  ";

		var params = { Email = { value = arguments.Email, cfsqltype="cf_sql_varchar" },
					   Password = { value = arguments.Password, cfsqltype="cf_sql_varchar" }
					 };

		return QueryExecute( sql, params );
	}
}

