trophy_timer -= 1;
if (trophy_timer <= 0) {
    global.total_presses = 0;
    room_goto(asset_get_index("rm_level_2"));
}