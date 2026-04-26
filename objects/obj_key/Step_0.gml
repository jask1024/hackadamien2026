var tp = global.total_presses;
var trophies = global.trophies;
var timer = global.level_timer;

// Timer countdown
global.level_timer -= 1;
if (global.level_timer <= 0) {
    global.trophies = 0;
    global.total_presses = 0;
    global.level_timer = 10 * room_speed;
    room_goto(rm_level_1);
}

// Press detection
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
if (room == rm_level_1) {
    if (global.total_presses >= 1) {
        global.total_presses = 0;
        global.trophies += 1;
        global.level_timer = 10 * room_speed;
        room_goto(rm_trophy);
    }
}

// Level 2 - press 20 times
if (room == rm_level_2) {
    if (global.total_presses >= 20) {
        global.total_presses = 0;
        global.trophies += 1;
        global.level_timer = 10 * room_speed;
        room_goto(rm_trophy);
    }
}

// Level 3 - hold for 2 seconds
if (room == rm_level_3) {
    if (keyboard_check(ord("W"))) {
        hold_timer += 1;
    } else {
        hold_timer = 0;
    }
    if (hold_timer >= 120) {
        hold_timer = 0;
        global.total_presses = 0;
        global.trophies += 1;
        global.level_timer = 10 * room_speed;
        room_goto(rm_trophy);
    }
}

// Level 4 - press 50 times
if (room == rm_level_4) {
    if (global.total_presses >= 50) {
        global.total_presses = 0;
        global.trophies += 1;
        global.level_timer = 10 * room_speed;
        room_goto(rm_trophy);
    }
}

// Level 5 - hold for 5 seconds
if (room == rm_level_5) {
    if (keyboard_check(ord("W"))) {
        hold_timer += 1;
    } else {
        hold_timer = 0;
    }
    if (hold_timer >= 300) {
        hold_timer = 0;
        global.total_presses = 0;
        global.trophies += 1;
        global.level_timer = 10 * room_speed;
        room_goto(rm_trophy);
    }
}

// Level 6 - exactly 7 presses
if (room == rm_level_6) {
    if (global.total_presses == 7) {
        global.total_presses = 0;
        global.trophies += 1;
        global.level_timer = 10 * room_speed;
        room_goto(rm_trophy);
    } else if (global.total_presses > 7) {
        global.total_presses = 0;
    }
}

// Level 7 - press 30 times in 8 seconds
if (room == rm_level_7) {
    if (global.total_presses == 1) {
        speed_timer = 8 * room_speed;
    }
    if (speed_timer > 0) {
        speed_timer -= 1;
    }
    if (global.total_presses >= 30 && speed_timer > 0) {
        global.total_presses = 0;
        global.trophies += 1;
        global.level_timer = 8 * room_speed;
        room_goto(rm_trophy);
    } else if (speed_timer <= 0 && global.total_presses > 0) {
        global.total_presses = 0;
        speed_timer = 0;
    }
}

// Level 8 - double tap 5 times
if (room == rm_level_8) {
    if (keyboard_check_pressed(ord("W"))) {
        if (current_time - last_tap_time < 300) {
            double_tap_count += 1;
        }
        last_tap_time = current_time;
    }
    if (double_tap_count >= 5) {
        double_tap_count = 0;
        global.total_presses = 0;
        global.trophies += 1;
        global.level_timer = 10 * room_speed;
        room_goto(rm_trophy);
    }
}

// Level 9 - press 75 times
if (room == rm_level_9) {
    if (global.total_presses >= 75) {
        global.total_presses = 0;
        global.trophies += 1;
        global.level_timer = 10 * room_speed;
        room_goto(rm_trophy);
    }
}

// Level 10 - hold 3 sec, tap 10 times, hold 3 sec
if (room == rm_level_10) {
    switch (combo_stage) {
        case 0: // hold 3 seconds
            if (keyboard_check(ord("W"))) {
                hold_timer += 1;
            } else {
                hold_timer = 0;
            }
            if (hold_timer >= 180) {
                hold_timer = 0;
                combo_stage = 1;
                global.total_presses = 0;
            }
        break;
        case 1: // tap 10 times
            if (global.total_presses >= 10) {
                global.total_presses = 0;
                combo_stage = 2;
                hold_timer = 0;
            }
        break;
        case 2: // hold 3 seconds again
            if (keyboard_check(ord("W"))) {
                hold_timer += 1;
            } else {
                hold_timer = 0;
            }
            if (hold_timer >= 180) {
                hold_timer = 0;
                combo_stage = 0;
                global.total_presses = 0;
                global.trophies += 1;
                global.level_timer = 10 * room_speed;
                room_goto(rm_trophy);
            }
        break;
    }
}