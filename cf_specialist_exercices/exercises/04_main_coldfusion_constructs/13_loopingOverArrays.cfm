<cfscript>

	students = [ "Steph", "Chino", "Abe", "Sergio" ,"Frank", "Chi" ];

	for( i = 1; i lte ArrayLen( students ); i++ )
	{
		WriteOutput( "<div>#students[ i ]#</div>" );
	}

	// for( i in students )
	// {
	// 	WriteOutput( "<div>#i#</div>" );
	// }

</cfscript>

<cfoutput>
	
	<!--- <cfloop from="1" to="#ArrayLen( students )#" index="i">
		<div>#students[ i ]#</div>
	</cfloop> --->

	<!--- <cfloop array="#students#" index="i">
		<div>#i#</div>
	</cfloop> --->
	
</cfoutput>

<cfscript>

	// students = [ "Steph", "Chino", "Abe", "Sergio", "Frank", "Chi" ];

	// students.each( function( element, index, array ) {

	// 	writeOutput( "<div>#index#:#element#</div>" );

	// });

	// WriteOutput( element );
	// WriteOutput( index );
	// WriteOutput( array );

</cfscript>