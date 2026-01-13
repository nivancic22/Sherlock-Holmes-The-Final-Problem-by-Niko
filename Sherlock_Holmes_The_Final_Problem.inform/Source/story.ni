"Sherlock Holmes: The Final Problem" by Student

TimeLeft is a number that varies. TimeLeft is 40.

Every turn:
	decrement TimeLeft;
	if TimeLeft is 30:
		say "From the street below, you hear a carriage pass by. Time is running out.";
	if TimeLeft is 20:
		say "Dr. Watson shouts: 'Holmes! The ticking is getting deafening!'";
	if TimeLeft is 10:
		say "SWEAT TRICKLES DOWN YOUR FOREHEAD. 10 TURNS LEFT!";
	if TimeLeft is 0:
		end the story saying "KABOOM! The blast destroys 221B Baker Street. Moriarty wins.".


The Hallway is a room. "A dimly lit corridor in 221B Baker Street. The wallpaper is peeling slightly. To the NORTH is the Bedroom. To the SOUTH is the Office. To the EAST is the Kitchen."

The Office is a room. The Office is south of the Hallway. "Sherlock's chaotic study. Papers are scattered everywhere. The air smells of stale tobacco. To the WEST is the Laboratory. A massive iron safe stands in the corner."

The Laboratory is a room. The Laboratory is west of the Office. "A wooden table filled with bubbling retorts, bunsen burners, and strange glass jars. A bowl of acid sits dangerously on the edge."

The Bedroom is a room. The Bedroom is north of the Hallway. "A messy personal room. A bed stands unmade. A heavy coat hangs on the chair. A violin case lies open on the floor."

The Kitchen is a room. The Kitchen is east of the Hallway. "Mrs. Hudson's domain, currently empty. There is a smell of cold tea and toast. A cupboard stands against the wall."

Dr Watson is a man in the Office. "Dr. Watson is pacing back and forth, looking pale."


Instead of asking Dr Watson about "bomb":
	say "'Good heavens, Holmes! Don't ask me, defuse it! I'm a doctor, not an engineer!' cries Watson.".

Instead of asking Dr Watson about "moriarty":
	say "'That villain! This must be his doing,' Watson mutters.".

Instead of kissing Dr Watson:
	say "Watson looks strictly scandalized. 'We are British, Holmes. Focus!'".

The violin is a thing in the Bedroom. "Holmes's famous Stradivarius violin."
The description of the violin is "It has produced both beautiful music and terrible screeching."

Playing is an action applying to one thing.
Understand "play [something]" as playing.

Instead of playing the violin:
	say "You play a quick, frantic melody to clear your mind. Watson yells from the other room: 'Not now, Holmes!'".

The dusty book is a thing in the Office. "A book titled 'The Dynamics of an Asteroid'."
The description of the dusty book is "Written by Professor Moriarty. Pure mathematics. It contains no clues about bombs."

The cup of tea is a thing in the Kitchen. "A cup of Earl Grey, half finished."
Instead of drinking the cup of tea:
	say "It is stone cold and bitter. You regret that.".

The cupboard is a container in the Kitchen. It is openable and closed.
In the cupboard is a butter knife.
The description of the butter knife is "Dull and useless for cutting wires."



The bowl of acid is a scenery thing in the Laboratory.
The tongs are a thing in the Laboratory. "Iron tongs (stained with chemicals)."
The description of the tongs is "Perfect for grabbing things out of hazardous liquids."

The safe is a container in the Office. It is locked and fixed in place.
The golden key is a thing in the Laboratory. The golden key unlocks the safe.

Instead of taking the golden key:
	if the player carries the tongs:
		move the golden key to the player;
		say "Using the tongs, you carefully fish the key out of the hissing acid.";
	else:
		say "Are you mad? The acid bubbles menacingly. You cannot touch it with bare hands.".


The coat is a container in the Bedroom. It is openable.
The note is a thing inside the coat.
The description of the note is "You recognize the handwriting instantly. It says: 'The Royal BLOOD is blue. ' "

The wire cutters are a thing in the Bedroom. "Heavy-duty wire cutters."


The time bomb is a device inside the safe. "A complex clockwork mechanism attached to dynamite. A RED WIRE and a BLUE WIRE protrude from the casing."
The red wire is a thing inside the safe.
The blue wire is a thing inside the safe.

WireCutting is an action applying to one thing.
Understand "cut [something]" as WireCutting.

Check cutting:
	if the noun is the red wire or the noun is the blue wire:
		if the player is not holding the wire cutters:
			say "You cannot cut the wires with your bare hands. You need the wire cutters." instead.

Instead of cutting the red wire:
	say "You snip the red wire. The ticking stops for a second...";
	end the story saying "CLICK. BOOM! You chose poorly. The red wire was the trigger.".

Instead of cutting the blue wire:
	say "With steady hands, you sever the blue wire. The clockwork mechanism winds down with a groan. Silence falls over Baker Street.";
	end the story finally saying "ELEMENTARY! You have saved the day once again.".

Instead of cutting the time bomb:
	say "You must be precise. Which wire do you want to cut? Red or Blue?".
When play begins:
	say "London, 1895. A heavy fog presses against the windows of 221B Baker Street. You have found a bomb in your safe, planted by Moriarty.[paragraph break]";
	say "OBJECTIVE: Defuse the bomb.[line break]";
	say "1. Explore the apartment (Kitchen, Bedroom, Lab).[line break]";
	say "2. Ignore the distractions.[line break]";
	say "3. Find the tools and the clue.[line break]";
	say "4. Act before the timer runs out.";