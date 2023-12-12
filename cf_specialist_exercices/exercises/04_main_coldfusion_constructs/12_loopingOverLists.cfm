<cfscript>

	students = "Steph,Chino,Abe,Sergio,Frank,Chi";

	for( i = 1; i lte ListLen( students ); i++ )
	{
		WriteOutput( "<div>#ListGetAt( students, i )#</div>" );
	}

	// for( i in students )
	// {
	// 	WriteOutput( "<div>#i#</div>" );
	// }

</cfscript>

<cfoutput>
	
	<!--- <cfloop from="1" to="#ListLen( students )#" index="i">
		<div>#ListGetAt( students, i )#</div>
	</cfloop> --->

	<!--- <cfloop list="#students#" index="i">
		<div>#i#</div>
	</cfloop> --->

</cfoutput>
<cfscript>

	students = "Steph,Chino,Abe,Sergio,Frank,Chi";

	students.listEach( function( element, index, list ) {

		writeOutput( "<div>#index#:#element#</div>" );

	});

	// WriteOutput( element );
	// WriteOutput( index );
	// WriteOutput( list );

</cfscript>