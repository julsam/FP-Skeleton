package
{	
	import worlds.BaseGame;
	import entities.TextEntity;
	
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
		
	public class Game extends BaseGame
	{		
		public var myTextEntity:Entity;
		override public function begin():void
		{
			// Level size
			FP.width = G.screenWidth;
			FP.height = G.screenHeight;
			
			//SoundMgr.currentMusic = SoundMgr.some_music;
			
			
			Text.size = 16;		
			
			myTextEntity = new Entity(0, 0);
			
			myTextEntity.x = (FP.width / 2);
			myTextEntity.y = (FP.height / 2);
			
			add(myTextEntity);
		}
		
		override public function update():void
		{
			if (Input.mousePressed)
			{		
				myTextEntity.graphic = new Text(Kongregate.getUsername());
			}
			
			super.update();
		}

	}	
}
