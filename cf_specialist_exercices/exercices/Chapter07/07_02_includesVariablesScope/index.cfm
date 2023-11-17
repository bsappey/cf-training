<cfscript>
    userName = 'Damien';
    age = 43;
    favoriteBands = ['Genesis', 'Pink Floyd', 'Opeth', 'Tool'];
    homeAddress = {
        street = "rue d'Anderlues",
        zip = '6530',
        city = 'Thuin',
        country = 'Belgium'
    };

    //include ('inc/moreVariables.cfm');


    writeDump(variables);

</cfscript>