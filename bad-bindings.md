# Document Overview #

Originally just meant to hold notes on my game idea, as I worked I fell into the common game developer pitfall of overscoping. So now, this document holds a few rough ideas at the top with the inspiration and how before becoming a more in-depth game design document detailing a robust game. However as this was made before any development, all ideas may not actually exist in the final game, since I wanted to work on something small and simple. That said, I will attempt to make this a living document so that once the game is finished, it doesn't require a rewrite for the GDD.

# Inspiring Idea #

Make a gamer understand how it feels when someone that doesn't game tries to enter the gaming world by making the button bindings unintuitive to work with (note: do NOT make them intentionally frustrating to use once learned, just unintuitive and potentially annoying).

# How #

3 main player control schemes that map to characters/forms, none of which have everything required to win the game and all of which have unintuitive and different controls. Not a single button should map to the same action across different forms.

*Important* make an easy and universal button to open the key bindings menu. This menu should be intuitive.

# Game Loop #

Player must explore and interact with a very cliche RPG world that has monsters to fight, places to explore, and resources to exploit.

# Story #

A small Hamlet has survived being in the middle of 4 terrible regions thanks to a sceptor that maintains a barrier around it. However, in an act of greed, a ne'er-do-well stole the sceptor and broke it up into 4 pieces to hide in the surrounding regions to act as his hidden treasure. The 3 characters, who were pursuing the ne'er-do-well after the villain hexed their bodies into 1, comes across the Hamlet and must help the settlers.

# Characters #

## Explorer ##

Offering high mobility and various devices that allow difficult terrain traversal possible, the Explorer is the key to making the way around the map.

The Explorer is a chipper halfling man that was a professional geologist and athlete hiking around the Hamlet before becoming merged with the Fighter and the Worker. While no good in a fight, the Explorer is adept at avoiding danger and navigating the wilderness.

### Actions ###

- **Pole Vault**: Allows the Explorer to jump great heights over small gaps, up ledges, and above enemies, moving the Explorer in a given direction at the same time.
- **Grappling Hook**: Allows the Explorer to span large gaps so long as there is a hook point at the other side, moving quickly towards the hook point.
- **Dodge**: May be removed from the game.

### Bindings ###

- Movement:             ABXY (Potential redo to Right thumbstick if actually just terrible)
- Pole Vault:           Left Trigger
- Grappling Hook:       Right Trigger
- Dodge:                Right Thumbstick Click (Potential removal)

## Fighter ## 

Offering high combat capabilities, the fighter makes light work of the enemies scattered across the map.

The Fighter is a gruff dwarven woman who was a travelling mercenary before becoming merged with the Explorer and the Worker. She moves much slower than the Explorer (much to her chagrin), but holds her own in a fight thanks to her trusty spear, shield, and gun.

### Actions ###

- **Shield**: Requiring no maintenance, the shield is a defensive tool the Fighter will use automatically when moving away from an opponent. Lasting for a short time after movement, any attempt to attack the Fighter from the direction opposite of which she moved will be completely stopped.
- **Spear**: Requiring no maintenance, the spear is a melee weapon that the Fighter will thrust out at anyone foolish enough to get to close. When wielded with her shield, it becomes very difficult to fight back. The spear can be thrust out in any direction the Fighter is not moving in, and extends one body-length out from her body. It can only hit one enemy at a time.
- **Gun**: Requiring created bullets to maintain, the gun is a powerful ranged weapon that will kill most enemies in just a single shot. Built like a hand cannon, even the Fighter needs two hands to wield this unruly weapon (no shield or movement during use). However, she can use it in any direction once she stops moving and it will fire out in a line until it reaches a target (who will usually die).

### Bindings ###

- Movement:             D-Pad
- Spear:                Move + ABXY
- Gun:                  ABXY
- Shield:               (Part of movement)

## Worker ##

Offering high resource interactability, the worker is vital in gathering resources and using them.

