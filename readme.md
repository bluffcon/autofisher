# Autofisher [b3]
Adds a block that lets you catch fish while you're away! The Fishing Net automatically gets fish at random intervals and puts it into a hopper, a water stream, or on the ground below!

### ⚠️ Requires ArbiterLib (`a4` and higher) datapack and resources. Get them on [Modrinth](https://modrinth.com/datapack/arbiterlib) | [GitHub](github.com/bluffcon/arbiterlib)


## Crafting
You need to craft the Fishing Net using **sticks**, **string**, and **seagrass** in the crafting table.

![crafting recipe](https://github.com/bluffcon/autofisher/blob/master/crafting.png?raw=true)


## Usage
Put the Fishing Net in some water. That's it! Now it will dispense items from below when it catches them.

You can add bait (open menu -> seagrass) to the net. Bait will remove all junk appearing from fishing, as well as making the fishing considerably faster!


## Net Packs (Skins)
You may obtain different looks for your nets through interacting with the game in different ways. They are given as Net Pack items - special items that if you interact with the net with one of these in your hand, the net will change its looks. Navigate through the Advancements tab to find out how to get each individual net pack!


## Troubleshooting & FAQ
- The net doesn't have a texture, it displays as missing!

> You didn't install ArbiterLib resourcepack

- I can't stand on the net and can't interact with it!

> You didn't install ArbiterLib datapack

- The net doesn't make any fish!

> It needs to be in water. It also has a long cooldown to start working!

- My configurations keep getting reset!

> Enable `.custom_settings` in `autofisher.settings` scoreboard to prevent this


## Technical
The net tries for fish 5 times (by default) a second. Every try, if its on cooldown, has a 15% chance to remove 1 cooldown. If cooldown is less than 0, makes a reeling-in sound and starts trying for fish.

Every following try has a 0.45% chance to catch a fish. If the net has bait, the chance is 5%. After 1000 tries the net hits hard pity and catches a fish anyway.

After catching a fish, makes a splashing sound and goes back on cooldown and resets pity. Consumes 1-3 bait with increasingly rarer chances to consume less. Sets the cooldown to 200 tries.

**Changelog r3:** Configuration for some of these numbers has been added! You can now change the bait item, bait consumption, bait stack size, bait button item, etc.! View all possible up-to-date configurations in `autofisher:restore_defaults.mcfunction`