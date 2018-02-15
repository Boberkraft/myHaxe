import haxe.macro.Context;

class BuildDate
{

    macro public static function trace_build_age()
    {
        var build_time = Math.floor(Date.now().getTime()/1000);

        var code =
        '{
            var run_time = Math.floor(Date.now().getTime()/1000);
            var age = run_time - $build_time;
            trace("Right now is\'s "+ run_time + ", and this build is " + age + " seconds old ");
        }';

        return Context.parse(code, Context.currentPos());
    }
}