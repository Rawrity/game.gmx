show_debug_message("dbg_timer_test start");

dbg_timer_init();

for (var loops = 0; loops < 5; ++loops)
{
    dbg_timer_start("test start " + string(loops));
    
    for (var i = 0; i < 1000000; ++i) { }
    
    dbg_timer_lap("1000000");
    
    for (var i = 0; i < 2000000; ++i) { }
    
    dbg_timer_lap("2000000");
    
    dbg_timer_end("test end " + string(loops));
}

show_debug_message("dbg_timer_test end");

