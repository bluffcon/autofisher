# Autofisher
Adds a block that lets you catch fish while you're away! The Fishing Net automatically gets fish at random intervals and puts it into a hopper, a water stream, or on the ground below! Also lets datapacks add custom fishing loot

### ⚠️ Requires ArbiterLib (latest) **datapack** and **resources**. Get them on [Modrinth](https://modrinth.com/datapack/arbiterlib) | [GitHub](github.com/bluffcon/arbiterlib)


# Features
Autofisher is a really great datapack that allows for automatization of fishing in vanilla! It is inspired a lot by modded fishing nets from mods such as Cyclic that allow for a really good endless food supply that can last the whole game. Autofisher is my own take on this, adding a bit more than just a fishing block!

- Custom Fishing Library 🐡
> Datapacks can add new fishing drops, both for the fishing rod and the net block! No more overriding loot tables for fish or making compat datapacks, Autofisher can handle it with much customizability for both the developer and the player!

- Food and Treasure supply 🍽️
> Most of the loot you will be getting with Autofisher's Fishing Nets will be fish and treasure. The beautiful part of it is the scalability of this - the net is a block, which means it can be placed endlessly, allowing for an endless supply of fish!

- New use for the old things 💖
> The datapack interacts and uses some old and underused items from the game for its feature pivots! For example, have you ever had to grow seagrass on purpose to get baits for a fishing net? What about getting Dragon's Breath for a phantom farm? Autofisher offers relevant items such as books that come with the cost of making use of the game's other additions.

- Modern with a menu 🎨
> Every net can be interacted with in an informative way with an in-world GUI. By right-clicking a net you can bring up its menu where you can add bait to it or destroy it using interactive buttons!


## Crafting
You need to craft the Fishing Net using **sticks**, **string**, and **seagrass** in the crafting table or ArbiterLib Workbench.

