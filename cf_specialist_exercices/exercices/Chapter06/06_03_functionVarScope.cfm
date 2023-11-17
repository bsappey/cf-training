<cfscript>
    variables.fName = "Andrew";
    variables.lName = "Fletcher";

    // writeDump(var=variables, label = 'the global Variables scope');
    
    string function sayHello (){

        var greeting = "Hello";
        //var fName = "Dave";
        //var lName = "Gahan";

        // writeDump(var = local, label = "The local var scope of the function");

        return greeting & ' ' & variables.fName & ' ' & variables.lName & '.';
    }

    writeOutput("<p>#sayHello()#</p>");
    writeOutput("<p>#greeting & ' ' & variables.fName & ' ' & variables.lName#</p>")
</cfscript>