package 
{
	import flash.display.MovieClip;
	/*import flash.display.StageDisplayState;*/
	import flash.events.*;
	import flash.system.*;
	import flash.errors.*;
	import flash.display.*;
	import flash.net.*;
	import fl.video.VideoEvent;
import flash.external.*;


	public class init extends MovieClip
	{
		
		//Konstruktor init
		public function init()
		{
			// Bühne auf Interaktiven Fullscreen stellen
			stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			// Positionen der Elemente erstellen
			setPosition();
			
			// Event Listener setzen im Konstruktor
			/*stage.nativeWindow.addEventListener(NativeWindowBoundsEvent.RESIZE,windowResizeEventHandler);*/
			logo.addEventListener(MouseEvent.CLICK, startIntro);
			/*stage.addEventListener(KeyboardEvent.KEY_DOWN,keyDownListener);*/
		}
		
		// Funktion um die Positionen der Elemente festzulegen
		public function setPosition(){
			var nullPosX:Number = (stage.stageWidth - 1280);
			var nullPosY:Number = (stage.stageHeight -800); 
			
			if(nullPosX > 0) {
				nullPosX = nullPosX /2;
			}
			
			if(nullPosY > 0) {
				nullPosY = nullPosY /2;
			}
			else {
				nullPosY = 0;
			}
			
			/*logo.x = -nullPosX;
			logo.y = -nullPosY;*/
		}
		
		public function startIntro(e:MouseEvent):void
		{
			start.startVideo.play();
		}

		/*public function windowResizeEventHandler(evt:NativeWindowBoundsEvent):void
		{
			stage.displayState = StageDisplayState.FULL_SCREEN;
		}*/
	}
}