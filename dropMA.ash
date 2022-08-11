// Note: This script will work if you are me and has the potential to fail for you. If you are reading this and you are not me, that means that you are you. As such, you may or may not have success with this.

void gettin_carbonated(){

	if (my_meat() < 20) {
		abort("We don't have enough meat to recover MP via Internal Soda Machine. Oh no!");
	}
	while (my_maxmp() - my_mp() >= 10 && my_meat() >= 20) {
		print("Grabbing a can of soda. Drink up!", "#dd00dd");
		use_skill(1, $skill[Internal Soda Machine]);
	}
}

void gettin_wrinkly(){

	if (my_hp() < 100 && get_property("_hotTubSoaks").to_int() < 5) {
		print("All resources are free, including this one.", "#dd00dd");
		cli_execute("hottub");
	} else if (have_effect($effect[Beaten Up]) > 0 && get_property("_hotTubSoaks").to_int() < 5) {
		abort("Oh no, we actually need to worry about HP management.");
	} else if (my_maxhp() > 3000 && my_hp() < 1000) {
		print("This is a very lazy hottub use to make sure I don't run low on HP during the tentacle fight. Enjoy this useful comment -- it's one of the only ones you're getting.", "#dd00dd");
		cli_execute("hottub");
	}
}

void gettin_stocked(){

	if (pulls_remaining() > 0) {
	
		print("Now attempting to stock up on items that you may or may not already have.", "#dd00dd");
	
		string old_pref = get_property("autoBuyPriceLimit");
		set_property("autoBuyPriceLimit", 123456);
	
		if (storage_amount($item[cuppa Voraci Tea]) < 1) {
			buy_using_storage(1, $item[cuppa Voraci Tea]);
		}
		if (storage_amount($item[cuppa Sobrie Tea]) < 1) {
			buy_using_storage(1, $item[cuppa Sobrie Tea]);
		}
		if (storage_amount($item[meteoreo]) < 1) {
			buy_using_storage(1, $item[meteoreo]);
		}
		if (storage_amount($item[Tea, Earl Grey, Hot]) < 1) {
			buy_using_storage(1, $item[Tea, Earl Grey, Hot]);
		}
		if (storage_amount($item[ice rice]) < 1) {
			buy_using_storage(1, $item[ice rice]);
		}
		if (storage_amount($item[snow crab]) < 1) {
			buy_using_storage(1, $item[snow crab]);
		}
		if (storage_amount($item[mouth-watering mayolus]) < 1) {
			buy_using_storage(1, $item[mouth-watering mayolus]);
		}
		if (storage_amount($item[splendid martini]) < 1) {
			buy_using_storage(1, $item[splendid martini]);
		}
		if (storage_amount($item[tuxedo shirt]) < 1) {
			buy_using_storage(1, $item[tuxedo shirt]);
		}
		if (storage_amount($item[1,970 carat gold]) < 1) {
			buy_using_storage(1, $item[1,970 carat gold]);
		}
		if (storage_amount($item[meat engine]) < 1) {
			buy_using_storage(1, $item[meat engine]);
		}
		if (storage_amount($item[dope wheels]) < 1) {
			buy_using_storage(1, $item[dope wheels]);
		}
	
		set_property("autoBuyPriceLimit", old_pref);
		
	}
}

void gettin_pulls(){

	if (pulls_remaining() > 0) {
		print("Time to pull all our items. Hopefully you stocked up ahead of time!", "#dd00dd");
	}
	
	if (storage_amount($item[Pantsgiving]) > 0 && pulls_remaining() == 20) {
		take_storage(1, $item[Pantsgiving]);
	}
	
	if (storage_amount($item[cuppa Voraci tea]) > 0 && pulls_remaining() == 19) {
		take_storage(1, $item[cuppa Voraci tea]);
		}
		
	if (storage_amount($item[cuppa Sobrie tea]) > 0 && pulls_remaining() == 18) {
		take_storage(1, $item[cuppa Sobrie tea]);
	}
	
	if (storage_amount($item[distention Pill]) > 0 && pulls_remaining() == 17) {
		take_storage(1, $item[distention Pill]);
	}
	
	if (storage_amount($item[synthetic dog hair pill]) > 0 && pulls_remaining() == 16) {
		take_storage(1, $item[synthetic dog hair pill]);
	}
	
	if (storage_amount($item[mime army shotglass]) > 0 && pulls_remaining() == 15) {
		take_storage(1, $item[mime army shotglass]);
	}
	
	if (storage_amount($item[smooth velvet hat]) > 0 && pulls_remaining() == 14) {
		take_storage(1, $item[smooth velvet hat]);
	}
	
	if (storage_amount($item[smooth velvet pocket square]) > 0 && pulls_remaining() == 13) {
		take_storage(1, $item[smooth velvet pocket square]);
	}
	
	if (storage_amount($item[smooth velvet socks]) > 0 && pulls_remaining() == 12) {
		take_storage(1, $item[smooth velvet socks]);
	}
	
	if (storage_amount($item[smooth velvet hanky]) > 0 && pulls_remaining() == 11) {
		take_storage(1, $item[smooth velvet hanky]);
	}
	
	if (storage_amount($item[meteoreo]) > 0 && pulls_remaining() == 10) {
		take_storage(1, $item[meteoreo]);
	}
	
	if (storage_amount($item[Tea, Earl Grey, Hot]) > 0 && pulls_remaining() == 9) {
		take_storage(1, $item[Tea, Earl Grey, Hot]);
	}
	
	if (storage_amount($item[ice rice]) > 0 && pulls_remaining() == 8) {
		take_storage(1, $item[ice rice]);
	}
	
	if (storage_amount($item[snow crab]) > 0 && pulls_remaining() == 7) {
		take_storage(1, $item[snow crab]);
	}
	
	if (storage_amount($item[mouth-watering mayolus]) > 0 && pulls_remaining() == 6) {
		take_storage(1, $item[mouth-watering mayolus]);
	}
	
	if (storage_amount($item[splendid martini]) > 0 && pulls_remaining() == 5) {
		take_storage(1, $item[splendid martini]);
	}
	
	if (storage_amount($item[tuxedo shirt]) > 0 && pulls_remaining() == 4) {
		take_storage(1, $item[tuxedo shirt]);
	}
	
	if (storage_amount($item[1,970 carat gold]) > 0 && pulls_remaining() == 3) {
		take_storage(1, $item[1,970 carat gold]);
	}
	
	if (storage_amount($item[meat engine]) > 0 && pulls_remaining() == 2) {
		take_storage(1, $item[meat engine]);
	}
	
	if (storage_amount($item[dope wheels]) > 0 && pulls_remaining() == 1) {
		take_storage(1, $item[dope wheels]);
	}
	
	if (pulls_remaining() > 0) {
		abort("oops :P");
	}
}

