interface
{
    public query function select( numeric OrderID );
    public void function insert( OrderDate, CustomerName, Price );
    public void function update( OrderID, CustomerName, Price, OrderDate );
    public void function delete( OrderID );
    public query function search( CustomerName, Price, OrderDate );
}
