component extends="WireBox.system.ioc.config.Binder"
{
	function configure()
    {
		var modelsDir = "exercises.12_design_patterns.06_aop.02_insteadOf.models";

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
		
		map( "constructedAuthor" ).to( "#modelsDir#.BookAuthor" )
									.initArg( name="authorName", value="Shel Silverstein" )
						  	 		.initArg( name="bookTitle", value="A Light In The Attic" );

		// add our AOP adivce
// 		mapAspect( "AuthorAdvice" ).to( "#modelsDir#.AuthorAdvice" );

		bindAspect( classes=match().mappings( 'constructedAuthor' ), 
					methods=match().methods( 'displayAuthorDetails' ), 
					aspects="AuthorAdvice" );

	}	

}