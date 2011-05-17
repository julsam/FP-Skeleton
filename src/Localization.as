package
{
	/**
	 * See http://flashgamedojo.com/wiki/index.php?title=Localization_(Flixel)_v2
	 */
	public final class Localization
	{
		public static var language:String = "english";
		
		private static var strings:Object =
			{
				english:
				{
					hello: "Hello",
					saysomething: "Say something to me, please!"
				},
				catalan:
				{
					hello: "Hola",
					saysomething: "Diga'm quelcom, siusplau!"
				}
			};
		
		public static function get(key:String):String
		{
			return strings[language][key];
		}
	}
	}