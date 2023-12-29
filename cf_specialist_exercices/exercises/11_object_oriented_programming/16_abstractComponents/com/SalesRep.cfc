component accessors="true" extends="Employee"
{
    property name="region" type="string";

    public any function init( name, region )
    {
        super.init( arguments.name );
        setRegion( arguments.region );

        return this;
    }

    public any function goOnSalesTrip()
    {
        WriteOutput( "#getName()# is on a sales trip in the #getRegion()# area." );
    }
}