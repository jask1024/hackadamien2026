draw_text(10, 100, "Trophies: " + string(global.trophies));
draw_text(10, 120, "Timer: " + string(trophy_timer));

draw_text_transformed(400, 150, "LEVEL " + string(global.trophies) + " COMPLETE!", 3, 3, 0);


var trophy_spr = asset_get_index("spr_trophy");
draw_sprite(trophy_spr, 0, 400, 300);


draw_text_transformed(400, 450, "Trophies: " + string(global.trophies) + "/10", 2, 2, 0);


if (global.trophies < 10) {
    draw_text_transformed(400, 550, "Get ready for Level " + string(global.trophies + 1) + "!", 2, 2, 0);
} else {
    draw_text_transformed(400, 550, "YOU WIN!", 3, 3, 0);
}