void gettin_rich(){

	if (get_property("questM05Toot") == "started") {
		print("The hardest quest of all -- remembering to get this before visiting the Council.", "#dd00dd");
		visit_url("tutorial.php?action=toot");
		visit_url("main.php");
		cli_execute("refresh inv");
	}
	
	if (item_amount($item[Letter from King Ralph XI]) > 0) {
		print("Luigi, look! It's from Bowser.", "#dd00dd");
		use(1, $item[Letter from King Ralph XI]);
	}
	
	if (item_amount($item[Pork elf goodies sack]) == 1) {
		use(1, $item[Pork elf goodies sack]);
	}
	
	while (item_amount($item[baconstone]) > 0) {
		autosell(1, $item[baconstone]);
	}
	
	while (item_amount($item[hamethyst]) > 0) {
		autosell(1, $item[hamethyst]);
	}
	
	if (item_amount($item[1,970 carat gold]) == 1) {
		autosell(1, $item[1,970 carat gold]);
	}
}

void gettin_irradiated(){

	if (!get_property("falloutShelterCoolingTankUsed").to_boolean()) {
		print("Hopping into the main reactor's cooling tank. Yay, radiation!", "#dd00dd");
		visit_url("place.php?whichplace=falloutshelter&action=vault8");
	}
	
	if (!get_property("_falloutShelterSpaUsed").to_boolean()) {
		print("Time to simulate a trip to the spa. How lovely!", "#dd00dd");
		visit_url("place.php?whichplace=falloutshelter&action=vault3");
	}
	
	if (have_effect($effect[Rad-Pro Tected]) == 0) {
		print("An ounce of protection is worth some amount of substats.", "#dd00dd");
		retrieve_item(2, $item[Rad-Pro (1 oz.)]);
		use(2, $item[Rad-Pro (1 oz.)]);
	}
	
	if (item_amount($item[Wrist-Boy]) == 0) {
		print("This is legally distinct.", "#dd00dd");
		retrieve_item(1, $item[Wrist-Boy]);
	}
	
	if (item_amount($item[Superdrifter holo-record]) == 0 && get_property("_godLobsterSession") <= 1) {
		print("Their early work was a little too new wave for my taste.", "#dd00dd");
		retrieve_item(1, $item[Superdrifter holo-record]);
	}
	
	if (item_amount($item[Drunk Uncles holo-record]) == 0 && have_effect($effect[Drunk and Avuncular]) == 0 && item_amount($item[splendid martini]) > 0) {
		print("The whole album has a clear, crisp sound, and a new sheen of consumnate professionalism that really gives the songs a big boost.", "#dd00dd");
		retrieve_item(1, $item[Drunk Uncles holo-record]);
	}
	
	if (item_amount($item[The Pigs holo-record]) == 0 && my_fullness() < 7) {
		print("You should listen to the lyrics. It's a personal statement about The Pigs themselves.", "#dd00dd");
		retrieve_item(1, $item[The Pigs holo-record]);
	}
}

