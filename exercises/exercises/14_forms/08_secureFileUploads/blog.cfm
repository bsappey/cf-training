<cfscript>
	qBlogDetails = new model.Blog().select( Val( url.blogID ) );
</cfscript>

<cf_HeaderAndFooter pageTitle="#qBlogDetails.title#">
	<cfoutput><a href="pdf.cfm?blogID=#encodeForHTML( Val( url.blogID ) )#">[PDF version]</a></cfoutput>

	<cfoutput encodeFor="html">
		<div class="author-info">Written by: #qBlogDetails.author#</div>
		<div>#qBlogDetails.bodyContent#</div>
	</cfoutput>
</cf_HeaderAndFooter>