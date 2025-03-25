component extends="WireBox.system.ioc.config.Binder"
{
	function configure()
    {
		var modelsDir = "exercises.11_design_patterns.07_aop.02_insteadOf.models";

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

		// add our AOP advice to the displayAuthorDetails() method
		bindAspect( classes=match().mappings( 'constructedAuthor' ), 
					methods=match().methods( 'displayAuthorDetails' ), 
					aspects="AuthorAdvice" );

	}	

}