<!--- Simple example of using an AOP/DI library to load CFCs --->
<cfscript>

    // legacy CF syntax for loading CFCs
    actor1 = createObject( "component", "models.Actor" ).init();
    actor1.displayInfo();

    // modern CF syntax for loading CFCs
    actor2 = new models.Actor();
    actor2.displayInfo();

    // loading the CFC via a Dependency Injection/AOP library
    actor3 = application.wirebox.getInstance( "Actor" );
    actor3.displayInfo();

</cfscript>
