var tp = global.total_presses;
var trophies = global.trophies;
var timer = global.level_timer;

// Timer
var seconds_left = ceil(timer / room_speed);
draw_set_font(fnt_small);
if (seconds_left <= 5) draw_set_color(c_red);
else draw_set_color(c_dkgray);
draw_text(20, 20, "TIME: " + string(seconds_left));

// Level
draw_set_color(c_dkgray);
draw_set_font(fnt_small);
draw_text(20, 60, "LEVEL " + string(trophies + 1));

// Instructions
draw_set_font(fnt_small);
draw_set_color(c_dkgray);
if (room == rm_level_1) {
    draw_text(20, 140, "Press W once!");
}
if (room == rm_level_2) {
    draw_text(20, 140, "Press W 20 times!");
    draw_text(20, 180, string(tp) + " / 20");
}
if (room == rm_level_3) {
    draw_text(20, 140, "Hold W 2 seconds!");
}
if (room == rm_level_4) {
    draw_text(20, 140, "Press W 50 times!");
    draw_text(20, 180, string(tp) + " / 50");
}
if (room == rm_level_5) {
    draw_text(20, 140, "Hold W 5 seconds!");
}
if (room == rm_level_6) {
    draw_text(20, 140, "Exactly 7 presses!");
    draw_text(20, 180, "Presses: " + string(tp));
}
if (room == rm_level_7) {
    draw_text(20, 140, "30 presses in 10 secs!");
    draw_text(20, 180, string(tp) + " / 30");
}
if (room == rm_level_8) {
    draw_text(20, 140, "Double tap 5 times!");
    draw_text(20, 180, "Taps: " + string(double_tap_count) + " / 5");
}
if (room == rm_level_9) {
    draw_text(20, 140, "Press W 75 times!");
    draw_text(20, 180, string(tp) + " / 75");
}
if (room == rm_level_10) {
    if (combo_stage == 0) draw_text(20, 140, "Hold W 3 seconds!");
    if (combo_stage == 1) draw_text(20, 140, "Now tap 10 times!");
    if (combo_stage == 2) draw_text(20, 140, "Hold 3 more secs!");
}

// W key perfectly centered
var cx = room_width / 2;
var cy = room_height / 2;
if (is_pressed) {
    draw_sprite_ext(Win_key_sprite_pressed, 0, cx, cy, 5, 5, 0, c_white, 1);
} else {
    draw_sprite_ext(Win_key_sprite, 0, cx, cy, 5, 5, 0, c_white, 1);
}

// Trophies bottom left
draw_set_color(c_dkgray);
draw_set_font(fnt_small);
draw_text(20, 660, "Trophies:");
var on = spr_minitrophy_icon_on;
var off = spr_minitrophy_icon_off;
for (var i = 0; i < 10; i++) {
    if (i < trophies) {
        draw_sprite(on, 0, 20 + (i * 50), 740);
    } else {
        draw_sprite(off, 0, 20 + (i * 50), 740);
    }
}