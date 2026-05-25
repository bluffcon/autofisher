# Autofisher [r2]
Adds a block that lets you catch fish while you're away! The Autofisher Net automatically gets fish at random intervals and puts it into a hopper below.

### ⚠️ Requires ArbiterLib (`a4` and higher) datapack and resources. Get them on [Modrinth](https://modrinth.com/datapack/arbiterlib) | [GitHub](github.com/bluffcon/arbiterlib)


## Crafting
You need to craft the autofisher net using **sticks**, **string**, and **seagrass** in the crafting table.

![crafting recipe](https://github.com/bluffcon/autofisher/blob/master/crafting.png?raw=true)


## Usage
Put the autofisher net in some water. That's it! Now it will dispense items from below when it catches them.

You can add bait (open menu -> seagrass) to the net, this will make fish appear 20x faster in the net until the bait runs out.


## Technical
The net tries for fish 5 times (by default) a second. Every try, if its on cooldown, has a 25% chance to remove 1 cooldown. If cooldown is less than 0, makes a reeling-in sound and starts trying for fish.

Every following try has a 0.01% chance to catch a fish. If the net has bait, the chance is 0.05%. After 500 tries the net hits hard pity and catches a fish anyway.

After catching a fish, goes back on cooldown and resets pity. Consumes 1-3 bait with increasingly rarer chances to consume less. Sets the cooldown to 200 tries.

> Configuration of these numbers is planned but not yet implemented. Adjust tick rate with ArbiterLib