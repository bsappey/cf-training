component 
{
	public any function init()
	{
		return this;
	}
	
	public query function select( numeric MovieID )
	{
		var sql = "SELECT MovieID, MovieName, ReleaseDate, Rating FROM tMovies";

		if( arguments.keyExists( "MovieID" ) )
		{
			sql = sql & " WHERE MovieID = :MovieID";
			var params = { MovieID = { value = arguments.MovieID, cfsqltype="cf_sql_integer" } };
		}
		else 
		{
			var params = {};
		}

		var qResult = QueryExecute( sql, params );

		return qResult;
	}

	public void function insert( MovieName, Rating, ReleaseDate )
	{
		var sql = "INSERT INTO tMovies ( MovieName, Rating, ReleaseDate ) VALUES ( :MovieName, :Rating, :ReleaseDate )";

		var params = {
			MovieName   = { value = arguments.MovieName, cfsqltype="cf_sql_varchar" },
			Rating      = { value = arguments.Rating, cfsqltype="cf_sql_varchar" },
			ReleaseDate = { value = arguments.ReleaseDate, cfsqltype="cf_sql_timestamp" }
		};

		QueryExecute( sql, params );
	}

	public void function update( MovieID, MovieName, Rating, ReleaseDate )
	{
		var sql = "UPDATE tMovies SET MovieName = :MovieName, Rating = :Rating, ReleaseDate = :ReleaseDate WHERE MovieID = :MovieID";

		var params = {
			MovieID     = { value = arguments.MovieID, cfsqltype="cf_sql_integer" },
			MovieName   = { value = arguments.MovieName, cfsqltype="cf_sql_varchar" },
			Rating      = { value = arguments.Rating, cfsqltype="cf_sql_varchar" },
			ReleaseDate = { value = arguments.ReleaseDate, cfsqltype="cf_sql_timestamp" }
		};

		QueryExecute( sql, params );
	}

	public void function delete( MovieID )
	{
		var sql = "DELETE FROM tMovies WHERE MovieID = :MovieID";

		var params = {
			MovieID = { value = arguments.MovieID, cfsqltype="cf_sql_integer" }
		};

		QueryExecute( sql, params );
	}

	public query function search( MovieName, Rating, ReleaseDate )
	{
		var sql = "SELECT MovieID, MovieName, Rating, ReleaseDate FROM tMovies WHERE 1=1 ";
		var params = {};

		if( arguments.keyExists( "MovieName" ) )
		{
			sql = sql & "AND MovieName LIKE :MovieName";
			params.MovieName = { value = "%#arguments.MovieName#%", cfsqltype="cf_sql_varchar" }
		}

		if( arguments.keyExists( "Rating" ) )
		{
			sql = sql & "AND Rating = :Rating";
			params.Rating = { value = arguments.Rating, cfsqltype="cf_sql_varchar" }
		}

		if( arguments.keyExists( "ReleaseDate" ) )
		{
			sql = sql & "AND ReleaseDate = :ReleaseDate";
			params.ReleaseDate = { value = arguments.ReleaseDate, cfsqltype="cf_sql_timestamp" }
		}

		return QueryExecute( sql, params );
	}
}

