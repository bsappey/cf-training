component 
{
	remote void function saveBlog( blogID, title, datePublished=Now(), author, isActive=1, bodyContent )
	{
		if( arguments.title == "" )
		{
			location( url="../edit.cfm?statusMsg=#encodeForURL( 'Title is a required field' )#",
					  addtoken="false" );
		}

		var objBlog = new model.blog();

		// new entry or updating an existing one?
		if( arguments.blogID == 0 )
		{
			objBlog.insert( argumentCollection=arguments );
		}
		else 
		{
			objBlog.update( argumentCollection=arguments );
		}

		location( url="../listEntries.cfm", addtoken="false" );
	}

	remote query function getAllBlogEntries()
	{
		return new model.Blog().select();
	}
}