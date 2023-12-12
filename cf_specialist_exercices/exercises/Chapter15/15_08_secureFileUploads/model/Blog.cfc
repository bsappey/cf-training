component 
{
	public any function init()
	{
		return this;
	}
	
	public query function select( numeric blogID )
	{
		var sql    = "SELECT blogID, title, datePublished, author, isActive, bodyContent FROM tBlogs";
		var params = {};

		if( arguments.keyExists( "blogID" ) )
		{
			sql = sql & " WHERE blogID = :blogID";
			params = { blogID = { value = arguments.blogID, cfsqltype="integer" } };
		}

		return QueryExecute( sql, params );
	}

	public void function insert( title, datePublished, author, isActive, bodyContent )
	{
		var sql = "INSERT INTO tBlogs ( title, datePublished, author, isActive, bodyContent ) 
			       VALUES ( :title, :datePublished, :author, :isActive, :bodyContent )";

		var params = {
			title   = { value = arguments.title, cfsqltype="varchar" },
			datePublished = { value = arguments.datePublished, cfsqltype="date" },
			author = { value = arguments.author, cfsqltype="varchar" },
			isActive = { value = arguments.isActive, cfsqltype="char" },
			bodyContent = { value = arguments.bodyContent, cfsqltype="varchar" }
		};

		QueryExecute( sql, params );
	}

	public void function update( blogID, title, datePublished, author, isActive, bodyContent )
	{
		var sql = "UPDATE tBlogs 
				      SET title = :title, 
					  	  datePublished = :datePublished, 
						  author = :author,
						  isActive = :isActive,
						  bodyContent = :bodyContent
					WHERE blogID = :blogID";

		var params = {
			blogID     = { value = arguments.blogID, cfsqltype="integer" },
			title   = { value = arguments.title, cfsqltype="varchar" },
			datePublished = { value = Now(), cfsqltype="date" },
			author = { value = arguments.author, cfsqltype="varchar" },
			isActive = { value = 1, cfsqltype="char" },
			bodyContent = { value = arguments.bodyContent, cfsqltype="varchar" }
		};

		QueryExecute( sql, params );
	}

	public void function delete( blogID )
	{
		var sql = "DELETE FROM tBlogs WHERE blogID = :blogID";

		var params = {
			blogID = { value = arguments.blogID, cfsqltype="integer" }
		};

		QueryExecute( sql, params );
	}

	public query function search( title, datePublished, author, isActive, bodyContent )
	{
		var sql = "SELECT blogID, title, datePublished, author, isActive, bodyContent FROM tBlogs WHERE 1=1 ";
		var params = {};

		if( arguments.keyExists( "title" ) )
		{
			sql = sql & "AND title LIKE :title";
			params.title = { value = "%#arguments.title#%", cfsqltype="varchar" }
		}

		if( arguments.keyExists( "datePublished" ) )
		{
			sql = sql & "AND datePublished = :datePublished";
			params.datePublished = { value = arguments.datePublished, cfsqltype="datetime" }
		}

		if( arguments.keyExists( "author" ) )
		{
			sql = sql & "AND author = :author";
			params.author = { value = arguments.author, cfsqltype="varchar" }
		}

		if( arguments.keyExists( "isActive" ) )
		{
			sql = sql & "AND isActive = :isActive";
			params.isActive = { value = arguments.isActive, cfsqltype="char" }
		}

		if( arguments.keyExists( "bodyContent" ) )
		{
			sql = sql & "AND bodyContent LIKE :bodyContent";
			params.bodyContent = { value = "%#arguments.bodyContent#%", cfsqltype="varchar" }
		}

		return QueryExecute( sql, params );
	}
}

