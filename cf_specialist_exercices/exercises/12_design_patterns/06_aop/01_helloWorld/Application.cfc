component 
{
	this.name                     = "AOP_helloWorld";
    this.mappings[ "/wirebox" ]   = expandPath( "../wirebox" );

    boolean function onApplicationStart()
    {
        var myConfig = createObject( "component", "config.WireBoxHelloWorldConfig" );

        // I don't technically -need- to assign this to application.wirebox, that is done automatically
        // via the data in my WireBoxHelloWorldConfig class, but this makes the code a bit more intuitive.
        application.wirebox = new wirebox.system.ioc.Injector( binder = myConfig );

        return true;
    }

}
