# Autofisher [r4]
Adds a block that lets you catch fish while you're away! The Fishing Net automatically gets fish at random intervals and puts it into a hopper, a water stream, or on the ground below!

### ⚠️ Requires ArbiterLib (`a4` and higher) **datapack** and **resources**. Get them on [Modrinth](https://modrinth.com/datapack/arbiterlib) | [GitHub](github.com/bluffcon/arbiterlib)


# Features
Autofisher is a really great datapack that allows for automatization of fishing in vanilla! It is inspired a lot by modded fishing nets from mods such as Cyclic that allow for a really good endless food supply that can last the whole game. Autofisher is my own take on this, adding a bit more than just a fishing block!

- Food and Treasure supply 🍽️
> Most of the loot you will be getting with Autofisher's Fishing Nets will be fish and treasure. The beautiful part of it is the scalability of this - the net is a block, which means it can be placed endlessly, allowing for an endless supply of fish!

- New use for the old things 💖
> The datapack interacts and uses some old and underused items from the game for its feature pivots! For example, have you ever had to grow seagrass on purpose to get baits for a fishing net? What about getting Dragon's Breath for a phantom farm? Autofisher offers relevant items such as books that come with the cost of making use of the game's other additions.

- Modern with a menu 🎨
> Every net can be interacted with in an informative way with an in-world GUI. By right-clicking a net you can bring up its menu where you can add bait to it or destroy it using interactive buttons!


## Crafting
You need to craft the Fishing Net using **sticks**, **string**, and **seagrass** in the crafting table.

![crafting recipe](https://github.com/bluffcon/autofisher/blob/master/crafting.png?raw=true)


## Usage
Put the Fishing Net in some water. That's it! Now it will dispense items from below when it catches them.

You can add bait (open menu -> seagrass) to the net. Bait will remove all junk appearing from fishing as well as making the fishing considerably faster!


## Net Packs (Skins)
You may obtain different looks for your nets through interacting with the game in different ways. They are given as Net Pack items - special items that if you interact with the net with one of these in your hand, the net will change its looks. Navigate through the Advancements tab to find out how to get each individual net pack! Currently there are 3 net packs available.

1. Default Look
> Offers no gameplay changes. Its the default look of white strings and oak wood. Can be crafted in a Crafting Table with paper and glow ink sacs.

2. Seagrass
> Always consumes max (3) bait when catching fish. Regular oak wood with green seagrass netting. Can be obtained only once by getting the "Overfed the Fish" advancement.

3. Galaxy
> When catching fish, has a 1% chance to spawn a phantom. Dark purple frame with black star-riddled netting and a pink inside. Can be obtained repeatedly by following the steps of the "Skystone and Pillar" advancement with a 20% chance.

4. Junkie
> Catches only trash instead of fish or treasure. Green synthetic nets look like they smell putrid. Can be obtained by having any non-Junkie net catch 30 pieces of junk without being broken once. Still consumes bait.

5. Pride (Pride Month 2026!!)
> When catching saddles, fishing rods, bows, leather boots, water bottles, or enchanted books (all unstackable items), turns them into random raw ores instead. Gold - 10%, Iron - 36%, Copper - 54% Extravagant and colorful, with a birch frame. Can be crafted in a Crafting Table from a Nautilus Shell and 8 dye around it.

6. Trans (Pride Month 2026!!)
> After catching fish, the cooldown applied on this net is reduced by 2% of max cooldown for every net (including this one) in a 3.5 block radius around it up to a 50% CD reduction. Cherry frame and magical colorful netting shifts colors from pink to blue.

With more to come!


## Troubleshooting & FAQ
- The net doesn't have a texture, it displays as missing!

> You didn't install the ArbiterLib resourcepack

- I can't stand on the net and can't interact with it!

> You didn't install the ArbiterLib datapack

- The net doesn't make any fish!

> It needs to be in water. It also has a long cooldown to start working!

- My configurations keep getting reset!

> Enable `.custom_settings` in `autofisher.settings` scoreboard to prevent this


## Technical
The net tries for fish 5 times (by default) a second. Every try, if its on cooldown, has a 15% chance to remove 1 cooldown. If cooldown is less than 0, makes a reeling-in sound and starts trying for fish.

Every following try has a 0.45% chance to catch a fish. If the net has bait, the chance is 5%. After 1000 tries the net hits hard pity and catches a fish anyway.

After catching a fish, makes a splashing sound and goes back on cooldown and resets pity. Consumes 1-3 bait with increasingly rarer chances to consume less. Sets the cooldown to 200 tries.

**Changelog b3:** Configuration for some of these numbers has been added! You can now change the bait item, bait consumption, bait stack size, bait button item, etc.! View all possible up-to-date configurations in `autofisher:restore_defaults.mcfunction`