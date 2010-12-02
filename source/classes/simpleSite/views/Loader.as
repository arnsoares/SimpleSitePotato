package simpleSite.views
{
	import potato.modules.navigation.presets.YAMLSiteView;
	import flash.events.ProgressEvent;
	import potato.modules.navigation.ViewLoader;
	import flash.events.Event;
	import com.greensock.TweenMax;
	import simpleSite.views.Main;
	import simpleSite.assets.LoaderView;

	[SWF(width='550', height='400', backgroundColor='#FFFFFF', frameRate='60')]
	public class Loader extends YAMLSiteView
	{
		public static var loaderView:LoaderView;
		
		public function Loader()
		{
			super();
		}
		
		override public function init():void
		{
			super.init();
			
			loaderView = new LoaderView();
			loaderView.y = 42;
			addChild(loaderView);
			
			var vl:ViewLoader = loaderFor("main");
			vl.addEventListener(Event.COMPLETE, onLoadComplete);
			vl.start();
		}
		
		public static function showLoaderFor(vl:ViewLoader):void
		{
			loaderView.show(vl);
		}
		
		public function onLoadComplete(e:Event):void
		{
			trace("Loader::onLoadComplete()  ---  "+ e);
			var id:String = e.target.view.id; 
			changeView(id);
		}
		
		override public function resize():void
		{
			trace("Loader::resize()");
		}
		
		override public function dispose():void
		{
			trace("Loader::dispose()");
		}
	
	}

}