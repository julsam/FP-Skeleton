package worlds
{	
	import entities.*;
	
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Text;
	
	public class SiteLocked extends World
	{
		public function SiteLocked()
		{
			super();			
			
			Text.size = 16;
			
			var t:TextEntity = new TextEntity(2, 2, "Game Stolen!");
			t.x = (FP.width / 2) - (t.text.width / 2);
			t.y = (FP.height / 2) - (t.text.height / 2) - 20;
			add(t);
			
			t = new TextEntity(2, 16, "bli bli bli \nbli bli bli");
			t.x = (FP.width / 2) - (t.text.width / 2);
			t.y = (FP.height / 2) - (t.text.height / 2) + 20;
			add(t);
			
			//add(new Button(0, 0, FP.width, FP.height, openContact));
		}
		
		public function openContact():void
		{
			//Utils.openURL("");
		}
	}
}