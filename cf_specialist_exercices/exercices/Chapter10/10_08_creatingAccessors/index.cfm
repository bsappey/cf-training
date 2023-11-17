<cfscript>

	m1 = new com.Musician( "Ian MacKaye", 45, "Guitar" );
	m1.displayMusicianInfo();

	m1.setMusicianName( "Henry Rollins" );
	m1.setAge( 99 );
	m1.setInstrument( "Trumpet" );

	m1.displayMusicianInfo();
</cfscript>