component extends="CaffeineBeverage"
{
    public any function init()
    {
        return this;
    }    

    public void function brew()
    {
        WriteOutput( "<p>Coffee is brewing in the coffee pot...</p>" );
    }

    public void function addCondiments()
    {
        WriteOutput( "<p>Adding cream and sugar...</p>" );
    }    
}