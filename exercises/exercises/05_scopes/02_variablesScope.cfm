<cfset fName = "Damien" />
<cfset age = 43 />
<cfset favoriteBands = ["Genesis", "Simple Minds", "Tool", "Opeth"] />
<cfset address = {
    city = "Thuin",
    zip = 6530,
    country = "Belgium"
} />
<cfoutput>
    <p>The name is #fName#, and the age is #age#</p>
</cfoutput>

<!--- <cfdump var="#variables#" /> --->

<!--- <cfoutput>
    <p>There are #variables.count()# variables in the Variables scope.</p>
</cfoutput> --->

<!--- <cfoutput>
    <p>The name is #variables.fName#, and the age is #variables.age#</p>
    <p>The name is #variables['fName']#, and the age is #variables['age']#</p>
</cfoutput> --->


<cfscript>
    // fName = "Damien";
    // age = 43;
    // favoriteBands = ["Genesis", "Simple Minds", "Tool", "Opeth"];
    // address = {
    //     city = "Thuin",
    //     zip = 6530,
    //     country = "Belgium"
    // };

    // writeOutput("<p>The name is #fName#, and the age is #age#</p>");

    // writeDump(variables);

    // writeOutput("<p>There are #variables.count()# variables in the Variables scope.</p>");

    // writeOutput("<p>The name is #variables.fName#, and the age is #variables.age#</p>");

</cfscript>