![crafting recipe](https://github.com/bluffcon/autofisher/blob/master/crafting.png?raw=true)


## Usage
Put the Fishing Net in some water. That's it! Now it will dispense items from below when it catches them.

You can add bait (open menu -> seagrass) to the net. Bait will remove all junk appearing from fishing as well as making the fishing considerably faster!

On how to use the library for adding custom fishing loot, please loot at `#Custom Fishing` below


## Net Packs (Skins)
You may obtain different looks for your nets through interacting with the game in different ways. They are given as Net Pack items - special items that if you interact with the net with one of these in your hand, the net will change its looks. Navigate through the Advancements tab to find out how to get each individual net pack! Currently there are 3 net packs available.

1. Default Look
> Offers no gameplay changes. Its the default look of white strings and oak wood. Can be crafted in a Workbench (ArbiterLib) with paper and glow ink sacs.

2. Seagrass
> Always consumes max (3) bait when catching fish. Regular oak wood with green seagrass netting. Can be obtained only once by getting the "Overfed the Fish" advancement.

3. Galaxy
> When catching fish, has a 1% chance to spawn a phantom. Dark purple frame with black star-riddled netting and a pink inside. Can be obtained repeatedly by following the steps of the "Skystone and Pillar" advancement with a 20% chance.

4. Junkie
> Catches only trash instead of fish or treasure. Green synthetic nets look like they smell putrid. Can be obtained by having any non-Junkie net catch 30 pieces of junk without being broken once. Still consumes bait.

5. Pride (Pride Month 2026)
> When catching saddles, fishing rods, bows, leather boots, water bottles, or enchanted books (all unstackable items), turns them into random raw ores instead. Gold - 10%, Iron - 36%, Copper - 54% Extravagant and colorful, with a birch frame. Can be crafted in a Workbench (ArbiterLib) using a Nautilus Shell and 8 dye around it.

6. Trans (Pride Month 2026)
> After catching fish, the cooldown applied on this net is reduced by 2% of max cooldown for every net (including this one) in a 3.5 block radius around it up to a 50% CD reduction. Cherry frame and magical colorful netting shifts colors from pink to blue. Can be crafted in a Workbench (ArbiterLib) using a Heart of the Sea and 8 dye around it IF you have the 'Skystone and Pillar' advancement (obtain Galaxy skin).

With more to come!


## Troubleshooting & FAQ
- The net doesn't have a texture, it displays as missing!

> You didn't install the ArbiterLib resourcepack

- I can't stand on the net and can't interact with it!

> You didn't install the ArbiterLib datapack

- The net doesn't make any fish!

> It needs to be in water. It also has a long cooldown to start working!

- My configurations keep getting reset!

> Set `.custom_settings` in `autofisher.settings` scoreboard to `1` to enable custom settings


## Technical
The net tries for fish 5 times (by default) a second. Every try, if its on cooldown, has a 15% chance to remove 1 cooldown. If cooldown is less than 0, makes a reeling-in sound and starts trying for fish.

Every following try has a 0.45% chance to catch a fish. If the net has bait, the chance is 5%. After 1000 tries the net hits hard pity and catches a fish anyway.

After catching a fish, makes a splashing sound and goes back on cooldown and resets pity. Consumes 1-3 bait with increasingly rarer chances to consume less. Sets the cooldown to 200 tries.

**Changelog b3:** Configuration for some of these numbers has been added! You can now change the bait item, bait consumption, bait stack size, bait button item, etc.! View all possible up-to-date configurations in `data/autofisher/function/restore_defaults.mcfunction`



# Custom Fishing
Autofisher lets you add custom fishing functions. Inside the functions you can run any commands, like replacing the fish with an item from your own loot table or summoning an alive fish mob.

Functions are ran with random checks for both the fishing net block and fishing with the rod to ensure that the fish pool is mostly equal between all datapacks that might add their own fish. But obviously, not all additions are equal!

## How to implement

### 1. Register in polling
To add your function to the pool, make a function tagged with `#autofisher:poll_custom_fish`. Inside this function you'll need to increase fishing chances (so the player can obtain any fish from the custom fish pool) as well as append a special object to the `autofisher:custom_fishing` array.

```lua
scoreboard players add .chance_out_of_1000 autofisher.customfish 100
data modify storage autofisher:custom_fishing entries append value {function:"datapack:custom_fishing/my_fishing_function", reroll_chance:0.9}
```

You should only use this **once per datapack!** Handle all further random and loot distribution inside your very function!

### 2. Values
There are two values that might need explanation! Both of them determine random distribution of your function.

**`.chance_out_of_1000` is the total chance of the loot being overriden by custom fishing.** Datapacks should add chance accordingly to the amount of content they add. Add 100 (+10%) if you're only adding a few items, add 600 or 1000 if you're adding a lot! This value isn't final: it's capped by the `.customfish.max_allowed_against_vanilla_pool` setting.\*

\**If you're planning on overriding all vanilla fishing, check if `.customfish.allow_settings_recommendations` is 1 and override the `.customfish.max_allowed_against_vanilla_pool` setting to 1000!*

**Entry Object.** `{function:"datapack:custom_fishing/my_fishing_function", reroll_chance:0.9}` - `function` should point to your main function for handling rest of the custom fishing. `reroll_chance` is interesting: it sets the chance for your entry getting rerolled if it gets chosen. This is to allow other datapacks that might add more content to get more loot pool. Set it to `0.8` or `0.9` if you're only adding a few items, set it to `0` if you're adding a lot!

### 3. Handling the rest
In the function, the current position (`~ ~ ~`) is the player (or net) fishing, and `@s` is the fish item. This way you can easily switch targets based on what you need. Please don't put anything extra in the polling function!

### Afterword on custom fishing
Please remember that other datapacks exist, be fair with your numbers! Please also remember that your function can be ran both as the player and the fishing net they might place - actually spawning entities isn't recommended because this block is for making farms in tight spaces, after all!

