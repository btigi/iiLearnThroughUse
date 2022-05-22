Learn Through Use Mod V2 BETA
-----------------------------

IMPORTANT NOTE:
This is a beta release. There have been a lot of additions since version 1, including several thousand copy/paste lines of dialog. This version may contain bugs, and it is not recommended that it be used in a serious game. Please report any bugs found at the mod forum.


+) Contents
===========
1.    About
2.    (Un)Installation
3.    Known Issues
4.    Thanks to
5.    Version History
6.    Contact Details


+) Section 1. About
===================
  The Learn Through Use Mod attempts to add a small element of realism to the game. Rather than offering weapon proficiency points for weapon types the player may never have even seen, let alone used, Learn Through Use weapon proficiencies for weapon types the player is actually using.
It makes sense - the more you hits an opponent with a weapon, the better you get at doing it! Each weapon type is handled individually (e.g. daggers and katana's are handled separately, as in the original game) and all items retain their assigned weapon proficiencies (e.g. The Flail of Ages still uses the Flail proficiency).

A proficiency point is awarded after a certain number of successful strikes on an opponent. The Learn Through Use Mod allows the player to choose the amount of weapon usage required for each proficiency point gained, and for each stage of proficiency, e.g. the first proficiency point could be gained for 10 successful strikes, the second could be gained for 20 successful strikes, the third for 40 successful strikes, the fourth for 80 and the fifth for 500.

The Learn Through Use Mod should affect all weapons that are installed in the game at the time the mod is installed, i.e. it should be installed late in the install process.

The Learn Through Use Mod now (optionally) allows the player to requier training to advance in weapon proficiency (in addition to experience with the weapon type). The mod allows the user to select whether training is to be provided for free, or whether a charge should be applied. The cost for each proficiency level can be set.


+) Section 2. (un)Installation
==============================
The Learn Through Use Mod is distributed using the WeiDU distribution package. To install, unzip the iiLearnThroughUse(xx).zip file (where xx represents the version number of the release), to the BG2 main directory. Then run the "Setup-iiLearnThroughUse.exe" file, and follow the on-screen prompts. 

To uninstall re-run the "Setup-iiLearnThroughUse.exe" file, and follow the on-screen prompts, selecting "Uninstall" as required.


+) Section 3. Known Issues
==========================
As the Learn Through Use mod aims to accomplish such wide ranging changes, there are several known issues:

-- Party AI must be enabled for this mod to work correctly.

-- Characters cease their current action after gaining a weapon proficiency (e.g. if, while attacking an enemy, a character gains a weapon proficiency, the character will stop attacking the enemy and will instead just stand around waiting for instructions).

-- While possible to (un)install into an existing game, doing so may lead to unpredictable results, as variables within the game are not cleared when the mod is uninstalled, and hence 'hang around' to potentially affect later (re)installations. If installed into a current game, existing weapon proficiencies of characters will not be altered initially, however proficiencies may drop down to match the new system over time.

-- Arrows can be fired from either a long bow or a short bow - therefore it cannot easily be known which weapon to award the proficieny to. In the case of arrows, proficiencies are always awarded against the long bow proficieny (i.e. it is not possible to gain proficiency in short bow).

-- Proficiencies cannot be gained in Sword and Shield, Single Weapon or Duel Wielding - these are 'meta-proficiencies' that are not directly correlated to an item, but are dynamically allocated based on weapons equipped.

-- Player1.dlg is assigned as the dialog file for CHARNAME, without respect for any other dialog file already assigned.

    
+) Section 4. Thanks to
=======================
  + Avenger     - DLTCEP
  + G3          - WeiDU patching code
  + Wes Weimer  - WeiDU
  + IESDP       - http://iesdp.gibberlings3.net/
  + yarpen      - Polish Translation
  + Immortality - Spanish Translation


+) Section 5. Version History
=============================
Future Versions
  Support for BGT
  Support for maintaining existing proficiencies
  WIS/INT affects learning rate?
  Limit the progression to match the 2da?

V2.1 [05/09/2021]
  - Maintenance release RE: mod packaging
  
V2 [10/03/2007] BETA
  - Expanded known issues
  - Fixed string errors
  - Alterted timing mode for proficiency granting spell (now survives character death)
  - Arrows, bolts and bullets now award proficiencies
  - Added option to require visiting a trainer to gain proficiencies
  - Added option for trainers to require payment

V1 [07/09/2006]
  - Initial Release


+) Section 6. Contact Details
=============================
Feedback, comments, queries, questions and suggestion should be sent to igi / bt_igi / iggti
