component extends="WireBox.system.ioc.config.Binder"
{
	function configure(){		

		var modelsDir = "exercises.12_design_patterns.07_aop.03_tryCatch.models";

		// The WireBox configuration structure DSL
		wireBox = {
            // make our AOP stuff accessible via the variable application.wirebox anywhere in the app
			scopeRegistration = {
				enabled = true,
				scope   = "application", // server, cluster, session, application
				key		= "wireBox"
			},

			// Package scan locations
            scanLocations = [ modelsDir ]

			,listeners = [
			    { class="wirebox.system.aop.Mixer", properties={} }
			]			
		};
		
		map( "constructedMusician" ).to( "#modelsDir#.Musician" )
									.initArg( name="name", value="George Harrison" )
						  	 		.initArg( name="instrument", value="Guitar" );

		// add our AOP adivce
		mapAspect( "MusicianAdvice" ).to( "#modelsDir#.MusicianAdvice" );

		bindAspect( classes=match().mappings( 'constructedMusician' ), 
					methods=match().methods( 'getQuarterlyReport' ), 
					aspects="MusicianAdvice" );

	}	

}