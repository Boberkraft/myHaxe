
import haxe.ds.GenericStack;

enum Turtles
{
    A_TURTLE(name:String);
    MANY_TURTLES(turtles:Array<Turtles>);
}

@:forward(hasNext, next)
abstract AbstractIterator<T>(Iterator<T>)
{
    inline public function new (iterator:Iterator<T>)
    {
        this = iterator;
    }
}

typedef TurtleIterator = AbstractIterator<Turtles>;

class Test
{
    public static function main()
    {
        var exitRequest = false;
        var turtles = [A_TURTLE("Leonardo"),
                       MANY_TURTLES([A_TURTLE("Raphael1"),
                                     A_TURTLE("Raphael2")]),
                       A_TURTLE("Michelangelo"),
                       A_TURTLE("Donatello")];
        var turtleIt = turtles.iterator();
        var turtleStack = new GenericStack<TurtleIterator>();
        turtleStack.add(new TurtleIterator(turtleIt));
        do
        {
            exitRequest = updateLoop(turtleStack);
        } while (!exitRequest);
    }

    public static function updateLoop(turtleStack:GenericStack<TurtleIterator>):Bool
    {
        if (turtleStack.isEmpty())
            return true;
        var nextTurtleIterator = turtleStack.first();
        if (nextTurtleIterator.hasNext())
        {
            switch (nextTurtleIterator.next())
            {
                case A_TURTLE(name):
                    trace("Training the next turtle " + name);
                case MANY_TURTLES(turtles):
                    turtleStack.add(new TurtleIterator(turtles.iterator()));
            }
        }
        else
        {
            turtleStack.pop();
        }
        return false;
    }
}