package simpleSite.views
{
	import potato.modules.navigation.View;
	import simpleSite.assets.FieldSection;
	import flash.text.TextFieldAutoSize;
	import com.greensock.TweenMax;
	import com.greensock.easing.Quart;

	public class Contact extends View
	{
		public var fs:FieldSection;
	
		public function Contact()
		{
			super();
		}
		
		override public function init():void
		{
			super.init();

			trace("Contact::init()");
		}
		
		override public function show():void
		{
			super.show();
			
			fs = new FieldSection();
			fs.field.text = "View - Contact";
			fs.field.autoSize = TextFieldAutoSize.LEFT;
			fs.x = (stage.stageWidth / 2) - (fs.width / 2);
			fs.y = (stage.stageHeight / 2) - (fs.height / 2);
			fs.alpha = 0;
			addChild(fs);
			
			TweenMax.to(fs, .5, {alpha:1});
		}
		
		override public function hide():void
		{
			TweenMax.to(fs, .5, {y:(fs.y + 100), alpha:0, ease:Quart.easeOut, onComplete:super.hide});
		}
		
		override public function dispose():void
		{
			removeChild(fs);
		}
	
	}

}