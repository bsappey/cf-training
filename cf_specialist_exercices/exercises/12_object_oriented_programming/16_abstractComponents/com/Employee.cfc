component accessors="true"
{
    property name="name" type="string";
    
    public any function init( employeeName )
    {
        setName( arguments.employeeName );

        return this;
    }

    public void function getPaid()
    {
        WriteOutput( "Employee #getName()# has been paid." );
    }
}