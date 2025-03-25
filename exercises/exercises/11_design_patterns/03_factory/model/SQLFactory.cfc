component accessors="true"
{
    property name="dbType" type="string";

    public any function init( required string dbType )
    {
        setDBType( arguments.dbType );
        return this;
    }

    public any function makeMyObject( required string objectType )
    {
        // build the path to type of objects we're making
        var _path = "#getDbType()#.#arguments.objectType#";
        var _obj  = new "#_path#"();

        return _obj;
    }

}