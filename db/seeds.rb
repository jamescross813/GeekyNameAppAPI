game_arkham_horror = Event.create(
    event_name: "Arkham Horror", 
    description: "Arkham Horror: The Card Game is a cooperative Living Card Game® set amid a backdrop of Lovecraftian horror. As the Ancient Ones seek entry to our world, one to two investigators (or up to four with two Core Sets) work to unravel arcane mysteries and conspiracies.", 
    est_time: "90 mins",
    game_type: "horror, rpg")
game_wingspan = Event.create(
    event_name: "Wingspan",
    description: "Wingspan is a competitive, medium-weight, card-driven, engine-building board game from Stonemaier Games. It's designed by Elizabeth Hargrave and features over 170 birds illustrated by Beth Sobel, Natalia Rojas, and Ana Maria Martinez.",  
    est_time: "70 mins",
    game_type: "rpg, strategy")
game_ticket_to_ride = Event.create(
    event_name: "Ticket To Ride", 
    description: "Build your tracks across the United States in this fast-paced and strategic board game. Connect iconic North American cities across a map of the 20th-century USA and build your train routes to earn points", 
    est_time: "60 mins",
    game_type: "family, chance, strategy")
game_exit = Event.create(
    event_name: "Exit", 
    description: "EXIT: The Game is a series of escape room games for the home. Players must solve riddles and puzzles and crack codes to escape from an imaginary room or environment. But the clock is ticking! Can you escape?", 
    est_time: "120 mins",
    game_type: "escape, puzzle")
game_unlock = Event.create(
    event_name: "Unlock", 
    description: "Unlock! captures the exhilarating, heart-pounding excitement of a physical escape room adventure without leaving the tabletop. With one hour on the clock, players work through a deck of 60 cards to solve puzzles. Once the team enters the correct code into the companion app, they win!", 
    est_time: "120 mins",
    game_type: "escape, puzzle")
game_carcasonne = Event.create(
    event_name: "Carcasonne",
    description: "Develop the landscape of a medieval fortress city one tile at a time. Whether blocking a city's growth or connecting with your opponent’s road to share the points, Carcassonne provides plenty of ways to use your cunning and outsmart your opponents.",  
    est_time: "45 mins",
    game_type: "strategy, world building")
game_oregon_trail = Event.create(
    event_name: "Oregon Trail", 
    description: "All sorts of gruesome deaths await you and the rest of your wagon party in this official multi-player card game version of the classic computer game. To win, you'll need to keep one player alive all the way from Independence, MO to the Willamette Valley. But between rattlesnakes, starvation, dead oxen, broken bones, dysentery, and a host of other calamities, the odds are long...almost as long as the Oregon Trail itself. Players work together to move along the trail, fording rivers and playing Supply Cards to overcome calamities. Be warned - there will be times when it makes sense to let one of your wagon mates succumb to a calamity rather than expend precious supplies. Every time players go the way of all flesh, you'll flip over the roster card and write their names on tombstones (don't forget to include a quick epitaph). It's a great way to relive your fond memories of one of the world's most beloved computer games and to kill off your family and friends at the same time", 
    est_time: "30 mins",
    game_type: "family, strategy, rpg")
game_cards_against_humanity = Event.create(
    event_name: "Cards Against Humanity", 
    description: "Cards Against Humanity is a party game for horrible people.", 
    est_time: "90 mins",
    game_type: "humor")
game_splendor = Event.create(
    event_name: "Splendor",
    description: "Compete to build Renaissance Europe’s most lucrative and prestigious jewelry business. As a wealthy merchant, acquire mines and transportation, hire artisans and woo the nobility. Create the most fantastic jewelry to become the best-known merchant of them all!", 
    est_time: "30 mins",
    game_type: "strategy, chance")
game_shady_pets = Event.create(
    event_name: "Shady Pets", 
    description: "Shady Pets is a new card game that’s a little like Clue and Uno except you get to throw octopuses, deal with naked turtles and avoid hangry hamsters! This creative, fun and strategic game delivers hilarious laughs for all!", 
    est_time: "20 mins",
    game_type: "humor")
