package simpleSite.views
{
	import potato.modules.navigation.presets.YAMLSiteView;

	public class Contact extends YAMLSiteView
	{
	
		public function Contact()
		{
			super();
		}
		
		override public function init():void
		{
			super.init();

			trace("Contact::init()");
		}
		
		override public function dispose():void
		{
			
			
		}
	
	}

}