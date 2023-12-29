/*
    tOrders
    "INSERT INTO tOrders
    ( OrderID, OrderDate, CustomerName, Price )
    VALUES ( :OrderID, :OrderDate, :CustomerName, :Price )",
    {
        OrderID = { value = "101", cfsqltype = 'INTEGER' },
        OrderDate = { value = "2/03/2019", cfsqltype = 'TIMESTAMP' },
        CustomerName = { value = "Vivian Campbell", cfsqltype = 'VARCHAR' },
        Price = { value = "125.00", cfsqltype = 'NUMERIC' }
    }
*/

component 
{
    public any function init()
    {
        return this;
    }

    public query function select( numeric OrderID )
    {
		var sql = "SELECT OrderID, OrderDate, CustomerName, Price FROM tOrders";

		if( arguments.keyExists( "OrderID" ) )
		{
			sql = sql & " WHERE OrderID = :OrderID";
			var params = { OrderID = { value = arguments.OrderID, cfsqltype="cf_sql_integer" } };
		}
		else 
		{
			var params = {};
		}

		var qResult = QueryExecute( sql, params );

		return qResult;
    }

    public void function insert( OrderDate, CustomerName, Price )
    {
		var sql = "INSERT INTO tOrders ( OrderDate, CustomerName, Price ) VALUES ( :OrderDate, :CustomerName, :Price )";

		var params = {
			OrderDate    = { value = arguments.OrderDate, cfsqltype="cf_sql_timestamp" },
			CustomerName = { value = arguments.CustomerName, cfsqltype="cf_sql_varchar" },
			Price        = { value = arguments.Price, cfsqltype="cf_sql_numeric" }
		};

		QueryExecute( sql, params );
    }

    public void function update( OrderID, CustomerName, Price, OrderDate )
    {
		var sql = "UPDATE tOrders SET CustomerName = :CustomerName, Price = :Price, OrderDate = :OrderDate WHERE OrderID = :OrderID";

		var params = {
			OrderID      = { value = arguments.OrderID, cfsqltype="cf_sql_integer" },
			CustomerName = { value = arguments.CustomerName, cfsqltype="cf_sql_varchar" },
			Price        = { value = arguments.Price, cfsqltype="cf_sql_numeric" },
			OrderDate    = { value = arguments.OrderDate, cfsqltype="cf_sql_timestamp" }
		};

		QueryExecute( sql, params );
    }

    public void function delete( OrderID )
    {
		var sql = "DELETE FROM tOrders WHERE OrderID = :OrderID";

		var params = {
			OrderID = { value = arguments.OrderID, cfsqltype="cf_sql_integer" }
		};

		QueryExecute( sql, params );
    }

    public query function search( CustomerName, Price, OrderDate )
    {
		var sql = "SELECT OrderID, CustomerName, Price, OrderDate FROM tOrders WHERE 1=1 ";
		var params = {};

		if( arguments.keyExists( "CustomerName" ) )
		{
			sql = sql & "AND CustomerName LIKE :CustomerName";
			params.CustomerName = { value = "%#arguments.CustomerName#%", cfsqltype="cf_sql_varchar" }
		}

		if( arguments.keyExists( "Price" ) )
		{
			sql = sql & "AND Price = :Price";
			params.Price = { value = arguments.Price, cfsqltype="cf_sql_numeric" }
		}

		if( arguments.keyExists( "OrderDate" ) )
		{
			sql = sql & "AND OrderDate = :OrderDate";
			params.OrderDate = { value = arguments.OrderDate, cfsqltype="cf_sql_timestamp" }
		}

		return QueryExecute( sql, params );

    }
}
