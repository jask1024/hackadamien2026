if (!variable_global_exists("trophies")) {
    global.trophies = 0;
    global.total_presses = 0;
}

is_pressed = false;
press_timer = 0;
hold_timer = 0;
last_tap_time = 0;