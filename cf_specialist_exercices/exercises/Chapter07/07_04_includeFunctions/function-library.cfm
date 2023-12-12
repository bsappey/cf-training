<cfscript>

	include "include/utils.cfm";

	average1 = computeAverage( 43, 100, 87 );
	output = formatAnswer( average1 );
	WriteOutput( output );

	average2 = computeAverage( 55, 77, 91 );
	output = formatAnswer( average2 );
	WriteOutput( output );

	average3 = computeAverage( 100, 81, 84 );
	output = formatAnswer( average3 );
	WriteOutput( output );

	average4 = computeAverage( 8, 42, 91 );
	output = formatAnswer( average4 );
	WriteOutput( output );

</cfscript>