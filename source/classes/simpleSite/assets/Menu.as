package simpleSite.assets
{
	import simpleSite.assets.AMenuAsset;
	import com.greensock.TweenMax;
	import flash.events.MouseEvent;
	import simpleSite.views.Main;
	import simpleSite.assets.GenericButton;
	
	public class Menu extends AMenuAsset
	{
		public var menuArray:Array;
	
		public function Menu()
		{
			super();
			
			init();
		}
		
		public function init():void
		{
			menuArray = new Array();
			menuArray[0] = {bt:btOne, view:"about"};
			menuArray[1] = {bt:btTwo, view:"contact"};
			
			menuAction();
		}
		
		public function menuAction():void
		{
			for(var i:Number = 0; i < menuArray.length; i++)
			{
				menuArray[i].bt.addEventListener(MouseEvent.ROLL_OVER, handleBt);
				menuArray[i].bt.addEventListener(MouseEvent.ROLL_OUT, handleBt);
				menuArray[i].bt.addEventListener(MouseEvent.CLICK, handleBt);
				menuArray[i].bt.mouseChildren = false;
				menuArray[i].bt.buttonMode = true;
				menuArray[i].bt.ind = i;
			}
		}
		
		public function handleBt(e:MouseEvent):void
		{
			//var bt:GenericButton = e.target;
			
			switch(e.type)
			{
				case MouseEvent.ROLL_OVER:
				TweenMax.to(e.target, .3, {tint:0xff0000});
				break;
				
				case MouseEvent.ROLL_OUT:
				TweenMax.to(e.target, .3, {tint:null});
				break;
				
				case MouseEvent.CLICK:
				trace(e.target.ind);
				//Main.msg("main").changeView(menuArray[e.target.ind].view);
			}
		}
	}
}