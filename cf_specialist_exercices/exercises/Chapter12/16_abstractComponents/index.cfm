<cfscript>
	
	act1 = new com.Actor( "Sean Penn", 35, 1039 );
	act1.showActorDetails();

	auth1 = new com.Author( "JK Rowling", 44, "Harry Potter" );
	auth1.displayAuthorInfo();

	mus1 = new com.Musician( "David Bowie", 70, "Guitar" );
	mus1.displayMusicianInfo();

	emp1 = new com.Employee("Angus Young");
	writeDump(emp1);

</cfscript>