trophy_timer -= 1;
if (trophy_timer <= 0) {
    if (global.trophies == 1) room_goto(asset_get_index("rm_level_2"));
    else if (global.trophies == 2) room_goto(asset_get_index("rm_level_3"));
    else if (global.trophies == 3) room_goto(asset_get_index("rm_level_4"));
    else if (global.trophies == 4) room_goto(asset_get_index("rm_level_5"));
    else if (global.trophies == 5) room_goto(asset_get_index("rm_level_6"));
    else if (global.trophies == 6) room_goto(asset_get_index("rm_level_7"));
    else if (global.trophies == 7) room_goto(asset_get_index("rm_level_8"));
    else if (global.trophies == 8) room_goto(asset_get_index("rm_level_9"));
    else if (global.trophies == 9) room_goto(asset_get_index("rm_level_10"));
    else if (global.trophies == 10) room_goto(asset_get_index("rm_win"));
}