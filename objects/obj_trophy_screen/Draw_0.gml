draw_set_color(c_white);
draw_set_font(fnt_small);

draw_text_transformed(150, 100, "LEVEL " + string(global.trophies) + " COMPLETE!", 3, 3, 0);

draw_sprite(spr_trophy, 0, 300, 300);

draw_text_transformed(400, 500, "Trophies: " + string(global.trophies) + "/10", 2, 2, 0);

if (global.trophies < 10) {
    draw_text_transformed(400, 570, "Get ready for Level " + string(global.trophies + 1) + "!", 2, 2, 0);
} else {
    draw_text_transformed(400, 570, "YOU WIN", 3, 3, 0);
}