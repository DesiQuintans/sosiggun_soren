# SR Sosiggun Soren {{ ver }}

Whenever I got bad weapon drops in [SupplyRaid](https://h3vr.thunderstore.io/package/Packer/SupplyRaid/), I would pick up and use the enemies' sosigguns. It sometimes felt like cheating, especially if they had decent sights and higher power than I was supposed to have, so I decided to make a SupplyRaid character where using sosigguns *isn't* cheating. 

Sosiggun Soren is a character for the SupplyRaid game mode, balanced for use with [Safehouse for H3MP](https://h3vr.thunderstore.io/package/NGA/Safehouse_for_H3MP/) or [SafehouseProgression](https://h3vr.thunderstore.io/package/NGA/SafehouseProgression/). Soren's playstyle is built around having limited ammo for your regular guns; you'll need to conserve ammo by grabbing and using sosigguns where possible. If you're lucky, an enemy might drop the real version of a sosiggun for you to bring home -- there are 51 guns, 6 melee weapons, and 5 super-rare guns to collect.



# As-designed SupplyRaid settings

- Spawnlock Enabled, but don't spawnlock ammo or frag grenades.
	- Soren uses ammo scarcity to motivate you to use sosigguns, so having infinite ammo undermines that.
	- With Spawnlock Enabled, you can reload empty sosigguns by shaking them. I like to throw away empty guns and get new ones, but it's up to you! Only fully empty sosigguns can be reloaded -- most sosigguns have an open-looking chamber when they're empty. You'll hear a rattling brass sound while you're shaking, and a *Ding!* when the sosiggun is reloaded.
	- This also gets around an engine bug where, if Limited Ammo mode is enabled, then revolvers and internal magazine shotguns spawn into the world with a bunch of loose ammo or speedloaders. It all works fine with Spawnlock Enabled though.

Soren's difficulty depends heavily on the characteristics of the enemy faction you're playing against, namely: The armour and weaponry of the sosigs; their respawn rate; and the number that can be on the field at the same time. Soren comes with a custom faction, the [Slow Burners](https://h3vr.thunderstore.io/package/Desi/SR_Slow_Burners/), that gives a gentler difficulty curve and more intentional progression in the sosigguns that enemies drop.



# Play tips

- There is no Ammo Refill table. Buy ammo at your safehouse (use [PackersVendingMachines](https://h3vr.thunderstore.io/package/Packer/Packers_Vending_Machines/) or just throw away tokens when you spawn ammo) and bring it with you.

- A grappling hook, range finder, and flashlight are free at supply points if you need them for the map you're in.

- Stun grenades and smoke grenades are free at every supply point. Use stuns to disable approaching sosigs. Use smokes to obstruct bad sightlines, especially when you're outranged.

- Looted weapons come with the bare minimum, e.g. a shotgun drops with a box of 5 shells. Weapons that you purchase from the Buy Panel come with significantly more ammo, and sometimes better magazines and other attachments.

- If you're having trouble with armoured enemies, try using the sosiggun versions of full-power rifles (Mk14 EBR, Garand, PSG1, Dragunov).

- Machinegun belts can't be reloaded with regular cartridges. You'll need to buy a new box every time if the MG you want to use does not take magazines.



# Known issues

- *SafehouseProgression can fail to extract to safehouse.* This is a known issue with the original version, so [Safehouse for H3MP](https://h3vr.thunderstore.io/package/NGA/Safehouse_for_H3MP/) is recommended even for solo players.
- *Unwanted ammo spawns in Limited Ammo mode.* There is an engine bug where, if Limited Ammo mode is enabled, then revolvers and internal magazine shotguns spawn into the world with a bunch of loose ammo or speedloaders. I have reported this bug.
- *Most sosigguns cannot be extracted to the safehouse or saved.* More sosigguns are removed from you when you extract to the safehouse, or are not saved when you leave the safehouse. Some sosigguns *are*, like the P90 and DP12. I have reported this bug.
- *Sometimes double attachments spawn from the Buy Panel.* I have made some weapons spawn with bespoke attachments when purchased through the Buy Panel, e.g. the Ruger 10/22 spawns with its bespoke Picatinny rail adapter. Because H3VR randomly chooses to do this on its own sometimes, you may get two copies of the attachment.
- *There may be issues with saving ammo boxes in gun cases.* According to someone on the H3VR discord, some ammo boxes create issues with H3VR's scene saving. For safest results you should only put guns, magazines, and health items inside cases.



# Recommended mods

- [Safehouse for H3MP](https://h3vr.thunderstore.io/package/NGA/Safehouse_for_H3MP/) is a safer version of SafehouseProgression that lets you manually save your loadout to self-debug issues with not extracting.
- [PackersVendingMachines](https://h3vr.thunderstore.io/package/Packer/Packers_Vending_Machines/) lets you put ammo and ordnance vending machines in your safehouse. Emphasises preparation before raids. All guns in Soren's pool have an ammo box.
- [HardcoreSosigAI](https://h3vr.thunderstore.io/package/NGA/HardcoreSosigAI/) speeds up sosigs' reaction times. This character and its faction, the Slow Burners, were balanced with this mod in mind.
- [BulletKinesis](https://h3vr.thunderstore.io/package/OsaPL/BulletKinesis/) attracts nearby bullets to your hand when you grab one with the laser grabber.
- [PlayerFootsteps](https://h3vr.thunderstore.io/package/Kodeman/PlayerFootsteps/) lets sosigs hear you when you're running nearby (or not hear you when you're walking slowly).



# Changelog

## 3.3.0 (2024-01-27)

- Doubled all loot drop probabilities, including super rares. I want people to be able to complete the collection!
	- Probabilities are now: Firearm (approx. 12 %); Health item (approx. 6 %); Frag grenade (approx. 3 %); Nothing (approx. 79 %).
	- Every item pool rolls its chance to drop independently, which means that it's possible (but vanishingly rare, 2.6 x 10^-8 %) for a single dead sosig to drop a frag, a medical item, a regular gun, and a super-rare gun.
	- I have not made any changes to the economy for this.

- Adjusted medical item drop table so that it only rolls once per dead sosig, and the item you get is weighted by the amount of health it restores.


## 3.2.0 (2024-01-22)

- Removed DP12 from pools and dependencies because it sometimes blocked safehouse extraction. Closes [#1](https://github.com/DesiQuintans/sosiggun_soren/issues/1) (thanks, ShivanReaper). 
	- It is replaced with the VT13 Shorty.

- Added large saveable gun case to the shop.

- Standardised the revolvers/derringers on the .357 Magnum cartridge.
	- All revolvers and derringers now drop .357 Magnum speedloaders when purchased or looted, even if they can't use it.
	- Replaced the Bull454 with the COP 357 (4-shot derringer, better than 2-shot Model 6).
	- Replaced the FA83 with the Hawk357 (6-shot single-action, better than COP 357).
	- Replaced Rhino 40 with Rhino 60 (has top attachment rail).
	  
- Fixed Model 6 not dropping with any ammo. It now drops with a speedloader (take the cartridges out of it).

- Cleaned up Manual-Action Rifle shop category; now purchasing something from this pool will reliably give you something to counter armour with.
	- Moved Ruger 10/22 rifle out of this shop pool and into the Automatic Pistols shop pool. It ain't a pistol, but it's pistol-powered.
	- Moved Toz-106 from this shop pool to the Shotguns pool.


## 3.1.0 (2024-01-20)

- Changes to progression:
	- Cost of new magazine increased to 2 tokens, from 1. This is because purchaseable magazines are nearly always better than the magazines I have selected to drop with looted guns. For example, the looted AKM drops with a 10-round mag but the Magazine Panel sells a 30-round mag as the basic one.

- Changes to starting items pools:
	- To simplify shot-counting, you now get two of the same type of sosiggun pistol. The M9 has 13 shots, the Glock has 15, the USP Match has 20.
	- To improve your medium-range capability in the early game, the starting long sosiggun pool was changed to Garand (you get 2 because of their low ammo count), BAR, M1 Carbine, and Tommygun. These weapons have good sights without being overpowered if reloadable.
	- You now always spawn with painkillers rather than a random roll between 2x bandages, painkillers, or energy drink. This gives you good potential health regen in the early game (+40% over 3 minutes) while always taking only one quickbelt slot.

- Changes to item pools:
	- Replaced purchased AKM's magazine (AKM Tactical 10 round) with the regular AKM 30-round magazine. This makes the magazine that drops with purchased AKMs match the magazine that's purchased from the Magazine Panel. The looted AKM still drops with the 10-round mag.
	- Removed Hand Crank Frank and the M134 Minigun from the droppable loot pool and put them back into the super-rare pool where they were supposed to be.


## 3.0.0 (2024-01-17)

- Flattened loot tier probabilities.
	- Previously there was about a 6% chance of dropping any gun, but the tiers were weighted so that you'd get worse guns more often. The rationale behind this was that you'd sell them to buy better ones. In practice, this meant that I only collected 10 unique guns across 30 raids, and they were overwhelmingly in Tiers 1 and 2 (pistols, machine pistols, bolt actions). This wasn't fun!
	- I have changed it so that there is still around a 6% chance of dropping any gun, but every gun has an equal chance of being chosen for the drop.
	- Super-rare guns are excepted from this.
	
- Removed ammo boxes sold in the Buy Panel during raids to further emphasise preparation at the safehouse. Ammo boxes still drop with purchased guns.


## 2.0.0 (2024-01-13)

- Disabled the ammo refill tables during raids 🙈. This incentivises:
	1. Preparation at the safe house. Buy ammo boxes from [PackersVendingMachines](https://h3vr.thunderstore.io/package/Packer/Packers_Vending_Machines/), bring it to raids with you.
	2. Upgrading to larger magazines so that you enter raids with more ammo.
	3. Choosing to use sosigguns and looted guns to save your good ammo.
- Disabled the magazine duplicator 🙈. You now have to upgrade mags as you go.
- Removed minigun from the MG shop pool. It is still a super-rare drop.
- Increased loot drop chances by an average of 0.05 percentage points (i.e. 1.50% increased to 1.55%).
- Reordered shop items so that shotguns are now cheaper than repeating pistols.
- Increased shop cost of weapons by 0-2 tokens. This puts weapon costs in the same ballpark as Extraction Eddie: Eddie's IQR for weapon costs is [8, 19] and Soren's is [7, 14].
- Increased token reward after at Level 5/Endless to 4 tokens (from 3).


## 1.2.0 (2024-01-12)

- Added [GunCaseFix](https://h3vr.thunderstore.io/package/NGA/GunCaseFix/) as a dependency since I now have gun cases in here.
- Added [StandardManufacturing DP12](https://h3vr.thunderstore.io/package/cityrobo/StandardManufacturing_DP12/) as a dependency.
	- Out of the handful of sosigguns that do not have real counterparts in the game (DP12, M1917 Browning, M2 Flamethrower, SIG M17, ASh-12, MCX Rattler, FN2000, Mk14 EBR, Mk47 Mutant, XM7, PKM, XM250), I felt like the DP12 was the only one that operated fundamentally differently, and so couldn't simply be replaced with a different existing gun.
- Replaced VT13 Shorty with DP12 in shop and loot tables.
- Moved VT13 Shorty to the super-rare drop table (it doesn't have an associated sosiggun, it just reminds me of the 870 sosiggun but as a semi-auto).
- Added rail adapter to purchased Mini-14.


## 1.1.0 (2024-01-11)

- Added a saveable gun case to the Tools shop. It costs 4 tokens, double what a backpack costs, because you can fit a lot more stuff in it.
- Removed `Sosiggun_LeverAction` from starting long guns pool (not enough ammo).
- Removed `Sosiggun_PSG1` from starting long guns pool (too hard to aim with massive unusable scope in the way).
- Removed free bayonet from looted Mosin 91/30.
- Replaced the shield (`Shield_RiotShield`, without viewing window) with `Shield_BallisticShield` (with a viewing window) to match the sosigs' shields.
- Removed the shield from the Melee weapons shop pool. 
- Added the shield as its own category to the Melee weapons shop pool (costs 4 tokens).
- Replaced S9R derringer (.32 ACP) with Model 6 (.357 Magnum). The S9R had so little stopping power that it was not even worth firing it.
	- When looted, the Model 6 drops a box of JHP ammo (other .357 revolvers drop FMJ).
	- If purchased, the Model 6 also gives a consolation prize of a .357 speedloader. The derringer can't use it, but the other revolvers can.
- Removed `BayonetGrillFork` and `BayonetSpatula` from the bayonet attachment pool.
- Allowed all melee weapons (except ballistic shield) to spawn as a starting item. 
	- Previously, the Tanto was always the starting melee item. Longer weapons were regarded as upgrades, and so had to be purchased.
	- Melee weapons are not (and were never) in any loot drop tables.


## 1.0.0 (2024-01-10)

- Initial release.



# Full list of weapons

Most sosigguns had a real counterpart in the game. I usually used the most versatile version of the gun that was available, e.g. M2 Carbine to represent the sosiggun M1 Carbine, or Rhino 60 to represent the Rhino 40 because the '60 has a bonus top attachment rail.

Sometimes I substituted different guns entirely, either because there was no real-gun counterpart (e.g. no PKM), or because the real counterpart was not useful in combat (e.g. Model 95 derringer), or because the gun's cartridge could not be purchased through the [Vending Machine](https://h3vr.thunderstore.io/package/Packer/Packers_Vending_Machines/) (e.g. C1851 Conversion). These are indicated in italics with the name of their matching sosiggun in (brackets).


## Melee

1. Katana
2. Crowbar
3. Tactical tomahawk
4. Gladius
5. Pilum
6. Tanto
7. Ballistic shield


## Handguns

1. _Model 6_ (sosiggun derringer)
2. _COP 357_ (sosiggun Colt Navy)
3. _Hawk 357_ (sosiggun Colt Army)
4. _MP412 Rex_ (sosiggun generic revolver)
5. Rhino 60
6. M1911 Gold
7. _TT33_ (sosiggun C1903 Pocket Hammerless)
8. Desert Eagle .50AE
9. _PMM_ (sosiggun Makarov)
10. USP Match .45
11. M9A3
12. _G18C_ (sosiggun G17)


## Shotguns

1. 1887 Lever Action
2. M1897 Trench Shotgun
3. MB500 Shorty
4. M1014
5. SPAS 12 Tactical
6. AA12
7. _VT13 Shorty_ (sosiggun DP12)
8. Break Action Shorty
9. DT11
10. Toz 106


## Submachine guns

1. _MP5 Wood_ (sosiggun Pacification MP5SD)
2. MP5SD6
3. Uzi Compact
4. PP91 Kedr
5. Thompson M1A1
6. Mac 11
7. MP7A1
8. P90


## Rifles

1. Ruger 10/22
2. _Mosin 91/30_ (sosiggun Sharps 1874 Sniper)
3. 1894 Lever Action
4. Scout
5. M2 Carbine (sosiggun M1 Carbine)
6. _M4A1 Block 2 CQBR_ (sosiggun Pacification M16)
7. Famas G2
8. M16A1
9. _Mini-14 Classic_ (sosiggun Mk14 EBR)
10. Dragunov SVD
11. PSG1
12. _M1 Shorty 16_ (sosiggun M1 Garand)
13. AKM
14. _SKS Modern_ (sosiggun XM7)


## Machine guns

1. M1918 BAR
2. M60E4
3. _RPD_ (sosiggun PKM)


## Explosives

1. M79 Thumper
2. RPG 7
3. M1A1 Bazooka
4. RG6
5. Mk2 fragmentation grenade
6. M67 fragmentation grenade
7. M18 smoke grenade
8. XM84 stun grenade


## Super-rare lootables

1. Secret machine pistol
2. Secret SMG
3. Secret machine gun A
4. Secret machine gun B
