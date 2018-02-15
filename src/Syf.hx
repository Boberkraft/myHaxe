package;

abstract RFloat(Float) from Float
{
    inline function new(value:Float) {
        this = value;
    }

    @:to inline public function toFloat():Float
    {
        return roundFloat(this);
    }

    @:to inline public function toString():String
    {
        return Std.string(toFloat());
    }
    static inline var multiplayer = 10000000;

    static inline function roundFloat(value:Float):Float
    {
        return Math.round(value * multiplayer) / multiplayer;
    }


}