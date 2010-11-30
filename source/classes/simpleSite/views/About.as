package simpleSite.views
{
	import potato.modules.navigation.presets.YAMLSiteView;

	public class About extends YAMLSiteView
	{
	
		public function About()
		{
			super();
		}
		
		override public function init():void
		{
			super.init();
			
			trace("About::init()");
		}
		
		override public function dispose():void
		{
				
		}
	
	}

}