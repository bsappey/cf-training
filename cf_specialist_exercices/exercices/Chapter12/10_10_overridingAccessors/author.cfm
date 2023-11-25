<cfscript>

	auth1 = new com.Author( "Nick Hornby", 44, "High Fidelity" );
	auth1.displayAuthorInfo();

	auth1.setAuthorName( "JK Rowling" );
	auth1.setAge( 31 );
	auth1.setBookTitle( "Harry Potter" );

	auth1.displayAuthorInfo();

</cfscript>