game_dracula = Event.create(
    event_name: "Fury of Dracula", 
    description: "Rounds are broken into day and night, with hunters taking actions during both, while Dracula can act only at night. Combat is streamlined and decisive, and rumor tokens allow Dracula to mislead hunters and extend the terrible reach of his influence. Count Dracula triumphs if he advances his influence track to thirteen; if the hunters can defeat him before then, they save the continent of Europe and win the game.",  
    est_time: "180 mins",
    game_type: "rpg, mystery")
game_betrayal = Event.create(
    event_name: "Betrayal at the House on the Hill", 
    description: "etrayal at House on the Hill quickly builds suspense and excitement as players explore a haunted mansion of their own design, encountering spirits and frightening omens that foretell their fate. With an estimated one hour playing time, Betrayal at House on the Hill is ideal for parties, family gatherings or casual fun with friends.",  
    est_time: "90 mins",
    game_type: "mystery")
game_gloom = Event.create(
    event_name: "Gloom", 
    description: "Gloom is a game of inauspicious incidents and grave consequences created by Keith Baker. A new tragedy lies around every corner and it is the kids' job to make their characters suffer the most tragedies to win. Transparent cards reveal or obscure the effects of cards below. In the end, the total showing through determines each player's score.",  
    est_time: "30 mins",
    game_type: "family, chance")
game_mysterium = Event.create(
    event_name: "Mysterium", 
    description: "In the 1920s, Mr. MacDowell, a gifted astrologer, immediately detected a supernatural being upon entering his new house in Scotland. He gathered eminent mediums of his time for an extraordinary séance, and they have seven hours to make contact with the ghost and investigate any clues that it can provide to unlock an old mystery.", 
    est_time: "45 mins",
    game_type: "mystery")
game_pandemic = Event.create(
    event_name: "Pandemic", 
    description: "Players must work together playing to their characters' strengths as they plan their strategy of eradicating the diseases before they overwhelm the world with ever-increasing outbreaks. A truly cooperative game where you win or lose together.", 
    est_time: "45 mins",
    game_type: "strategy")
game_azul = Event.create(
    event_name: "Azul", 
    description: "Azul is a tile-placement game in which players compete for the highest score by claiming tiles and arranging them on their board to score points.", 
    est_time: "45 mins",
    game_type: "strategy")

user_one = User.create(username:"Fish", password:"1234")
user_two = User.create(username:"Bibble", password: "1234")
user_three = User.create(username: "Kasey", password: "1234")
user_four = User.create(username: "Wool", password:"1234")

friend_one = Friend.create(user_id: user_one.id, friend_user_id: user_two.id)
friend_two = Friend.create(user_id: user_one.id, friend_user_id: user_three.id)
friend_three = Friend.create(user_id: user_one.id, friend_user_id: user_four.id)
friend_four = Friend.create(user_id: user_two.id, friend_user_id: user_one.id)

group_one = Group.create(group_name: "Fishels")
group_two = Group.create(group_name: "SugarSkulls")

user_group_one = UserGroup.create(user_id: user_one.id, group_id: group_one.id)
user_group_two = UserGroup.create(user_id: user_one.id, group_id: group_two.id)
user_group_three = UserGroup.create(user_id: user_two.id, group_id: group_one.id)
user_group_four = UserGroup.create(user_id: user_three.id, group_id: group_one.id)

user_event_one = UserEvent.create(user_id: user_one.id, event_id: 1)
user_event_two = UserEvent.create(user_id: user_one.id, event_id: 2)
user_event_three = UserEvent.create(user_id: user_one.id, event_id: 3)
user_event_four = UserEvent.create(user_id: user_one.id, event_id: 4)

group_event_one = GroupEvent.create(group_id: group_one.id, event_id: 1)
group_event_two = GroupEvent.create(group_id: group_one.id, event_id: 2)
group_event_thee = GroupEvent.create(group_id: group_two.id, event_id: 1)
group_event_four = GroupEvent.create(group_id: group_one.id, event_id: 4)

