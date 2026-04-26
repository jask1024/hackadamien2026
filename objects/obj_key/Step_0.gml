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
if (global.total_presses >= 1) {
    room_goto(rm_trophy);
}