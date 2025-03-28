package options;

import options.Option;

class OptimizeSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = Language.getPhrase('optimization_menu', 'Optimization Settings');
		rpcTitle = 'Optimization Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Enable GC', //Name
			'If checked, the game can garbage collect,\nmaybe improving performance\nat a cost of maybe some lag on large charts.', //Description
			'enableGC', //Save data variable name
			BOOL); //Variable type
		addOption(option);

		var option:Option = new Option('Pop Up Score',
			"If unchecked, hitting notes won't make \"sick\", \"good\".. and combo popups\n(Useful for low end devices).",
			'popUpRating',
			BOOL);
		addOption(option);

		super();
	}
}