
package 
{
	import flash.display.MovieClip;

	/*import flash.display.StageDisplayState;*/
	import flash.events.*;
	import flash.system.*;
	import flash.errors.*;
	import flash.display.*;
	import flash.net.*;
import flash.external.*;
import fl.video.FLVPlayback;
import fl.video.VideoEvent;


	public class init extends MovieClip
	{
		
		//Konstruktor init
		public function init()
		{
			/*trailer_mc.visible = false;*/
			// Bühne auf Interaktiven Fullscreen stellen
			stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			// Positionen der Elemente erstellen
			setPosition();
			
			var container:Sprite = new Sprite();
			container.addChild(logo);
			container.addChild(startVideo);
			
			container.swapChildren(logo, startVideo);
		
		    addChild(container);
			
			
			// Event Listener setzen im Konstruktor
			/*stage.nativeWindow.addEventListener(NativeWindowBoundsEvent.RESIZE,windowResizeEventHandler);*/
			logo.addEventListener(MouseEvent.CLICK, startIntro);
			
			startVideo.addEventListener(Event.COMPLETE, showMessage);
			
			

/*startVideo_mc.addEventListener(VideoEvent.COMPLETE, showMessage);*/
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
			
			
			//Logo
			/*logo.x = -nullPosX;
			logo.y = -nullPosY;*/
			logo.x = 300;
			logo.y = 250;
			
		}
		
		public function startIntro(e:MouseEvent):void
		{
			startVideo.play();
			logo.play();
			
		}
		
		function showMessage(e:Event):void {
			/*MovieClip(root).gotoAndStop("trailer");*/
			/*startVideo_mc.startVideo.visible = false;*/
			trace("finish");
			startVideo.visible = false;
			/*trailer_mc.visible = true;
			trailer_mc.play();*/
			
 }

		/*public function windowResizeEventHandler(evt:NativeWindowBoundsEvent):void
		{
			stage.displayState = StageDisplayState.FULL_SCREEN;
		}*/
	}
}