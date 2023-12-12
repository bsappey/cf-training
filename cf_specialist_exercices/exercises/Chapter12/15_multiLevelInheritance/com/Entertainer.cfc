component accessors="true" extends="Employee"
{
    property name="age" type="numeric";
    
    public any function init( name, age )
    {
        super.init( arguments.name );
        
        setAge( arguments.age );
    
        return this;
    }

    public any function showInfo()
    {
        WriteOutput( "<p>Name: #getName()#</p>" );
		WriteOutput( "<p>Age: #getAge()#</p>" );
    }
}