void gettin_skills(){
	
	if (!have_skill($skill[Extra Gall Bladder]) && (item_amount($item[rad]) == 300)) {
		print("Who said Ed was the only one who could get extra organs?", "#dd00dd");
		visit_url("shop.php?whichshop=mutate&action=buyitem&quantity=1&pwd=&whichrow=877");
	}
	
	if (!have_skill($skill[Extra Kidney]) && (item_amount($item[rad])) == 240) {
		print("Probably nobody, but it's a valid point regardless.", "#dd00dd");
		visit_url("shop.php?whichshop=mutate&action=buyitem&quantity=1&pwd=&whichrow=878");
	}
	
	if (!have_skill($skill[Extra Muscles]) && (item_amount($item[rad])) == 180) {
		print("All organs are equal.", "#dd00dd");
		visit_url("shop.php?whichshop=mutate&action=buyitem&quantity=1&pwd=&whichrow=861");
	}
	
	if (!have_skill($skill[Steroid Bladder]) && (item_amount($item[rad])) == 90) {
		print("Some organs are more equal than others.", "dd00dd");
		visit_url("shop.php?whichshop=mutate&action=buyitem&quantity=1&pwd=&whichrow=869");
	}
	
	if (!have_skill($skill[Internal Soda Machine]) && (item_amount($item[rad])) == 30) {
		print("The internal soda machine *is* pretty close to topping seven spleens, though.", "#dd00dd");
		visit_url("shop.php?whichshop=mutate&action=buyitem&quantity=1&pwd=&whichrow=879");
	}
}

