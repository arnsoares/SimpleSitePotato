package simpleSite.views
{
	import potato.modules.navigation.View;
	import simpleSite.assets.FieldSection;
	import flash.text.TextFieldAutoSize;
	import com.greensock.TweenMax;
	import com.greensock.easing.Quart;
	import simpleSite.views.Loader;
	import simpleSite.assets.Menu;

	public class About extends View
	{
		public var fs:FieldSection;
	
		public function About()
		{
			super();
		}
		
		override public function init():void
		{
			super.init();
		}
		
		override public function show():void
		{
			fs = new FieldSection();
			fs.field.text = "View - About";
			fs.field.autoSize = TextFieldAutoSize.LEFT;
			fs.x = (stage.stageWidth / 2) - (fs.width / 2);
			fs.y = (stage.stageHeight / 2) - (fs.height / 2);
			fs.alpha = 0;
			addChild(fs);
			
			var sShow:Function = super.show;
			
			TweenMax.to(fs, .5, {alpha:1, onComplete: function() : void{
				msg("main").menuEnabled = true;
				sShow();
			}});

		}
		
		override public function hide():void
		{
			TweenMax.to(fs, .5, {y:fs.y + 100, alpha:0, ease:Quart.easeOut, onComplete: super.hide});
		}
		
		override public function dispose():void
		{
			removeChild(fs);
		}
		
	}

}