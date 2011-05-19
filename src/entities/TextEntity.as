package entities
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	
	public class TextEntity extends Entity
	{
		public var text:Text;
		
		public function TextEntity(x:Number=0, y:Number=0, string:String="")
		{
			super(x, y);
			
			text = new Text(string);
			text.color = 0xff3366;
			graphic = text;
		}
	}
}