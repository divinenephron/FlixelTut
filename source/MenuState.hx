package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class MenuState extends FlxState
{
	private var _btnPlay:FlxButton;
	private var _txtTitle:FlxText;
	private var _btnOptions:FlxButton;

	override public function create():Void
	{
		_txtTitle = new FlxText(20, 0, 0, "HaxeFlixel\nTutorial\nGame", 22);
		_txtTitle.alignment = CENTER;
		_txtTitle.screenCenter(X);
		add(_txtTitle);
		
		_btnPlay = new FlxButton(0,0,"Play", clickPlay);
		_btnPlay.screenCenter();
		add(_btnPlay);
		
		_btnOptions = new FlxButton(0, 0, "Options", clickOptions);
		_btnOptions.x = (FlxG.width / 2) + 10;
		_btnOptions.y = FlxG.height - _btnOptions.height - 10;
		add(_btnOptions);
		
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}

	private function clickPlay():Void
	{
		FlxG.switchState(new PlayState());
	}
	
	private function clickOptions():Void
	{
		FlxG.switchState(new OptionsState());
	}
}
