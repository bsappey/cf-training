<cfscript>

	customerInfo = ArrayNew( 2 );

	customerInfo[ 1 ][ 1 ] = "John";
	customerInfo[ 1 ][ 2 ] = "Lennon";
	customerInfo[ 1 ][ 3 ] = "john@vanedlay.biz";

	customerInfo[ 2 ][ 1 ] = "George";
	customerInfo[ 2 ][ 2 ] = "Harrison";
	customerInfo[ 2 ][ 3 ] = "george@vanedlay.biz";

	WriteDump( customerInfo );

	WriteOutput( "<p>George's email address is #customerInfo[ 2 ][ 3 ]#</p>" );

</cfscript>