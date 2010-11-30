package simpleSite.views
{
	import potato.modules.navigation.presets.YAMLSiteView;
	import flash.events.ProgressEvent;
	import potato.modules.navigation.ViewLoader;
	import flash.events.Event;
	import com.greensock.TweenMax;
	import simpleSite.views.Main;

	public class Loader extends YAMLSiteView
	{
	
		public function Loader()
		{
			super();
			trace("Loader::Loader()");
		}
		
		override public function init():void
		{
			super.init();
			
			var vl:ViewLoader = loaderFor("main");
			vl.addEventListener(Event.COMPLETE, onLoadComplete);
			vl.addEventListener(ProgressEvent.PROGRESS, onProgressLoader);
			vl.start();
		}
		
		public function onProgressLoader(e:ProgressEvent):void
		{
			trace(e.bytesLoaded / e.bytesTotal);
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