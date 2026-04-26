if (keyboard_check_pressed(ord("W"))) {
    press_timer = 10;
    global.total_presses += 1;
}

if (press_timer > 0) {
    press_timer -= 1;
    is_pressed = true;
} else {
    is_pressed = false;
}

// Level 1 - press once
if (room == asset_get_index("rm_level_1")) {
    if (global.total_presses >= 1) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 2 - press 20 times
if (room == asset_get_index("rm_level_2")) {
    if (global.total_presses >= 20) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 3 - hold for 2 seconds
if (room == asset_get_index("rm_level_3")) {
    if (keyboard_check(ord("W"))) {
        hold_timer += 1;
    } else {
        hold_timer = 0;
    }
    if (hold_timer >= 120) {
        hold_timer = 0;
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 4 - press 5 times
if (room == asset_get_index("rm_level_4")) {
    if (global.total_presses >= 5) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 5 - press 10 times
if (room == asset_get_index("rm_level_5")) {
    if (global.total_presses >= 10) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 6 - press 30 times
if (room == asset_get_index("rm_level_6")) {
    if (global.total_presses >= 30) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 7 - double tap
if (room == asset_get_index("rm_level_7")) {
    if (keyboard_check_pressed(ord("W"))) {
        if (current_time - last_tap_time < 300) {
            global.total_presses = 0;
            global.trophies += 1;
            room_goto(asset_get_index("rm_trophy"));
        }
        last_tap_time = current_time;
    }
}

// Level 8 - press 50 times
if (room == asset_get_index("rm_level_8")) {
    if (global.total_presses >= 50) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 9 - exactly 3 presses
if (room == asset_get_index("rm_level_9")) {
    if (global.total_presses == 3) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    } else if (global.total_presses > 3) {
        global.total_presses = 0;
    }
}

// Level 10 - press 100 times
if (room == asset_get_index("rm_level_10")) {
    if (global.total_presses >= 100) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}