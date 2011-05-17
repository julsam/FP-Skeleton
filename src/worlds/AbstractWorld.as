package worlds
{
	import net.flashpunk.World;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class AbstractWorld extends World
	{		
		override public function begin():void
		{
			super.begin();
			
			Input.define("Up", Key.UP, Key.W);
			Input.define("Down", Key.DOWN, Key.S);
			Input.define("Left", Key.LEFT, Key.A);
			Input.define("Right", Key.RIGHT, Key.D);						
		}
	}
}