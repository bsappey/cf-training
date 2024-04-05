interface component 
{
    public void function registerObserver( Observer o );
    public void function removeObserver( Observer o );
    public void function notifyObservers();
}