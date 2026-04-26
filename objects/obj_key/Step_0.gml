// Count presses
if (keyboard_check_pressed(ord("W"))) {
    press_timer = 10;
    global.total_presses += 1;
}

// Animate key
if (press_timer > 0) {
    press_timer -= 1;
    is_pressed = true;
} else {
    is_pressed = false;
}

// Level 1 win condition
if (room == asset_get_index("rm_level_1")) {
    if (global.total_presses >= 1) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 2 win condition
if (room == asset_get_index("rm_level_2")) {
    if (global.total_presses >= 20) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}
// Level 3 - Hold for 2 seconds
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

// Level 4 - Press 5 times
if (room == asset_get_index("rm_level_4")) {
    if (global.total_presses >= 5) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 5 - Press 10 times
if (room == asset_get_index("rm_level_5")) {
    if (global.total_presses >= 10) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 6 - Press 30 times
if (room == asset_get_index("rm_level_6")) {
    if (global.total_presses >= 30) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 7 - Double tap
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

// Level 8 - Press 50 times
if (room == asset_get_index("rm_level_8")) {
    if (global.total_presses >= 50) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
}

// Level 9 - Exactly 3 presses no more
if (room == asset_get_index("rm_level_9")) {
    if (global.total_presses == 3) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    } else if (global.total_presses > 3) {
        global.total_presses = 0; // reset and try again
    }
}

// Level 10 - Press 100 times
if (room == asset_get_index("rm_level_10")) 
    if (global.total_presses >= 100) {
        global.total_presses = 0;
        global.trophies += 1;
        room_goto(asset_get_index("rm_trophy"));
    }
// Instructions for each level
draw_set_color(c_white);
draw_set_font(-1);

if (room == asset_get_index("rm_level_1")) {
    draw_text_transformed(50, 300, "Press W once!", 2, 2, 0);
}
if (room == asset_get_index("rm_level_2")) {
    draw_text_transformed(50, 300, "Press W 20 times!", 2, 2, 0);
    draw_text_transformed(50, 350, "Presses: " + string(global.total_presses) + "/20", 2, 2, 0);
}
if (room == asset_get_index("rm_level_3")) {
    draw_text_transformed(50, 300, "Hold W for 2 seconds!", 2, 2, 0);
}
if (room == asset_get_index("rm_level_4")) {
    draw_text_transformed(50, 300, "Press W 5 times!", 2, 2, 0);
    draw_text_transformed(50, 350, "Presses: " + string(global.total_presses) + "/5", 2, 2, 0);
}
if (room == asset_get_index("rm_level_5")) {
    draw_text_transformed(50, 300, "Press W 10 times!", 2, 2, 0);
    draw_text_transformed(50, 350, "Presses: " + string(global.total_presses) + "/10", 2, 2, 0);
}
if (room == asset_get_index("rm_level_6")) {
    draw_text_transformed(50, 300, "Press W 30 times!", 2, 2, 0);
    draw_text_transformed(50, 350, "Presses: " + string(global.total_presses) + "/30", 2, 2, 0);
}
if (room == asset_get_index("rm_level_7")) {
    draw_text_transformed(50, 300, "Double tap W!", 2, 2, 0);
}
if (room == asset_get_index("rm_level_8")) {
    draw_text_transformed(50, 300, "Press W 50 times!", 2, 2, 0);
    draw_text_transformed(50, 350, "Presses: " + string(global.total_presses) + "/50", 2, 2, 0);
}
if (room == asset_get_index("rm_level_9")) {
    draw_text_transformed(50, 300, "Press W exactly 3 times!", 2, 2, 0);
    draw_text_transformed(50, 350, "Presses: " + string(global.total_presses), 2, 2, 0);
}
if (room == asset_get_index("rm_level_10")) {
    draw_text_transformed(50, 300, "Press W 100 times!", 2, 2, 0);
    draw_text_transformed(50, 350, "Presses: " + string(global.total_presses) + "/100", 2, 2, 0);
}