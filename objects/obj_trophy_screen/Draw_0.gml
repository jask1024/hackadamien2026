draw_set_color(c_white);
draw_set_font(-1);
draw_text_transformed(400, 200, "TROPHY EARNED!", 3, 3, 0);
var trophy_spr = asset_get_index("spr_trophy");
draw_sprite(trophy_spr, 0, 400, 350);
draw_text_transformed(400, 500, "Level 2 incoming...", 2, 2, 0);