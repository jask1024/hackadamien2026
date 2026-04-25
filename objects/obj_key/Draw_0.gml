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
draw_text(10, 10, "Presses: " + string(global.total_presses));

for (var i = 0; i < 10; i++) {
    if (i < global.trophies) {
        draw_sprite(spr_trophy, 0, 10 + (i * 40), 10);
    } else {
        draw_sprite_ext(spr_trophy, 0, 10 + (i * 40), 10, 1, 1, 0, c_dkgray, 0.3);
    }
}