package;

class BobTest extends haxe.unit.TestCase
{
    public inline static var SURE = "Sure.";
    public inline static var CHILL = "Whoa, chill out!";
    public inline static var WHATEVER = "Whatever.";
    public inline static var FINE = "Fine. Be that way!";


    public function testStateSomething() : Void
    {
        assertEquals(WHATEVER, Bob.hey("Tom-ay-to, tom-aaaah-to."));
    }

    public function testShouting() : Void
    {
        assertEquals(CHILL, Bob.hey("WHATCH OUT!"));
    }

    public function testAskingAQuestion() : Void
    {
        assertEquals(SURE, Bob.hey("Does this cryogenic chamber make me look fat?"));
    }


    public function testTalkingForcefully() : Void
    {
        assertEquals(WHATEVER, Bob.hey("Let's go make out behind the gym!"));
    }


    public function testUsingAcronymsInRegularSpeech() : Void
    {
        assertEquals(WHATEVER, Bob.hey("It's OK if you don't want to go to the DMV."));
    }


    public function testShoutingQuestion() : Void
    {
        assertEquals(CHILL, Bob.hey("WHAT THE HELL WERE YOU THINKING?"));
    }


    public function testShoutingNumbers() : Void
    {
        assertEquals(CHILL, Bob.hey("1, 2, 3 GO!"));
    }


    public function testOnlyNumbers() : Void
    {
        assertEquals(WHATEVER, Bob.hey("1, 2, 3"));
    }


    public function testNumberQuestion() : Void
    {
        assertEquals(SURE, Bob.hey("4?"));
    }


    public function testShoutingWithSpecial() : Void
    {
        assertEquals(CHILL, Bob.hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!"));
    }


    public function testShoutingWithoutExclamationMark() : Void
    {
        assertEquals(CHILL, Bob.hey("I HATE YOU"));
    }

    public function testStatementWithQuestionMark() : Void
    {
        assertEquals(WHATEVER, Bob.hey("Ending with a ? means a question."));
    }


    public function testPrattling() : Void
    {
        assertEquals(SURE, Bob.hey("Wait! Hang on. Are you going to be OK?"));
    }


    public function testSilence() : Void
    {
        assertEquals(FINE, Bob.hey(""));
    }


    public function testProlongedSilence() : Void {
        assertEquals(FINE, Bob.hey("   "));
    }
}