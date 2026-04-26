if (!variable_global_exists("trophies")) {
    global.trophies = 0;
    global.total_presses = 0;
}

global.level_timer = 10 * room_speed;

is_pressed = false;
press_timer = 0;
hold_timer = 0;
last_tap_time = 0;
speed_timer = 0;
double_tap_count = 0;
combo_stage = 0;