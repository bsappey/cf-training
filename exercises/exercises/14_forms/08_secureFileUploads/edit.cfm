<cfscript>
	param name="url.blogID" default="0" type="numeric";

	lock scope="session" type="readonly" timeout="20"
	{
		if( structKeyExists( session, "loggedin" ) )
		{
			if( session.loggedin neq true )
			{
				// user isn't logged in, bounce to the home page
				_url = "index.cfm?statusMsg=#encodeForURL( 'You must log in first.' )#";
				location( url=_url, addtoken=false );
			}
		}
	}

	safeBlogID = Val( url.blogID );

	qBlogDetails = new model.Blog().select( safeBlogID );

	pageTitle = ( safeBlogID eq 0 ) ? "New Blog Entry" : qBlogDetails.title;
</cfscript>

<cf_HeaderAndFooter pageTitle="#pageTitle#">
	<cfoutput>

		<cfif IsDefined( "url.statusMsg" )>
			<div class="status-box">
				<cfoutput encodeFor="html">#url.statusMsg#</cfoutput>
			</div>
		</cfif>

		<form name="frmBlog" id="frmBlog" method="post" action="./controllers/blogController.cfc?method=saveBlog">
			<input type="hidden" name="blogID" id="blogID" value="#encodeForHTML( Val( url.blogID ) )#" />

			<div class="full-width">
				<label for="title">Title</label>
				<input type="text" required autofocus name="title" id="title" value="#qBlogDetails.title#" placeholder="Title">
			</div>
			<div class="full-width">
				<label for="author">Author</label>
				<input type="text" name="author" id="author" value="#qBlogDetails.author#" placeholder="Author">
			</div>
			<div class="full-width">
				<label for="bodyContent">Content</label>
				<textarea name="bodyContent" id="bodyContent" spellcheck="spellcheck">#qBlogDetails.bodyContent#</textarea>
			</div>
			<div>
				<input type="submit" name="btnSave" id="btnSave" value="Save">
			</div>
		</form>
	</cfoutput>
</cf_HeaderAndFooter>