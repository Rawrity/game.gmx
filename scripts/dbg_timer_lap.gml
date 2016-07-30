///dbg_timer_lap(string message)
var _passed = current_time - dbg_timer_begin;
dbg_timer_total += _passed;
show_debug_message(argument0 + " (" + string(_passed) + "ms" + 
    ternary(dbg_timer_average, ", " + string((_passed/dbg_timer_average)*100) + "%)", ")"));

