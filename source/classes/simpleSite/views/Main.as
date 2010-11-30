package simpleSite.views
{
	import potato.modules.navigation.View;
	import flash.utils.setTimeout;

	/**
	 * Application entry point for SimpleSite.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 10.0
	 * 
	 * @author Arn
	 * @since 25.11.2010
	 */
	public class Main extends View
	{
		/**
		 * @constructor
		 */
		public function Main()
		{
			super();
		}
		
		override public function init():void
		{
			trace("Main::init() --- ARN");
			super.init();
		}
		
		override public function show():void
		{
			trace("Main::show()");
			setTimeout(super.show, 2000);
		}
		
		override public function dispose():void
		{
			super.dispose();
		}
		
	}
}