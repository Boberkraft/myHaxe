enum Turtles
{
    A_TURTLE(name:String);
}

class Test
{
    public static function main()
    {
        var exitRequest = false;
        var turtles = [A_TURTLE("Leonardo"),
                       A_TURTLE("Rafal"),
                       A_TURTLE("Michal"),
                       A_TURTLE("Andrzej")];

        var turtleIt = turtles.iterator();
        do {
            exitRequest = updateLoop(turtleIt);
        } while (!exitRequest);
    }

    public static function updateLoop(turtleIt):Bool
    {
        if (!turtleIt.hasNext())
            return true;
        var nextTurtle = turtleIt.next();
        switch (nextTurtle) {
            case A_TURTLE(name):
                trace('Training next turtle: $name');
        }

        return false;
    }
}