The Worker is a large, warm, loud human man that works and laughs with gusto. Unable to move after the magics that merged the characters, the Worker relies on the Explorer and Fighter for getting them to and from Action Points, and protecting them against danger. In return, the Worker provides the invaluable services of food preparation and smithing.

### Gathering/Creating ###

The Worker can begin gathering or creating by being located one or more action points. These action points can be navigated around with and began. Once begun, the Worker can then interact as follows:

- **Gathering**: a simple quick-time event that yields resources.
- **Creating**: A menu-based system with tabs that each have a set of quick-time events that take resources and yield items. 

### Action Points ###

Gathering:
- Plant gathering: Provides a ready-to-be eaten food source that can be cooked for greater effect. This may be a fruit or a vegetable, which both have 1 healing value.
- Fishing: Provides fish. Fish must be cooked to be eaten. For the purposes of cooking, the raw healing value of fish is 2.
- Minerals: Provides ore to be used in crafting.

Creating:
- Kitchen: Located in the Hamlet's restaurant. Allows food items to be cooked into recipes that have differing benefits. Cooking an item by itself increases the health gained from eating by 1. Cooking 2 different items together combine their raw healing effect and add 3 healing. Cooking all 3 food items together combine their raw healing effect and add 5 healing. 
- Smithy: Located in the Hamlet's forge. Allows ore to be crafted into bullets (more items may be added later, such as armor or more powerful weapons).

### Bindings ###

- Switch action:        Bumpers
- Begin action:         Right Thumbstick Click
- Switch menu tabs:     Bumpers
- Switch menu items:    Triggers
- Quick time event:     Any

## Shared Inventory ##

Being merged into 1, the 3 characters share an inventory. This inventory has a maximum space to avoid players from farming an abundance of action items without using them, and to prevent them from having an over-abundance of healing items. This will also encourage exploring all action points for the best available healing items, and having proper inventory management so that the Fighter can continue to have bullets.

# The Map #

The map is composed of 5 distinct areas that are arranged in a + pattern. Each area (other than the Hamlet) will have a piece of the sceptor that keeps the Hamlet safe.

## Hamlet ##

The hamlet serves as the center of the plus, magically protected from the areas around it. Within the hamlet, there are various buildings that provide different purposes, and settlers that may have (more or less) useful things to say.

### Buildings ###

- **Town Hall**: Where all of the settlers rest and deliberate. Typically contains an NPC that will direct the player on what to do.
- **Restaurant**: Where all of the settlers eat. This building will contain action points where the Worker can cook.
- **Forge**: A place where tools are created. This building will contain action points where the Worker can forge.
- **Farm**: While not a building, this is the place where the settlers make their own food. Most settlers will spend their time here, and will provide tips for the player. The Farm will not have any action points, and attempts to perform actions here by the Worker will have angry reactions from the settlers (they work hard!).

## Forest ##

The Forest is South of the Hamlet. It is intended to be the first area the player explores, teaching the basics of exploration, combat, and gathering.

While woody, the Forest is relatively easy to navigate thanks to a slightly-maintained path that snakes through the trees. This path is mostly linear and leads to the outside world for after the Sceptor is completed, but has 2 branches. One branch leads to the swamp, and has an increasing number of ponds. The other path covers treacherous land and leads to the Forest Sceptor piece. Throughout the entire Forest, monsters such as wolves (lone and in packs, increasing difficulty as the player gets further in) will attack periodically.

Within the Forest there will be an abundance of plant gathering action points, and an increasing number of fishing action points on the path towards the Swamp. The path towards the Forest Sceptor piece will have a decreasing number of plant gathering action points, but will have a number of mineral gathering action points.

Should the player attempt to leave the Region of Plus before the Sceptor is complete, the active Character will scold them. However, the Player can freely navigate to the Hamlet and Swamp from the Forest.

## Swamp ##

