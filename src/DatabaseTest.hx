import Database;

import Database.Event;

class DatabaseTest
{
    static inline var PLAYER_NAME = new Property<String>("playerName");
    static inline var PLAYER_LEVEL = new Property<Int>("playerLevel");

    static inline var EVENT_START = new Event<Array<String> -> Void>("start");
    static inline var EVENT_END = new Event<Int -> Void>("exit");

    public static function main()
    {
        var db = new Database();
        db.getProperty(PLAYER_NAME);
        db.setProperty(PLAYER_LEVEL, 23);
        db.addEventListener(EVENT_START, function(arr) trace(arr));
        // db.addEventListener(EVENT_END, function(arr:String) trace(arr));
    }
}