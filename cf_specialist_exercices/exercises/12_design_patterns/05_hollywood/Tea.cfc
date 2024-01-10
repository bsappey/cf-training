component extends="CaffeineBeverage"
{
    public any function init()
    {
        return this;
    }    

    public void function brew()
    {
        WriteOutput( "<p>Tea is steeping in the teapot...</p>" );
    }

    public void function addCondiments()
    {
        WriteOutput( "<p>Adding milk and honey...</p>" );
    }
}