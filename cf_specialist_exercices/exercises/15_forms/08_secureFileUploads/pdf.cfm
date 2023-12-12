<cfscript>
	qBlogDetails = new model.Blog().select( Val( url.blogID ) );
</cfscript>

<cfdocument format="pdf">
<!--- <cfhtmltopdf> --->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title><cfoutput>#encodeForHTML( qBlogDetails.Title )#</cfoutput></title>
</head>
<body>
	<cfoutput>
		<a href="blog.cfm?blogID=#encodeForHTMLAttribute( Val( url.blogID ) )#">#encodeForHTML( qBlogDetails.title )#</a>
	
		<cfoutput encodeFor="html">
			<div class="author-info">Written by: #qBlogDetails.author#</div>
			<div>#qBlogDetails.bodyContent#</div>
		</cfoutput>	
	</cfoutput>
</body>
</html>

</cfdocument>
<!--- </cfhtmltopdf> --->
