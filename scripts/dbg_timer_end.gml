///dbg_timer_end(string message)
show_debug_message(argument0 + " (" + string(dbg_timer_total) + "ms total" + 
    ternary(dbg_timer_average, ", " + string(dbg_timer_average) + "ms average)", ")"));
dbg_timer_average = dbg_timer_total;

