abstract component 
{
    public any function init()
    {
        return this;
    }

    public any function prepareRecipe()
    {
        boilWater();
        brew();
        pourInCup();
        addCondiments();
    }

    public any function boilWater()
    {
        WriteOutput( "<p>Water is boiling...</p>" );
    }

    public any function pourInCup()
    {
        WriteOutput( "<p>Pouring our beverage into a cup...</p>" );
    }

    
}