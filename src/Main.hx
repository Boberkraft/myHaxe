package;

import Temperature;

class Main {
    //https://haxe.org/manual/type-system-resolution-order.html

    static public function eval(e: Expr): Int
    {
        switch (e)
        {
            case Symbol(x):
                return x;
            case Complex("+", e1, e2):
                return eval(e1) + eval(e2);
            case Complex("-", e1, e2):
                return eval(e1) - eval(e2);
            case Complex("*", e1, e2):
                return eval(e1) * eval(e2);
            case Complex(_):
                throw "Unknow primitive";
        }
    }
    static function main()
    {
        // Bob.runTest();

        // trace("Hello, world!");
        // trace(eval(Complex("+", Symbol(2), Symbol(3))));
        // var f: RFloat = 2.0 - 1.1;
        // trace(f);
        // function add(a:Int, b:Int)
        //     return a + b;

        // trace(switch (2)
        // {
        //     case _ + 3 => result:
        //         1;
        //     case _ + 5 => (_ + 32) => result:
        //         2;
        //     default:
        //         default";
        // });


        var waterfreezeC:Celcius = 0;
        trace('water freezes at $waterfreezeC degrees Celcius.');

        var waterfreezeF:Fahrenheit = waterfreezeC;
        trace('water freezes at $waterfreezeF degrees Fahrenheit');
        // Turtllings.Test.main();
        // Turtles2.Test.main();
        // DatabaseTest.main();
        // EmailAddressTest.main();
        // AbstractAccess.main();
        BuildDate.trace_build_age();

    }
}

enum Expr
{
    Symbol(x: Int);
    Complex(op: String, e1: Expr, e2: Expr);
}