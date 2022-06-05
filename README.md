# VORP Development Boilerplate
> A helpful template/starting place for developers to make Lua scripts from.

## What is a Boilerplate?!
A Boilerplate, this boilerplate, is a simple template script with a plethora of  definitions, examples, tutorials, and more. The goal being to get any programmer building scripts with VORP as quickly and easily as possible.

## How to install
* Download this repo
* Copy and paste `boilerplate` folder to `resources/boilerplate`
* Rename `resources/boilerplate` to `resources/<YOUR_RESOURCE_NAME>` <<<<<<<<<<<<< **!important**
* Add `ensure <YOUR_RESOURCE_NAME>` to your `server.cfg` file
* Now you are ready to get coding!

## How can I use this Codebase?
    1. Use this to learn
    2. Remove what you don't want to use and use this as your scripts base. <<<<<<<<<<<<<< **!importand**
    3. Use this as a reference resource
    4. Use this to standardize your code with ours
    5. Use this code as you please

## What do I do after I save my code?
You can refresh your script via server live console, f8, or terminal.
`/refresh <YOUR_RESOURCE_NAME>`

If all else fails, restart your server entirely.

## Developer Tips
1. Use `PlayerPedId()` dont use `GetPlayerPed(-1)` as it is more optimal
2. If you are looking to calculate distance between coordinates. **Do not** use `GetDistanceBetweenCoords`, instead **use** with Lua math `#(vector3 - vector3)` or `Vdist2`  its much faster and optimized
3. Dont use `table.insert` USE ` tableName[#tableName+1] = useThis`
4. Control your `Citizen.CreateThread` `while true` loops with ` sleep = Wait(1000)` in the threads to control the threads tick rate (how often/fast the loop cycles)
5. Use local variables whenever you can to help reduce your scripts overall memory consumption. _Example:_ `local str = "hello"`
6. Instead of `if this ~= nil` use `if this then`. This method checks for nil and/or false at the same time
7. Check `if the player is allowed` before `checking distance` or `displaying something`. There is no need to run code if the client isn't meant to use it.. _Example:_ If you are checking a player distance that is job specific, then add/use a job check with playerjob. Perform the check before executing any other code that is dependant on it.

## Userful Links
- VOPR API: http://docs.vorpcore.com:3000/
- RDR3 Natives: https://github.com/alloc8or/rdr3-nativedb-data
- RDR3 Discoveries: https://github.com/femga/rdr3_discoveries/tree/master/objects
- Text Colors: tbd
- Native Fonts: tbd
- UI Textures: https://rdodlc.com/2019_09_frontier_pursuits/hd_0.rpf/hd/textures/ui_textures/inventory_items/

## Need More Support? 
- [Vorp Disord](https://discord.gg/DHGVAbCj7N)

## Requirements
- [VORP-Core](https://github.com/VORPCORE/VORP-Core/releases)
