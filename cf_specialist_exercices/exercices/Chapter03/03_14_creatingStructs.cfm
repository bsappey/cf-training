<cfscript>

	aryBandMembers = [ "John", "Paul", "George", "Ringo" ];
	WriteDump( aryBandMembers );

	structBandMembers = { harmonica: "John",
						  bass: "Paul",
						  guitar: "George",
						  drums: "Ringo"
					    };
	WriteDump( structBandMembers );


	// student1 = { 
	// 		name = "Alvin",
	// 		age = 22,
	// 		hairColor = "brown"
	// 	};

	// WriteDump( student1 );

	
	// student2 = StructNew();
	// student2.name = "Simon";
	// student2.age = 25;
	// student2.hairColor = "black";

	// WriteDump( student2 );

</cfscript>
<!--- <cfset student3 = { name = "Theodore",
					age = 27,
					hairColor = "green"
} />
<cfdump var="#student3#" /> --->

<!--- <cfset student4 = StructNew() />
<cfset student4.name = "Dave" />
<cfset student4.age = 42 />
<cfset student4.hairColor = "blonde" />
<cfdump var="#student4#" /> --->