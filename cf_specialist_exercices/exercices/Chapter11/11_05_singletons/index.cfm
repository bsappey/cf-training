<cfscript>

	m1 = new mycfcs.Musician( "John Lennon", 64, "harmonica" );
	m1.displayMusicianInfo();

	m2 = new mycfcs.Musician( "Paul McCartney", 70, "bass guitar" );
	m2.displayMusicianInfo();

	a1 = new mycfcs.Actor( "Tom Cruise", 51, 999 );
	a1.showActorDetails();

	a2 = new mycfcs.Actor( "Molly Ringwald", 44, 123 );
	a2.showActorDetails();
	
</cfscript>