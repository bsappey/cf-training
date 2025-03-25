component accessors="true" extends="Entertainer"
{
	property name="bookTitle" type="string";

	public any function init( string authorName, numeric age, string bookTitle )
	{
		super.init( arguments.authorName, arguments.age );
		setBookTitle( arguments.bookTitle );

		return this;
	}

	public any function displayAuthorInfo()
	{
		showInfo();
		WriteOutput( "<p>Book Title: #getBookTitle()#</p>" );
	}
}