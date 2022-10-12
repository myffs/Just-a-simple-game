
package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class MenuState extends FlxState
{
	var _gameTitle:FlxText;
	var _bg:FlxSprite;
	var _bgEye:FlxSprite;
	var _startButton:FlxButton;

	override public function create():Void
	{
		// Fade in from black
		FlxG.cameras.flash(FlxColor.BLACK, 3);
		FlxG.mouse.visible = true;

		// Add the game text and set some formatting options along with a shadow; you can also
		// pass in your own font if you have one embedded or it uses Flixel's default one
		_gameTitle = new FlxText(10, 90, 300, "Just a simple game");
		_gameTitle.setFormat(null, 16, FlxColor.WHITE, CENTER);
		add(_gameTitle);

		// Adding the background image 320x240
		_bg = new FlxSprite(0, 0, "BG.png");
		add(_bg);
]
		// Adding a button with an anon call back function
		_startButton = new FlxButton(137, 195, "", onStart);
		// We add a couple of sprites to the button to act as normal and mouseover states
		_startButton.loadGraphic(".png");
		_startButton.onOver.callback = onStartOver;
		_startButton.onOut.callback = onStartOut;
		add(_startButton);

		// Some credit text
		add(new FlxText(280, 200, 40, "by MyFnf"));
	}

	function onStart():Void
	{
		FlxG.cameras.fade(FlxColor.BLACK, 1, false, onFade);
	}

	function onFade():Void
	{
		FlxG.switchState(new PlayState());
	}

	function onStartOver():Void
	{
		_startButton.loadGraphic(".png");
	}

	function onStartOut():Void
	{
		_startButton.loadGraphic(".png");
	}
}
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
