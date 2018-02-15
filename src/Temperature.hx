package;

abstract Celcius(Float) to Float
{
    inline function new(value:Float) this = Math.max(-273.18, value);

    @:from inline static public function fromFloat(value:Float):Celcius
        return new Celcius(value);

    @:to inline public function toFahrenheit():Fahrenheit
        return (this / 5 * 9) + 32;
}

abstract Fahrenheit(Float) to Float
{
    inline function new(value:Float) this = Math.max(-459.67, value);

    @:from inline static public function fromFloat(value:Float):Fahrenheit
        return new Fahrenheit(value);

    @:to inline public function toCelcius():Celcius
        return (this - 32) * 5 / 9;
}

