integer face = ALL_SIDES;
vector color = <0.0,1.0,1.0>;
vector color1 = <1.0,1.0,0.0>;
integer counter;
integer MyChannel = 666;
default
{
    state_entry()
    {
//        llSay(0, "Melkaneas --Toucher");
    }

    touch_start(integer total_number)
    {
        ++counter;
//test        llSay(0, (string)counter + " Touched.");
    }
    touch(integer change_color)
    {
        llSetColor(color, face );
        llRegionSay(MyChannel,"baa!");
//test        llOwnerSay("baa!");
    }
    touch_end(integer reset_color)
    {
        if (counter == 2)
        {
        counter = 0;
        llSetColor(color1, face);
        }
    }

}
