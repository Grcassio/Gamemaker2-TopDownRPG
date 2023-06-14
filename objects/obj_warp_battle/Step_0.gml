/// @description Insert description here
// You can write your code in this editor

if(animationFinished != true){
	if ( room != newRoom){
		fadeLevel += 0.015;
	
		if (fadeLevel >= 1){
			room_goto(newRoom);	
		}
	
	}else{
		fadeLevel -= 0.015;
	}

	if( fadeLevel <=0){
		instance_destroy(self);
	}
}