# DateInfo.create(day: 1, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 2, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 3, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 4, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 5, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 6, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 7, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 8, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 9, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 10, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 11, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 12, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 13, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 14, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 15, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 16, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 17, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 18, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 20, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 21, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 22, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 23, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 24, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 25, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 26, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 27, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 28, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 29, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 30, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 31, month: "October", year: 2021, month_num: 10)
# DateInfo.create(day: 1, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 2, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 3, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 4, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 5, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 6, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 7, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 8, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 9, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 10, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 11, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 12, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 13, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 14, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 15, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 16, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 17, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 18, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 20, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 21, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 22, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 23, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 24, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 25, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 26, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 27, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 28, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 29, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 30, month: "November", year: 2021, month_num: 11)
# DateInfo.create(day: 1, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 2, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 3, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 4, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 5, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 6, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 7, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 8, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 9, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 10, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 11, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 12, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 13, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 14, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 15, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 16, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 17, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 18, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 20, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 21, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 22, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 23, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 24, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 25, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 26, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 27, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 28, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 29, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 30, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 31, month: "December", year: 2021, month_num: 12)
# DateInfo.create(day: 1, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 2, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 3, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 4, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 5, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 6, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 7, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 8, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 9, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 10, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 11, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 12, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 13, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 14, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 15, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 16, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 17, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 18, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 20, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 21, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 22, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 23, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 24, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 25, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 26, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 27, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 28, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 29, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 30, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 31, month: "January", year: 2022, month_num: 1)
# DateInfo.create(day: 1, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 2, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 3, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 4, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 5, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 6, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 7, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 8, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 9, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 10, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 11, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 12, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 13, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 14, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 15, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 16, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 17, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 18, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 20, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 21, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 22, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 23, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 24, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 25, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 26, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 27, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 28, month: "February", year: 2022, month_num: 2)
# DateInfo.create(day: 1, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 2, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 3, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 4, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 5, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 6, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 7, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 8, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 9, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 10, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 11, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 12, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 13, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 14, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 15, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 16, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 17, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 18, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 20, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 21, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 22, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 23, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 24, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 25, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 26, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 27, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 28, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 29, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 30, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 31, month: "March", year: 2022, month_num: 3)
# DateInfo.create(day: 1, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 2, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 3, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 4, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 5, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 6, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 7, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 8, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 9, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 10, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 11, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 12, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 13, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 14, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 15, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 16, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 17, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 18, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 20, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 21, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 22, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 23, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 24, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 25, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 26, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 27, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 28, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 29, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 30, month: "April", year: 2022, month_num: 4)
# DateInfo.create(day: 1, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 2, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 3, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 4, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 5, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 6, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 7, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 8, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 9, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 10, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 11, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 12, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 13, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 14, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 15, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 16, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 17, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 18, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 20, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 21, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 22, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 23, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 24, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 25, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 26, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 27, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 28, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 29, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 30, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 31, month: "May", year: 2022, month_num: 5)
# DateInfo.create(day: 1, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 2, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 3, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 4, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 5, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 6, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 7, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 8, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 9, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 10, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 11, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 12, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 13, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 14, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 15, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 16, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 17, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 18, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 20, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 21, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 22, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 23, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 24, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 25, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 26, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 27, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 28, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 29, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 30, month: "June", year: 2022, month_num: 6)
# DateInfo.create(day: 1, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 2, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 3, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 4, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 5, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 6, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 7, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 8, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 9, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 10, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 11, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 12, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 13, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 14, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 15, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 16, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 17, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 18, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 20, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 21, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 22, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 23, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 24, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 25, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 26, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 27, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 28, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 29, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 30, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 31, month: "July", year: 2022, month_num: 7)
# DateInfo.create(day: 1, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 2, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 3, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 4, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 5, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 6, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 7, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 8, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 9, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 10, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 11, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 12, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 13, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 14, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 15, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 16, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 17, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 18, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 20, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 21, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 22, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 23, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 24, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 25, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 26, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 27, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 28, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 29, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 30, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 31, month: "August", year: 2022, month_num: 8)
# DateInfo.create(day: 1, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 2, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 3, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 4, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 5, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 6, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 7, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 8, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 9, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 10, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 11, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 12, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 13, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 14, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 15, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 16, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 17, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 18, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 20, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 21, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 22, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 23, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 24, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 25, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 26, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 27, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 28, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 29, month: "September", year: 2022, month_num: 9)
# DateInfo.create(day: 30, month: "September", year: 2022, month_num: 9)

