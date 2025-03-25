component accessors="true"
{
	property name="authorName" type="string";
	property name="age" type="numeric";
	property name="bookTitle" type="string";

	public any function init( string authorName, numeric age, string bookTitle )
	{
		setAuthorName( arguments.authorName );
		setAge( arguments.age );
		setBookTitle( arguments.bookTitle );

		return this;
	}

	public any function displayAuthorInfo()
	{
		WriteOutput( "<p>Name: #getAuthorName()#</p>" );
		WriteOutput( "<p>Age: #getAge()#</p>" );
		WriteOutput( "<p>Book Title: #getBookTitle()#</p>" );
	}
}