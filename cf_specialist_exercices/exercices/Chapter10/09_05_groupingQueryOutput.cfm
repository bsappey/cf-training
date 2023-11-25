<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Grouping Query Output</title>
</head>
<body>
	<h1>Grouping Query Output</h1>
	
	<cfquery name="qAllMovies">
		SELECT MovieID, ReleaseDate, MovieName, Rating
		FROM tMovies
    </cfquery>
    
    <ul>
        <cfoutput query="qAllMovies">
            <li>#MovieName#</li>
        </cfoutput>
    </ul>


	<cfdump var="#qAllMovies#" />
</body>
</html>
