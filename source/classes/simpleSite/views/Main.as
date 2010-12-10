package simpleSite.views
{
	import potato.modules.navigation.View;
	import simpleSite.assets.Menu;
	import com.greensock.TweenMax;
	import simpleSite.views.Loader;

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
		protected var _menu:Menu;
		
		/**
		 * @constructor
		 */
		public function Main()
		{
			super();
		}
		
		override public function init():void
		{
			super.init();
		}
		
		override public function show():void
		{
			_menu = new Menu(msg("main"));
			addChild(_menu);
			
			TweenMax.delayedCall(2, super.show);
			addView("about");
		}
		
		public function set menuEnabled(value:Boolean):void
		{
			_menu.enabled = value;
		}
		
		override public function dispose():void
		{
			super.dispose();
		}
	}
}