The Swamp is East of the Hamlet. It is intended to be the second area the player explores, and will push the player to use new mechanics such as creating and grappling.

The Swamp is slightly difficult to navigate due to both the large amounts of intraversible water and the openness of the area. The Swamp will be comprised of a trapezoidal shape that fans away from the Hamlet, and will have various islands and trees that the player can navigate through in order to traverse it. Whenever the player visits an island, there will be a chance for an encounter with alligators. The Swamp Sceptor piece will be located at the center of the far side of the trapezoidal shape.

Within the Swamp is an abundance of fishing action points, an increasing number of plant gathering action points towards the Forest, and an increasing number of mineral gathering action points towards the Volcano.

The Player can freely navigate to the Hamlet, Forest, and Volcano from the Swamp.

## Volcano ##

The Volcano is North of the Hamlet. It is intended to be the third area the player explores, and will be the area where the player can build up the resources they've been lacking and practice their skills before the final area.

The Volcano is difficult to navigate due to the limited footholds, lava flows, and occasional falling rocks. The Volcano features a mostly linear and narrow path snaking up a triangular mountain that will force a player to use all of the explorational tools at their disposal. There will be occasional attacks by eagles, and designated spots will have mountain lion(s). In addition, there will be a small number of areas covered in ash that will deplete the Player's life while they remain within it. The Volcano Sceptor piece will be at the top of the mountain.

There are no food or plant action points on the Volcano, but there is an abundance of mineral gathering action points.

The Player can freely navigate to the Hamlet and the Swamp from the Volcano.

### Note ###

This area doesn't entirely match the top-down image I have for the game, and requires more thought.

One idea is to use terraced terrain levels as shown [here](https://www.reddit.com/r/gamedesign/comments/10uuljp/how_do_you_add_verticality_to_a_top_down_game), having the player zig-zag up the mountain purposefully. This will have the effect of creating a maze for the player, frustrating their efforts to climb up as ladders, zig-zag climbing, and unique uses for the grappling hook and pole vault become necessary. Having this limit the player's movement after their reinforced understanding of movement from the Swamp may prove to be a challenging yet rewarding puzzle, or it could be a difficult and frustrating scene that ends up feeling like a waste of the player's time.

An alternative idea is to use mesa'd terrain levels, where there are different "levels" to the mountain that can be pole-vaulted between. This will have the effect of allowing the player to more or less move freely on the mountain, with the maze elements coming from levels being to high up to pole vault to. However, this has 2 downsides. The first downside is from the intended player experience; doing this, the player will be trapped into a repetitive cycle of pole vaulting everywhere. While this could be alleviated with clever use of gaps, extreme level changes, and other level design elements, it would be more challenging to do so and may not have the effect of creating a maze. However, it would have the effect of impressing the idea of a steep Volcano to the player. The second downside is only a matter of programming. While there is no set deadline for this project, it was not intended to be a project of extreme length. Adding this element would provide for a unique programming challenge that may take upwards of 1 to 2 months to conquer, plus additional time for likely bugs and rebuilds that may be necessary. 

At the current moment (11/1/2025), I am leaning towards the terraced terrain levels idea. However, I will hold on implementing these ideas until later in development when I am more comfortable and knowledgable with Godot and the Godot scripting language and its limitations.

## Wasteland ##

The Wasteland is West of the Hamlet. It is intended to be the last area the player explores, and will put the player's skills to the test.

The Wasteland will be very difficult to navigate due to constant roadblocks such as dead trees, lava lakes, and ravines with a relatively open map. The Wasteland will be comprised of a trapezoidal shape that slants towards the Volcano. The Player will be under constant attack from hyenas and vultures, and ash will cover a significant amount of the land, depleting the Player's life as they stand within it. The Wasteland Sceptor piece will be kept in the furthest reach of the Wasteland towards the Volcano.

There are no action points in the Wasteland, as everything is already ash.

The Player can freely navigate to the Hamlet from the Wasteland.
