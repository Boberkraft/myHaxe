package;

abstract Email(String) to String {
    static var ereg = ~/.+@.+/i;
    inline public function new (address:String) {
        if (!ereg.match(address)) throw 'Email "$address" is invalid';
        this = address.toLowerCase();
    }

    @:from inline static public function fromString(address:String) {
        return new Email(address);
    }
}

class EmailAddressTest
{
    public static function main()
    {
        var address:Email = "eve@paradise.com";
        try {
            var address:Email = "adam#paradise.com";
        } catch (why:String) {
            trace(why);
        }
        trace(address);



    }
}