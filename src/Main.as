package
{
	import flash.display.*;
	import flash.ui.ContextMenu;
	
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Data;
		
	public class Main extends Engine
	{
		
		public function Main():void 
		{			
			super(G.screenWidth, G.screenHeight, 60, false);
		}
		
		override public function init():void
		{			
			super.init();
			
			Kongregate.connect(FP.stage);
			Kongregate.submit("score", 0);
			
			FP.screen.scale = 1;
			FP.screen.color = 0x8c9192;
			FP.console.enable();
			
			Data.prefix = "Allinlabs";
			Data.id = "games";
			Data.load("skeleton/pref");
			
			G.volumeMusic = Data.readBool("music") ? 1 : 0;
			G.volumeSound = Data.readBool("sound") ? 1 : 0;
			
			Text.size = 8;
			
			contextMenu = new ContextMenu();
			contextMenu.hideBuiltInItems();
			
			FP.world = new Game();
		}	
		
		override public function setStageProperties():void
		{
			super.setStageProperties();
			
			stage.quality = StageQuality.LOW; 		// optimize line rendering in flash using a simple line			
			//stage.quality = StageQuality.MEDIUM; 	// get anti alias
		}
		
		override public function update():void
		{
			super.update();
			
			Utils.quake.update();
			Utils.flash.update();
		}
		
		override public function render():void
		{
			super.render();
			
			Utils.flash.render();
		}
	}
}