package
{
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	
	import net.flashpunk.FP;
	
	public final class Utils
	{
		public static var quake:Quake = new Quake;
		public static var flash:Flash = new Flash;
		
		public static function openURL(url:String):void
		{
			navigateToURL(new URLRequest(url));
		}
		
		/**
		 * Return a pan value based on the x position of an object. 
		 * Useful if you want some sort of Pseudo-3D sound.
		 */
		public static function pan(centerX:Number):Number
		{
			return ((centerX-FP.camera.x) / FP.width) * 2 - 1;
		}
	}
}