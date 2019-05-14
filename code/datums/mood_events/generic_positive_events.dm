/datum/mood_event/hug
	description = "<span class='nicegreen'>Hugs are nice.</span>\n"
	mood_change = 1
	timeout = 2 MINUTES

/datum/mood_event/betterhug
	description = "<span class='nicegreen'>Someone was very nice to me.</span>\n"
	mood_change = 3
	timeout = 5 MINUTES

/datum/mood_event/betterhug/add_effects(mob/friend)
	description = "<span class='nicegreen'>[friend.name] was very nice to me.</span>\n"

/datum/mood_event/besthug
	description = "<span class='nicegreen'>Someone is great to be around, they make me feel so happy!</span>\n"
	mood_change = 5
	timeout = 5 MINUTES

/datum/mood_event/besthug/add_effects(mob/friend)
	description = "<span class='nicegreen'>[friend.name] is great to be around, [friend.p_they()] makes me feel so happy!</span>\n"

/datum/mood_event/arcade
	description = "<span class='nicegreen'>I beat the arcade game!</span>\n"
	mood_change = 3
	timeout = 5 MINUTES

/datum/mood_event/blessing
	description = "<span class='nicegreen'>I've been blessed.</span>\n"
	mood_change = 3
	timeout = 5 MINUTES

/datum/mood_event/book_nerd
	description = "<span class='nicegreen'>I have recently read a book.</span>\n"
	mood_change = 3
	timeout = 5 MINUTES

/datum/mood_event/exercise
	description = "<span class='nicegreen'>Working out releases those endorphins!</span>\n"
	mood_change = 3
	timeout = 5 MINUTES

/datum/mood_event/pet_animal
	description = "<span class='nicegreen'>Animals are adorable! I can't stop petting them!</span>\n"
	mood_change = 3
	timeout = 5 MINUTES

/datum/mood_event/pet_animal/add_effects(mob/animal)
	description = "<span class='nicegreen'>\The [animal.name] is adorable! I can't stop petting [animal.p_them()]!</span>\n"

/datum/mood_event/honk
	description = "<span class='nicegreen'>Maybe clowns aren't so bad after all. Honk!</span>\n"
	mood_change = 2
	timeout = 4 MINUTES

/datum/mood_event/perform_cpr
	description = "<span class='nicegreen'>It feels good to save a life.</span>\n"
	mood_change = 6
	timeout = 5 MINUTES

/datum/mood_event/oblivious
	description = "<span class='nicegreen'>What a lovely day.</span>\n"
	mood_change = 3

/datum/mood_event/jolly
	description = "<span class='nicegreen'>I feel happy for no particular reason.</span>\n"
	mood_change = 6
	timeout = 2 MINUTES

/datum/mood_event/focused
	description = "<span class='nicegreen'>I have a goal, and I will reach it, whatever it takes!</span>\n" //Used for syndies, nukeops etc so they can focus on their goals
	mood_change = 12
	hidden = TRUE

/datum/mood_event/badass_antag
	description = "I'm a fucking badass and everyone around me knows it. Just look at them; they're all fucking shaking at the mere thought of me around."
	mood_change = 15
	hidden = TRUE
	special_screen_obj = "badass_sun"
	special_screen_replace = FALSE

/datum/mood_event/creeping
	description = "<span class='greentext'>The voices have released their hooks on my mind! I feel free again!</span>\n" //creeps get it when they are around their obsession
	mood_change = 18
	timeout = 3 SECONDS
	hidden = TRUE

/datum/mood_event/revolution
	description = "<span class='nicegreen'>VIVA LA REVOLUTION!</span>\n"
	mood_change = 3
	hidden = TRUE

/datum/mood_event/cult
	description = "<span class='nicegreen'>I have seen the truth, praise the almighty one!</span>\n"
	mood_change = 40 //maybe being a cultist isnt that bad after all
	hidden = TRUE

/datum/mood_event/family_heirloom
	description = "<span class='nicegreen'>My family heirloom is safe with me.</span>\n"
	mood_change = 1

/datum/mood_event/goodmusic
	description = "<span class='nicegreen'>There is something soothing about this music.</span>\n"
	mood_change = 3
	timeout = 60 SECONDS

/datum/mood_event/chemical_euphoria
	description = "<span class='nicegreen'>Heh...hehehe...hehe...</span>\n"
	mood_change = 4

/datum/mood_event/chemical_laughter
	description = "<span class='nicegreen'>Laughter really is the best medicine! Or is it?</span>\n"
	mood_change = 4
	timeout = 3 MINUTES

/datum/mood_event/chemical_superlaughter
	description = "<span class='nicegreen'>*WHEEZE*</span>\n"
	mood_change = 12
	timeout = 3 MINUTES

/datum/mood_event/religiously_comforted
	description = "<span class='nicegreen'>You are comforted by the presence of a holy person.</span>\n"
	mood_change = 3

/datum/mood_event/clownshoes
	description = "<span class='nicegreen'>The shoes are a clown's legacy, I never want to take them off!</span>\n"
	mood_change = 5
