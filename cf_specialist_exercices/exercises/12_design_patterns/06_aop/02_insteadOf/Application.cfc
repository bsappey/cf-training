component
{
	this.name                     = "AOP_InsteadOf";
    this.mappings[ "/wirebox" ]   = expandPath( "../wirebox" );

    boolean function onApplicationStart()
    {
        var myConfig = createObject( "component", "config.WireBoxConfigBinder" );

        // I don't technically -need- to assign this to application.wirebox, that is done automatically
        // via the data in my Binder class, but this makes the code a bit more intuitive.
        application.wirebox = new wirebox.system.ioc.Injector( binder = myConfig );

        return true;
    }
    
    boolean function onRequestStart()
    {
        if( structKeyExists( url, "reload" ) )
        {
            this.onApplicationStart();
        }

        return true;
    }    
}