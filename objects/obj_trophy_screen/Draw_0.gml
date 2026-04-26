draw_set_color(c_white);
draw_set_font(-1);

draw_text_transformed(400, 150, "LEVEL " + string(global.trophies) + " COMPLETE!", 3, 3, 0);

draw_set_color(c_yellow);
draw_rectangle(350, 270, 450, 370, false);
draw_set_color(c_white);
draw_text_transformed(385, 290, "WIN!", 2, 2, 0);

draw_text_transformed(400, 450, "Trophies: " + string(global.trophies) + "/10", 2, 2, 0);

if (global.trophies < 10) {
    draw_text_transformed(400, 530, "Get ready for Level " + string(global.trophies + 1) + "!", 2, 2, 0);
} else {
    draw_text_transformed(400, 530, "YOU WIN!", 3, 3, 0);
}