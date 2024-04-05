interface
{
    public query function select( numeric UserID );
    public void function insert( FirstName, LastName, Email, Password );
    public void function update( UserID, FirstName, LastName, Email, Password );
    public void function delete( UserID );
    public query function search( FirstName, LastName, Email, Password );
    public void function save( UserID, FirstName, LastName, Email, Password );
}