package;

import haxe.Constraints.Function;

class Database
{
    public function new () {};

    public function addEventListener<T:Function>(event:Event<T>, listener:T)
    {
        trace('Added function $listener for event $event');
    }

    public function getProperty(propert:Property<String>)
    {
        trace('Getting $propert');
    }

    public function setProperty<T>(property:Property<T>, value:T)
    {
        trace('Setting $property to $value');
    }
}

abstract Property<T>(String)
{
    public inline function new (name)
    {
        this = name;
    }
}

abstract Event<T:Function>(String)
{
    public inline function new (name)
    {
        this = name;
    }
}
