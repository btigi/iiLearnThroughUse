BEGIN ~IITRN1~

IF ~!InPartySlot(LastTalkedToBy,0)~ THEN BEGIN initial_main
  SAY ~Well met! How may I be of service?~
    IF ~~ THEN REPLY ~I want some training with the bastard sword.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog89", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the long sword.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog90", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the short sword.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog91", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the axe.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog92", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the two-handed sword.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog93", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the katana.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog94", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the scimitar.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog95", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the dagger.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog96", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with warhammer.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog97", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the spear.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog98", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the halberd.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog99", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the flail.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog100", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the mace.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog101", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the quarterstaff.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog102", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the crossbow.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog103", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the long bow.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog104", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the short bow.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog105", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with darts.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog106", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the sling.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog107", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with blackjacks.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog108", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with guns.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog109", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with martial arts.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog110", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with two handed weapons in general.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog111", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with using a sword and shield together,~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog112", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with using only a single weapon.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog113", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with using two weapons at once.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog114", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with clubs.~ DO ~ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog115", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT
END





IF ~InPartySlot(LastTalkedToBy,0)~ THEN BEGIN initial_main
  SAY ~Well met! How may I be of service?~
    IF ~~ THEN REPLY ~I want some training with the bastard sword.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog89", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the long sword.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog90", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the short sword.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog91", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the axe.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog92", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the two-handed sword.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog93", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the katana.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog94", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the scimitar.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog95", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the dagger.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog96", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with warhammer.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog97", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the spear.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog98", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the halberd.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog99", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the flail.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog100", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the mace.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog101", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the quarterstaff.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog102", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the crossbow.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog103", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the long bow.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog104", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the short bow.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog105", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with darts.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog106", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with the sling.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog107", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with blackjacks.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog108", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with guns.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog109", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with martial arts.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog110", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with two handed weapons in general.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog111", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with using a sword and shield together,~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog112", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with using only a single weapon.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog113", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

//    IF ~~ THEN REPLY ~I want some training with using two weapons at once.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog114", "LOCALS", 1))
//                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT

    IF ~~ THEN REPLY ~I want some training with clubs.~ DO ~ActionOverride(player1, SetDialog("player1")) ActionOverride(LastTalkedToBy(Myself), SetGlobal("iiLearnThroughUseDialog115", "LOCALS", 1))
                                                        ActionOverride(LastTalkedToBy(Myself), Dialog(Myself))~ EXIT
END