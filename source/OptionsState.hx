package;

import Controls.Control;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.input.keyboard.FlxKey;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;

class OptionsState extends MusicBeatState
{
  	var curSelected:Int = 0;
  
  override function create()
	{
    var menuBG:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
		menuBG.color = 0xFFea71fd;
		menuBG.setGraphicSize(Std.int(menuBG.width * 1.1));
		menuBG.updateHitbox();
		menuBG.screenCenter();
		menuBG.antialiasing = true;
		add(menuBG);
    
    super.create();
    
    openSubState(new OptionsSubState());
  }
  
  override function update(elapsed:Float)
	{
		super.update(elapsed);

				if (controls.BACK)
					FlxG.switchState(new MainMenuState());
    		  FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
				if (controls.UP_P)
//				changeSelection(-1);
    		  FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
				if (controls.DOWN_P)
//					changeSelection(1);
    		  FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
			}
	}
}
