/// @description 

if(enable) {
	oGame.control = false;
	
	w = min(w + (w_max-w)*0.5 + 1, w_max);
	h = min(h + (h_max-h)*0.5 + 1, h_max);


	var _x1 = x + w - sprite_width;
	var _y1 = y + h - sprite_height;

	// OKボタンをマウスクリック
	if(w == w_max && h == h_max && point_in_rectangle(mouse_x, mouse_y, _x1, _y1, x+w, y+h)) {
		//image_index = 1;
		if(mouse_check_button_pressed(mb_left)) {
			audio_play_sound(snClick,1,false);
			if(page == maxPage) instance_destroy();
			else page ++;	
		}
	}
}


