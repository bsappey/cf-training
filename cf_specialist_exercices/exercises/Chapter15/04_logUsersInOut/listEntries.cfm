<cfscript>
	qBlogs = new model.Blog().select();
</cfscript>

<cf_HeaderAndFooter pageTitle="Blog Entries">
	<cfoutput>
		<ol>
			<cfloop query="qBlogs">
				<li data-authorname="#encodeForHTMLAttribute( qBlogs.Author )#">
					<a href="blog.cfm?blogID=#qBlogs.blogID#">#encodeForHTML( qBlogs.title )#</a>
					<a href="edit.cfm?blogID=#qBlogs.blogID#">[edit]</a>
					<a href="pdf.cfm?blogID=#qBlogs.blogID#">[View as PDF]</a>
					<a href="saveToPDF.cfm?blogID=#qBlogs.blogID#">[Save to PDF]</a>
				</li>
			</cfloop>
		</ol>
	</cfoutput>
</cf_HeaderAndFooter>