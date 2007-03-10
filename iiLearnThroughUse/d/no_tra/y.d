APPEND %_DIALOG_NAME_%



IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog89", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the bastard sword eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog89", "LOCALS", 0)~ GOTO levelup_89
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog89", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_89
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii89", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_1_fail


    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii89", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii89_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii89", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii89", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii89_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_2_fail

    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii89", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii89_ok2", "LOCALS", 0)
        GlobalGT("ii89_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii89", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii89", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii89_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_3_fail

    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii89", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii89_ok3", "LOCALS", 0)
        GlobalGT("ii89_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii89", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii89", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii89_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_4_fail

    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii89", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii89_ok4", "LOCALS", 0)
        GlobalGT("ii89_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii89", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii89", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii89_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_5_fail

    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii89", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii89_ok5", "LOCALS", 0)
        GlobalGT("ii89_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_5_ask_for_gold


    IF ~GlobalGT("ii89_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_89_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_89_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_89_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_89_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii89_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_89_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_89_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_89_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_89_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii89_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_89_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_89_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_89_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_89_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii89_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_89_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_89_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_89_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_89_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii89_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_89_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_89_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_89_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_89_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii89_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_89_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_89_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog90", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the long sword eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog90", "LOCALS", 0)~ GOTO levelup_90
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog90", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_90
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii90", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_1_fail


    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii90", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii90_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii90", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii90", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii90_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_2_fail

    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii90", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii90_ok2", "LOCALS", 0)
        GlobalGT("ii90_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii90", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii90", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii90_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_3_fail

    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii90", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii90_ok3", "LOCALS", 0)
        GlobalGT("ii90_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii90", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii90", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii90_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_4_fail

    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii90", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii90_ok4", "LOCALS", 0)
        GlobalGT("ii90_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii90", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii90", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii90_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_5_fail

    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii90", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii90_ok5", "LOCALS", 0)
        GlobalGT("ii90_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_5_ask_for_gold


    IF ~GlobalGT("ii90_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_90_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_90_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_90_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_90_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii90_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_90_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_90_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_90_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_90_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii90_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_90_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_90_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_90_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END


IF ~~ THEN BEGIN levelup_90_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii90_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_90_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_90_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_90_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_90_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii90_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_90_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_90_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_90_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_90_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii90_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_90_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_90_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog91", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the short sword eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog91", "LOCALS", 0)~ GOTO levelup_91
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog91", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_91
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii91", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_1_fail


    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii91", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii91_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii91", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii91", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii91_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_2_fail

    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii91", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii91_ok2", "LOCALS", 0)
        GlobalGT("ii91_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii91", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii91", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii91_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_3_fail

    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii91", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii91_ok3", "LOCALS", 0)
        GlobalGT("ii91_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii91", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii91", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii91_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_4_fail

    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii91", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii91_ok4", "LOCALS", 0)
        GlobalGT("ii91_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii91", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii91", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii91_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_5_fail

    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii91", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii91_ok5", "LOCALS", 0)
        GlobalGT("ii91_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_5_ask_for_gold


    IF ~GlobalGT("ii91_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_91_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_91_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_91_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_91_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii91_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_91_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_91_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_91_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_91_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii91_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_91_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_91_3_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_91_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_91_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii91_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_91_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_91_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_91_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_91_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii91_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_91_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_91_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_91_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_91_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii91_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_91_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_91_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END









IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog92", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the axe eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog92", "LOCALS", 0)~ GOTO levelup_92
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog92", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_92
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii92", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_1_fail


    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii92", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii92_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii92", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii92", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii92_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_2_fail

    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii92", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii92_ok2", "LOCALS", 0)
        GlobalGT("ii92_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii92", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii92", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii92_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_3_fail

    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii92", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii92_ok3", "LOCALS", 0)
        GlobalGT("ii92_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii92", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii92", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii92_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_4_fail

    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii92", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii92_ok4", "LOCALS", 0)
        GlobalGT("ii92_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii92", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii92", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii92_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_5_fail

    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii92", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii92_ok5", "LOCALS", 0)
        GlobalGT("ii92_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_5_ask_for_gold


    IF ~GlobalGT("ii92_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_92_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_92_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_91_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_92_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii92_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_92_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_92_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_91_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_92_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii92_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_92_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_92_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_91_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_92_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii92_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_92_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_92_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_91_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_92_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii92_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_92_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_92_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_91_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_92_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii92_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_92_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_92_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END











IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog93", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the two-handed sword eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog93", "LOCALS", 0)~ GOTO levelup_93
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog93", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_93
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii93", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_1_fail


    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii93", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii93_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii93", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii93", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii93_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_2_fail

    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii93", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii93_ok2", "LOCALS", 0)
        GlobalGT("ii93_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii93", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii93", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii93_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_3_fail

    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii93", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii93_ok3", "LOCALS", 0)
        GlobalGT("ii93_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii93", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii93", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii93_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_4_fail

    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii93", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii93_ok4", "LOCALS", 0)
        GlobalGT("ii93_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii93", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii93", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii93_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_5_fail

    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii93", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii93_ok5", "LOCALS", 0)
        GlobalGT("ii93_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_5_ask_for_gold


    IF ~GlobalGT("ii93_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_93_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_93_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_93_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_93_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii93_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_93_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_93_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_93_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_93_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii93_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_93_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_93_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_93_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_93_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii93_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_93_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_93_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_93_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_93_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii93_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_93_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_93_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_93_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_93_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii93_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_93_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_93_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog94", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the katana eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog94", "LOCALS", 0)~ GOTO levelup_94
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog94", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_94
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii94", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_1_fail


    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii94", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii94_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii94", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii94", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii94_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_2_fail

    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii94", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii94_ok2", "LOCALS", 0)
        GlobalGT("ii94_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii94", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii94", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii94_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_3_fail

    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii94", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii94_ok3", "LOCALS", 0)
        GlobalGT("ii94_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii94", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii94", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii94_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_4_fail

    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii94", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii94_ok4", "LOCALS", 0)
        GlobalGT("ii94_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii94", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii94", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii94_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_5_fail

    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii94", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii94_ok5", "LOCALS", 0)
        GlobalGT("ii94_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_5_ask_for_gold


    IF ~GlobalGT("ii94_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_94_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_94_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_94_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_94_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii94_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_94_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_94_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_94_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END


IF ~~ THEN BEGIN levelup_94_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii94_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_94_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_94_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_94_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_94_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii94_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_94_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_94_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_94_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_94_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii94_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_94_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_94_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_94_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_94_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii94_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_94_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_94_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog95", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the scimitar eh? That can be arragned..~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog95", "LOCALS", 0)~ GOTO levelup_95
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog95", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_95
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii95", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_1_fail


    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii95", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii95_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii95", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii95", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii95_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_2_fail

    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii95", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii95_ok2", "LOCALS", 0)
        GlobalGT("ii95_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii95", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii95", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii95_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_3_fail

    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii95", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii95_ok3", "LOCALS", 0)
        GlobalGT("ii95_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii95", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii95", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii95_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_4_fail

    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii95", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii95_ok4", "LOCALS", 0)
        GlobalGT("ii95_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii95", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii95", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii95_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_5_fail

    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii95", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii95_ok5", "LOCALS", 0)
        GlobalGT("ii95_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_5_ask_for_gold


    IF ~GlobalGT("ii95_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_95_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END

IF ~~ THEN BEGIN levelup_95_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_95_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_95_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii95_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_95_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_95_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_95_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_95_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii95_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_95_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_95_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_95_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_95_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii95_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_95_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_95_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_95_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_95_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii95_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_95_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_95_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_95_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_95_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii95_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_95_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_95_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog96", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the dagger eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog96", "LOCALS", 0)~ GOTO levelup_96
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog96", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_96
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii96", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_1_fail


    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii96", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii96_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii96", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii96", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii96_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_2_fail

    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii96", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii96_ok2", "LOCALS", 0)
        GlobalGT("ii96_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii96", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii96", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii96_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_3_fail

    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii96", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii96_ok3", "LOCALS", 0)
        GlobalGT("ii96_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii96", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii96", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii96_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_4_fail

    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii96", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii96_ok4", "LOCALS", 0)
        GlobalGT("ii96_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii96", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii96", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii96_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_5_fail

    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii96", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii96_ok5", "LOCALS", 0)
        GlobalGT("ii96_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_5_ask_for_gold


    IF ~GlobalGT("ii96_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_96_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_96_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_96_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_96_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii96_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_96_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_96_2_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_96_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_96_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii96_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_96_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_96_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_96_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_96_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii96_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_96_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_96_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_96_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_96_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii96_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_96_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_96_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_96_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_96_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii96_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_96_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_96_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog97", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the warhammer eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog97", "LOCALS", 0)~ GOTO levelup_97
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog97", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_97
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii97", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_1_fail


    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii97", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii97_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii97", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii97", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii97_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_2_fail

    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii97", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii97_ok2", "LOCALS", 0)
        GlobalGT("ii97_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii97", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii97", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii97_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_3_fail

    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii97", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii97_ok3", "LOCALS", 0)
        GlobalGT("ii97_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii97", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii97", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii97_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_4_fail

    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii97", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii97_ok4", "LOCALS", 0)
        GlobalGT("ii97_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii97", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii97", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii97_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_5_fail

    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii97", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii97_ok5", "LOCALS", 0)
        GlobalGT("ii97_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_5_ask_for_gold


    IF ~GlobalGT("ii97_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_97_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_97_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_97_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_97_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii97_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_97_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_97_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_97_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_97_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii97_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_97_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_97_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_97_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_97_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii97_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_97_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_97_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_97_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_97_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii97_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_97_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_97_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_97_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_97_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii97_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_97_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_97_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog98", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the spear eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog98", "LOCALS", 0)~ GOTO levelup_98
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog98", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_98
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii98", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_1_fail


    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii98", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii98_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii98", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii98", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii98_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_2_fail

    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii98", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii98_ok2", "LOCALS", 0)
        GlobalGT("ii98_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii98", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii98", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii98_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_3_fail

    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii98", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii98_ok3", "LOCALS", 0)
        GlobalGT("ii98_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii98", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii98", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii98_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_4_fail

    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii98", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii98_ok4", "LOCALS", 0)
        GlobalGT("ii98_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii98", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii98", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii98_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_5_fail

    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii98", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii98_ok5", "LOCALS", 0)
        GlobalGT("ii98_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_5_ask_for_gold


    IF ~GlobalGT("ii98_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_98_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_98_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_98_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_98_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii98_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_98_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_98_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_98_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_98_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii98_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_98_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_98_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_98_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_98_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii98_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_98_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_98_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_98_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_98_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii98_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_98_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_98_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_98_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_98_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii98_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_98_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_98_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END









IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog99", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the halbard eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog99", "LOCALS", 0)~ GOTO levelup_99
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog99", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_99
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii99", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_1_fail


    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii99", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii99_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii99", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii99", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii99_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_2_fail

    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii99", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii99_ok2", "LOCALS", 0)
        GlobalGT("ii99_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii99", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii99", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii99_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_3_fail

    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii99", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii99_ok3", "LOCALS", 0)
        GlobalGT("ii99_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii99", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii99", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii99_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_4_fail

    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii99", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii99_ok4", "LOCALS", 0)
        GlobalGT("ii99_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii99", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii99", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii99_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_5_fail

    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii99", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii99_ok5", "LOCALS", 0)
        GlobalGT("ii99_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_5_ask_for_gold


    IF ~GlobalGT("ii99_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_99_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END

IF ~~ THEN BEGIN levelup_99_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_99_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_99_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii99_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_99_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_99_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_99_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_99_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii99_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_99_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_99_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_99_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_99_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii99_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_99_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_99_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_99_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_99_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii99_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_99_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_99_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_99_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_99_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii99_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_99_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_99_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog100", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the flail eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog100", "LOCALS", 0)~ GOTO levelup_100
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog100", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_100
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii100", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_1_fail


    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii100", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii100_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii100", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii100", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii100_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_2_fail

    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii100", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii100_ok2", "LOCALS", 0)
        GlobalGT("ii100_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii100", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii100", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii100_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_3_fail

    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii100", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii100_ok3", "LOCALS", 0)
        GlobalGT("ii100_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii100", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii100", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii100_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_4_fail

    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii100", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii100_ok4", "LOCALS", 0)
        GlobalGT("ii100_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii100", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii100", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii100_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_5_fail

    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii100", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii100_ok5", "LOCALS", 0)
        GlobalGT("ii100_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_5_ask_for_gold


    IF ~GlobalGT("ii100_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_100_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_100_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_100_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_100_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii100_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_100_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_100_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_100_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_100_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii100_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_100_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_100_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_100_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_100_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii100_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_100_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_100_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_100_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_100_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii100_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_100_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_100_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_100_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_100_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii100_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_100_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_100_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog101", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the mace eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog101", "LOCALS", 0)~ GOTO levelup_101
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog101", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_101
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii101", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_1_fail


    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii101", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii101_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii101", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii101", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii101_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_2_fail

    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii101", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii101_ok2", "LOCALS", 0)
        GlobalGT("ii101_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii101", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii101", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii101_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_3_fail

    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii101", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii101_ok3", "LOCALS", 0)
        GlobalGT("ii101_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii101", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii101", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii101_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_4_fail

    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii101", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii101_ok4", "LOCALS", 0)
        GlobalGT("ii101_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii101", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii101", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii101_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_5_fail

    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii101", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii101_ok5", "LOCALS", 0)
        GlobalGT("ii101_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_5_ask_for_gold


    IF ~GlobalGT("ii101_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_101_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_101_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_101_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_101_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii101_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_101_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_101_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_101_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_101_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii101_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_101_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_101_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_101_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_101_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii101_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_101_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_101_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_101_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_101_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii101_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_101_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_101_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_101_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_101_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii101_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_101_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_101_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog102", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the quarterstaff eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog102", "LOCALS", 0)~ GOTO levelup_102
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog102", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_102
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii102", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_1_fail


    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii102", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii102_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii102", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii102", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii102_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_2_fail

    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii102", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii102_ok2", "LOCALS", 0)
        GlobalGT("ii102_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii102", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii102", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii102_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_3_fail

    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii102", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii102_ok3", "LOCALS", 0)
        GlobalGT("ii102_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii102", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii102", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii102_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_4_fail

    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii102", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii102_ok4", "LOCALS", 0)
        GlobalGT("ii102_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii102", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii102", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii102_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_5_fail

    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii102", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii102_ok5", "LOCALS", 0)
        GlobalGT("ii102_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_5_ask_for_gold


    IF ~GlobalGT("ii102_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_102_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_102_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_102_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_102_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii102_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_102_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_102_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_102_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_102_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii102_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_102_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_102_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_102_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_102_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii102_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_102_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_102_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_102_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_102_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii102_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_102_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_102_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_102_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_102_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii102_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_102_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_102_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog103", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the crossbow eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog103", "LOCALS", 0)~ GOTO levelup_103
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog103", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_103
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii103", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_1_fail


    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii103", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii103_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii103", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii103", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii103_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_2_fail

    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii103", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii103_ok2", "LOCALS", 0)
        GlobalGT("ii103_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii103", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii103", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii103_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_3_fail

    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii103", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii103_ok3", "LOCALS", 0)
        GlobalGT("ii103_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii103", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii103", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii103_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_4_fail

    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii103", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii103_ok4", "LOCALS", 0)
        GlobalGT("ii103_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii103", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii103", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii103_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_5_fail

    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii103", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii103_ok5", "LOCALS", 0)
        GlobalGT("ii103_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_5_ask_for_gold


    IF ~GlobalGT("ii103_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_103_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END

IF ~~ THEN BEGIN levelup_103_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_103_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_103_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii103_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_103_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_103_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_103_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_103_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii103_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_103_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_103_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_103_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_103_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii103_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_103_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_103_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_103_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_103_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii103_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_103_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_103_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_103_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_103_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii103_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_103_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_103_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog104", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the longbow eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog104", "LOCALS", 0)~ GOTO levelup_104
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog104", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_104
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii104", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_1_fail


    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii104", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii104_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii104", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii104", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii104_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_2_fail

    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii104", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii104_ok2", "LOCALS", 0)
        GlobalGT("ii104_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii104", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii104", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii104_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_3_fail

    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii104", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii104_ok3", "LOCALS", 0)
        GlobalGT("ii104_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii104", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii104", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii104_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_4_fail

    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii104", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii104_ok4", "LOCALS", 0)
        GlobalGT("ii104_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii104", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii104", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii104_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_5_fail

    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii104", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii104_ok5", "LOCALS", 0)
        GlobalGT("ii104_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_5_ask_for_gold


    IF ~GlobalGT("ii104_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_104_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_104_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_104_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_104_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii104_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_104_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_104_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_104_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_104_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii104_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_104_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_104_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_104_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_104_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii104_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_104_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_104_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_104_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_104_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii104_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_104_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_104_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_104_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_104_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii104_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_104_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_104_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog105", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the shortbow eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog105", "LOCALS", 0)~ GOTO levelup_105
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog105", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_105
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii105", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_1_fail


    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii105", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii105_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii105", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii105", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii105_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_2_fail

    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii105", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii105_ok2", "LOCALS", 0)
        GlobalGT("ii105_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii105", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii105", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii105_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_3_fail

    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii105", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii105_ok3", "LOCALS", 0)
        GlobalGT("ii105_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii105", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii105", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii105_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_4_fail

    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii105", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii105_ok4", "LOCALS", 0)
        GlobalGT("ii105_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii105", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii105", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii105_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_5_fail

    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii105", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii105_ok5", "LOCALS", 0)
        GlobalGT("ii105_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_5_ask_for_gold


    IF ~GlobalGT("ii105_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_105_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_105_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_105_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END


IF ~~ THEN BEGIN levelup_105_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii105_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_105_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_105_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_105_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_105_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii105_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_105_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_105_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_105_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_105_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii105_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_105_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_105_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_105_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_105_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii105_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_105_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_105_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_105_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_105_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii105_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_105_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_105_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog106", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with darts eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog106", "LOCALS", 0)~ GOTO levelup_106
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog106", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_106
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii106", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_1_fail


    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii106", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii106_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii106", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii106", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii106_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_2_fail

    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii106", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii106_ok2", "LOCALS", 0)
        GlobalGT("ii106_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii106", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii106", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii106_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_3_fail

    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii106", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii106_ok3", "LOCALS", 0)
        GlobalGT("ii106_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii106", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii106", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii106_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_4_fail

    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii106", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii106_ok4", "LOCALS", 0)
        GlobalGT("ii106_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii106", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii106", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii106_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_5_fail

    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii106", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii106_ok5", "LOCALS", 0)
        GlobalGT("ii106_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_5_ask_for_gold


    IF ~GlobalGT("ii106_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_106_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_106_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_106_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_106_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii106_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_106_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_106_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_106_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_106_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii106_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_106_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_106_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_106_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_106_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii106_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_106_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_106_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_106_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_106_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii106_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_106_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_106_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_106_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_106_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii106_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_106_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_106_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog107", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with the sling eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog107", "LOCALS", 0)~ GOTO levelup_107
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog107", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_107
  SAY ~Show me your current level, and we'll take it from there.~
    IF ~GlobalLT("ii107", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_1_fail


    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii107", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii107_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii107", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii107", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii107_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_2_fail

    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii107", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii107_ok2", "LOCALS", 0)
        GlobalGT("ii107_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii107", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii107", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii107_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_3_fail

    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii107", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii107_ok3", "LOCALS", 0)
        GlobalGT("ii107_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii107", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii107", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii107_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_4_fail

    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii107", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii107_ok4", "LOCALS", 0)
        GlobalGT("ii107_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii107", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii107", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii107_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_5_fail

    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii107", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii107_ok5", "LOCALS", 0)
        GlobalGT("ii107_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_5_ask_for_gold


    IF ~GlobalGT("ii107_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_107_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END

IF ~~ THEN BEGIN levelup_107_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_107_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_107_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii107_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_107_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_107_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_107_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_107_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii107_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_107_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_107_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_107_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_107_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii107_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_107_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_107_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_107_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_107_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii107_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_107_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_107_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_107_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_107_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii107_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_107_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_107_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog108", "LOCALS", 1)~ THEN BEGIN initial_main
SAY ~Training with blackjacks eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog108", "LOCALS", 0)~ GOTO levelup_108
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog108", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_108
    SAY ~Very well. Show me your current skill level.~
    IF ~GlobalLT("ii108", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_1_fail


    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii108", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii108_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii108", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii108", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii108_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_2_fail

    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii108", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii108_ok2", "LOCALS", 0)
        GlobalGT("ii108_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii108", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii108", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii108_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_3_fail

    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii108", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii108_ok3", "LOCALS", 0)
        GlobalGT("ii108_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii108", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii108", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii108_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_4_fail

    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii108", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii108_ok4", "LOCALS", 0)
        GlobalGT("ii108_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii108", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii108", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii108_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_5_fail

    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii108", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii108_ok5", "LOCALS", 0)
        GlobalGT("ii108_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_5_ask_for_gold


    IF ~GlobalGT("ii108_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_108_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END

IF ~~ THEN BEGIN levelup_108_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_108_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_108_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii108_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_108_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_108_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_108_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_108_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii108_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_108_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_108_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_108_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_108_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii108_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_108_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_108_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_108_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_108_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii108_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_108_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_108_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_108_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_108_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii108_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_108_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_108_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog109", "LOCALS", 1)~ THEN BEGIN initial_main
SAY ~Training with guns eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog109", "LOCALS", 0)~ GOTO levelup_109
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog109", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_109
    SAY ~Very well. Show me your current skill level.~
    IF ~GlobalLT("ii109", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_1_fail


    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii109", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii109_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii109", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii109", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii109_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_2_fail

    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii109", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii109_ok2", "LOCALS", 0)
        GlobalGT("ii109_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii109", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii109", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii109_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_3_fail

    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii109", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii109_ok3", "LOCALS", 0)
        GlobalGT("ii109_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii109", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii109", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii109_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_4_fail

    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii109", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii109_ok4", "LOCALS", 0)
        GlobalGT("ii109_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii109", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii109", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii109_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_5_fail

    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii109", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii109_ok5", "LOCALS", 0)
        GlobalGT("ii109_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_5_ask_for_gold


    IF ~GlobalGT("ii109_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_109_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_109_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_109_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_109_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii109_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_109_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_109_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_109_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_109_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii109_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_109_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_109_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_109_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_109_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii109_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_109_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_109_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_109_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_109_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii109_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_109_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_109_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_109_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_109_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii109_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_109_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_109_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog110", "LOCALS", 1)~ THEN BEGIN initial_main
SAY ~Training with martial arts eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog110", "LOCALS", 0)~ GOTO levelup_110
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog110", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_110
    SAY ~Very well. Show me your current skill level.~
    IF ~GlobalLT("ii110", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_1_fail


    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii110", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii110_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii110", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii110", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii110_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_2_fail

    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii110", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii110_ok2", "LOCALS", 0)
        GlobalGT("ii110_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii110", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii110", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii110_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_3_fail

    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii110", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii110_ok3", "LOCALS", 0)
        GlobalGT("ii110_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii110", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii110", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii110_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_4_fail

    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii110", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii110_ok4", "LOCALS", 0)
        GlobalGT("ii110_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii110", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii110", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii110_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_5_fail

    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii110", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii110_ok5", "LOCALS", 0)
        GlobalGT("ii110_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_5_ask_for_gold


    IF ~GlobalGT("ii110_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_110_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_110_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_110_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_110_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii110_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_110_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_110_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_110_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_110_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii110_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_110_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_110_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_110_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_110_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii110_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_110_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_110_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_110_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_110_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii110_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_110_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_110_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_110_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_110_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii110_ok5", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_110_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_110_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog111", "LOCALS", 1)~ THEN BEGIN initial_main
SAY ~Training with two-handed weapons eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog111", "LOCALS", 0)~ GOTO levelup_111
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog111", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_111
    SAY ~Very well. Show me your current skill level.~
    IF ~GlobalLT("ii111", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_1_fail


    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii111", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii111_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii111", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii111", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii111_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_2_fail

    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii111", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii111_ok2", "LOCALS", 0)
        GlobalGT("ii111_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii111", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii111", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii111_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_3_fail

    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii111", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii111_ok3", "LOCALS", 0)
        GlobalGT("ii111_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii111", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii111", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii111_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_4_fail

    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii111", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii111_ok4", "LOCALS", 0)
        GlobalGT("ii111_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii111", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii111", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii111_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_5_fail

    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii111", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii111_ok5", "LOCALS", 0)
        GlobalGT("ii111_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_5_ask_for_gold


    IF ~GlobalGT("ii111_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_111_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_111_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_111_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_111_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii111_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_111_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_111_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_111_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_111_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii111_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_111_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_111_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_111_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_111_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii111_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_111_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_111_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_111_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_111_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii111_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_111_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_111_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_111_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_111_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii111_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_111_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_111_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog112", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with sword and shield fighting eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog112", "LOCALS", 0)~ GOTO levelup_112
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog112", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_112
    SAY ~Very well. Show me your current skill level.~
    IF ~GlobalLT("ii112", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_1_fail


    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii112", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii112_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii112", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii112", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii112_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_2_fail

    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii112", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii112_ok2", "LOCALS", 0)
        GlobalGT("ii112_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii112", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii112", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii112_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_3_fail

    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii112", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii112_ok3", "LOCALS", 0)
        GlobalGT("ii112_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii112", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii112", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii112_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_4_fail

    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii112", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii112_ok4", "LOCALS", 0)
        GlobalGT("ii112_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii112", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii112", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii112_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_5_fail

    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii112", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii112_ok5", "LOCALS", 0)
        GlobalGT("ii112_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_5_ask_for_gold


    IF ~GlobalGT("ii112_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_112_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_112_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_112_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_112_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii112_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_112_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_112_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_112_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_112_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii112_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_112_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_112_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_113_1
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_112_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii112_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_112_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_112_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_112_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_112_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii112_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_112_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_112_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_112_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_112_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii112_ok5", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_112_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_112_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END









IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog113", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with sinle weapon fighting eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog113", "LOCALS", 0)~ GOTO levelup_113
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog113", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_113
  SAY ~Very well. Show me your current skill level.~
    IF ~GlobalLT("ii113", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_1_fail


    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii113", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii113_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii113", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii113", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii113_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_2_fail

    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii113", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii113_ok2", "LOCALS", 0)
        GlobalGT("ii113_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii113", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii113", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii113_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_3_fail

    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii113", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii113_ok3", "LOCALS", 0)
        GlobalGT("ii113_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii113", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii113", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii113_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_4_fail

    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii113", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii113_ok4", "LOCALS", 0)
        GlobalGT("ii113_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii113", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii113", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii113_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_5_fail

    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii113", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii113_ok5", "LOCALS", 0)
        GlobalGT("ii113_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_5_ask_for_gold


    IF ~GlobalGT("ii113_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_113_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_113_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_113_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_113_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii113_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_113_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_113_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_113_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_113_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii113_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_113_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_113_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_113_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_113_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii113_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_113_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_113_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_113_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_113_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii113_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_113_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_113_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_113_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_113_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii113_ok5", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_113_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_113_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END











IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog114", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with two weapon fighting eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog114", "LOCALS", 0)~ GOTO levelup_114
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog114", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_114
    SAY ~Very well. Show me your current skill level.~
    IF ~GlobalLT("ii114", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_1_fail


    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii114", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii114_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii114", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii114", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii114_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_2_fail

    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii114", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii114_ok2", "LOCALS", 0)
        GlobalGT("ii114_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii114", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii114", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii114_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_3_fail

    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii114", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii114_ok3", "LOCALS", 0)
        GlobalGT("ii114_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii114", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii114", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii114_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_4_fail

    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii114", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii114_ok4", "LOCALS", 0)
        GlobalGT("ii114_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii114", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii114", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii114_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_5_fail

    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii114", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii114_ok5", "LOCALS", 0)
        GlobalGT("ii114_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_5_ask_for_gold


    IF ~GlobalGT("ii114_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_114_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_114_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_114_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_114_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii114_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_114_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_114_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_114_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_114_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii114_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_114_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_114_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_114_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_114_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii114_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_114_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_114_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_114_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_114_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii114_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_114_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_114_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_114_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_114_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii114_ok5", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_114_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_114_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog115", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY ~Training with clubs eh? That can be arranged.~
    IF ~~ THEN REPLY ~Good.~ DO ~SetGlobal("iiLearnThroughUseDialog115", "LOCALS", 0)~ GOTO levelup_115
    IF ~~ THEN REPLY ~I've changed my mind. Goodbye.~ DO ~SetGlobal("iiLearnThroughUseDialog115", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_115
  SAY ~Very well. Show me your current skill level.~
    IF ~GlobalLT("ii115", "LOCALS", %_STRIKES_FOR_ONE_%)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_1_fail


    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii115", "LOCALS", %_STRIKES_FOR_ONE_%)
        Global("ii115_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", %_STRIKES_FOR_ONE_%)
          Global("ii115", "LOCALS", %_STRIKES_FOR_ONE_%)
        GlobalLT("ii115", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalGT("ii115_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_2_fail

    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii115", "LOCALS", %_STRIKES_FOR_TWO_%)
        Global("ii115_ok2", "LOCALS", 0)
        GlobalGT("ii115_ok1", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", %_STRIKES_FOR_TWO_%)
          Global("ii115", "LOCALS", %_STRIKES_FOR_TWO_%)
        GlobalLT("ii115", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalGT("ii115_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_3_fail

    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii115", "LOCALS", %_STRIKES_FOR_THREE_%)
        Global("ii115_ok3", "LOCALS", 0)
        GlobalGT("ii115_ok2", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", %_STRIKES_FOR_THREE_%)
          Global("ii115", "LOCALS", %_STRIKES_FOR_THREE_%)
        GlobalLT("ii115", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalGT("ii115_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_4_fail

    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii115", "LOCALS", %_STRIKES_FOR_FOUR_%)
        Global("ii115_ok4", "LOCALS", 0)
        GlobalGT("ii115_ok3", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", %_STRIKES_FOR_FOUR_%)
          Global("ii115", "LOCALS", %_STRIKES_FOR_FOUR_%)
        GlobalLT("ii115", "LOCALS", %_STRIKES_FOR_FIVE_%)
        GlobalGT("ii115_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_5_fail

    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", %_STRIKES_FOR_FIVE_%)
          Global("ii115", "LOCALS", %_STRIKES_FOR_FIVE_%)
        Global("ii115_ok5", "LOCALS", 0)
        GlobalGT("ii115_ok4", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_5_ask_for_gold


    IF ~GlobalGT("ii115_ok5", "LOCALS", 0)~ THEN REPLY ~Lets get started.~ GOTO levelup_115_max


    IF ~~ THEN REPLY ~On second thoughts, I don't need any training at the moment.~ EXIT
END


IF ~~ THEN BEGIN levelup_115_1_ask_for_gold
  SAY ~I can provide training, it will cost %level1gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level1gold%)
          PartyGold(%level1gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level1gold%)~ GOTO levelup_115_1
    IF ~PartyGoldLT(%level1gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_115_1
  SAY ~Congratulations friend, you have made a fine start.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii115_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_115_1_fail
  SAY ~Just as a sculptor needs stone to sculpt, so a trainer needs something to build upon. Come back when you've more experience of battle my friend.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_115_2_ask_for_gold
  SAY ~I can provide training, it will cost %level2gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level2gold%)
          PartyGold(%level2gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level2gold%)~ GOTO levelup_115_2
    IF ~PartyGoldLT(%level2gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_115_2
  SAY ~Congratulations friend, your technique is improving.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii115_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_115_2_fail
  SAY ~You should master what you already know before trying to progress to the next level.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_115_3_ask_for_gold
  SAY ~I can provide training, it will cost %level3gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level3gold%)
          PartyGold(%level3gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level3gold%)~ GOTO levelup_115_3
    IF ~PartyGoldLT(%level3gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_115_3
  SAY ~Good, good, you learn quickly.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii115_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_115_3_fail
  SAY ~Your technique is good, but not perfect. Practice your current skills, then perhaps I will train you.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_115_4_ask_for_gold
  SAY ~I can provide training, it will cost %level4gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level4gold%)
          PartyGold(%level4gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level4gold%)~ GOTO levelup_115_4
    IF ~PartyGoldLT(%level4gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_115_4
  SAY ~You handle your weapon well, though let me show you a few more tricks...~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii115_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_115_4_fail
  SAY ~Your basic skill is sound, though you need more practice with some aspects. Come back to me when you have practiced more.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END

IF ~~ THEN BEGIN levelup_115_5_ask_for_gold
  SAY ~I can provide training, it will cost %level5gold%gp you though.~
    IF ~OR(2)
          PartyGoldGT(%level5gold%)
          PartyGold(%level5gold%)~ THEN REPLY ~I will pay.~ DO ~TakePartyGold(%level5gold%)~ GOTO levelup_115_5
    IF ~PartyGoldLT(%level5gold%)~ THEN REPLY ~I don't have that much gold.~ EXIT
END

IF ~~ THEN BEGIN levelup_115_5
  SAY ~Excellent! You know how to use your weapon well. I can teach you one last thing.~
    IF ~~ THEN REPLY ~Thank you.~ DO ~SetGlobal("ii115_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_115_5_fail
  SAY ~I see you are adept at using your weapon, however, before I can train you further, you must learn to use your weapon as an extension of yourself. This will come with practice, visit me again when you have more experience of battle.~
    IF ~~ THEN REPLY ~I will return.~ EXIT
END


IF ~~ THEN BEGIN levelup_115_max
  SAY ~You already know everything I can teach, rarely have I seen a weapon mastered so well.~
    IF ~~ THEN REPLY ~Thank you.~ EXIT
END

END