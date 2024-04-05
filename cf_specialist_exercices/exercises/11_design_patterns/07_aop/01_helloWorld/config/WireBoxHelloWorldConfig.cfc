component extends="WireBox.system.ioc.config.Binder"
{
    // configure WireBox
    function configure()
    {
		// The WireBox configuration structure DSL
		wireBox = 
        {
            // make our AOP stuff accessible via the variable application.wirebox anywhere in the app
			scopeRegistration = {
				enabled = true,
				scope   = "application", // server, cluster, session, application
				key		= "wireBox"
			},

			// which folder contains the CFCs we want to use with AOP
			scanLocations = [ "exercises.12_design_patterns.07_aop.01_helloWorld.models" ]
		};
	}	
}
