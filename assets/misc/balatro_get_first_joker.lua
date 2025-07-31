-- Guess the first joker card by your seed.

-- Placeholder for our global pseudorandom number
G = {
  GAME = {
    pseudorandom = {
    }
  },
  P_CENTERS = {
    c_base={max = 500, freq = 1, line = 'base', name = "Default Base", pos = {x=1,y=0}, set = "Default", label = 'Base Card', effect = "Base", cost_mult = 1.0, config = {}},

    --Jokers
    j_joker=            {order = 1,  unlocked = true,   start_alerted = true, discovered = true,  blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 2, name = "Joker", pos = {x=0,y=0}, set = "Joker", effect = "Mult", cost_mult = 1.0, config = {mult = 4}},
    j_greedy_joker=     {order = 2,  unlocked = true,   discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Greedy Joker", pos = {x=6,y=1}, set = "Joker", effect = "Suit Mult", cost_mult = 1.0, config = {extra = {s_mult = 3, suit = 'Diamonds'}}},
    j_lusty_joker=      {order = 3,  unlocked = true,   discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Lusty Joker", pos = {x=7,y=1}, set = "Joker", effect = "Suit Mult", cost_mult = 1.0, config = {extra = {s_mult = 3, suit = 'Hearts'}}},
    j_wrathful_joker=   {order = 4,  unlocked = true,   discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Wrathful Joker", pos = {x=8,y=1}, set = "Joker", effect = "Suit Mult", cost_mult = 1.0, config = {extra = {s_mult = 3, suit = 'Spades'}}},
    j_gluttenous_joker= {order = 5,  unlocked = true,   discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Gluttonous Joker", pos = {x=9,y=1}, set = "Joker", effect = "Suit Mult", cost_mult = 1.0, config = {extra = {s_mult = 3, suit = 'Clubs'}}},
    j_jolly=            {order = 6,  unlocked = true,   discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 3, name = "Jolly Joker", pos = {x=2,y=0}, set = "Joker", effect = "Type Mult", cost_mult = 1.0, config = {t_mult = 8, type = 'Pair'}},
    j_zany=             {order = 7,  unlocked = true,   discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Zany Joker", pos = {x=3,y=0}, set = "Joker", effect = "Type Mult", cost_mult = 1.0, config = {t_mult = 12, type = 'Three of a Kind'}},
    j_mad=              {order = 8,  unlocked = true,   discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Mad Joker", pos = {x=4,y=0}, set = "Joker", effect = "Type Mult", cost_mult = 1.0, config = {t_mult = 10, type = 'Two Pair'}},
    j_crazy=            {order = 9,  unlocked = true,   discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Crazy Joker", pos = {x=5,y=0}, set = "Joker", effect = "Type Mult", cost_mult = 1.0, config = {t_mult = 12, type = 'Straight'}},
    j_droll=            {order = 10,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Droll Joker", pos = {x=6,y=0}, set = "Joker", effect = "Type Mult", cost_mult = 1.0, config = {t_mult = 10, type = 'Flush'}},
    j_sly=              {order = 11,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 3, name = "Sly Joker",set = "Joker", config = {t_chips = 50, type = 'Pair'}, pos = {x=0,y=14}},
    j_wily=             {order = 12,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Wily Joker",set = "Joker", config = {t_chips = 100, type = 'Three of a Kind'}, pos = {x=1,y=14}},
    j_clever=           {order = 13,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Clever Joker",set = "Joker", config = {t_chips = 80, type = 'Two Pair'}, pos = {x=2,y=14}},
    j_devious=          {order = 14,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Devious Joker",set = "Joker", config = {t_chips = 100, type = 'Straight'}, pos = {x=3,y=14}},
    j_crafty=           {order = 15,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Crafty Joker",set = "Joker", config = {t_chips = 80, type = 'Flush'}, pos = {x=4,y=14}},

    j_half=             {order = 16,  unlocked = true,   discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Half Joker", pos = {x=7,y=0}, set = "Joker", effect = "Hand Size Mult", cost_mult = 1.0, config = {extra = {mult = 20, size = 3}}},
    j_stencil=          {order = 17,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 8, name = "Joker Stencil", pos = {x=2,y=5}, set = "Joker", effect = "Hand Size Mult", cost_mult = 1.0, config = {}},
    j_four_fingers=     {order = 18,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Four Fingers", pos = {x=6,y=6}, set = "Joker", effect = "", config = {}},
    j_mime=             {order = 19,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 5, name = "Mime", pos = {x=4,y=1}, set = "Joker", effect = "Hand card double", cost_mult = 1.0, config = {extra = 1}},
    j_credit_card=      {order = 20,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 1, name = "Credit Card", pos = {x=5,y=1}, set = "Joker", effect = "Credit", cost_mult = 1.0, config = {extra = 20}},
    j_ceremonial=       {order = 21,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 6, name = "Ceremonial Dagger", pos = {x=5,y=5}, set = "Joker", effect = "", config = {mult = 0}},
    j_banner=           {order = 22,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Banner", pos = {x=1,y=2}, set = "Joker", effect = "Discard Chips", cost_mult = 1.0, config = {extra = 30}},
    j_mystic_summit=    {order = 23,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Mystic Summit", pos = {x=2,y=2}, set = "Joker", effect = "No Discard Mult", cost_mult = 1.0, config = {extra = {mult = 15, d_remaining = 0}}},
    j_marble=           {order = 24,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Marble Joker", pos = {x=3,y=2}, set = "Joker", effect = "Stone card hands", cost_mult = 1.0, config = {extra = 1}},
    j_loyalty_card=     {order = 25,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 5, name = "Loyalty Card", pos = {x=4,y=2}, set = "Joker", effect = "1 in 10 mult", cost_mult = 1.0, config = {extra = {Xmult = 4, every = 5, remaining = "5 remaining"}}},
    j_8_ball=           {order = 26,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "8 Ball", pos = {x=0,y=5}, set = "Joker", effect = "Spawn Tarot", cost_mult = 1.0, config = {extra=4}},
    j_misprint=         {order = 27,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Misprint", pos = {x=6,y=2}, set = "Joker", effect = "Random Mult", cost_mult = 1.0, config = {extra = {max = 23, min = 0}}},
    j_dusk=             {order = 28,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 5, name = "Dusk", pos = {x=4,y=7}, set = "Joker", effect = "", config = {extra = 1}, unlock_condition = {type = '', extra = '', hidden = true}},
    j_raised_fist=      {order = 29,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Raised Fist", pos = {x=8,y=2}, set = "Joker", effect = "Socialized Mult", cost_mult = 1.0, config = {}},
    j_chaos=            {order = 30,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Chaos the Clown", pos = {x=1,y=0}, set = "Joker", effect = "Bonus Rerolls", cost_mult = 1.0, config = {extra = 1}},

    j_fibonacci=        {order = 31,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 8, name = "Fibonacci", pos = {x=1,y=5}, set = "Joker", effect = "Card Mult", cost_mult = 1.0, config = {extra = 8}},
    j_steel_joker=      {order = 32,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Steel Joker", pos = {x=7,y=2}, set = "Joker", effect = "Steel Card Buff", cost_mult = 1.0, config = {extra = 0.2}, enhancement_gate = 'm_steel'},
    j_scary_face=       {order = 33,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Scary Face", pos = {x=2,y=3}, set = "Joker", effect = "Scary Face Cards", cost_mult = 1.0, config = {extra = 30}},
    j_abstract=         {order = 34,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Abstract Joker", pos = {x=3,y=3}, set = "Joker", effect = "Joker Mult", cost_mult = 1.0, config = {extra = 3}},
    j_delayed_grat=     {order = 35,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Delayed Gratification", pos = {x=4,y=3}, set = "Joker", effect = "Discard dollars", cost_mult = 1.0, config = {extra = 2}},
    j_hack=             {order = 36,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Hack", pos = {x=5,y=2}, set = "Joker", effect = "Low Card double", cost_mult = 1.0, config = {extra = 1}},
    j_pareidolia=       {order = 37,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 5, name = "Pareidolia", pos = {x=6,y=3}, set = "Joker", effect = "All face cards", cost_mult = 1.0, config = {}},
    j_gros_michel=      {order = 38,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = false, rarity = 1, cost = 5, name = "Gros Michel", pos = {x=7,y=6}, set = "Joker", effect = "", config = {extra = {odds = 6, mult = 15}}, no_pool_flag = 'gros_michel_extinct'},
    j_even_steven=      {order = 39,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Even Steven", pos = {x=8,y=3}, set = "Joker", effect = "Even Card Buff", cost_mult = 1.0, config = {extra = 4}},
    j_odd_todd=         {order = 40,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Odd Todd", pos = {x=9,y=3}, set = "Joker", effect = "Odd Card Buff", cost_mult = 1.0, config = {extra = 31}},
    j_scholar=          {order = 41,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Scholar", pos = {x=0,y=4}, set = "Joker", effect = "Ace Buff", cost_mult = 1.0, config = {extra = {mult = 4, chips = 20}}},
    j_business=         {order = 42,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Business Card", pos = {x=1,y=4}, set = "Joker", effect = "Face Card dollar Chance", cost_mult = 1.0, config = {extra = 2}},
    j_supernova=        {order = 43,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Supernova", pos = {x=2,y=4}, set = "Joker", effect = "Hand played mult", cost_mult = 1.0, config = {extra = 1}},
    j_ride_the_bus=     {order = 44,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 1, cost = 6, name = "Ride the Bus", pos = {x=1,y=6}, set = "Joker", effect = "", config = {extra = 1}, unlock_condition = {type = 'discard_custom'}},
    j_space=            {order = 45,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 5, name = "Space Joker", pos = {x=3,y=5}, set = "Joker", effect = "Upgrade Hand chance", cost_mult = 1.0, config = {extra = 4}},

    j_egg=              {order = 46,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = 'Egg', pos = {x = 0, y = 10}, set = 'Joker', config = {extra = 3}},
    j_burglar=          {order = 47,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = 'Burglar', pos = {x = 1, y = 10}, set = 'Joker', config = {extra = 3}},
    j_blackboard=       {order = 48,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = 'Blackboard', pos = {x = 2, y = 10}, set = 'Joker', config = {extra = 3}},
    j_runner=           {order = 49,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 1, cost = 5, name = 'Runner', pos = {x = 3, y = 10}, set = 'Joker', config = {extra = {chips = 0, chip_mod = 15}}},
    j_ice_cream=        {order = 50,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = false, rarity = 1, cost = 5, name = 'Ice Cream', pos = {x = 4, y = 10}, set = 'Joker', config = {extra = {chips = 100, chip_mod = 5}}},
    j_dna=              {order = 51,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = 'DNA', pos = {x = 5, y = 10}, set = 'Joker', config = {}},
    j_splash=           {order = 52,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 3, name = 'Splash', pos = {x = 6, y = 10}, set = 'Joker', config = {}},
    j_blue_joker=       {order = 53,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = 'Blue Joker', pos = {x = 7, y = 10}, set = 'Joker', config = {extra = 2}},
    j_sixth_sense=      {order = 54,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = 'Sixth Sense', pos = {x = 8, y = 10}, set = 'Joker', config = {}},
    j_constellation=    {order = 55,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 6, name = 'Constellation', pos = {x = 9, y = 10}, set = 'Joker', config = {extra = 0.1, Xmult = 1}},
    j_hiker=            {order = 56,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 5, name = 'Hiker', pos = {x = 0, y = 11}, set = 'Joker', config = {extra = 5}},
    j_faceless=         {order = 57,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = 'Faceless Joker', pos = {x = 1, y = 11}, set = 'Joker', config = {extra = {dollars = 5, faces = 3}}},
    j_green_joker=      {order = 58,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 1, cost = 4, name = 'Green Joker', pos = {x = 2, y = 11}, set = 'Joker', config = {extra = {hand_add = 1, discard_sub = 1}}},
    j_superposition=    {order = 59,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = 'Superposition', pos = {x = 3, y = 11}, set = 'Joker', config = {}},
    j_todo_list=        {order = 60,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = 'To Do List', pos = {x = 4, y = 11}, set = 'Joker', config = {extra = {dollars = 4, poker_hand = 'High Card'}}},

    j_cavendish=        {order = 61,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = false, rarity = 1, cost = 4, name = "Cavendish", pos = {x=5,y=11}, set = "Joker", cost_mult = 1.0, config = {extra = {odds = 1000, Xmult = 3}}, yes_pool_flag = 'gros_michel_extinct'},
    j_card_sharp=       {order = 62,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Card Sharp", pos = {x=6,y=11}, set = "Joker", cost_mult = 1.0, config = {extra = {Xmult = 3}}},
    j_red_card=         {order = 63,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 1, cost = 5, name = "Red Card", pos = {x=7,y=11}, set = "Joker", cost_mult = 1.0, config = {extra = 3}},
    j_madness=          {order = 64,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 7, name = "Madness", pos = {x=8,y=11}, set = "Joker", cost_mult = 1.0, config = {extra = 0.5}},
    j_square=           {order = 65,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 1, cost = 4, name = "Square Joker", pos = {x=9,y=11}, set = "Joker", cost_mult = 1.0, config = {extra = {chips = 0, chip_mod = 4}}},
    j_seance=           {order = 66,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Seance", pos = {x=0,y=12}, set = "Joker", cost_mult = 1.0, config = {extra = {poker_hand = 'Straight Flush'}}},
    j_riff_raff=        {order = 67,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 6, name = "Riff-raff", pos = {x=1,y=12}, set = "Joker", cost_mult = 1.0, config = {extra = 2}},
    j_vampire=          {order = 68,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 7, name = "Vampire",set = "Joker", config = {extra = 0.1, Xmult = 1},  pos = {x=2,y=12}},
    j_shortcut=         {order = 69,  unlocked = true, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Shortcut",set = "Joker", config = {},  pos = {x=3,y=12}},
    j_hologram=         {order = 70,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 7, name = "Hologram",set = "Joker", config = {extra = 0.25, Xmult = 1},  pos = {x=4,y=12}, soul_pos = {x=2, y=9},},
    j_vagabond=         {order = 71,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "Vagabond",set = "Joker", config = {extra = 4}, pos = {x=5,y=12}},
    j_baron=            {order = 72,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "Baron",set = "Joker", config = {extra = 1.5}, pos = {x=6,y=12}},
    j_cloud_9=          {order = 73,  unlocked = true, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Cloud 9",set = "Joker", config = {extra = 1}, pos = {x=7,y=12}},
    j_rocket=           {order = 74,  unlocked = true, discovered = false, blueprint_compat = false, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 6, name = "Rocket",set = "Joker", config = {extra = {dollars = 1, increase = 2}}, pos = {x=8,y=12}},
    j_obelisk=          {order = 75,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 3, cost = 8, name = "Obelisk",set = "Joker", config = {extra = 0.2, Xmult = 1}, pos = {x=9,y=12}},

    j_midas_mask=       {order = 76,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Midas Mask",set = "Joker", config = {}, pos = {x=0,y=13}},
    j_luchador=         {order = 77,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = false, rarity = 2, cost = 5, name = "Luchador",set = "Joker", config = {}, pos = {x=1,y=13}},
    j_photograph=       {order = 78,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Photograph",set = "Joker", config = {extra = 2}, pos = {x=2,y=13}},
    j_gift=             {order = 79,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Gift Card",set = "Joker", config = {extra = 1}, pos = {x=3,y=13}},
    j_turtle_bean=      {order = 80,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = false, rarity = 2, cost = 6, name = "Turtle Bean",set = "Joker", config = {extra = {h_size = 5, h_mod = 1}}, pos = {x=4,y=13}},
    j_erosion=          {order = 81,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Erosion",set = "Joker", config = {extra = 4}, pos = {x=5,y=13}},
    j_reserved_parking= {order = 82,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 6, name = "Reserved Parking",set = "Joker", config = {extra = {odds = 2, dollars = 1}}, pos = {x=6,y=13}},
    j_mail=             {order = 83,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Mail-In Rebate",set = "Joker", config = {extra = 5}, pos = {x=7,y=13}},
    j_to_the_moon=      {order = 84,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 5, name = "To the Moon",set = "Joker", config = {extra = 1}, pos = {x=8,y=13}},
    j_hallucination=    {order = 85,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Hallucination",set = "Joker", config = {extra = 2}, pos = {x=9,y=13}},
    j_fortune_teller=   {order = 86,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 6, name = "Fortune Teller", pos = {x=7,y=5}, set = "Joker", effect = "", config = {extra = 1}},
    j_juggler=          {order = 87,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Juggler", pos = {x=0,y=1}, set = "Joker", effect = "Hand Size", cost_mult = 1.0, config = {h_size = 1}},
    j_drunkard=         {order = 88,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Drunkard", pos = {x=1,y=1}, set = "Joker", effect = "Discard Size", cost_mult = 1.0, config = {d_size = 1}},
    j_stone=            {order = 89,  unlocked = true,  discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Stone Joker", pos = {x=9,y=0}, set = "Joker", effect = "Stone Card Buff", cost_mult = 1.0, config = {extra = 25}, enhancement_gate = 'm_stone'},
    j_golden=           {order = 90,  unlocked = true,  discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 6, name = "Golden Joker", pos = {x=9,y=2}, set = "Joker", effect = "Bonus dollars", cost_mult = 1.0, config = {extra = 4}},

    j_lucky_cat=        {order = 91,   unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 6, name = "Lucky Cat",set = "Joker", config = {Xmult = 1, extra = 0.25}, pos = {x=5,y=14}, enhancement_gate = 'm_lucky'},
    j_baseball=         {order = 92,   unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "Baseball Card",set = "Joker", config = {extra = 1.5}, pos = {x=6,y=14}},
    j_bull=             {order = 93,   unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Bull",set = "Joker", config = {extra = 2}, pos = {x=7,y=14}},
    j_diet_cola=        {order = 94,   unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = false, rarity = 2, cost = 6, name = "Diet Cola",set = "Joker", config = {}, pos = {x=8,y=14}},
    j_trading=          {order = 95,   unlocked = true, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Trading Card",set = "Joker", config = {extra = 3}, pos = {x=9,y=14}},
    j_flash=            {order = 96,   unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 5, name = "Flash Card",set = "Joker", config = {extra = 2, mult = 0}, pos = {x=0,y=15}},
    j_popcorn=          {order = 97,   unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = false, rarity = 1, cost = 5, name = "Popcorn",set = "Joker", config = {mult = 20, extra = 4}, pos = {x=1,y=15}},
    j_trousers=         {order = 98,   unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 6, name = "Spare Trousers",set = "Joker", config = {extra = 2}, pos = {x=4,y=15}},
    j_ancient=          {order = 99,   unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "Ancient Joker",set = "Joker", config = {extra = 1.5}, pos = {x=7,y=15}},
    j_ramen=            {order = 100,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = false, rarity = 2, cost = 6, name = "Ramen",set = "Joker", config = {Xmult = 2, extra = 0.01}, pos = {x=2,y=15}},
    j_walkie_talkie=    {order = 101,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Walkie Talkie",set = "Joker", config = {extra = {chips = 10, mult = 4}}, pos = {x=8,y=15}},
    j_selzer=           {order = 102,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = false, rarity = 2, cost = 6, name = "Seltzer",set = "Joker", config = {extra = 10}, pos = {x=3,y=15}},
    j_castle=           {order = 103,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 6, name = "Castle",set = "Joker", config = {extra = {chips = 0, chip_mod = 3}}, pos = {x=9,y=15}},
    j_smiley=           {order = 104,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Smiley Face",set = "Joker", config = {extra = 5}, pos = {x=6,y=15}},
    j_campfire=         {order = 105,  unlocked = true, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 9, name = "Campfire",set = "Joker", config = {extra = 0.25}, pos = {x=5,y=15}},

    j_ticket=           {order = 106,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Golden Ticket", pos = {x=5,y=3}, set = "Joker", effect = "dollars for Gold cards", cost_mult = 1.0, config = {extra = 4},unlock_condition = {type = 'hand_contents', extra = 'Gold'}, enhancement_gate = 'm_gold'},
    j_mr_bones=         {order = 107,  unlocked = false, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = false, rarity = 2, cost = 5, name = "Mr. Bones", pos = {x=3,y=4}, set = "Joker", effect = "Prevent Death", cost_mult = 1.0, config = {},unlock_condition = {type = 'c_losses', extra = 5}},
    j_acrobat=          {order = 108,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Acrobat", pos = {x=2,y=1}, set = "Joker", effect = "Shop size", cost_mult = 1.0, config = {extra = 3},unlock_condition = {type = 'c_hands_played', extra = 200}},
    j_sock_and_buskin=  {order = 109,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Sock and Buskin", pos = {x=3,y=1}, set = "Joker", effect = "Face card double", cost_mult = 1.0, config = {extra = 1},unlock_condition = {type = 'c_face_cards_played', extra = 300}},
    j_swashbuckler=     {order = 110,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Swashbuckler", pos = {x=9,y=5}, set = "Joker", effect = "Set Mult", cost_mult = 1.0, config = {mult = 1},unlock_condition = {type = 'c_jokers_sold', extra = 20}},
    j_troubadour=       {order = 111,  unlocked = false, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Troubadour", pos = {x=0,y=2}, set = "Joker", effect = "Hand Size, Plays", cost_mult = 1.0, config = {extra = {h_size = 2, h_plays = -1}}, unlock_condition = {type = 'round_win', extra = 5}},
    j_certificate=      {order = 112,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Certificate", pos = {x=8,y=8}, set = "Joker", effect = "", config = {}, unlock_condition = {type = 'double_gold'}},
    j_smeared=          {order = 113,  unlocked = false, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Smeared Joker", pos = {x=4,y=6}, set = "Joker", effect = "", config = {}, unlock_condition = {type = 'modify_deck', extra = {count = 3, enhancement = 'Wild Card', e_key = 'm_wild'}}},
    j_throwback=        {order = 114,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Throwback", pos = {x=5,y=7}, set = "Joker", effect = "", config = {extra = 0.25}, unlock_condition = {type = 'continue_game'}},
    j_hanging_chad=     {order = 115,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 4, name = "Hanging Chad", pos = {x=9,y=6}, set = "Joker", effect = "", config = {extra = 2}, unlock_condition = {type = 'round_win', extra = 'High Card'}},
    j_rough_gem=        {order = 116,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Rough Gem", pos = {x=9,y=7}, set = "Joker", effect = "", config = {extra = 1}, unlock_condition = {type = 'modify_deck', extra = {count = 30, suit = 'Diamonds'}}},
    j_bloodstone=       {order = 117,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Bloodstone", pos = {x=0,y=8}, set = "Joker", effect = "", config = {extra = {odds = 2, Xmult = 1.5}}, unlock_condition = {type = 'modify_deck', extra = {count = 30, suit = 'Hearts'}}},
    j_arrowhead=        {order = 118,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Arrowhead", pos = {x=1,y=8}, set = "Joker", effect = "", config = {extra = 50}, unlock_condition = {type = 'modify_deck', extra = {count = 30, suit = 'Spades'}}},
    j_onyx_agate=       {order = 119,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Onyx Agate", pos = {x=2,y=8}, set = "Joker", effect = "", config = {extra = 7}, unlock_condition = {type = 'modify_deck', extra = {count = 30, suit = 'Clubs'}}},
    j_glass=            {order = 120,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 2, cost = 6, name = "Glass Joker", pos = {x=1,y=3}, set = "Joker", effect = "Glass Card", cost_mult = 1.0, config = {extra = 0.75, Xmult = 1}, unlock_condition = {type = 'modify_deck', extra = {count = 5, enhancement = 'Glass Card', e_key = 'm_glass'}}, enhancement_gate = 'm_glass'},

    j_ring_master=      {order = 121,  unlocked = false, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 5, name = "Showman", pos = {x=6,y=5}, set = "Joker", effect = "", config = {}, unlock_condition = {type = 'ante_up', ante = 4}},
    j_flower_pot=       {order = 122,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Flower Pot", pos = {x=0,y=6}, set = "Joker", effect = "", config = {extra = 3}, unlock_condition = {type = 'ante_up', ante = 8}},
    j_blueprint=        {order = 123,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 10,name = "Blueprint", pos = {x=0,y=3}, set = "Joker", effect = "Copycat", cost_mult = 1.0, config = {},unlock_condition = {type = 'win_custom'}},
    j_wee=              {order = 124,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = false, eternal_compat = true, rarity = 3, cost = 8, name = "Wee Joker", pos = {x=0,y=0}, set = "Joker", effect = "", config = {extra = {chips = 0, chip_mod = 8}}, unlock_condition = {type = 'win', n_rounds = 18}},
    j_merry_andy=       {order = 125,  unlocked = false, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Merry Andy", pos = {x=8,y=0}, set = "Joker", effect = "", cost_mult = 1.0, config = {d_size = 3, h_size = -1}, unlock_condition = {type = 'win', n_rounds = 12}},
    j_oops=             {order = 126,  unlocked = false, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 4, name = "Oops! All 6s", pos = {x=5,y=6}, set = "Joker", effect = "", config = {}, unlock_condition = {type = 'chip_score', chips = 10000}},
    j_idol=             {order = 127,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "The Idol", pos = {x=6,y=7}, set = "Joker", effect = "", config = {extra = 2}, unlock_condition = {type = 'chip_score', chips = 1000000}},
    j_seeing_double=    {order = 128,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Seeing Double", pos = {x=4,y=4}, set = "Joker", effect = "X1.5 Mult club 7", cost_mult = 1.0, config = {extra = 2},unlock_condition = {type = 'hand_contents', extra = 'four 7 of Clubs'}},
    j_matador=          {order = 129,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Matador", pos = {x=4,y=5}, set = "Joker", effect = "", config = {extra = 8}, unlock_condition = {type = 'round_win'}},
    j_hit_the_road=     {order = 130,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "Hit the Road", pos = {x=8,y=5}, set = "Joker", effect = "Jack Discard Effect", cost_mult = 1.0, config = {extra = 0.5}, unlock_condition = {type = 'discard_custom'}},
    j_duo=              {order = 131,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "The Duo", pos = {x=5,y=4}, set = "Joker", effect = "X1.5 Mult", cost_mult = 1.0, config = {Xmult = 2, type = 'Pair'}, unlock_condition = {type = 'win_no_hand', extra = 'Pair'}},
    j_trio=             {order = 132,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "The Trio", pos = {x=6,y=4}, set = "Joker", effect = "X2 Mult", cost_mult = 1.0, config = {Xmult = 3, type = 'Three of a Kind'}, unlock_condition = {type = 'win_no_hand', extra = 'Three of a Kind'}},
    j_family=           {order = 133,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "The Family", pos = {x=7,y=4}, set = "Joker", effect = "X3 Mult", cost_mult = 1.0, config = {Xmult = 4, type = 'Four of a Kind'}, unlock_condition = {type = 'win_no_hand', extra = 'Four of a Kind'}},
    j_order=            {order = 134,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "The Order", pos = {x=8,y=4}, set = "Joker", effect = "X3 Mult", cost_mult = 1.0, config = {Xmult = 3, type = 'Straight'}, unlock_condition = {type = 'win_no_hand', extra = 'Straight'}},
    j_tribe=            {order = 135,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "The Tribe", pos = {x=9,y=4}, set = "Joker", effect = "X3 Mult", cost_mult = 1.0, config = {Xmult = 2, type = 'Flush'}, unlock_condition = {type = 'win_no_hand', extra = 'Flush'}},

    j_stuntman=         {order = 136,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 7, name = "Stuntman", pos = {x=8,y=6}, set = "Joker", effect = "", config = {extra = {h_size = 2, chip_mod = 250}}, unlock_condition = {type = 'chip_score', chips = 100000000}},
    j_invisible=        {order = 137,  unlocked = false, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = false, rarity = 3, cost = 8, name = "Invisible Joker", pos = {x=1,y=7}, set = "Joker", effect = "", config = {extra = 2}, unlock_condition = {type = 'win_custom'}},
    j_brainstorm=       {order = 138,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 10, name = "Brainstorm", pos = {x=7,y=7}, set = "Joker", effect = "Copycat", config = {}, unlock_condition = {type = 'discard_custom'}},
    j_satellite=        {order = 139,  unlocked = false, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Satellite", pos = {x=8,y=7}, set = "Joker", effect = "", config = {extra = 1}, unlock_condition = {type = 'money', extra = 400}},
    j_shoot_the_moon=   {order = 140,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 1, cost = 5, name = "Shoot the Moon", pos = {x=2,y=6}, set = "Joker", effect = "", config = {extra = 13}, unlock_condition = {type = 'play_all_hearts'}},
    j_drivers_license=  {order = 141,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 7, name = "Driver's License", pos = {x=0,y=7}, set = "Joker", effect = "", config = {extra = 3}, unlock_condition = {type = 'modify_deck', extra = {count = 16, tally = 'total'}}},
    j_cartomancer=      {order = 142,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 6, name = "Cartomancer", pos = {x=7,y=3}, set = "Joker", effect = "Tarot Buff", cost_mult = 1.0, config = {}, unlock_condition = {type = 'discover_amount', tarot_count = 22}},
    j_astronomer=       {order = 143,  unlocked = false, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 8, name = "Astronomer", pos = {x=2,y=7}, set = "Joker", effect = "", config = {}, unlock_condition = {type = 'discover_amount', planet_count = 12}},
    j_burnt=            {order = 144,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 3, cost = 8, name = "Burnt Joker", pos = {x=3,y=7}, set = "Joker", effect = "", config = {h_size = 0, extra = 4}, unlock_condition = {type = 'c_cards_sold', extra = 50}},
    j_bootstraps=       {order = 145,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 2, cost = 7, name = "Bootstraps", pos = {x=9,y=8}, set = "Joker", effect = "", config = {extra = {mult = 2, dollars = 5}}, unlock_condition = {type = 'modify_jokers', extra = {polychrome = true, count = 2}}},
    j_caino=            {order = 146,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 4, cost = 20, name = "Caino", pos = {x=3,y=8}, soul_pos = {x=3, y=9}, set = "Joker", effect = "", config = {extra = 1}, unlock_condition = {type = '', extra = '', hidden = true}},
    j_triboulet=        {order = 147,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 4, cost = 20, name = "Triboulet", pos = {x=4,y=8}, soul_pos = {x=4, y=9}, set = "Joker", effect = "", config = {extra = 2}, unlock_condition = {type = '', extra = '', hidden = true}},
    j_yorick=           {order = 148,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 4, cost = 20, name = "Yorick", pos = {x=5,y=8}, soul_pos = {x=5, y=9}, set = "Joker", effect = "", config = {extra = {xmult = 1, discards = 23}}, unlock_condition = {type = '', extra = '', hidden = true}},
    j_chicot=           {order = 149,  unlocked = false, discovered = false, blueprint_compat = false, perishable_compat = true, eternal_compat = true, rarity = 4, cost = 20, name = "Chicot", pos = {x=6,y=8}, soul_pos = {x=6, y=9}, set = "Joker", effect = "", config = {}, unlock_condition = {type = '', extra = '', hidden = true}},
    j_perkeo=           {order = 150,  unlocked = false, discovered = false, blueprint_compat = true, perishable_compat = true, eternal_compat = true, rarity = 4, cost = 20, name = "Perkeo", pos = {x=7,y=8}, soul_pos = {x=7, y=9}, set = "Joker", effect = "", config = {}, unlock_condition = {type = '', extra = '', hidden = true}},



    --All Consumeables

    --Tarots
    c_fool=             {order = 1,     discovered = false, cost = 3, consumeable = true, name = "The Fool", pos = {x=0,y=0}, set = "Tarot", effect = "Disable Blind Effect", cost_mult = 1.0, config = {}},
    c_magician=         {order = 2,     discovered = false, cost = 3, consumeable = true, name = "The Magician", pos = {x=1,y=0}, set = "Tarot", effect = "Enhance", cost_mult = 1.0, config = {mod_conv = 'm_lucky', max_highlighted = 2}},
    c_high_priestess=   {order = 3,     discovered = false, cost = 3, consumeable = true, name = "The High Priestess", pos = {x=2,y=0}, set = "Tarot", effect = "Round Bonus", cost_mult = 1.0, config = {planets = 2}},
    c_empress=          {order = 4,     discovered = false, cost = 3, consumeable = true, name = "The Empress", pos = {x=3,y=0}, set = "Tarot", effect = "Enhance", cost_mult = 1.0, config = {mod_conv = 'm_mult', max_highlighted = 2}},
    c_emperor=          {order = 5,     discovered = false, cost = 3, consumeable = true, name = "The Emperor", pos = {x=4,y=0}, set = "Tarot", effect = "Round Bonus", cost_mult = 1.0, config = {tarots = 2}},
    c_heirophant=       {order = 6,     discovered = false, cost = 3, consumeable = true, name = "The Hierophant", pos = {x=5,y=0}, set = "Tarot", effect = "Enhance", cost_mult = 1.0, config = {mod_conv = 'm_bonus', max_highlighted = 2}},
    c_lovers=           {order = 7,     discovered = false, cost = 3, consumeable = true, name = "The Lovers", pos = {x=6,y=0}, set = "Tarot", effect = "Enhance", cost_mult = 1.0, config = {mod_conv = 'm_wild', max_highlighted = 1}},
    c_chariot=          {order = 8,     discovered = false, cost = 3, consumeable = true, name = "The Chariot", pos = {x=7,y=0}, set = "Tarot", effect = "Enhance", cost_mult = 1.0, config = {mod_conv = 'm_steel', max_highlighted = 1}},
    c_justice=          {order = 9,     discovered = false, cost = 3, consumeable = true, name = "Justice", pos = {x=8,y=0}, set = "Tarot", effect = "Enhance", cost_mult = 1.0, config = {mod_conv = 'm_glass', max_highlighted = 1}},
    c_hermit=           {order = 10,    discovered = false, cost = 3, consumeable = true, name = "The Hermit", pos = {x=9,y=0}, set = "Tarot", effect = "Dollar Doubler", cost_mult = 1.0, config = {extra = 20}},
    c_wheel_of_fortune= {order = 11,    discovered = false, cost = 3, consumeable = true, name = "The Wheel of Fortune", pos = {x=0,y=1}, set = "Tarot", effect = "Round Bonus", cost_mult = 1.0, config = {extra = 4}},
    c_strength=         {order = 12,    discovered = false, cost = 3, consumeable = true, name = "Strength", pos = {x=1,y=1}, set = "Tarot", effect = "Round Bonus", cost_mult = 1.0, config = {mod_conv = 'up_rank', max_highlighted = 2}},
    c_hanged_man=       {order = 13,    discovered = false, cost = 3, consumeable = true, name = "The Hanged Man", pos = {x=2,y=1}, set = "Tarot", effect = "Card Removal", cost_mult = 1.0, config = {remove_card = true, max_highlighted = 2}},
    c_death=            {order = 14,    discovered = false, cost = 3, consumeable = true, name = "Death", pos = {x=3,y=1}, set = "Tarot", effect = "Card Conversion", cost_mult = 1.0, config = {mod_conv = 'card', max_highlighted = 2, min_highlighted = 2}},
    c_temperance=       {order = 15,    discovered = false, cost = 3, consumeable = true, name = "Temperance", pos = {x=4,y=1}, set = "Tarot", effect = "Joker Payout", cost_mult = 1.0, config = {extra = 50}},
    c_devil=            {order = 16,    discovered = false, cost = 3, consumeable = true, name = "The Devil", pos = {x=5,y=1}, set = "Tarot", effect = "Enhance", cost_mult = 1.0, config = {mod_conv = 'm_gold', max_highlighted = 1}},
    c_tower=            {order = 17,    discovered = false, cost = 3, consumeable = true, name = "The Tower", pos = {x=6,y=1}, set = "Tarot", effect = "Enhance", cost_mult = 1.0, config = {mod_conv = 'm_stone', max_highlighted = 1}},
    c_star=             {order = 18,    discovered = false, cost = 3, consumeable = true, name = "The Star", pos = {x=7,y=1}, set = "Tarot", effect = "Suit Conversion", cost_mult = 1.0, config = {suit_conv = 'Diamonds', max_highlighted = 3}},
    c_moon=             {order = 19,    discovered = false, cost = 3, consumeable = true, name = "The Moon", pos = {x=8,y=1}, set = "Tarot", effect = "Suit Conversion", cost_mult = 1.0, config = {suit_conv = 'Clubs', max_highlighted = 3}},
    c_sun=              {order = 20,    discovered = false, cost = 3, consumeable = true, name = "The Sun", pos = {x=9,y=1}, set = "Tarot", effect = "Suit Conversion", cost_mult = 1.0, config = {suit_conv = 'Hearts', max_highlighted = 3}},
    c_judgement=        {order = 21,    discovered = false, cost = 3, consumeable = true, name = "Judgement", pos = {x=0,y=2}, set = "Tarot", effect = "Random Joker", cost_mult = 1.0, config = {}},
    c_world=            {order = 22,    discovered = false, cost = 3, consumeable = true, name = "The World", pos = {x=1,y=2}, set = "Tarot", effect = "Suit Conversion", cost_mult = 1.0, config = {suit_conv = 'Spades', max_highlighted = 3}},

    --Planets
    c_mercury=          {order = 1,    discovered = false, cost = 3, consumeable = true, freq = 1, name = "Mercury", pos = {x=0,y=3}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Pair'}},
    c_venus=            {order = 2,    discovered = false, cost = 3, consumeable = true, freq = 1, name = "Venus", pos = {x=1,y=3}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Three of a Kind'}},
    c_earth=            {order = 3,    discovered = false, cost = 3, consumeable = true, freq = 1, name = "Earth", pos = {x=2,y=3}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Full House'}},
    c_mars=             {order = 4,    discovered = false, cost = 3, consumeable = true, freq = 1, name = "Mars", pos = {x=3,y=3}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Four of a Kind'}},
    c_jupiter=          {order = 5,    discovered = false, cost = 3, consumeable = true, freq = 1, name = "Jupiter", pos = {x=4,y=3}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Flush'}},
    c_saturn=           {order = 6,    discovered = false, cost = 3, consumeable = true, freq = 1, name = "Saturn", pos = {x=5,y=3}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Straight'}},
    c_uranus=           {order = 7,    discovered = false, cost = 3, consumeable = true, freq = 1, name = "Uranus", pos = {x=6,y=3}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Two Pair'}},
    c_neptune=          {order = 8,    discovered = false, cost = 3, consumeable = true, freq = 1, name = "Neptune", pos = {x=7,y=3}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Straight Flush'}},
    c_pluto=            {order = 9,    discovered = false, cost = 3, consumeable = true, freq = 1, name = "Pluto", pos = {x=8,y=3}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'High Card'}},
    c_planet_x=         {order = 10,   discovered = false, cost = 3, consumeable = true, freq = 1, name = "Planet X", pos = {x=9,y=2}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Five of a Kind', softlock = true}},
    c_ceres=            {order = 11,   discovered = false, cost = 3, consumeable = true, freq = 1, name = "Ceres", pos = {x=8,y=2}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Flush House', softlock = true}},
    c_eris=             {order = 12,   discovered = false, cost = 3, consumeable = true, freq = 1, name = "Eris", pos = {x=3,y=2}, set = "Planet", effect = "Hand Upgrade", cost_mult = 1.0, config = {hand_type = 'Flush Five', softlock = true}},

    --Spectral
    c_familiar=         {order = 1,    discovered = false, cost = 4, consumeable = true, name = "Familiar", pos = {x=0,y=4}, set = "Spectral", config = {remove_card = true, extra = 3}},
    c_grim=             {order = 2,    discovered = false, cost = 4, consumeable = true, name = "Grim",     pos = {x=1,y=4}, set = "Spectral", config = {remove_card = true, extra = 2}},
    c_incantation=      {order = 3,    discovered = false, cost = 4, consumeable = true, name = "Incantation", pos = {x=2,y=4}, set = "Spectral", config = {remove_card = true, extra = 4}},
    c_talisman=         {order = 4,    discovered = false, cost = 4, consumeable = true, name = "Talisman", pos = {x=3,y=4}, set = "Spectral", config = {extra = 'Gold', max_highlighted = 1}},
    c_aura=             {order = 5,    discovered = false, cost = 4, consumeable = true, name = "Aura", pos = {x=4,y=4}, set = "Spectral", config = {}},
    c_wraith=           {order = 6,    discovered = false, cost = 4, consumeable = true, name = "Wraith", pos = {x=5,y=4}, set = "Spectral", config = {}},
    c_sigil=            {order = 7,    discovered = false, cost = 4, consumeable = true, name = "Sigil", pos = {x=6,y=4}, set = "Spectral", config = {}},
    c_ouija=            {order = 8,    discovered = false, cost = 4, consumeable = true, name = "Ouija", pos = {x=7,y=4}, set = "Spectral", config = {}},
    c_ectoplasm=        {order = 9,    discovered = false, cost = 4, consumeable = true, name = "Ectoplasm", pos = {x=8,y=4}, set = "Spectral", config = {}},
    c_immolate=         {order = 10,   discovered = false, cost = 4, consumeable = true, name = "Immolate", pos = {x=9,y=4}, set = "Spectral", config = {remove_card = true, extra = {destroy = 5, dollars = 20}}},
    c_ankh=             {order = 11,   discovered = false, cost = 4, consumeable = true, name = "Ankh", pos = {x=0,y=5}, set = "Spectral", config = {extra = 2}},
    c_deja_vu=          {order = 12,   discovered = false, cost = 4, consumeable = true, name = "Deja Vu", pos = {x=1,y=5}, set = "Spectral", config = {extra = 'Red', max_highlighted = 1}},
    c_hex=              {order = 13,   discovered = false, cost = 4, consumeable = true, name = "Hex", pos = {x=2,y=5}, set = "Spectral", config = {extra = 2}},
    c_trance=           {order = 14,   discovered = false, cost = 4, consumeable = true, name = "Trance", pos = {x=3,y=5}, set = "Spectral", config = {extra = 'Blue', max_highlighted = 1}},
    c_medium=           {order = 15,   discovered = false, cost = 4, consumeable = true, name = "Medium", pos = {x=4,y=5}, set = "Spectral", config = {extra = 'Purple', max_highlighted = 1}},
    c_cryptid=          {order = 16,   discovered = false, cost = 4, consumeable = true, name = "Cryptid", pos = {x=5,y=5}, set = "Spectral", config = {extra = 2, max_highlighted = 1}},
    c_soul=             {order = 17,   discovered = false, cost = 4, consumeable = true, name = "The Soul", pos = {x=2,y=2}, set = "Spectral", effect = "Unlocker", config = {}, hidden = true},
    c_black_hole=       {order = 18,   discovered = false, cost = 4, consumeable = true, name = "Black Hole", pos = {x=9,y=3}, set = "Spectral", config = {}, hidden = true},

    --Vouchers

    v_overstock_norm =  {order = 1,     discovered = false, unlocked = true , available = true, cost = 10, name = "Overstock", pos = {x=0,y=0}, set = "Voucher", config = {}},
    v_clearance_sale=   {order = 3,     discovered = false, unlocked = true , available = true, cost = 10, name = "Clearance Sale", pos = {x=3,y=0}, set = "Voucher", config = {extra = 25}},
    v_hone=             {order = 5,     discovered = false, unlocked = true , available = true, cost = 10, name = "Hone", pos = {x=4,y=0}, set = "Voucher", config = {extra = 2}},
    v_reroll_surplus=   {order = 7,    discovered = false, unlocked = true , available = true, cost = 10, name = "Reroll Surplus", pos = {x=0,y=2}, set = "Voucher", config = {extra = 2}},
    v_crystal_ball=     {order = 9,    discovered = false, unlocked = true , available = true, cost = 10, name = "Crystal Ball", pos = {x=2,y=2}, set = "Voucher", config = {extra = 3}},
    v_telescope=        {order = 11,    discovered = false, unlocked = true , available = true, cost = 10, name = "Telescope", pos = {x=3,y=2}, set = "Voucher", config = {extra = 3}},
    v_grabber=          {order = 13,    discovered = false, unlocked = true , available = true, cost = 10, name = "Grabber", pos = {x=5,y=0}, set = "Voucher", config = {extra = 1}},
    v_wasteful=         {order = 15,    discovered = false, unlocked = true , available = true, cost = 10, name = "Wasteful", pos = {x=6,y=0}, set = "Voucher", config = {extra = 1}},
    v_tarot_merchant=   {order = 17,     discovered = false, unlocked = true , available = true, cost = 10, name = "Tarot Merchant", pos = {x=1,y=0}, set = "Voucher", config = {extra = 9.6/4, extra_disp = 2}},
    v_planet_merchant=  {order = 19,     discovered = false, unlocked = true , available = true, cost = 10, name = "Planet Merchant", pos = {x=2,y=0}, set = "Voucher", config = {extra = 9.6/4, extra_disp = 2}},
    v_seed_money=       {order = 21,    discovered = false, unlocked = true , available = true, cost = 10, name = "Seed Money", pos = {x=1,y=2}, set = "Voucher", config = {extra = 50}},
    v_blank=            {order = 23,    discovered = false, unlocked = true , available = true, cost = 10, name = "Blank", pos = {x=7,y=0}, set = "Voucher", config = {extra = 5}},
    v_magic_trick=      {order = 25,    discovered = false, unlocked = true , available = true, cost = 10, name = "Magic Trick", pos = {x=4,y=2}, set = "Voucher", config = {extra = 4}},
    v_hieroglyph=       {order = 27,    discovered = false, unlocked = true , available = true, cost = 10, name = "Hieroglyph", pos = {x=5,y=2}, set = "Voucher", config = {extra = 1}},
    v_directors_cut=    {order = 29,    discovered = false, unlocked = true , available = true, cost = 10, name = "Director's Cut", pos = {x=6,y=2}, set = "Voucher", config = {extra = 10}},
    v_paint_brush=      {order = 31,    discovered = false, unlocked = true , available = true, cost = 10, name = "Paint Brush", pos = {x=7,y=2}, set = "Voucher", config = {extra = 1}},

    v_overstock_plus=   {order = 2,     discovered = false, unlocked = false, available = true, cost = 10, name = "Overstock Plus", pos = {x=0,y=1}, set = "Voucher", config = {}, requires = {'v_overstock_norm'},unlock_condition = {type = 'c_shop_dollars_spent', extra = 2500}},
    v_liquidation=      {order = 4,     discovered = false, unlocked = false, available = true, cost = 10, name = "Liquidation", pos = {x=3,y=1}, set = "Voucher", config = {extra = 50}, requires = {'v_clearance_sale'},unlock_condition = {type = 'run_redeem', extra = 10}},
    v_glow_up=          {order = 6,    discovered = false, unlocked = false, available = true,  cost = 10, name = "Glow Up", pos = {x=4,y=1}, set = "Voucher", config = {extra = 4}, requires = {'v_hone'},unlock_condition = {type = 'have_edition', extra = 5}},
    v_reroll_glut=      {order = 8,    discovered = false, unlocked = false, available = true,  cost = 10, name = "Reroll Glut", pos = {x=0,y=3}, set = "Voucher", config = {extra = 2}, requires = {'v_reroll_surplus'},unlock_condition = {type = 'c_shop_rerolls', extra = 100}},
    v_omen_globe=       {order = 10,    discovered = false, unlocked = false, available = true, cost = 10, name = "Omen Globe", pos = {x=2,y=3}, set = "Voucher", config = {extra = 4}, requires = {'v_crystal_ball'},unlock_condition = {type = 'c_tarot_reading_used', extra = 25}},
    v_observatory=      {order = 12,    discovered = false, unlocked = false, available = true, cost = 10, name = "Observatory", pos = {x=3,y=3}, set = "Voucher", config = {extra = 1.5}, requires = {'v_telescope'},unlock_condition = {type = 'c_planetarium_used', extra = 25}},
    v_nacho_tong=       {order = 14,    discovered = false, unlocked = false, available = true, cost = 10, name = "Nacho Tong", pos = {x=5,y=1}, set = "Voucher", config = {extra = 1}, requires = {'v_grabber'},unlock_condition = {type = 'c_cards_played', extra = 2500}},
    v_recyclomancy=     {order = 16,    discovered = false, unlocked = false, available = true, cost = 10, name = "Recyclomancy", pos = {x=6,y=1}, set = "Voucher", config = {extra = 1}, requires = {'v_wasteful'},unlock_condition = {type = 'c_cards_discarded', extra = 2500}},
    v_tarot_tycoon=     {order = 18,     discovered = false, unlocked = false, available = true,cost = 10, name = "Tarot Tycoon", pos = {x=1,y=1}, set = "Voucher", config = {extra = 32/4, extra_disp = 4}, requires = {'v_tarot_merchant'},unlock_condition = {type = 'c_tarots_bought', extra = 50}},
    v_planet_tycoon=    {order = 20,     discovered = false, unlocked = false, available = true,cost = 10, name = "Planet Tycoon", pos = {x=2,y=1}, set = "Voucher", config = {extra = 32/4, extra_disp = 4}, requires = {'v_planet_merchant'},unlock_condition = {type = 'c_planets_bought', extra = 50}},
    v_money_tree=       {order = 22,    discovered = false, unlocked = false, available = true, cost = 10, name = "Money Tree", pos = {x=1,y=3}, set = "Voucher", config = {extra = 100}, requires = {'v_seed_money'},unlock_condition = {type = 'interest_streak', extra = 10}},
    v_antimatter=       {order = 24,    discovered = false, unlocked = false, available = true, cost = 10, name = "Antimatter", pos = {x=7,y=1}, set = "Voucher", config = {extra = 15}, requires = {'v_blank'},unlock_condition = {type = 'blank_redeems', extra = 10}},
    v_illusion=         {order = 26,    discovered = false, unlocked = false, available = true, cost = 10, name = "Illusion", pos = {x=4,y=3}, set = "Voucher", config = {extra = 4}, requires = {'v_magic_trick'},unlock_condition = {type = 'c_playing_cards_bought', extra = 20}},
    v_petroglyph=       {order = 28,    discovered = false, unlocked = false, available = true, cost = 10, name = "Petroglyph", pos = {x=5,y=3}, set = "Voucher", config = {extra = 1}, requires = {'v_hieroglyph'},unlock_condition = {type = 'ante_up', ante = 12, extra = 12}},
    v_retcon=           {order = 30,    discovered = false, unlocked = false, available = true, cost = 10, name = "Retcon", pos = {x=6,y=3}, set = "Voucher", config = {extra = 10}, requires = {'v_directors_cut'},unlock_condition = {type = 'blind_discoveries', extra = 25}},
    v_palette=          {order = 32,    discovered = false, unlocked = false, available = true, cost = 10, name = "Palette", pos = {x=7,y=3}, set = "Voucher", config = {extra = 1}, requires = {'v_paint_brush'},unlock_condition = {type = 'min_hand_size', extra = 5}},

    --Backs

    b_red=              {name = "Red Deck",         stake = 1, unlocked = true,order = 1, pos =   {x=0,y=0}, set = "Back", config = {discards = 1}, discovered = true},
    b_blue=             {name = "Blue Deck",        stake = 1, unlocked = false,order = 2, pos =  {x=0,y=2}, set = "Back", config = {hands = 1}, unlock_condition = {type = 'discover_amount', amount = 20}},
    b_yellow=           {name = "Yellow Deck",      stake = 1, unlocked = false,order = 3, pos =  {x=1,y=2}, set = "Back", config = {dollars = 10}, unlock_condition = {type = 'discover_amount', amount = 50}},
    b_green=            {name = "Green Deck",       stake = 1, unlocked = false,order = 4, pos =  {x=2,y=2}, set = "Back", config = {extra_hand_bonus = 2, extra_discard_bonus = 1, no_interest = true}, unlock_condition = {type = 'discover_amount', amount = 75}},
    b_black=            {name = "Black Deck",       stake = 1, unlocked = false,order = 5, pos =  {x=3,y=2}, set = "Back", config = {hands = -1, joker_slot = 1}, unlock_condition = {type = 'discover_amount', amount = 100}},
    b_magic=            {name = "Magic Deck",       stake = 1, unlocked = false,order = 6, pos =  {x=0,y=3}, set = "Back", config = {voucher = 'v_crystal_ball', consumables = {'c_fool', 'c_fool'}}, unlock_condition = {type = 'win_deck', deck = 'b_red'}},
    b_nebula=           {name = "Nebula Deck",      stake = 1, unlocked = false,order = 7, pos =  {x=3,y=0}, set = "Back", config = {voucher = 'v_telescope', consumable_slot = -1}, unlock_condition = {type = 'win_deck', deck = 'b_blue'}},
    b_ghost=            {name = "Ghost Deck",       stake = 1, unlocked = false,order = 8, pos =  {x=6,y=2}, set = "Back", config = {spectral_rate = 2, consumables = {'c_hex'}}, unlock_condition = {type = 'win_deck', deck = 'b_yellow'}},
    b_abandoned=        {name = "Abandoned Deck",   stake = 1, unlocked = false,order = 9, pos =  {x=3,y=3}, set = "Back", config = {remove_faces = true}, unlock_condition = {type = 'win_deck', deck = 'b_green'}},
    b_checkered=        {name = "Checkered Deck",   stake = 1, unlocked = false,order = 10,pos =  {x=1,y=3}, set = "Back", config = {}, unlock_condition = {type = 'win_deck', deck = 'b_black'}},
    b_zodiac=           {name = "Zodiac Deck",      stake = 1, unlocked = false,order = 11, pos = {x=3,y=4}, set = "Back", config = {vouchers = {'v_tarot_merchant','v_planet_merchant', 'v_overstock_norm'}}, unlock_condition = {type = 'win_stake', stake = 2}},
    b_painted=          {name = "Painted Deck",     stake = 1, unlocked = false,order = 12, pos = {x=4,y=3}, set = "Back", config = {hand_size = 2, joker_slot = -1}, unlock_condition = {type = 'win_stake', stake=3}},
    b_anaglyph=         {name = "Anaglyph Deck",    stake = 1, unlocked = false,order = 13, pos = {x=2,y=4}, set = "Back", config = {}, unlock_condition = {type = 'win_stake', stake = 4}},
    b_plasma=           {name = "Plasma Deck",      stake = 1, unlocked = false,order = 14, pos = {x=4,y=2}, set = "Back", config = {ante_scaling = 2}, unlock_condition = {type = 'win_stake', stake=5}},
    b_erratic=          {name = "Erratic Deck",     stake = 1, unlocked = false,order = 15, pos = {x=2,y=3}, set = "Back", config = {randomize_rank_suit = true}, unlock_condition = {type = 'win_stake', stake=7}},

    b_challenge=        {name = "Challenge Deck",   stake = 1, unlocked = true,order = 16, pos = {x=0,y=4}, set = "Back", config = {}, omit = true},


    --All enhanced card types here
    m_bonus =   {max = 500, order = 2, name = "Bonus", set = "Enhanced", pos = {x=1,y=1}, effect = "Bonus Card", label = "Bonus Card", config = {bonus=30}},
    m_mult =    {max = 500, order = 3, name = "Mult", set = "Enhanced", pos = {x=2,y=1}, effect = "Mult Card", label = "Mult Card", config = {mult = 4}},
    m_wild =    {max = 500, order = 4, name = "Wild Card", set = "Enhanced", pos = {x=3,y=1}, effect = "Wild Card", label = "Wild Card", config = {}},
    m_glass =   {max = 500, order = 5, name = "Glass Card", set = "Enhanced", pos = {x=5,y=1}, effect = "Glass Card", label = "Glass Card", config = {Xmult = 2, extra = 4}},
    m_steel =   {max = 500, order = 6, name = "Steel Card", set = "Enhanced", pos = {x=6,y=1}, effect = "Steel Card", label = "Steel Card", config = {h_x_mult = 1.5}},
    m_stone =   {max = 500, order = 7, name = "Stone Card", set = "Enhanced", pos = {x=5,y=0}, effect = "Stone Card", label = "Stone Card", config = {bonus = 50}},
    m_gold =    {max = 500, order = 8, name = "Gold Card", set = "Enhanced", pos = {x=6,y=0}, effect = "Gold Card", label = "Gold Card", config = {h_dollars = 3}},
    m_lucky =   {max = 500, order = 9, name = "Lucky Card", set = "Enhanced", pos = {x=4,y=1}, effect = "Lucky Card", label = "Lucky Card", config = {mult=20, p_dollars = 20}},

    --editions
    e_base =       {order = 1,  unlocked = true, discovered = false, name = "Base", pos = {x=0,y=0}, atlas = 'Joker', set = "Edition", config = {}},
    e_foil =       {order = 2,  unlocked = true, discovered = false, name = "Foil", pos = {x=0,y=0}, atlas = 'Joker', set = "Edition", config = {extra = 50}},
    e_holo =       {order = 3,  unlocked = true, discovered = false, name = "Holographic", pos = {x=0,y=0}, atlas = 'Joker', set = "Edition", config = {extra = 10}},
    e_polychrome = {order = 4,  unlocked = true, discovered = false, name = "Polychrome", pos = {x=0,y=0}, atlas = 'Joker', set = "Edition", config = {extra = 1.5}},
    e_negative =   {order = 5,  unlocked = true, discovered = false, name = "Negative", pos = {x=0,y=0}, atlas = 'Joker', set = "Edition", config = {extra = 1}},

    --booster packs
    p_arcana_normal_1 =         {order = 1,  discovered = false, name = "Arcana Pack", weight = 1, kind = 'Arcana', cost = 4, pos = {x=0,y=0}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_arcana_normal_2 =         {order = 2,  discovered = false, name = "Arcana Pack", weight = 1, kind = 'Arcana', cost = 4, pos = {x=1,y=0}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_arcana_normal_3 =         {order = 3,  discovered = false, name = "Arcana Pack", weight = 1, kind = 'Arcana', cost = 4, pos = {x=2,y=0}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_arcana_normal_4 =         {order = 4,  discovered = false, name = "Arcana Pack", weight = 1, kind = 'Arcana', cost = 4, pos = {x=3,y=0}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_arcana_jumbo_1 =          {order = 5,  discovered = false, name = "Jumbo Arcana Pack", weight = 1, kind = 'Arcana', cost = 6, pos = {x=0,y=2}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 1}},
    p_arcana_jumbo_2 =          {order = 6,  discovered = false, name = "Jumbo Arcana Pack", weight = 1, kind = 'Arcana', cost = 6, pos = {x=1,y=2}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 1}},
    p_arcana_mega_1 =           {order = 7,  discovered = false, name = "Mega Arcana Pack", weight = 0.25, kind = 'Arcana', cost = 8, pos = {x=2,y=2}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 2}},
    p_arcana_mega_2 =           {order = 8,  discovered = false, name = "Mega Arcana Pack", weight = 0.25, kind = 'Arcana', cost = 8, pos = {x=3,y=2}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 2}},
    p_celestial_normal_1 =      {order = 9,  discovered = false, name = "Celestial Pack", weight = 1, kind = 'Celestial', cost = 4, pos = {x=0,y=1}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_celestial_normal_2 =      {order = 10, discovered = false, name = "Celestial Pack", weight = 1, kind = 'Celestial', cost = 4, pos = {x=1,y=1}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_celestial_normal_3 =      {order = 11, discovered = false, name = "Celestial Pack", weight = 1, kind = 'Celestial', cost = 4, pos = {x=2,y=1}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_celestial_normal_4 =      {order = 12, discovered = false, name = "Celestial Pack", weight = 1, kind = 'Celestial', cost = 4, pos = {x=3,y=1}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_celestial_jumbo_1 =       {order = 13, discovered = false, name = "Jumbo Celestial Pack", weight = 1, kind = 'Celestial', cost = 6, pos = {x=0,y=3}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 1}},
    p_celestial_jumbo_2 =       {order = 14, discovered = false, name = "Jumbo Celestial Pack", weight = 1, kind = 'Celestial', cost = 6, pos = {x=1,y=3}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 1}},
    p_celestial_mega_1 =        {order = 15, discovered = false, name = "Mega Celestial Pack", weight = 0.25, kind = 'Celestial', cost = 8, pos = {x=2,y=3}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 2}},
    p_celestial_mega_2 =        {order = 16, discovered = false, name = "Mega Celestial Pack", weight = 0.25, kind = 'Celestial', cost = 8, pos = {x=3,y=3}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 2}},
    p_spectral_normal_1 =       {order = 29, discovered = false, name = "Spectral Pack", weight = 0.3, kind = 'Spectral', cost = 4, pos = {x=0,y=4}, atlas = 'Booster', set = 'Booster', config = {extra = 2, choose = 1}},
    p_spectral_normal_2 =       {order = 30, discovered = false, name = "Spectral Pack", weight = 0.3, kind = 'Spectral', cost = 4, pos = {x=1,y=4}, atlas = 'Booster', set = 'Booster', config = {extra = 2, choose = 1}},
    p_spectral_jumbo_1 =        {order = 31, discovered = false, name = "Jumbo Spectral Pack", weight = 0.3, kind = 'Spectral', cost = 6, pos = {x=2,y=4}, atlas = 'Booster', set = 'Booster', config = {extra = 4, choose = 1}},
    p_spectral_mega_1 =         {order = 32, discovered = false, name = "Mega Spectral Pack", weight = 0.07, kind = 'Spectral', cost = 8, pos = {x=3,y=4}, atlas = 'Booster', set = 'Booster', config = {extra = 4, choose = 2}},
    p_standard_normal_1 =       {order = 17, discovered = false, name = "Standard Pack", weight = 1, kind = 'Standard', cost = 4, pos = {x=0,y=6}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_standard_normal_2 =       {order = 18, discovered = false, name = "Standard Pack", weight = 1, kind = 'Standard', cost = 4, pos = {x=1,y=6}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_standard_normal_3 =       {order = 19, discovered = false, name = "Standard Pack", weight = 1, kind = 'Standard', cost = 4, pos = {x=2,y=6}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_standard_normal_4 =       {order = 20, discovered = false, name = "Standard Pack", weight = 1, kind = 'Standard', cost = 4, pos = {x=3,y=6}, atlas = 'Booster', set = 'Booster', config = {extra = 3, choose = 1}},
    p_standard_jumbo_1 =        {order = 21, discovered = false, name = "Jumbo Standard Pack", weight = 1, kind = 'Standard', cost = 6, pos = {x=0,y=7}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 1}},
    p_standard_jumbo_2 =        {order = 22, discovered = false, name = "Jumbo Standard Pack", weight = 1, kind = 'Standard', cost = 6, pos = {x=1,y=7}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 1}},
    p_standard_mega_1 =         {order = 23, discovered = false, name = "Mega Standard Pack", weight = 0.25, kind = 'Standard', cost = 8, pos = {x=2,y=7}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 2}},
    p_standard_mega_2 =         {order = 24, discovered = false, name = "Mega Standard Pack", weight = 0.25, kind = 'Standard', cost = 8, pos = {x=3,y=7}, atlas = 'Booster', set = 'Booster', config = {extra = 5, choose = 2}},
    p_buffoon_normal_1 =        {order = 25, discovered = false, name = "Buffoon Pack", weight = 0.6, kind = 'Buffoon', cost = 4, pos = {x=0,y=8}, atlas = 'Booster', set = 'Booster', config = {extra = 2, choose = 1}},
    p_buffoon_normal_2 =        {order = 26, discovered = false, name = "Buffoon Pack", weight = 0.6, kind = 'Buffoon', cost = 4, pos = {x=1,y=8}, atlas = 'Booster', set = 'Booster', config = {extra = 2, choose = 1}},
    p_buffoon_jumbo_1 =         {order = 27, discovered = false, name = "Jumbo Buffoon Pack", weight = 0.6, kind = 'Buffoon', cost = 6, pos = {x=2,y=8}, atlas = 'Booster', set = 'Booster', config = {extra = 4, choose = 1}},
    p_buffoon_mega_1 =          {order = 28, discovered = false, name = "Mega Buffoon Pack", weight = 0.15, kind = 'Buffoon', cost = 8, pos = {x=3,y=8}, atlas = 'Booster', set = 'Booster', config = {extra = 4, choose = 2}},

    --Extras
    soul={pos = {x=0,y=1}},
    undiscovered_joker={pos = {x=5,y=3}},
    undiscovered_tarot={pos = {x=6,y=3}},
  }
}

-- The three functions below are copied from `misc_functions.lua`:
function pseudohash(str)
  if true then
    local num = 1
    for i=#str, 1, -1 do
      num = ((1.1239285023/num)*string.byte(str, i)*math.pi + math.pi*i)%1
    end
    return num
  else
    str = string.sub(string.format("%-16s",str), 1, 24)

    local h = 0

    for i=#str, 1, -1 do
      h = bit.bxor(h, bit.lshift(h, 7) + bit.rshift(h, 3) + string.byte(str, i))
    end
    return tonumber(string.format("%.13f",math.sqrt(math.abs(h))%1))
  end
end

function pseudoseed(key, predict_seed)
  if key == 'seed' then return math.random() end

  if predict_seed then
    local _pseed = pseudohash(key..(predict_seed or ''))
    _pseed = math.abs(tonumber(string.format("%.13f", (2.134453429141+_pseed*1.72431234)%1)))
    return (_pseed + (pseudohash(predict_seed) or 0))/2
  end

  if not G.GAME.pseudorandom[key] then
    G.GAME.pseudorandom[key] = pseudohash(key..(G.GAME.pseudorandom.seed or ''))
  end

  G.GAME.pseudorandom[key] = math.abs(tonumber(string.format("%.13f", (2.134453429141+G.GAME.pseudorandom[key]*1.72431234)%1)))
  return (G.GAME.pseudorandom[key] + (G.GAME.pseudorandom.hashed_seed or 0))/2
end

function pseudorandom(seed, min, max)
  if type(seed) == 'string' then seed = pseudoseed(seed) end
  math.randomseed(seed)
  if min and max then return math.random(min, max)
  else return math.random() end
end

-- Set the global seed.
function setseed(s)
  G.GAME.pseudorandom.seed = s
  G.GAME.pseudorandom.hashed_seed = pseudohash(s)
end

if arg[1] and #arg[1] == 8 then
  setseed(arg[1])
else
  io.stderr:write("Please provide a valid seed!\n")
  os.exit(1)
end

-- choose rarity
rarity = pseudorandom('rarity1buf')
pool = {}
rarity = (rarity > 0.95 and 3) or (rarity > 0.7 and 2) or 1

-- get joker pool
for k, v in pairs(G.P_CENTERS) do
  if string.sub(k, 1, 2) == "j_" and v.rarity == rarity then
    pool[#pool+1] = {order = v.order, name=v.name}
  end
end
table.sort(pool, function (a, b) return a.order < b.order end)

-- choose joker
joker = pool[pseudorandom('Joker'..rarity..'buf1', 1, #pool)]

print("The first joker in the first buffoon pack (at ante 1) is ["..joker.name..'].')
