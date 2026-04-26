draw_set_color(make_color_rgb(30, 30, 30));
draw_rectangle(0, 0, 250, room_height, false);

draw_set_color(c_white);
draw_set_font(-1);
draw_text_transformed(20, 20, "LEVEL " + string(global.trophies + 1), 2, 2, 0);
draw_text_transformed(20, 60, "TASK:", 1.5, 1.5, 0);

draw_set_color(c_gray);
draw_line(0, 90, 250, 90);

draw_set_color(c_white);
if (room == asset_get_index("rm_level_1")) {
    draw_text_transformed(20, 110, "Press W once!", 1.5, 1.5, 0);
}
if (room == asset_get_index("rm_level_2")) {
    draw_text_transformed(20, 110, "Press W 20 times!", 1.5, 1.5, 0);
    draw_text_transformed(20, 150, string(global.total_presses) + "/20", 1.5, 1.5, 0);
}
if (room == asset_get_index("rm_level_3")) {
    draw_text_transformed(20, 110, "Hold W for 2 seconds!", 1.5, 1.5, 0);
}
if (room == asset_get_index("rm_level_4")) {
    draw_text_transformed(20, 110, "Press W 5 times!", 1.5, 1.5, 0);
    draw_text_transformed(20, 150, string(global.total_presses) + "/5", 1.5, 1.5, 0);
}
if (room == asset_get_index("rm_level_5")) {
    draw_text_transformed(20, 110, "Press W 10 times!", 1.5, 1.5, 0);
    draw_text_transformed(20, 150, string(global.total_presses) + "/10", 1.5, 1.5, 0);
}
if (room == asset_get_index("rm_level_6")) {
    draw_text_transformed(20, 110, "Press W 30 times!", 1.5, 1.5, 0);
    draw_text_transformed(20, 150, string(global.total_presses) + "/30", 1.5, 1.5, 0);
}
if (room == asset_get_index("rm_level_7")) {
    draw_text_transformed(20, 110, "Double tap W!", 1.5, 1.5, 0);
}
if (room == asset_get_index("rm_level_8")) {
    draw_text_transformed(20, 110, "Press W 50 times!", 1.5, 1.5, 0);
    draw_text_transformed(20, 150, string(global.total_presses) + "/50", 1.5, 1.5, 0);
}
if (room == asset_get_index("rm_level_9")) {
    draw_text_transformed(20, 110, "Press W exactly 3 times!", 1.5, 1.5, 0);
    draw_text_transformed(20, 150, "Presses: " + string(global.total_presses), 1.5, 1.5, 0);
}
if (room == asset_get_index("rm_level_10")) {
    draw_text_transformed(20, 110, "Press W 100 times!", 1.5, 1.5, 0);
    draw_text_transformed(20, 150, string(global.total_presses) + "/100", 1.5, 1.5, 0);
}

if (is_pressed) {
    draw_set_color(c_gray);
    draw_rectangle(x, y + 8, x + 100, y + 108, false);
    draw_set_color(c_white);
    draw_set_font(-1);
    draw_text(x + 35, y + 38, "W");
} else {
    draw_set_color(c_white);
    draw_rectangle(x, y, x + 100, y + 100, false);
    draw_set_color(c_black);
    draw_set_font(-1);
    draw_text(x + 35, y + 24, "W");
}

draw_set_color(c_white);
draw_set_font(-1);
draw_text(10, 700, "Trophies:");
for (var i = 0; i < 10; i++) {
    if (i < global.trophies) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(make_color_rgb(50, 50, 50));
    }
    draw_rectangle(10 + (i * 30), 730, 35 + (i * 30), 755, false);
}