void gettin_prepped(){
	
	if (get_property("_gotPrepped") != true) {
	
		if (get_property("recoveryScript") == "scripts\Universal_recovery.ash") {
			print("Temporarily getting rid of Universal_recovery so the script doesn't abort on getting Beaten Up from a Cleaver NC.", "#dd00dd");
			set_property("recoveryScript", "");
		}

		if (get_property("choiceAdventure1322") != 2) {
			print("NEP intro NC", "#dd00dd");
			set_property("choiceAdventure1322", 2);
		}
			
		if (get_property("choiceAdventure1324") != 2) {
			print("NEP scheduled NC", "#dd00dd");
			set_property("choiceAdventure1324", 2);
		}
		
		if (get_property("choiceAdventure1326") != 2) {
			print("NEP kitchen NC", "#dd00dd");
			set_property("choiceAdventure1326", 2);
		}
		
		if (item_amount($item[astral six-pack]) > 0) {
			print("Gluggalugga glug glug", "#dd00dd");
			use(1, $item[astral six-pack]);
		}
		
		if (item_amount($item[bitchin' meatcar]) == 0 && item_amount($item[dope wheels]) > 0 && item_amount($item[meat engine]) > 0) {
			print("Access to Desert Beach is nice.", "#dd00dd");
			create(1, $item[bitchin' meatcar]);
		}
		
		if (have_effect($effect[That's Just Cloud-Talk\, Man]) == 0 && get_property("_campAwayCloudBuffs") == 0 ){
			print("Smonk", "#00ff00");
			visit_url("place.php?whichplace=campaway&action=campaway_sky");
		}
		
		if (get_property("_campAwaySmileBuffs") == 0 && get_property("_campAwayCloudBuffs") == 1) {
			print("This smile buff isn't going to help with anything. It's just here for moral support.", "#dd00dd");
			visit_url("place.php?whichplace=campaway&action=campaway_sky");
		}
		
		if (item_amount($item[your cowboy boots]) < 1) {
			print("These may or may not actually be used.", "#dd00dd");
			visit_url("place.php?whichplace=town_right&action=townright_ltt");
		}
		
//		if (item_amount($item[gold detective badge]) == 0) {	Commented out - takes too long. This means I can't reference Contradiction, but it's a small price to pay for ~10 seconds of time saved per run.
//			print("If I did *this*, would it mean anything to you?");
//			visit_url("place.php?whichplace=town_wrong&action=townwrong_precinct");
//		}
		
		if (item_amount($item[&quot;I Voted!&quot; sticker]) < 1) {
			print("There is no joke here. Vote.", "#dd00dd");
			cli_execute("votingbooth");
		}
		
		if (get_property("_fireworksShopHatBought") == false) {
			print("Hot.", "#ff0000");
			visit_url("clan_viplounge.php");
			visit_url("clan_viplounge.php?action=fwshop&whichfloor=2");
			visit_url("shop.php?whichshop=fwshop&action=buyitem&quantity=1&whichrow=1247&pwd");
		}
		
		if (item_amount($item[banana candle]) > 0 && have_effect($effect[Everything is Bananas]) == 0) {
			print("Put your pom-poms down.", "#dd00dd");
			use(1, $item[banana candle]);
		}
		
		if (item_amount($item[GameInformPowerDailyPro magazine]) > 0) {
			print("[insert some sick ASCII text art here]", "#dd00dd");
			visit_url("inv_use.php?whichitem=6174&confirm=Yep.&pwd=");
			visit_url("main.php");
			cli_execute("refresh inv");
		}
		
		if (item_amount($item[dungeoneering kit]) == 0 && item_amount($item[soft green echo eyedrop antidote]) == 0 && item_amount($item[GameInformPowerDailyPro magazine]) == 0) {
			print("Adventures in your inventory are free.", "#dd00dd");
			adv1($location[Video Game Level 1]);
		}
		
		if (item_amount($item[dungeoneering kit]) > 0) {
			print("Well worth 230M.", "#dd00dd");
			use(1, $item[dungeoneering kit]);
		}
		
		if (get_property("_chateauDeskHarvested") == false) {
			print("Write some dialogue here.", "#dd00dd");
			visit_url("place.php?whichplace=chateau&action=chateau_desk2");
		}
		
		if (item_amount($item[seal-brain elixir]) > 0 && have_effect($effect[Sealed Brain]) == 0) {
			print("It's big-brain time.", "#dd00dd");
			use(1, $item[seal-brain elixir]);
		}
		
		if (item_amount($item[blood of the Wereseal]) > 0 && have_effect($effect[Temporary Lycanthropy]) == 0) {
			print("rururu", "#dd00dd");
			use(1, $item[blood of the Wereseal]);
		}
		
		if (get_property("_horsery") != "crazy horse") {
			print(":crazierhorse:", "#dd00dd");
			cli_execute("horsery crazy horse");
		}
		
		if (get_property("_aprilShower") == false && have_effect($effect[Muscle Unbound]) == 0) {
			print("Warm.", "#dd00dd");
			cli_execute("shower warm");
		}
		
		if (get_property("_boomBoxSongsLeft") == 11 && get_property("boomBoxSong") != "Food Vibrations") {
			print("Special seasoning is nice to have.", "#dd00dd");
			cli_execute("boombox food");
		}
		
		if (get_property("backupCameraMode") != "ml") {
			print("Hooray for scaling ML!", "#dd00dd");
			cli_execute("backupcamera ml");
		}
		
		if (get_property("backupCameraReverserEnabled") == false) {
			print("!LM gnilacs rof yarooH", "#dd00dd");
			cli_execute("backupcamera reverser on");
		}
		
		if (!have_skill($skill[Torso Awareness]) && item_amount($item[bitchin' meatcar]) == 1 && my_meat() >= 5000) {
			print("Whee!", "#dd00dd");
			visit_url("gnomes.php?place=skills");
			visit_url("gnomes.php?action=trainskill&pwd&whichskill=12");
		}
		
		if (item_amount($item[makeshift garbage shirt]) == 0) {
			print("This item is trash.", "#dd00dd");
			set_property("choiceAdventure1275", 5);
			use(1, $item[January's Garbage Tote]);
			run_choice(5);
		}
		
		if (equipped_item($slot[off-hand]) != $item[familiar scrapbook]) {
			print("How familiar.", "#dd00dd");
			equip($slot[off-hand], $item[familiar scrapbook]); 
		}
		
		if (get_property("_daycareNap") == false) {
			print("Consider yourself lucky if the script doesn't break here.", "#dd00dd");
			visit_url("place.php?whichplace=town_wrong&action=townwrong_boxingdaycare", false);
			visit_url("choice.php?pwd=&whichchoice=1334&option=1");
			visit_url("choice.php?pwd=&whichchoice=1334&option=2");
			visit_url("choice.php?pwd=&whichchoice=1335&option=1");
			visit_url("choice.php?pwd=&whichchoice=1334&option=3");
			visit_url("choice.php?pwd=&whichchoice=1336&option=2");
			visit_url("choice.php?pwd=&whichchoice=1336&option=5");
			visit_url("choice.php?pwd=&whichchoice=1334&option=4");
		}
		
		if (get_property("_kgbClicksUsed") == 0 && item_amount($item[splendid martini]) < 4) {
			print("Fun fact: Christopher Lee and Ian Fleming were relatives by marriage.", "#dd00dd");
			cli_execute("briefcase drink");
		}
		
		if (get_property("retroCapeSuperhero") != "vampire" || get_property("retroCapeWashingInstructions") != "thrill") {
			print("You're *my* superhero ;)", "#dd00dd");
			cli_execute("retrocape vampire thrill");
		}
		
		if (familiar_equipped_equipment($familiar[Fancypants Scarecrow]) != $item[designer sweatpants]) {
			print("This is an important step.", "#dd00dd");
			use_familiar($familiar[Fancypants Scarecrow]);
			equip($slot[familiar], $item[designer sweatpants]);
		}
		
		if (get_property("_mummeryUses") != "3,") {
			print("Remember to wear green.", "#dd00dd");
			use_familiar($familiar[Fancypants Scarecrow]);
			cli_execute("mummery muscle");
		}
		
		if (current_mcd() != 10 && item_amount($item[bitchin' meatcar]) > 0) {
			print(">:(", "#dd00dd");
			change_mcd(10);
		}
		
		if (get_property("_birdsSoughtToday") < 1) {
			print("This bird is actually helpful!", "#dd00dd");
			use(1, $item[Bird-a-Day calendar]);
			gettin_carbonated();
			use_skill(1, $skill[Seek out a Bird]);
		}
		
		if (get_property("_beachHeadsUsed") != ("1,2,3,4,5,6,7,8,11")) {
			print(":)", "#dd00dd");
			cli_execute("beach head 1; beach head 2; beach head 3; beach head 4; beach head 5; beach head 6; beach head 7; beach head 8; beach head 11;");
		}
		
		if (get_property("_bastilleGames") == 0) {
			print("Fortnite.", "#dd00dd");
			cli_execute("bastille muscle");
		}
		
		if (equipped_item($slot[acc2]) != $item[Brutal brogues] || get_auto_attack() != 99190868) {
			print("What's fightMA?", "#dd00dd");
			outfit("fightMA");
			cli_execute("autoattack fightMA");
		}
		
// What's fightMA? Something like this.
// if monsterid 2088 if !haseffect 873 if hasskill 7407 skill 7407 endif endif endif if monsterid 2089 || monsterid 2090 || monsterid 2091 || monsterid 2092 || monsterid 2093 if !haseffect 874 if hasskill 7406 skill 7406 endif endif endif if monsterid 1858 if !haseffect 875 if hasskill 7406 skill 7406 endif endif endif if monsterid 1859 || monsterid 1860 || monsterid 1861 if !haseffect 876 if hasskill 7406 skill 7406 endif endif endif if hasskill 7247 skill 7247 endif if hascombatitem 9014 use 9014 endif if hasskill 7245 skill 7245 endif attack repeat !hppercentbelow 10 scrollwhendone
		
		cli_execute("ccs twiddle");
		
		visit_url("council.php");
		
		visit_url("place.php?whichplace=forestvillage&action=fv_friar");
		
		cli_execute("refresh all");
		
		visit_url("place.php?whichplace=forestvillage&action=fv_friar");
		
		set_property("_gotPrepped", true);
		
		if (florist_available() == false) {
			abort("Only Hugh can prevent this.");
		}
	}
}

void gettin_pantsed(){
	
	if (have_effect($effect[Juiced and Loose]) == 0 && my_mp() >= 60 && my_turncount() < 10) {
		print("Text goes here.", "#dd00dd"); // The joke is that it looks like I forgot to change the placeholder in this print() line. 
		use_skill(1, $skill[Steroid Bladder]);
	}
	
	if (get_property("sweat").to_int() < 75) {
		
		visit_url("desc_item.php?whichitem=800334855");
		
		if (my_familiar() != $familiar[Fancypants Scarecrow]) {
			use_familiar($familiar[Fancypants Scarecrow]);
		}
	} else if (get_property("sweat").to_int() >= 75 && my_familiar() != $familiar[Fist Turkey]) {
		use_familiar($familiar[Fist Turkey]);
	}
	
	if (get_property("garbageShirtCharge").to_int() == 0 && equipped_item($slot[shirt]) != $item[LOV Eardigan]) {
		equip($slot[shirt], $item[LOV Eardigan]);
	} else if (get_property("garbageShirtCharge").to_int() > 0 && equipped_item($slot[shirt]) != $item[makeshift garbage shirt]) {
		equip($slot[shirt], $item[makeshift garbage shirt]);
	}
}

void gettin_love(){

	gettin_pantsed();

	if (get_property("_loveTunnelUsed") == false) {
		
		if (get_property("lastBeardBuff") == 0 && equipped_item($slot[hat]) == $item[fedora-mounted fountain]) {
			equip($slot[hat], $item[Daylight Shavings Helmet]);
		} 
		
		visit_url("place.php?whichplace=town_wrong&action=townwrong_tunnel");
		visit_url("choice.php?whichchoice=1222&option=1&pwd");
		visit_url("choice.php?whichchoice=1223&option=1&pwd");
		run_combat();
		visit_url("choice.php?whichchoice=1224&option=1&pwd");
		visit_url("choice.php?whichchoice=1225&option=1&pwd");
		run_combat();
		visit_url("choice.php?whichchoice=1226&option=1&pwd");
		visit_url("choice.php?whichchoice=1227&option=1&pwd");
		run_combat();
		visit_url("choice.php?whichchoice=1228&option=3&pwd");
		
	}
		
	if (have_effect($effect[Toiletbrush Moustache]) != 0 && equipped_item($slot[hat]) != $item[fedora-mounted fountain]) {
		equip($slot[hat], $item[fedora-mounted fountain]);
	}
		
	if (item_amount($item[MayDay&trade; supply package]) > 0) {
		print("Best iotm 2022", "#dd00dd");
		use(1, $item[MayDay&trade; supply package]);
	}
}

void gettin_stats(){

	if (get_property("leafletCompleted") == false) {
		print("Time to play the real game.", "#dd00dd");
		
		if (equipped_item($slot[shirt]) != $item[LOV Eardigan]) {
			equip($slot[shirt], $item[LOV Eardigan]);
		}
		
		cli_execute("leaflet");	
	}

	if ((my_level() >= 9 && get_property("timesRested").to_int() < 9) || (item_amount($item[mother's necklace]) > 0 && get_property("timesRested").to_int() < 14)) {
	
		print("Time to powerlevel.", "#dd00dd");
		
		if (equipped_item($slot[shirt]) != $item[LOV Eardigan]) {
			equip($slot[shirt], $item[LOV Eardigan]);
		}
		
		while (get_property("timesRested").to_int() < 9) {
			visit_url("place.php?whichplace=chateau&action=chateau_restlabelfree");
		}
		
		while (item_amount($item[mother's necklace]) == 1 && get_property("timesRested").to_int() < 14) {
			visit_url("place.php?whichplace=chateau&action=chateau_restlabelfree");
		}
		
		if (equipped_item($slot[shirt]) != $item[makeshift garbage shirt]) {
			equip($slot[shirt], $item[makeshift garbage shirt]);
		}
	}
}

void gettin_chilly(){
	
	if (get_property("snojoSetting") != "MYSTICALITY") {
		visit_url("place.php?whichplace=snojo&action=snojo_controller");
		run_choice(2);
	}
		
	while (get_property("_snojoFreeFights").to_int() < 10) {
	
		if (my_level() >= 9) {
			gettin_stats();
		}
	
		gettin_pantsed();
		gettin_wrinkly();
		gettin_carbonated();
		
		adv1($location[The X-32-F Combat Training Snowman]);
				
		if (have_effect($effect[Timer 3]) == 0) {
			cli_execute("/timer 103 Bowled Sideways in Snojo");
		}
		
		if (get_property("_snojoFloristDone") != "true") {
			cli_execute("florist plant war lily");
			set_property("_snojoFloristDone", "true");
		}
	}		
}

void gettin_lit(){

	if (have_effect($effect[Spiced Up]) == 0 || get_property("_neverendingPartyFreeTurns").to_int() < 8) {
	
		while (get_property("_neverendingPartyFreeTurns").to_int() < 8) { 
			print("duffo was lit", "#dd00dd");
			
			gettin_pantsed();
			gettin_wrinkly();
			gettin_carbonated();
			
			adv1($location[The Neverending Party]);
			
			if (have_effect($effect[Timer 2]) == 0) {
				cli_execute("/timer 102 Bowled Sideways in NEP");
			}
			
			if (get_property("_nepFloristDone") != "true") {
				cli_execute("florist plant canned spinach");
				set_property("_nepFloristDone", "true");
			}
		}
	}
	
	if (have_effect($effect[Timer 3]) != 0) {
	
		while (get_property("_neverendingPartyFreeTurns").to_int() < 10) {
			print("duffo is lit", "#dd00dd");
			
			if (my_level() >= 9) {
				gettin_stats();
			}
			
			gettin_pantsed();
			gettin_wrinkly();
			gettin_carbonated();
			
			adv1($location[The Neverending Party]);
		}
	}
}

void gettin_unimplemented(){

	while (get_property("_machineTunnelsAdv").to_int() < 5) {
	
		if (my_familiar() != $familiar[Machine Elf]) {
			print("melfSmile", "#dd00dd");
			use_familiar($familiar[Machine Elf]);
		}
		
		if (familiar_equipped_equipment($familiar[Machine Elf]) != $item[miniature crystal ball]) {
			equip($slot[Familiar], $item[miniature crystal ball]);
		}
		
		gettin_stats();
		gettin_wrinkly();
		gettin_carbonated();
		
		adv1($location[The Deep Machine Tunnels]);
		
		if (have_effect($effect[Timer 4]) == 0) {
			cli_execute("/timer 104 Bowled Sideways in DMT");
		}
		
		if (get_property("_dmtFloristDone") != "true") {
			cli_execute("florist plant blustery puffball");
			set_property("_dmtFloristDone", "true");
		}
	}
	
	gettin_pantsed();
}

void gettin_godly() {
	
	if (get_property("_godLobsterFights").to_int() <= 1) {
		set_property("_godLobsterSession", 1);
	} else if (get_property("_godLobsterFights").to_int() == 2 && get_property("_snojoFreeFights").to_int() == 10) {
		set_property("_godLobsterSession", 2);
	} else if (get_property("_godLobsterFights").to_int() == 3) {
		set_property("_godLobsterSession", 3);
	}
	
	if (get_property("_godLobsterSession").to_int() < 3) {
	
		if (my_familiar() != $familiar[God Lobster]) {
			print("All hail.", "#dd00dd");
			use_familiar($familiar[God Lobster]);
		}
		
		if (item_amount($item[God Lobster's Scepter]) > 0 && familiar_equipped_equipment($familiar[God Lobster]) != $item[God Lobster's Scepter]) {
			print("Lovely duds.", "#dd00dd");
			equip($slot[familiar], $item[God Lobster's Scepter]);
		}
	}
}

void gettin_redacted(){

	if (get_property("_eldritchTentacleFought") == false) {
		
		gettin_pantsed();
		gettin_carbonated();
		if (get_property("_hotTubSoaks").to_int() < 5) {
			cli_execute("hottub");
		}
		
		visit_url("place.php?whichplace=forestvillage&action=fv_scientist");
		run_choice(1);
		run_combat();
	}
}

void gettin_heretical(){
	
	gettin_godly();
	
	if (get_property("_godLobsterSession") == 1) {
	
		if (have_effect($effect[Superdrifting]) == 0 && item_amount($item[Superdrifter holo-record]) > 0) {
			print("The greatest Sonic game.", "#dd00dd");
			use(1, $item[Superdrifter holo-record]);
		}
	
		while (get_property("_godLobsterFights").to_int() < 2) {
			print("Come, little one. Time to die.", "#dd00dd");
			
			gettin_wrinkly();
			gettin_carbonated();
			
			if (get_property("choiceAdventure1310") != (get_property("_godLobsterFights") + 1)) {
				print("Hopefully this works.", "#dd00dd");
				set_property("choiceAdventure1310", get_property("_godLobsterFights").to_int() + 1);
			}
			
			if (item_amount($item[God Lobster's Scepter]) > 0 && familiar_equipped_equipment($familiar[God Lobster]) != $item[God Lobster's Scepter]) {
				print("Lovely duds.", "#dd00dd");
				equip($slot[familiar], $item[God Lobster's Scepter]);
			}
			
			visit_url("main.php?fightgodlobster=1");
			run_combat();
			run_choice(-1);
		
			if (have_effect($effect[Timer 1]) == 0) {
				cli_execute("/timer 101 Bowled Straight Up on GodLob");
			}
		}
		
	} else if (get_property("_godLobsterSession") == 2) {
		print("Come, little one. Time to die.", "#dd00dd");
		
		if (get_property("choiceAdventure1310") != (get_property("_godLobsterFights") + 1)) {
			print("Hopefully this works.", "#dd00dd");
			set_property("choiceAdventure1310", get_property("_godLobsterFights").to_int() + 1);
		}
			
		visit_url("main.php?fightgodlobster=1");
		run_combat();
		run_choice(-1);
	}
	
	if (my_familiar() != $familiar[Fancypants Scarecrow]) {
		use_familiar($familiar[Fancypants Scarecrow]);
	}
}

void gettin_done(){
	
	if (get_property("_runFinished") == "") {
		set_property("_runFinished", gametime_to_int() / 1000);
	}
				
	if (get_property("recoveryScript") == "") {
		set_property("recoveryScript", "scripts\Universal_recovery.ash");
	}
			
	int adv_generated = ((my_adventures() + my_turncount() - 40 - 5 - 10) * 2 / 3); // base - moonsign - ode; this being an int is probably close enough.
				
	print("You've generated roughly " + adv_generated + " adventures over a casual run by utilizing dropMA.\n\n Your run took approximately " + (get_property("_runFinished").to_int() - get_property("_runStarted").to_int()) + " seconds.", "#dd00dd");
				
	wait(10);
				
	visit_url("account.php?action=unpath&unpathconfirm=1&pwd=");
	wait(10);
	visit_url("account.php?action=unronin&unroninconfirm=1&pwd=");
	wait(10);		
	cli_execute("refresh all");
	wait(5);
	cli_execute("pull all");
	wait(5);
	cli_execute("refresh all");
	wait(5);
	cli_execute("breakfast");
	cli_execute("refresh all");
	cli_execute("loopcasual stomach 0 liver 0 spleen 0 goal quests");
	abort("Time for garbo, hopefully.");
}

void gettin_full(){

	if (item_amount($item[Spookyraven billiards room key]) == 1) {
		abort("oops - time to diet manually.");
	} else {
		if (have_effect($effect[Record Hunger]) == 0 && item_amount($item[The Pigs holo-record]) > 0) {
			print(":lickilicky:", "#dd00dd");
			use(1, $item[The Pigs holo-record]);
		}

		if (get_property("_voraciTeaUsed") == false && item_amount($item[cuppa Voraci tea]) > 0)  {
			use(1, $item[cuppa Voraci tea]);
		}
		
		if (get_property("_distentionPillUsed") == false && item_amount($item[distention pill]) > 0) {
			use(1, $item[distention pill]);
		}
		
		while (my_fullness() < 2 && item_amount($item[ice rice]) > 0) {
			eat(1, $item[ice rice]);
		}
		
		if (my_fullness() < 3 && item_amount($item[Tea, Earl Grey, Hot]) > 0) {
			eat(1, $item[Tea, Earl Grey, Hot]);
		}
		
		if (my_fullness() < 4 && item_amount($item[meteoreo]) > 0) {
			eat(1, $item[meteoreo]);
		}
		
		if (my_fullness() < 5 && item_amount($item[snow crab]) > 0) {
			eat(1, $item[snow crab]);
		}
		
		if (my_fullness() == 5 && fullness_limit() == 6 && item_amount($item[mouth-watering mayolus]) > 0) {
			eat(1, $item[mouth-watering mayolus]);
		}
		
		if (my_fullness() == 6 && fullness_limit() == 7 && item_amount($item[glass of raw eggs]) > 0) {
			eat(1, $item[glass of raw eggs]);
		} else if (my_fullness() == 6 && fullness_limit() == 7) {
			cli_execute("timespinner eat meteoreo");
		}
	}
}

void gettin_drunk(){

	if (my_inebriety() < 4) {
	
		if (have_effect($effect[Record Hunger]) > 0 && item_amount($item[soft green echo eyedrop antidote]) > 0) {
			cli_execute("uneffect Record Hunger");
		} else {
			abort("no sgeea for some reason.");
		}
		
		if (familiar_equipped_equipment($familiar[Fancypants Scarecrow]) == $item[designer sweatpants]) {
			equip($slot[familiar], $item[none]);
		}
		
		if (have_effect($effect[Drunk and Avuncular]) == 0 && item_amount($item[Drunk Uncles holo-record]) > 0) {
			use(1, $item[Drunk Uncles holo-record]);
		}
		
		if (get_property("_cargoPocketEmptied") == false) {
			print("There might be a pocket that's worth more than the 10 adventures this generates, but I'm far too lazy to do the math on that.", "#dd00dd");
			cli_execute("cargo effect Ode to Booze");
		}
		
		if (equipped_item($slot[shirt]) != $item[tuxedo shirt]) {
			print("What's drinkMA?", "#dd00dd");
			outfit("drinkMA");
		}
		
		if (my_familiar() != $familiar[Stooper]) {
			print("Using Stooper now makes routing things much easier.", "#dd00dd");
			use_familiar($familiar[Stooper]);
		}
		
		while (my_inebriety() < 3 && item_amount($item[astral pilsner]) > 2) {
			drink(1, $item[astral pilsner]);
		}
		
		while (get_property("_sweatOutSomeBoozeUsed") < 3) {
			use_skill(1, $skill[Sweat Out Some Booze]);
		}
		
		while (my_inebriety() < 2 && item_amount($item[astral pilsner]) > 0) {
			drink(1, $item[astral pilsner]);
		}
		
		while (my_inebriety() < 3 && item_amount($item[splendid martini]) > 3) {
			drink(1, $item[splendid martini]);
		}
		
		if (get_property("_sobrieTeaUsed") == false && my_inebriety() == 3 && item_amount($item[cuppa Sobrie tea]) > 0) {
			use(1, $item[cuppa Sobrie tea]);
		}
		
		if (get_property("_syntheticDogHairPillUsed") == false && my_inebriety() <= 3 && item_amount($item[synthetic dog hair pill]) > 0) {
			use($item[synthetic dog hair pill]);
		}
		
		if (get_property("_infernoDiscoVisited") == false && my_inebriety() <= 3 && equipped_item($slot[hat]) == $item[smooth velvet hat] && equipped_item($slot[acc1]) == $item[smooth velvet hanky] && equipped_item($slot[acc2]) == $item[smooth velvet socks] && equipped_item($slot[acc3]) == $item[smooth velvet pocket square]) {
			set_property("choiceAdventure1090", 5);
			visit_url("place.php?whichplace=airport_hot&action=airport4_zone1");
			run_choice(5);
		}
		
		while (my_inebriety() < 3 && item_amount($item[splendid martini]) > 0) {
			drink(1, $item[splendid martini]);
		}
		
		if (my_inebriety() == 3 && my_familiar() == $familiar[stooper] && item_amount($item[splendid martini]) == 0) {
			
			if (item_amount($item[ambitious turkey]) > 0) {
				overdrink(1, $item[ambitious turkey]);
			} else {
				abort("gobble gobble -- you got unlucky with a 1.72% chance :(");
			}
		
			if (my_inebriety() == 4) {
				gettin_done();
			}
		}
	}
}

void gettin_peckish(){

	gettin_pantsed();
	
	if (fullness_limit() - my_fullness() > 0 && get_property("_pantsgivingCount").to_int() >= 48) {
		print("Time to eat, hopefully.", "#dd00dd");
		gettin_full();
	}
	
	if (my_fullness() == 7) {
		print("It's drinking time.", "#dd00dd");
		gettin_drunk();
	}
	
}

void gettin_sweaty(){

	if (item_amount($item[box of birthday candles]) == 0) {
		
		
		if (get_property("umbrellaState") != "cocoon") {
			print("rella rella rella rella", "#dd00dd");
			cli_execute("umbrella cocoon");
		}
	
		if (equipped_item($slot[acc2]) != $item[atlas of local maps]) {
			print("Time for Friars.", "#dd00dd");
			outfit("ncMA");
		}
		
		if (get_property("_horsery") != "dark horse") {
			cli_execute("horsery dark horse");
		}
		
		if (get_property("questL06Friar") != "step2") {
			
			while (item_amount($item[dodecagram]) == 0) {
				gettin_peckish();
				adv1($location[The Dark Neck of the Woods]);
			}
			
			while (item_amount($item[eldritch butterknife]) == 0) {
				gettin_peckish();
				adv1($location[The Dark Elbow of the Woods]);
			}
			
			while (item_amount($item[box of birthday candles]) == 0) {
				gettin_peckish();
				adv1($location[The Dark Heart of the Woods]);
			}
		}
	}
	
	if (item_amount($item[Spookyraven billiards room key]) == 0) {
	
		if (get_property("retroCapeSuperhero") != "vampire" || get_property("retroCapeWashingInstructions") != "hold") {
			cli_execute("retrocape vampire hold");
		}
		
		if (get_property("_horsery") != "pale horse") {
			cli_execute("horsery pale horse");
		}
		
		while (item_amount($item[Spookyraven billiards room key]) == 0) {
			gettin_peckish();
			adv1($location[The Haunted Kitchen]);
		}
	}
	
	abort("We ran out of places to adventure before finishing up our diet.");
}

void gettin_time(){
	if (get_property("_runStarted") == "") {
		set_property("_runStarted", gametime_to_int() / 1000);
	}
}

gettin_time();
gettin_stocked();
gettin_pulls();

gettin_rich();
gettin_irradiated();
gettin_skills();

gettin_prepped();

gettin_heretical();
gettin_love();
gettin_lit();
gettin_chilly();
gettin_heretical();
gettin_lit();
gettin_unimplemented();
gettin_redacted();

gettin_sweaty();

print("neat", "#dd00dd");