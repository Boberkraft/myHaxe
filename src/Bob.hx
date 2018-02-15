package;

using StringTools;

class Bob
{
    private inline static var SURE = "Sure.";
    private inline static var CHILL = "Whoa, chill out!";
    private inline static var WHATEVER = "Whatever.";
    private inline static var FINE = "Fine. Be that way!";

    public static function hey(sentience:String):String
    {
        var trimmed = sentience.trim();
        return switch(trimmed)
        {
            case _.length => 0:
                FINE;
            case isYell(_) => true:
                CHILL;
            case isQuestion(_) => true:
                SURE;
            default:
                WHATEVER;
        }
    }

    private static inline function isQuestion(s:String):Bool
    {
        return if(s.length > 0) s.endsWith('?') else false;
    }

    private static inline function isYell(s:String):Bool
    {
        return s == s.toUpperCase() && s != s.toLowerCase();
    }

    public static function runTest()
    {
        var r = new haxe.unit.TestRunner();
        r.add(new BobTest());
        r.run();
    }

}