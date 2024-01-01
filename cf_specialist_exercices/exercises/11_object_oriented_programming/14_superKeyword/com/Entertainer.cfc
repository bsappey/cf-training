component accessors="true"
{
    property name="name" type="string";
    property name="age" type="numeric";
    
    public any function init (name, age)
    {
        setName( arguments.age );
        setAge( arguments.age );

        return this;
    }


    public any function showInfo()
    {
        WriteOutput( "<p>Name: #getName()#</p>" );
		WriteOutput( "<p>Age: #getAge()#</p>" );
    }
}