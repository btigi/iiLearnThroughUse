APPEND %_DIALOG_NAME_%



IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog89", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3000
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog89", "LOCALS", 0)~ GOTO levelup_89
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog89", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_89
  SAY @3003
    IF ~GlobalLT("ii89", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_89_1_fail


    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", @3004)
          Global("ii89", "LOCALS", @3004)
        Global("ii89_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_89_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", @3004)
          Global("ii89", "LOCALS", @3004)
        GlobalLT("ii89", "LOCALS", @3006)
        GlobalGT("ii89_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_89_2_fail

    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", @3006)
          Global("ii89", "LOCALS", @3006)
        Global("ii89_ok2", "LOCALS", 0)
        GlobalGT("ii89_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_89_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", @3006)
          Global("ii89", "LOCALS", @3006)
        GlobalLT("ii89", "LOCALS", @3007)
        GlobalGT("ii89_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_89_3_fail

    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", @3007)
          Global("ii89", "LOCALS", @3007)
        Global("ii89_ok3", "LOCALS", 0)
        GlobalGT("ii89_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_89_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", @3007)
          Global("ii89", "LOCALS", @3007)
        GlobalLT("ii89", "LOCALS", @3008)
        GlobalGT("ii89_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_89_4_fail

    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", @3008)
          Global("ii89", "LOCALS", @3008)
        Global("ii89_ok4", "LOCALS", 0)
        GlobalGT("ii89_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_89_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", @3008)
          Global("ii89", "LOCALS", @3008)
        GlobalLT("ii89", "LOCALS", @3009)
        GlobalGT("ii89_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_89_5_fail

    IF ~OR(2)
          GlobalGT("ii89", "LOCALS", @3009)
          Global("ii89", "LOCALS", @3009)
        Global("ii89_ok5", "LOCALS", 0)
        GlobalGT("ii89_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_89_5_ask_for_gold


    IF ~GlobalGT("ii89_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_89_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_89_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_89_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_89_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii89_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_89_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_89_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_89_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_89_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii89_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_89_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_89_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_89_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_89_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii89_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_89_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_89_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_89_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_89_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii89_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_89_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_89_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_89_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_89_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii89_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_89_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_89_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog90", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3036
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog90", "LOCALS", 0)~ GOTO levelup_90
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog90", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_90
  SAY @3003
    IF ~GlobalLT("ii90", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_90_1_fail


    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", @3004)
          Global("ii90", "LOCALS", @3004)
        Global("ii90_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_90_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", @3004)
          Global("ii90", "LOCALS", @3004)
        GlobalLT("ii90", "LOCALS", @3006)
        GlobalGT("ii90_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_90_2_fail

    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", @3006)
          Global("ii90", "LOCALS", @3006)
        Global("ii90_ok2", "LOCALS", 0)
        GlobalGT("ii90_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_90_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", @3006)
          Global("ii90", "LOCALS", @3006)
        GlobalLT("ii90", "LOCALS", @3007)
        GlobalGT("ii90_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_90_3_fail

    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", @3007)
          Global("ii90", "LOCALS", @3007)
        Global("ii90_ok3", "LOCALS", 0)
        GlobalGT("ii90_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_90_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", @3007)
          Global("ii90", "LOCALS", @3007)
        GlobalLT("ii90", "LOCALS", @3008)
        GlobalGT("ii90_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_90_4_fail

    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", @3008)
          Global("ii90", "LOCALS", @3008)
        Global("ii90_ok4", "LOCALS", 0)
        GlobalGT("ii90_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_90_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", @3008)
          Global("ii90", "LOCALS", @3008)
        GlobalLT("ii90", "LOCALS", @3009)
        GlobalGT("ii90_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_90_5_fail

    IF ~OR(2)
          GlobalGT("ii90", "LOCALS", @3009)
          Global("ii90", "LOCALS", @3009)
        Global("ii90_ok5", "LOCALS", 0)
        GlobalGT("ii90_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_90_5_ask_for_gold


    IF ~GlobalGT("ii90_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_90_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_90_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_90_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_90_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii90_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_90_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_90_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_90_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_90_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii90_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_90_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_90_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_90_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END


IF ~~ THEN BEGIN levelup_90_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii90_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_90_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_90_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_90_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_90_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii90_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_90_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_90_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_90_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_90_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii90_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_90_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_90_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog91", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3037
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog91", "LOCALS", 0)~ GOTO levelup_91
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog91", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_91
  SAY @3003
    IF ~GlobalLT("ii91", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_91_1_fail


    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", @3004)
          Global("ii91", "LOCALS", @3004)
        Global("ii91_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_91_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", @3004)
          Global("ii91", "LOCALS", @3004)
        GlobalLT("ii91", "LOCALS", @3006)
        GlobalGT("ii91_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_91_2_fail

    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", @3006)
          Global("ii91", "LOCALS", @3006)
        Global("ii91_ok2", "LOCALS", 0)
        GlobalGT("ii91_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_91_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", @3006)
          Global("ii91", "LOCALS", @3006)
        GlobalLT("ii91", "LOCALS", @3007)
        GlobalGT("ii91_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_91_3_fail

    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", @3007)
          Global("ii91", "LOCALS", @3007)
        Global("ii91_ok3", "LOCALS", 0)
        GlobalGT("ii91_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_91_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", @3007)
          Global("ii91", "LOCALS", @3007)
        GlobalLT("ii91", "LOCALS", @3008)
        GlobalGT("ii91_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_91_4_fail

    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", @3008)
          Global("ii91", "LOCALS", @3008)
        Global("ii91_ok4", "LOCALS", 0)
        GlobalGT("ii91_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_91_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", @3008)
          Global("ii91", "LOCALS", @3008)
        GlobalLT("ii91", "LOCALS", @3009)
        GlobalGT("ii91_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_91_5_fail

    IF ~OR(2)
          GlobalGT("ii91", "LOCALS", @3009)
          Global("ii91", "LOCALS", @3009)
        Global("ii91_ok5", "LOCALS", 0)
        GlobalGT("ii91_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_91_5_ask_for_gold


    IF ~GlobalGT("ii91_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_91_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_91_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_91_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_91_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii91_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_91_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_91_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_91_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_91_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii91_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_91_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_91_3_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_91_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_91_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii91_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_91_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_91_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_91_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_91_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii91_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_91_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_91_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_91_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_91_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii91_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_91_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_91_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END









IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog92", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3038
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog92", "LOCALS", 0)~ GOTO levelup_92
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog92", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_92
  SAY @3003
    IF ~GlobalLT("ii92", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_92_1_fail


    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", @3004)
          Global("ii92", "LOCALS", @3004)
        Global("ii92_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_92_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", @3004)
          Global("ii92", "LOCALS", @3004)
        GlobalLT("ii92", "LOCALS", @3006)
        GlobalGT("ii92_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_92_2_fail

    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", @3006)
          Global("ii92", "LOCALS", @3006)
        Global("ii92_ok2", "LOCALS", 0)
        GlobalGT("ii92_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_92_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", @3006)
          Global("ii92", "LOCALS", @3006)
        GlobalLT("ii92", "LOCALS", @3007)
        GlobalGT("ii92_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_92_3_fail

    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", @3007)
          Global("ii92", "LOCALS", @3007)
        Global("ii92_ok3", "LOCALS", 0)
        GlobalGT("ii92_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_92_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", @3007)
          Global("ii92", "LOCALS", @3007)
        GlobalLT("ii92", "LOCALS", @3008)
        GlobalGT("ii92_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_92_4_fail

    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", @3008)
          Global("ii92", "LOCALS", @3008)
        Global("ii92_ok4", "LOCALS", 0)
        GlobalGT("ii92_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_92_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", @3008)
          Global("ii92", "LOCALS", @3008)
        GlobalLT("ii92", "LOCALS", @3009)
        GlobalGT("ii92_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_92_5_fail

    IF ~OR(2)
          GlobalGT("ii92", "LOCALS", @3009)
          Global("ii92", "LOCALS", @3009)
        Global("ii92_ok5", "LOCALS", 0)
        GlobalGT("ii92_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_92_5_ask_for_gold


    IF ~GlobalGT("ii92_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_92_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_92_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_91_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_92_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii92_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_92_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_92_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_91_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_92_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii92_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_92_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_92_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_91_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_92_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii92_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_92_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_92_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_91_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_92_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii92_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_92_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_92_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_91_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_92_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii92_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_92_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_92_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END











IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog93", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3039
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog93", "LOCALS", 0)~ GOTO levelup_93
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog93", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_93
  SAY @3003
    IF ~GlobalLT("ii93", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_93_1_fail


    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", @3004)
          Global("ii93", "LOCALS", @3004)
        Global("ii93_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_93_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", @3004)
          Global("ii93", "LOCALS", @3004)
        GlobalLT("ii93", "LOCALS", @3006)
        GlobalGT("ii93_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_93_2_fail

    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", @3006)
          Global("ii93", "LOCALS", @3006)
        Global("ii93_ok2", "LOCALS", 0)
        GlobalGT("ii93_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_93_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", @3006)
          Global("ii93", "LOCALS", @3006)
        GlobalLT("ii93", "LOCALS", @3007)
        GlobalGT("ii93_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_93_3_fail

    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", @3007)
          Global("ii93", "LOCALS", @3007)
        Global("ii93_ok3", "LOCALS", 0)
        GlobalGT("ii93_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_93_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", @3007)
          Global("ii93", "LOCALS", @3007)
        GlobalLT("ii93", "LOCALS", @3008)
        GlobalGT("ii93_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_93_4_fail

    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", @3008)
          Global("ii93", "LOCALS", @3008)
        Global("ii93_ok4", "LOCALS", 0)
        GlobalGT("ii93_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_93_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", @3008)
          Global("ii93", "LOCALS", @3008)
        GlobalLT("ii93", "LOCALS", @3009)
        GlobalGT("ii93_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_93_5_fail

    IF ~OR(2)
          GlobalGT("ii93", "LOCALS", @3009)
          Global("ii93", "LOCALS", @3009)
        Global("ii93_ok5", "LOCALS", 0)
        GlobalGT("ii93_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_93_5_ask_for_gold


    IF ~GlobalGT("ii93_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_93_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_93_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_93_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_93_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii93_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_93_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_93_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_93_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_93_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii93_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_93_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_93_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_93_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_93_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii93_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_93_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_93_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_93_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_93_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii93_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_93_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_93_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_93_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_93_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii93_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_93_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_93_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog94", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3040
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog94", "LOCALS", 0)~ GOTO levelup_94
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog94", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_94
  SAY @3003
    IF ~GlobalLT("ii94", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_94_1_fail


    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", @3004)
          Global("ii94", "LOCALS", @3004)
        Global("ii94_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_94_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", @3004)
          Global("ii94", "LOCALS", @3004)
        GlobalLT("ii94", "LOCALS", @3006)
        GlobalGT("ii94_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_94_2_fail

    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", @3006)
          Global("ii94", "LOCALS", @3006)
        Global("ii94_ok2", "LOCALS", 0)
        GlobalGT("ii94_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_94_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", @3006)
          Global("ii94", "LOCALS", @3006)
        GlobalLT("ii94", "LOCALS", @3007)
        GlobalGT("ii94_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_94_3_fail

    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", @3007)
          Global("ii94", "LOCALS", @3007)
        Global("ii94_ok3", "LOCALS", 0)
        GlobalGT("ii94_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_94_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", @3007)
          Global("ii94", "LOCALS", @3007)
        GlobalLT("ii94", "LOCALS", @3008)
        GlobalGT("ii94_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_94_4_fail

    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", @3008)
          Global("ii94", "LOCALS", @3008)
        Global("ii94_ok4", "LOCALS", 0)
        GlobalGT("ii94_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_94_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", @3008)
          Global("ii94", "LOCALS", @3008)
        GlobalLT("ii94", "LOCALS", @3009)
        GlobalGT("ii94_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_94_5_fail

    IF ~OR(2)
          GlobalGT("ii94", "LOCALS", @3009)
          Global("ii94", "LOCALS", @3009)
        Global("ii94_ok5", "LOCALS", 0)
        GlobalGT("ii94_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_94_5_ask_for_gold


    IF ~GlobalGT("ii94_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_94_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_94_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_94_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_94_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii94_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_94_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_94_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_94_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END


IF ~~ THEN BEGIN levelup_94_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii94_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_94_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_94_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_94_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_94_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii94_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_94_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_94_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_94_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_94_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii94_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_94_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_94_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_94_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_94_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii94_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_94_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_94_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog95", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3041
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog95", "LOCALS", 0)~ GOTO levelup_95
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog95", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_95
  SAY @3003
    IF ~GlobalLT("ii95", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_95_1_fail


    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", @3004)
          Global("ii95", "LOCALS", @3004)
        Global("ii95_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_95_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", @3004)
          Global("ii95", "LOCALS", @3004)
        GlobalLT("ii95", "LOCALS", @3006)
        GlobalGT("ii95_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_95_2_fail

    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", @3006)
          Global("ii95", "LOCALS", @3006)
        Global("ii95_ok2", "LOCALS", 0)
        GlobalGT("ii95_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_95_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", @3006)
          Global("ii95", "LOCALS", @3006)
        GlobalLT("ii95", "LOCALS", @3007)
        GlobalGT("ii95_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_95_3_fail

    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", @3007)
          Global("ii95", "LOCALS", @3007)
        Global("ii95_ok3", "LOCALS", 0)
        GlobalGT("ii95_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_95_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", @3007)
          Global("ii95", "LOCALS", @3007)
        GlobalLT("ii95", "LOCALS", @3008)
        GlobalGT("ii95_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_95_4_fail

    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", @3008)
          Global("ii95", "LOCALS", @3008)
        Global("ii95_ok4", "LOCALS", 0)
        GlobalGT("ii95_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_95_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", @3008)
          Global("ii95", "LOCALS", @3008)
        GlobalLT("ii95", "LOCALS", @3009)
        GlobalGT("ii95_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_95_5_fail

    IF ~OR(2)
          GlobalGT("ii95", "LOCALS", @3009)
          Global("ii95", "LOCALS", @3009)
        Global("ii95_ok5", "LOCALS", 0)
        GlobalGT("ii95_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_95_5_ask_for_gold


    IF ~GlobalGT("ii95_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_95_max


    IF ~~ THEN REPLY @3010 EXIT
END

IF ~~ THEN BEGIN levelup_95_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_95_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_95_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii95_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_95_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_95_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_95_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_95_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii95_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_95_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_95_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_95_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_95_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii95_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_95_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_95_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_95_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_95_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii95_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_95_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_95_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_95_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_95_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii95_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_95_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_95_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog96", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3042
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog96", "LOCALS", 0)~ GOTO levelup_96
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog96", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_96
  SAY @3003
    IF ~GlobalLT("ii96", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_96_1_fail


    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", @3004)
          Global("ii96", "LOCALS", @3004)
        Global("ii96_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_96_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", @3004)
          Global("ii96", "LOCALS", @3004)
        GlobalLT("ii96", "LOCALS", @3006)
        GlobalGT("ii96_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_96_2_fail

    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", @3006)
          Global("ii96", "LOCALS", @3006)
        Global("ii96_ok2", "LOCALS", 0)
        GlobalGT("ii96_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_96_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", @3006)
          Global("ii96", "LOCALS", @3006)
        GlobalLT("ii96", "LOCALS", @3007)
        GlobalGT("ii96_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_96_3_fail

    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", @3007)
          Global("ii96", "LOCALS", @3007)
        Global("ii96_ok3", "LOCALS", 0)
        GlobalGT("ii96_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_96_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", @3007)
          Global("ii96", "LOCALS", @3007)
        GlobalLT("ii96", "LOCALS", @3008)
        GlobalGT("ii96_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_96_4_fail

    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", @3008)
          Global("ii96", "LOCALS", @3008)
        Global("ii96_ok4", "LOCALS", 0)
        GlobalGT("ii96_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_96_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", @3008)
          Global("ii96", "LOCALS", @3008)
        GlobalLT("ii96", "LOCALS", @3009)
        GlobalGT("ii96_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_96_5_fail

    IF ~OR(2)
          GlobalGT("ii96", "LOCALS", @3009)
          Global("ii96", "LOCALS", @3009)
        Global("ii96_ok5", "LOCALS", 0)
        GlobalGT("ii96_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_96_5_ask_for_gold


    IF ~GlobalGT("ii96_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_96_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_96_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_96_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_96_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii96_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_96_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_96_2_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_96_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_96_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii96_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_96_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_96_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_96_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_96_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii96_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_96_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_96_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_96_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_96_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii96_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_96_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_96_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_96_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_96_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii96_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_96_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_96_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog97", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3043
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog97", "LOCALS", 0)~ GOTO levelup_97
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog97", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_97
  SAY @3003
    IF ~GlobalLT("ii97", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_97_1_fail


    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", @3004)
          Global("ii97", "LOCALS", @3004)
        Global("ii97_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_97_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", @3004)
          Global("ii97", "LOCALS", @3004)
        GlobalLT("ii97", "LOCALS", @3006)
        GlobalGT("ii97_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_97_2_fail

    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", @3006)
          Global("ii97", "LOCALS", @3006)
        Global("ii97_ok2", "LOCALS", 0)
        GlobalGT("ii97_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_97_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", @3006)
          Global("ii97", "LOCALS", @3006)
        GlobalLT("ii97", "LOCALS", @3007)
        GlobalGT("ii97_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_97_3_fail

    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", @3007)
          Global("ii97", "LOCALS", @3007)
        Global("ii97_ok3", "LOCALS", 0)
        GlobalGT("ii97_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_97_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", @3007)
          Global("ii97", "LOCALS", @3007)
        GlobalLT("ii97", "LOCALS", @3008)
        GlobalGT("ii97_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_97_4_fail

    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", @3008)
          Global("ii97", "LOCALS", @3008)
        Global("ii97_ok4", "LOCALS", 0)
        GlobalGT("ii97_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_97_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", @3008)
          Global("ii97", "LOCALS", @3008)
        GlobalLT("ii97", "LOCALS", @3009)
        GlobalGT("ii97_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_97_5_fail

    IF ~OR(2)
          GlobalGT("ii97", "LOCALS", @3009)
          Global("ii97", "LOCALS", @3009)
        Global("ii97_ok5", "LOCALS", 0)
        GlobalGT("ii97_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_97_5_ask_for_gold


    IF ~GlobalGT("ii97_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_97_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_97_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_97_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_97_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii97_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_97_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_97_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_97_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_97_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii97_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_97_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_97_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_97_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_97_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii97_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_97_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_97_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_97_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_97_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii97_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_97_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_97_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_97_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_97_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii97_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_97_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_97_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog98", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3044
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog98", "LOCALS", 0)~ GOTO levelup_98
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog98", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_98
  SAY @3003
    IF ~GlobalLT("ii98", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_98_1_fail


    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", @3004)
          Global("ii98", "LOCALS", @3004)
        Global("ii98_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_98_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", @3004)
          Global("ii98", "LOCALS", @3004)
        GlobalLT("ii98", "LOCALS", @3006)
        GlobalGT("ii98_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_98_2_fail

    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", @3006)
          Global("ii98", "LOCALS", @3006)
        Global("ii98_ok2", "LOCALS", 0)
        GlobalGT("ii98_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_98_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", @3006)
          Global("ii98", "LOCALS", @3006)
        GlobalLT("ii98", "LOCALS", @3007)
        GlobalGT("ii98_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_98_3_fail

    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", @3007)
          Global("ii98", "LOCALS", @3007)
        Global("ii98_ok3", "LOCALS", 0)
        GlobalGT("ii98_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_98_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", @3007)
          Global("ii98", "LOCALS", @3007)
        GlobalLT("ii98", "LOCALS", @3008)
        GlobalGT("ii98_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_98_4_fail

    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", @3008)
          Global("ii98", "LOCALS", @3008)
        Global("ii98_ok4", "LOCALS", 0)
        GlobalGT("ii98_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_98_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", @3008)
          Global("ii98", "LOCALS", @3008)
        GlobalLT("ii98", "LOCALS", @3009)
        GlobalGT("ii98_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_98_5_fail

    IF ~OR(2)
          GlobalGT("ii98", "LOCALS", @3009)
          Global("ii98", "LOCALS", @3009)
        Global("ii98_ok5", "LOCALS", 0)
        GlobalGT("ii98_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_98_5_ask_for_gold


    IF ~GlobalGT("ii98_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_98_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_98_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_98_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_98_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii98_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_98_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_98_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_98_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_98_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii98_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_98_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_98_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_98_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_98_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii98_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_98_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_98_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_98_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_98_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii98_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_98_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_98_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_98_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_98_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii98_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_98_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_98_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END









IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog99", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3045
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog99", "LOCALS", 0)~ GOTO levelup_99
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog99", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_99
  SAY @3003
    IF ~GlobalLT("ii99", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_99_1_fail


    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", @3004)
          Global("ii99", "LOCALS", @3004)
        Global("ii99_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_99_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", @3004)
          Global("ii99", "LOCALS", @3004)
        GlobalLT("ii99", "LOCALS", @3006)
        GlobalGT("ii99_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_99_2_fail

    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", @3006)
          Global("ii99", "LOCALS", @3006)
        Global("ii99_ok2", "LOCALS", 0)
        GlobalGT("ii99_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_99_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", @3006)
          Global("ii99", "LOCALS", @3006)
        GlobalLT("ii99", "LOCALS", @3007)
        GlobalGT("ii99_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_99_3_fail

    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", @3007)
          Global("ii99", "LOCALS", @3007)
        Global("ii99_ok3", "LOCALS", 0)
        GlobalGT("ii99_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_99_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", @3007)
          Global("ii99", "LOCALS", @3007)
        GlobalLT("ii99", "LOCALS", @3008)
        GlobalGT("ii99_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_99_4_fail

    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", @3008)
          Global("ii99", "LOCALS", @3008)
        Global("ii99_ok4", "LOCALS", 0)
        GlobalGT("ii99_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_99_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", @3008)
          Global("ii99", "LOCALS", @3008)
        GlobalLT("ii99", "LOCALS", @3009)
        GlobalGT("ii99_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_99_5_fail

    IF ~OR(2)
          GlobalGT("ii99", "LOCALS", @3009)
          Global("ii99", "LOCALS", @3009)
        Global("ii99_ok5", "LOCALS", 0)
        GlobalGT("ii99_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_99_5_ask_for_gold


    IF ~GlobalGT("ii99_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_99_max


    IF ~~ THEN REPLY @3010 EXIT
END

IF ~~ THEN BEGIN levelup_99_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_99_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_99_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii99_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_99_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_99_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_99_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_99_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii99_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_99_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_99_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_99_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_99_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii99_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_99_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_99_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_99_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_99_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii99_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_99_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_99_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_99_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_99_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii99_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_99_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_99_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog100", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3046
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog100", "LOCALS", 0)~ GOTO levelup_100
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog100", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_100
  SAY @3003
    IF ~GlobalLT("ii100", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_100_1_fail


    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", @3004)
          Global("ii100", "LOCALS", @3004)
        Global("ii100_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_100_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", @3004)
          Global("ii100", "LOCALS", @3004)
        GlobalLT("ii100", "LOCALS", @3006)
        GlobalGT("ii100_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_100_2_fail

    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", @3006)
          Global("ii100", "LOCALS", @3006)
        Global("ii100_ok2", "LOCALS", 0)
        GlobalGT("ii100_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_100_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", @3006)
          Global("ii100", "LOCALS", @3006)
        GlobalLT("ii100", "LOCALS", @3007)
        GlobalGT("ii100_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_100_3_fail

    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", @3007)
          Global("ii100", "LOCALS", @3007)
        Global("ii100_ok3", "LOCALS", 0)
        GlobalGT("ii100_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_100_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", @3007)
          Global("ii100", "LOCALS", @3007)
        GlobalLT("ii100", "LOCALS", @3008)
        GlobalGT("ii100_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_100_4_fail

    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", @3008)
          Global("ii100", "LOCALS", @3008)
        Global("ii100_ok4", "LOCALS", 0)
        GlobalGT("ii100_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_100_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", @3008)
          Global("ii100", "LOCALS", @3008)
        GlobalLT("ii100", "LOCALS", @3009)
        GlobalGT("ii100_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_100_5_fail

    IF ~OR(2)
          GlobalGT("ii100", "LOCALS", @3009)
          Global("ii100", "LOCALS", @3009)
        Global("ii100_ok5", "LOCALS", 0)
        GlobalGT("ii100_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_100_5_ask_for_gold


    IF ~GlobalGT("ii100_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_100_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_100_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_100_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_100_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii100_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_100_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_100_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_100_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_100_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii100_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_100_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_100_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_100_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_100_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii100_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_100_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_100_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_100_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_100_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii100_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_100_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_100_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_100_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_100_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii100_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_100_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_100_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog101", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3047
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog101", "LOCALS", 0)~ GOTO levelup_101
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog101", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_101
  SAY @3003
    IF ~GlobalLT("ii101", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_101_1_fail


    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", @3004)
          Global("ii101", "LOCALS", @3004)
        Global("ii101_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_101_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", @3004)
          Global("ii101", "LOCALS", @3004)
        GlobalLT("ii101", "LOCALS", @3006)
        GlobalGT("ii101_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_101_2_fail

    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", @3006)
          Global("ii101", "LOCALS", @3006)
        Global("ii101_ok2", "LOCALS", 0)
        GlobalGT("ii101_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_101_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", @3006)
          Global("ii101", "LOCALS", @3006)
        GlobalLT("ii101", "LOCALS", @3007)
        GlobalGT("ii101_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_101_3_fail

    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", @3007)
          Global("ii101", "LOCALS", @3007)
        Global("ii101_ok3", "LOCALS", 0)
        GlobalGT("ii101_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_101_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", @3007)
          Global("ii101", "LOCALS", @3007)
        GlobalLT("ii101", "LOCALS", @3008)
        GlobalGT("ii101_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_101_4_fail

    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", @3008)
          Global("ii101", "LOCALS", @3008)
        Global("ii101_ok4", "LOCALS", 0)
        GlobalGT("ii101_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_101_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", @3008)
          Global("ii101", "LOCALS", @3008)
        GlobalLT("ii101", "LOCALS", @3009)
        GlobalGT("ii101_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_101_5_fail

    IF ~OR(2)
          GlobalGT("ii101", "LOCALS", @3009)
          Global("ii101", "LOCALS", @3009)
        Global("ii101_ok5", "LOCALS", 0)
        GlobalGT("ii101_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_101_5_ask_for_gold


    IF ~GlobalGT("ii101_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_101_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_101_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_101_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_101_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii101_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_101_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_101_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_101_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_101_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii101_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_101_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_101_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_101_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_101_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii101_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_101_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_101_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_101_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_101_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii101_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_101_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_101_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_101_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_101_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii101_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_101_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_101_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog102", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3048
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog102", "LOCALS", 0)~ GOTO levelup_102
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog102", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_102
  SAY @3003
    IF ~GlobalLT("ii102", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_102_1_fail


    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", @3004)
          Global("ii102", "LOCALS", @3004)
        Global("ii102_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_102_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", @3004)
          Global("ii102", "LOCALS", @3004)
        GlobalLT("ii102", "LOCALS", @3006)
        GlobalGT("ii102_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_102_2_fail

    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", @3006)
          Global("ii102", "LOCALS", @3006)
        Global("ii102_ok2", "LOCALS", 0)
        GlobalGT("ii102_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_102_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", @3006)
          Global("ii102", "LOCALS", @3006)
        GlobalLT("ii102", "LOCALS", @3007)
        GlobalGT("ii102_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_102_3_fail

    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", @3007)
          Global("ii102", "LOCALS", @3007)
        Global("ii102_ok3", "LOCALS", 0)
        GlobalGT("ii102_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_102_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", @3007)
          Global("ii102", "LOCALS", @3007)
        GlobalLT("ii102", "LOCALS", @3008)
        GlobalGT("ii102_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_102_4_fail

    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", @3008)
          Global("ii102", "LOCALS", @3008)
        Global("ii102_ok4", "LOCALS", 0)
        GlobalGT("ii102_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_102_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", @3008)
          Global("ii102", "LOCALS", @3008)
        GlobalLT("ii102", "LOCALS", @3009)
        GlobalGT("ii102_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_102_5_fail

    IF ~OR(2)
          GlobalGT("ii102", "LOCALS", @3009)
          Global("ii102", "LOCALS", @3009)
        Global("ii102_ok5", "LOCALS", 0)
        GlobalGT("ii102_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_102_5_ask_for_gold


    IF ~GlobalGT("ii102_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_102_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_102_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_102_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_102_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii102_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_102_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_102_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_102_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_102_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii102_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_102_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_102_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_102_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_102_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii102_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_102_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_102_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_102_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_102_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii102_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_102_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_102_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_102_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_102_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii102_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_102_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_102_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog103", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3049
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog103", "LOCALS", 0)~ GOTO levelup_103
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog103", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_103
  SAY @3003
    IF ~GlobalLT("ii103", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_103_1_fail


    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", @3004)
          Global("ii103", "LOCALS", @3004)
        Global("ii103_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_103_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", @3004)
          Global("ii103", "LOCALS", @3004)
        GlobalLT("ii103", "LOCALS", @3006)
        GlobalGT("ii103_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_103_2_fail

    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", @3006)
          Global("ii103", "LOCALS", @3006)
        Global("ii103_ok2", "LOCALS", 0)
        GlobalGT("ii103_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_103_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", @3006)
          Global("ii103", "LOCALS", @3006)
        GlobalLT("ii103", "LOCALS", @3007)
        GlobalGT("ii103_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_103_3_fail

    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", @3007)
          Global("ii103", "LOCALS", @3007)
        Global("ii103_ok3", "LOCALS", 0)
        GlobalGT("ii103_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_103_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", @3007)
          Global("ii103", "LOCALS", @3007)
        GlobalLT("ii103", "LOCALS", @3008)
        GlobalGT("ii103_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_103_4_fail

    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", @3008)
          Global("ii103", "LOCALS", @3008)
        Global("ii103_ok4", "LOCALS", 0)
        GlobalGT("ii103_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_103_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", @3008)
          Global("ii103", "LOCALS", @3008)
        GlobalLT("ii103", "LOCALS", @3009)
        GlobalGT("ii103_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_103_5_fail

    IF ~OR(2)
          GlobalGT("ii103", "LOCALS", @3009)
          Global("ii103", "LOCALS", @3009)
        Global("ii103_ok5", "LOCALS", 0)
        GlobalGT("ii103_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_103_5_ask_for_gold


    IF ~GlobalGT("ii103_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_103_max


    IF ~~ THEN REPLY @3010 EXIT
END

IF ~~ THEN BEGIN levelup_103_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_103_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_103_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii103_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_103_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_103_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_103_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_103_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii103_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_103_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_103_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_103_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_103_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii103_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_103_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_103_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_103_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_103_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii103_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_103_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_103_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_103_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_103_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii103_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_103_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_103_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog104", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3050
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog104", "LOCALS", 0)~ GOTO levelup_104
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog104", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_104
  SAY @3003
    IF ~GlobalLT("ii104", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_104_1_fail


    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", @3004)
          Global("ii104", "LOCALS", @3004)
        Global("ii104_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_104_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", @3004)
          Global("ii104", "LOCALS", @3004)
        GlobalLT("ii104", "LOCALS", @3006)
        GlobalGT("ii104_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_104_2_fail

    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", @3006)
          Global("ii104", "LOCALS", @3006)
        Global("ii104_ok2", "LOCALS", 0)
        GlobalGT("ii104_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_104_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", @3006)
          Global("ii104", "LOCALS", @3006)
        GlobalLT("ii104", "LOCALS", @3007)
        GlobalGT("ii104_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_104_3_fail

    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", @3007)
          Global("ii104", "LOCALS", @3007)
        Global("ii104_ok3", "LOCALS", 0)
        GlobalGT("ii104_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_104_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", @3007)
          Global("ii104", "LOCALS", @3007)
        GlobalLT("ii104", "LOCALS", @3008)
        GlobalGT("ii104_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_104_4_fail

    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", @3008)
          Global("ii104", "LOCALS", @3008)
        Global("ii104_ok4", "LOCALS", 0)
        GlobalGT("ii104_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_104_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", @3008)
          Global("ii104", "LOCALS", @3008)
        GlobalLT("ii104", "LOCALS", @3009)
        GlobalGT("ii104_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_104_5_fail

    IF ~OR(2)
          GlobalGT("ii104", "LOCALS", @3009)
          Global("ii104", "LOCALS", @3009)
        Global("ii104_ok5", "LOCALS", 0)
        GlobalGT("ii104_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_104_5_ask_for_gold


    IF ~GlobalGT("ii104_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_104_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_104_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_104_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_104_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii104_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_104_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_104_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_104_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_104_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii104_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_104_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_104_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_104_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_104_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii104_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_104_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_104_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_104_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_104_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii104_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_104_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_104_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_104_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_104_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii104_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_104_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_104_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog105", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3051
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog105", "LOCALS", 0)~ GOTO levelup_105
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog105", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_105
  SAY @3003
    IF ~GlobalLT("ii105", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_105_1_fail


    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", @3004)
          Global("ii105", "LOCALS", @3004)
        Global("ii105_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_105_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", @3004)
          Global("ii105", "LOCALS", @3004)
        GlobalLT("ii105", "LOCALS", @3006)
        GlobalGT("ii105_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_105_2_fail

    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", @3006)
          Global("ii105", "LOCALS", @3006)
        Global("ii105_ok2", "LOCALS", 0)
        GlobalGT("ii105_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_105_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", @3006)
          Global("ii105", "LOCALS", @3006)
        GlobalLT("ii105", "LOCALS", @3007)
        GlobalGT("ii105_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_105_3_fail

    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", @3007)
          Global("ii105", "LOCALS", @3007)
        Global("ii105_ok3", "LOCALS", 0)
        GlobalGT("ii105_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_105_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", @3007)
          Global("ii105", "LOCALS", @3007)
        GlobalLT("ii105", "LOCALS", @3008)
        GlobalGT("ii105_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_105_4_fail

    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", @3008)
          Global("ii105", "LOCALS", @3008)
        Global("ii105_ok4", "LOCALS", 0)
        GlobalGT("ii105_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_105_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", @3008)
          Global("ii105", "LOCALS", @3008)
        GlobalLT("ii105", "LOCALS", @3009)
        GlobalGT("ii105_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_105_5_fail

    IF ~OR(2)
          GlobalGT("ii105", "LOCALS", @3009)
          Global("ii105", "LOCALS", @3009)
        Global("ii105_ok5", "LOCALS", 0)
        GlobalGT("ii105_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_105_5_ask_for_gold


    IF ~GlobalGT("ii105_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_105_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_105_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_105_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END


IF ~~ THEN BEGIN levelup_105_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii105_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_105_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_105_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_105_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_105_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii105_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_105_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_105_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_105_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_105_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii105_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_105_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_105_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_105_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_105_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii105_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_105_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_105_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_105_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_105_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii105_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_105_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_105_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog106", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3052
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog106", "LOCALS", 0)~ GOTO levelup_106
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog106", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_106
  SAY @3003
    IF ~GlobalLT("ii106", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_106_1_fail


    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", @3004)
          Global("ii106", "LOCALS", @3004)
        Global("ii106_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_106_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", @3004)
          Global("ii106", "LOCALS", @3004)
        GlobalLT("ii106", "LOCALS", @3006)
        GlobalGT("ii106_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_106_2_fail

    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", @3006)
          Global("ii106", "LOCALS", @3006)
        Global("ii106_ok2", "LOCALS", 0)
        GlobalGT("ii106_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_106_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", @3006)
          Global("ii106", "LOCALS", @3006)
        GlobalLT("ii106", "LOCALS", @3007)
        GlobalGT("ii106_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_106_3_fail

    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", @3007)
          Global("ii106", "LOCALS", @3007)
        Global("ii106_ok3", "LOCALS", 0)
        GlobalGT("ii106_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_106_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", @3007)
          Global("ii106", "LOCALS", @3007)
        GlobalLT("ii106", "LOCALS", @3008)
        GlobalGT("ii106_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_106_4_fail

    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", @3008)
          Global("ii106", "LOCALS", @3008)
        Global("ii106_ok4", "LOCALS", 0)
        GlobalGT("ii106_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_106_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", @3008)
          Global("ii106", "LOCALS", @3008)
        GlobalLT("ii106", "LOCALS", @3009)
        GlobalGT("ii106_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_106_5_fail

    IF ~OR(2)
          GlobalGT("ii106", "LOCALS", @3009)
          Global("ii106", "LOCALS", @3009)
        Global("ii106_ok5", "LOCALS", 0)
        GlobalGT("ii106_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_106_5_ask_for_gold


    IF ~GlobalGT("ii106_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_106_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_106_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_106_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_106_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii106_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_106_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_106_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_106_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_106_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii106_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_106_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_106_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_106_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_106_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii106_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_106_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_106_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_106_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_106_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii106_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_106_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_106_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_106_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_106_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii106_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_106_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_106_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog107", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3053
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog107", "LOCALS", 0)~ GOTO levelup_107
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog107", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_107
  SAY @3003
    IF ~GlobalLT("ii107", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_107_1_fail


    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", @3004)
          Global("ii107", "LOCALS", @3004)
        Global("ii107_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_107_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", @3004)
          Global("ii107", "LOCALS", @3004)
        GlobalLT("ii107", "LOCALS", @3006)
        GlobalGT("ii107_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_107_2_fail

    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", @3006)
          Global("ii107", "LOCALS", @3006)
        Global("ii107_ok2", "LOCALS", 0)
        GlobalGT("ii107_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_107_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", @3006)
          Global("ii107", "LOCALS", @3006)
        GlobalLT("ii107", "LOCALS", @3007)
        GlobalGT("ii107_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_107_3_fail

    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", @3007)
          Global("ii107", "LOCALS", @3007)
        Global("ii107_ok3", "LOCALS", 0)
        GlobalGT("ii107_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_107_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", @3007)
          Global("ii107", "LOCALS", @3007)
        GlobalLT("ii107", "LOCALS", @3008)
        GlobalGT("ii107_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_107_4_fail

    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", @3008)
          Global("ii107", "LOCALS", @3008)
        Global("ii107_ok4", "LOCALS", 0)
        GlobalGT("ii107_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_107_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", @3008)
          Global("ii107", "LOCALS", @3008)
        GlobalLT("ii107", "LOCALS", @3009)
        GlobalGT("ii107_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_107_5_fail

    IF ~OR(2)
          GlobalGT("ii107", "LOCALS", @3009)
          Global("ii107", "LOCALS", @3009)
        Global("ii107_ok5", "LOCALS", 0)
        GlobalGT("ii107_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_107_5_ask_for_gold


    IF ~GlobalGT("ii107_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_107_max


    IF ~~ THEN REPLY @3010 EXIT
END

IF ~~ THEN BEGIN levelup_107_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_107_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_107_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii107_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_107_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_107_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_107_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_107_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii107_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_107_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_107_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_107_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_107_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii107_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_107_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_107_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_107_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_107_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii107_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_107_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_107_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_107_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_107_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii107_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_107_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_107_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog108", "LOCALS", 1)~ THEN BEGIN initial_main
SAY @3054
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog108", "LOCALS", 0)~ GOTO levelup_108
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog108", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_108
    SAY @3055
    IF ~GlobalLT("ii108", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_108_1_fail


    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", @3004)
          Global("ii108", "LOCALS", @3004)
        Global("ii108_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_108_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", @3004)
          Global("ii108", "LOCALS", @3004)
        GlobalLT("ii108", "LOCALS", @3006)
        GlobalGT("ii108_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_108_2_fail

    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", @3006)
          Global("ii108", "LOCALS", @3006)
        Global("ii108_ok2", "LOCALS", 0)
        GlobalGT("ii108_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_108_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", @3006)
          Global("ii108", "LOCALS", @3006)
        GlobalLT("ii108", "LOCALS", @3007)
        GlobalGT("ii108_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_108_3_fail

    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", @3007)
          Global("ii108", "LOCALS", @3007)
        Global("ii108_ok3", "LOCALS", 0)
        GlobalGT("ii108_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_108_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", @3007)
          Global("ii108", "LOCALS", @3007)
        GlobalLT("ii108", "LOCALS", @3008)
        GlobalGT("ii108_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_108_4_fail

    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", @3008)
          Global("ii108", "LOCALS", @3008)
        Global("ii108_ok4", "LOCALS", 0)
        GlobalGT("ii108_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_108_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", @3008)
          Global("ii108", "LOCALS", @3008)
        GlobalLT("ii108", "LOCALS", @3009)
        GlobalGT("ii108_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_108_5_fail

    IF ~OR(2)
          GlobalGT("ii108", "LOCALS", @3009)
          Global("ii108", "LOCALS", @3009)
        Global("ii108_ok5", "LOCALS", 0)
        GlobalGT("ii108_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_108_5_ask_for_gold


    IF ~GlobalGT("ii108_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_108_max


    IF ~~ THEN REPLY @3010 EXIT
END

IF ~~ THEN BEGIN levelup_108_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_108_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_108_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii108_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_108_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_108_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_108_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_108_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii108_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_108_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_108_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_108_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_108_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii108_ok3", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_108_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_108_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_108_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_108_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii108_ok4", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_108_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_108_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_108_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_108_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii108_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_108_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_108_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog109", "LOCALS", 1)~ THEN BEGIN initial_main
SAY @3056
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog109", "LOCALS", 0)~ GOTO levelup_109
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog109", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_109
    SAY @3055
    IF ~GlobalLT("ii109", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_109_1_fail


    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", @3004)
          Global("ii109", "LOCALS", @3004)
        Global("ii109_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_109_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", @3004)
          Global("ii109", "LOCALS", @3004)
        GlobalLT("ii109", "LOCALS", @3006)
        GlobalGT("ii109_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_109_2_fail

    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", @3006)
          Global("ii109", "LOCALS", @3006)
        Global("ii109_ok2", "LOCALS", 0)
        GlobalGT("ii109_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_109_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", @3006)
          Global("ii109", "LOCALS", @3006)
        GlobalLT("ii109", "LOCALS", @3007)
        GlobalGT("ii109_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_109_3_fail

    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", @3007)
          Global("ii109", "LOCALS", @3007)
        Global("ii109_ok3", "LOCALS", 0)
        GlobalGT("ii109_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_109_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", @3007)
          Global("ii109", "LOCALS", @3007)
        GlobalLT("ii109", "LOCALS", @3008)
        GlobalGT("ii109_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_109_4_fail

    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", @3008)
          Global("ii109", "LOCALS", @3008)
        Global("ii109_ok4", "LOCALS", 0)
        GlobalGT("ii109_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_109_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", @3008)
          Global("ii109", "LOCALS", @3008)
        GlobalLT("ii109", "LOCALS", @3009)
        GlobalGT("ii109_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_109_5_fail

    IF ~OR(2)
          GlobalGT("ii109", "LOCALS", @3009)
          Global("ii109", "LOCALS", @3009)
        Global("ii109_ok5", "LOCALS", 0)
        GlobalGT("ii109_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_109_5_ask_for_gold


    IF ~GlobalGT("ii109_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_109_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_109_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_109_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_109_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii109_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_109_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_109_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_109_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_109_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii109_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_109_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_109_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_109_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_109_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii109_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_109_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_109_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_109_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_109_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii109_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_109_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_109_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_109_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_109_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii109_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_109_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_109_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog110", "LOCALS", 1)~ THEN BEGIN initial_main
SAY @3057
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog110", "LOCALS", 0)~ GOTO levelup_110
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog110", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_110
    SAY @3055
    IF ~GlobalLT("ii110", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_110_1_fail


    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", @3004)
          Global("ii110", "LOCALS", @3004)
        Global("ii110_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_110_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", @3004)
          Global("ii110", "LOCALS", @3004)
        GlobalLT("ii110", "LOCALS", @3006)
        GlobalGT("ii110_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_110_2_fail

    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", @3006)
          Global("ii110", "LOCALS", @3006)
        Global("ii110_ok2", "LOCALS", 0)
        GlobalGT("ii110_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_110_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", @3006)
          Global("ii110", "LOCALS", @3006)
        GlobalLT("ii110", "LOCALS", @3007)
        GlobalGT("ii110_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_110_3_fail

    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", @3007)
          Global("ii110", "LOCALS", @3007)
        Global("ii110_ok3", "LOCALS", 0)
        GlobalGT("ii110_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_110_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", @3007)
          Global("ii110", "LOCALS", @3007)
        GlobalLT("ii110", "LOCALS", @3008)
        GlobalGT("ii110_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_110_4_fail

    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", @3008)
          Global("ii110", "LOCALS", @3008)
        Global("ii110_ok4", "LOCALS", 0)
        GlobalGT("ii110_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_110_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", @3008)
          Global("ii110", "LOCALS", @3008)
        GlobalLT("ii110", "LOCALS", @3009)
        GlobalGT("ii110_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_110_5_fail

    IF ~OR(2)
          GlobalGT("ii110", "LOCALS", @3009)
          Global("ii110", "LOCALS", @3009)
        Global("ii110_ok5", "LOCALS", 0)
        GlobalGT("ii110_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_110_5_ask_for_gold


    IF ~GlobalGT("ii110_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_110_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_110_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_110_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_110_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii110_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_110_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_110_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_110_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_110_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii110_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_110_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_110_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_110_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_110_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii110_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_110_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_110_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_110_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_110_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii110_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_110_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_110_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_110_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_110_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii110_ok5", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_110_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_110_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog111", "LOCALS", 1)~ THEN BEGIN initial_main
SAY @3058
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog111", "LOCALS", 0)~ GOTO levelup_111
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog111", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_111
    SAY @3055
    IF ~GlobalLT("ii111", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_111_1_fail


    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", @3004)
          Global("ii111", "LOCALS", @3004)
        Global("ii111_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_111_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", @3004)
          Global("ii111", "LOCALS", @3004)
        GlobalLT("ii111", "LOCALS", @3006)
        GlobalGT("ii111_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_111_2_fail

    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", @3006)
          Global("ii111", "LOCALS", @3006)
        Global("ii111_ok2", "LOCALS", 0)
        GlobalGT("ii111_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_111_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", @3006)
          Global("ii111", "LOCALS", @3006)
        GlobalLT("ii111", "LOCALS", @3007)
        GlobalGT("ii111_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_111_3_fail

    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", @3007)
          Global("ii111", "LOCALS", @3007)
        Global("ii111_ok3", "LOCALS", 0)
        GlobalGT("ii111_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_111_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", @3007)
          Global("ii111", "LOCALS", @3007)
        GlobalLT("ii111", "LOCALS", @3008)
        GlobalGT("ii111_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_111_4_fail

    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", @3008)
          Global("ii111", "LOCALS", @3008)
        Global("ii111_ok4", "LOCALS", 0)
        GlobalGT("ii111_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_111_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", @3008)
          Global("ii111", "LOCALS", @3008)
        GlobalLT("ii111", "LOCALS", @3009)
        GlobalGT("ii111_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_111_5_fail

    IF ~OR(2)
          GlobalGT("ii111", "LOCALS", @3009)
          Global("ii111", "LOCALS", @3009)
        Global("ii111_ok5", "LOCALS", 0)
        GlobalGT("ii111_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_111_5_ask_for_gold


    IF ~GlobalGT("ii111_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_111_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_111_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_111_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_111_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii111_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_111_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_111_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_111_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_111_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii111_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_111_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_111_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_111_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_111_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii111_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_111_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_111_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_111_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_111_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii111_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_111_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_111_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_111_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_111_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii111_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_111_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_111_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog112", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3059
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog112", "LOCALS", 0)~ GOTO levelup_112
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog112", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_112
    SAY @3055
    IF ~GlobalLT("ii112", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_112_1_fail


    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", @3004)
          Global("ii112", "LOCALS", @3004)
        Global("ii112_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_112_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", @3004)
          Global("ii112", "LOCALS", @3004)
        GlobalLT("ii112", "LOCALS", @3006)
        GlobalGT("ii112_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_112_2_fail

    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", @3006)
          Global("ii112", "LOCALS", @3006)
        Global("ii112_ok2", "LOCALS", 0)
        GlobalGT("ii112_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_112_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", @3006)
          Global("ii112", "LOCALS", @3006)
        GlobalLT("ii112", "LOCALS", @3007)
        GlobalGT("ii112_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_112_3_fail

    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", @3007)
          Global("ii112", "LOCALS", @3007)
        Global("ii112_ok3", "LOCALS", 0)
        GlobalGT("ii112_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_112_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", @3007)
          Global("ii112", "LOCALS", @3007)
        GlobalLT("ii112", "LOCALS", @3008)
        GlobalGT("ii112_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_112_4_fail

    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", @3008)
          Global("ii112", "LOCALS", @3008)
        Global("ii112_ok4", "LOCALS", 0)
        GlobalGT("ii112_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_112_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", @3008)
          Global("ii112", "LOCALS", @3008)
        GlobalLT("ii112", "LOCALS", @3009)
        GlobalGT("ii112_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_112_5_fail

    IF ~OR(2)
          GlobalGT("ii112", "LOCALS", @3009)
          Global("ii112", "LOCALS", @3009)
        Global("ii112_ok5", "LOCALS", 0)
        GlobalGT("ii112_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_112_5_ask_for_gold


    IF ~GlobalGT("ii112_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_112_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_112_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_112_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_112_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii112_ok1", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_112_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_112_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_112_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_112_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii112_ok2", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_112_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_112_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_113_1
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_112_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii112_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_112_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_112_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_112_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_112_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii112_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_112_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_112_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_112_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_112_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii112_ok5", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_112_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_112_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END









IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog113", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3060
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog113", "LOCALS", 0)~ GOTO levelup_113
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog113", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_113
  SAY @3055
    IF ~GlobalLT("ii113", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_113_1_fail


    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", @3004)
          Global("ii113", "LOCALS", @3004)
        Global("ii113_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_113_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", @3004)
          Global("ii113", "LOCALS", @3004)
        GlobalLT("ii113", "LOCALS", @3006)
        GlobalGT("ii113_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_113_2_fail

    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", @3006)
          Global("ii113", "LOCALS", @3006)
        Global("ii113_ok2", "LOCALS", 0)
        GlobalGT("ii113_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_113_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", @3006)
          Global("ii113", "LOCALS", @3006)
        GlobalLT("ii113", "LOCALS", @3007)
        GlobalGT("ii113_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_113_3_fail

    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", @3007)
          Global("ii113", "LOCALS", @3007)
        Global("ii113_ok3", "LOCALS", 0)
        GlobalGT("ii113_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_113_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", @3007)
          Global("ii113", "LOCALS", @3007)
        GlobalLT("ii113", "LOCALS", @3008)
        GlobalGT("ii113_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_113_4_fail

    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", @3008)
          Global("ii113", "LOCALS", @3008)
        Global("ii113_ok4", "LOCALS", 0)
        GlobalGT("ii113_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_113_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", @3008)
          Global("ii113", "LOCALS", @3008)
        GlobalLT("ii113", "LOCALS", @3009)
        GlobalGT("ii113_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_113_5_fail

    IF ~OR(2)
          GlobalGT("ii113", "LOCALS", @3009)
          Global("ii113", "LOCALS", @3009)
        Global("ii113_ok5", "LOCALS", 0)
        GlobalGT("ii113_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_113_5_ask_for_gold


    IF ~GlobalGT("ii113_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_113_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_113_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_113_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_113_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii113_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_113_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_113_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_113_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_113_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii113_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_113_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_113_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_113_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_113_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii113_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_113_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_113_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_113_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_113_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii113_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_113_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_113_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_113_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_113_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii113_ok5", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_113_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_113_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END











IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog114", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3061
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog114", "LOCALS", 0)~ GOTO levelup_114
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog114", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_114
    SAY @3055
    IF ~GlobalLT("ii114", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_114_1_fail


    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", @3004)
          Global("ii114", "LOCALS", @3004)
        Global("ii114_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_114_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", @3004)
          Global("ii114", "LOCALS", @3004)
        GlobalLT("ii114", "LOCALS", @3006)
        GlobalGT("ii114_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_114_2_fail

    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", @3006)
          Global("ii114", "LOCALS", @3006)
        Global("ii114_ok2", "LOCALS", 0)
        GlobalGT("ii114_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_114_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", @3006)
          Global("ii114", "LOCALS", @3006)
        GlobalLT("ii114", "LOCALS", @3007)
        GlobalGT("ii114_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_114_3_fail

    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", @3007)
          Global("ii114", "LOCALS", @3007)
        Global("ii114_ok3", "LOCALS", 0)
        GlobalGT("ii114_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_114_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", @3007)
          Global("ii114", "LOCALS", @3007)
        GlobalLT("ii114", "LOCALS", @3008)
        GlobalGT("ii114_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_114_4_fail

    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", @3008)
          Global("ii114", "LOCALS", @3008)
        Global("ii114_ok4", "LOCALS", 0)
        GlobalGT("ii114_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_114_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", @3008)
          Global("ii114", "LOCALS", @3008)
        GlobalLT("ii114", "LOCALS", @3009)
        GlobalGT("ii114_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_114_5_fail

    IF ~OR(2)
          GlobalGT("ii114", "LOCALS", @3009)
          Global("ii114", "LOCALS", @3009)
        Global("ii114_ok5", "LOCALS", 0)
        GlobalGT("ii114_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_114_5_ask_for_gold


    IF ~GlobalGT("ii114_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_114_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_114_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_114_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_114_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii114_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_114_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_114_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_114_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_114_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii114_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_114_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_114_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_114_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_114_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii114_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_114_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_114_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_114_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_114_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii114_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_114_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_114_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_114_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_114_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii114_ok5", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_114_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_114_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END










IF WEIGHT #-1 ~Global("iiLearnThroughUseDialog115", "LOCALS", 1)~ THEN BEGIN initial_main
  SAY @3062
    IF ~~ THEN REPLY @3001 DO ~SetGlobal("iiLearnThroughUseDialog115", "LOCALS", 0)~ GOTO levelup_115
    IF ~~ THEN REPLY @3002 DO ~SetGlobal("iiLearnThroughUseDialog115", "LOCALS", 0)~ EXIT
END


IF ~~ THEN BEGIN levelup_115
  SAY @3055
    IF ~GlobalLT("ii115", "LOCALS", @3004)~ THEN REPLY @3005 GOTO levelup_115_1_fail


    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", @3004)
          Global("ii115", "LOCALS", @3004)
        Global("ii115_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_115_1_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", @3004)
          Global("ii115", "LOCALS", @3004)
        GlobalLT("ii115", "LOCALS", @3006)
        GlobalGT("ii115_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_115_2_fail

    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", @3006)
          Global("ii115", "LOCALS", @3006)
        Global("ii115_ok2", "LOCALS", 0)
        GlobalGT("ii115_ok1", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_115_2_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", @3006)
          Global("ii115", "LOCALS", @3006)
        GlobalLT("ii115", "LOCALS", @3007)
        GlobalGT("ii115_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_115_3_fail

    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", @3007)
          Global("ii115", "LOCALS", @3007)
        Global("ii115_ok3", "LOCALS", 0)
        GlobalGT("ii115_ok2", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_115_3_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", @3007)
          Global("ii115", "LOCALS", @3007)
        GlobalLT("ii115", "LOCALS", @3008)
        GlobalGT("ii115_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_115_4_fail

    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", @3008)
          Global("ii115", "LOCALS", @3008)
        Global("ii115_ok4", "LOCALS", 0)
        GlobalGT("ii115_ok3", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_115_4_ask_for_gold


    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", @3008)
          Global("ii115", "LOCALS", @3008)
        GlobalLT("ii115", "LOCALS", @3009)
        GlobalGT("ii115_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_115_5_fail

    IF ~OR(2)
          GlobalGT("ii115", "LOCALS", @3009)
          Global("ii115", "LOCALS", @3009)
        Global("ii115_ok5", "LOCALS", 0)
        GlobalGT("ii115_ok4", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_115_5_ask_for_gold


    IF ~GlobalGT("ii115_ok5", "LOCALS", 0)~ THEN REPLY @3005 GOTO levelup_115_max


    IF ~~ THEN REPLY @3010 EXIT
END


IF ~~ THEN BEGIN levelup_115_1_ask_for_gold
  SAY @3011
    IF ~OR(2)
          PartyGoldGT(@3012)
          PartyGold(@3012)~ THEN REPLY @3013 DO ~TakePartyGold(@3012)~ GOTO levelup_115_1
    IF ~PartyGoldLT(@3012)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_115_1
  SAY @3015
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii115_ok1", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_115_1_fail
  SAY @3017
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_115_2_ask_for_gold
  SAY @3019
    IF ~OR(2)
          PartyGoldGT(@3020)
          PartyGold(@3020)~ THEN REPLY @3013 DO ~TakePartyGold(@3020)~ GOTO levelup_115_2
    IF ~PartyGoldLT(@3020)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_115_2
  SAY @3021
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii115_ok2", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_115_2_fail
  SAY @3022
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_115_3_ask_for_gold
  SAY @3023
    IF ~OR(2)
          PartyGoldGT(@3024)
          PartyGold(@3024)~ THEN REPLY @3013 DO ~TakePartyGold(@3024)~ GOTO levelup_115_3
    IF ~PartyGoldLT(@3024)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_115_3
  SAY @3025
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii115_ok3", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_115_3_fail
  SAY @3026
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_115_4_ask_for_gold
  SAY @3027
    IF ~OR(2)
          PartyGoldGT(@3028)
          PartyGold(@3028)~ THEN REPLY @3013 DO ~TakePartyGold(@3028)~ GOTO levelup_115_4
    IF ~PartyGoldLT(@3028)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_115_4
  SAY @3029
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii115_ok4", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN levelup_115_4_fail
  SAY @3030
    IF ~~ THEN REPLY @3018 EXIT
END

IF ~~ THEN BEGIN levelup_115_5_ask_for_gold
  SAY @3031
    IF ~OR(2)
          PartyGoldGT(@3032)
          PartyGold(@3032)~ THEN REPLY @3013 DO ~TakePartyGold(@3032)~ GOTO levelup_115_5
    IF ~PartyGoldLT(@3032)~ THEN REPLY @3014 EXIT
END

IF ~~ THEN BEGIN levelup_115_5
  SAY @3033
    IF ~~ THEN REPLY @3016 DO ~SetGlobal("ii115_ok5", "LOCALS", 1)~ EXIT
END


IF ~~ THEN BEGIN levelup_115_5_fail
  SAY @3034
    IF ~~ THEN REPLY @3018 EXIT
END


IF ~~ THEN BEGIN levelup_115_max
  SAY @3035
    IF ~~ THEN REPLY @3016 EXIT
END

END