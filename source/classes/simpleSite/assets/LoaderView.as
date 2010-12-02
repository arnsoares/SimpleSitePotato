package simpleSite.assets
{
	import simpleSite.assets.ALoaderView;
	import potato.modules.navigation.ViewLoader;
	import flash.events.ProgressEvent;
	import flash.events.Event;
	import com.greensock.TweenMax;

	public class LoaderView extends ALoaderView
	{

		public function LoaderView()
		{
			super();
		}

		public function init():void
		{ 
			hide();
		}

		public function show(vl:ViewLoader):void
		{
			if(!vl || vl.loaded) return;
			
			visible = true;
			bar.scaleX = 0;
		}

		public function hide():void
		{
			visible = false;
			bar.scaleX = 0;
		}
		
		public function handleComplete(e:Event):void
		{
			e.target.addEventListener(ProgressEvent.PROGRESS, handleProgress);
			e.target.addEventListener(Event.COMPLETE, handleComplete);
		}
		
		
		public function handleProgress(e:ProgressEvent):void
		{
			showPercent = (e.bytesLoaded / e.bytesTotal);
		}
		
		public function set showPercent(value:Number):void
		{
			trace("LoaderView::set showPercent() -- " + (value / 1));
			bar.scaleX = (value / 1);
		}
	}
}