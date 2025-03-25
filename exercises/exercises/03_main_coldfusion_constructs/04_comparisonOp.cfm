<cfset age = 43 />

<cfif age GT 20>
    <p>Welcome to the show !</p>
<cfelse>
    <p>Sorry, you are not old enough to enter.</p>
</cfif>

<cfscript>

  ageScript = 43;
   
  if(ageScript > 20){
      writeOutput("<p>Welcome to the show !</p>");
  } else {
      writeOutput("<p>Sorry, you are not old enough to enter.</p>");
  }

</cfscript>