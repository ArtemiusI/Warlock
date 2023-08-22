// Warlock - learn spell

BEGIN C0WLTALK

IF ~True()~ start
SAY ~Would you like to swap an Invocation?~
++ ~Yes.~ DO ~SetGlobal("C0WLSWAP","LOCALS",0) ClearAllActions()~ + change
++ ~No.~ DO ~SetGlobal("C0WLSWAP","LOCALS",0) ClearAllActions()~ EXIT
END

IF ~~ change
SAY @9 /* Once per level up, a warlock may exchange one of their invocations for another of the same grade.

Choose a grade of invocation: */
+ ~OR(11)
HaveKnownSpellRES("c0wl104")
HaveKnownSpellRES("c0wl105")
HaveKnownSpellRES("c0wl106")
HaveKnownSpellRES("c0wl107")
HaveKnownSpellRES("c0wl108")
HaveKnownSpellRES("c0wl109")
HaveKnownSpellRES("c0wl110")
HaveKnownSpellRES("c0wl111")
HaveKnownSpellRES("c0wl112")
HaveKnownSpellRES("c0wl113")
HaveKnownSpellRES("c0wl114")~ + @1 /* Least */ + change.least
+ ~OR(11)
HaveKnownSpellRES("c0wl201")
HaveKnownSpellRES("c0wl202")
HaveKnownSpellRES("c0wl203")
HaveKnownSpellRES("c0wl204")
HaveKnownSpellRES("c0wl205")
HaveKnownSpellRES("c0wl206")
HaveKnownSpellRES("c0wl207")
HaveKnownSpellRES("c0wl208")
HaveKnownSpellRES("c0wl209")
HaveKnownSpellRES("c0wl210")
HaveKnownSpellRES("c0wl211")~ + @2 /* Lesser */ + change.lesser
+ ~OR(10)
HaveKnownSpellRES("c0wl301")
HaveKnownSpellRES("c0wl302")
HaveKnownSpellRES("c0wl303")
HaveKnownSpellRES("c0wl304")
HaveKnownSpellRES("c0wl305")
HaveKnownSpellRES("c0wl306")
HaveKnownSpellRES("c0wl307")
HaveKnownSpellRES("c0wl308")
HaveKnownSpellRES("c0wl309")
HaveKnownSpellRES("c0wl310")~ + @3 /* Greater */ + change.greater
+ ~OR(8)
HaveKnownSpellRES("c0wl401")
HaveKnownSpellRES("c0wl402")
HaveKnownSpellRES("c0wl403")
HaveKnownSpellRES("c0wl404")
HaveKnownSpellRES("c0wl405")
HaveKnownSpellRES("c0wl406")
HaveKnownSpellRES("c0wl407")
HaveKnownSpellRES("c0wl408")~ + @4 /* Dark */ + change.dark
++ @10 /* Go back */ + start
END

IF ~~ change.least
SAY @11 /* Choose one Least Invocation: */
+ ~HaveKnownSpellRES("c0wl104") !Global("C0WL104","LOCALS",2)~ + @12 /* Beguiling Influence */ DO ~ApplySpellRES("c0wl104z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl105") !Global("C0WL105","LOCALS",2)~ + @13 /* Dark One's Own Luck */ DO ~ApplySpellRES("c0wl105z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl106") !Global("C0WL106","LOCALS",2)~ + @14 /* Draining Blast */ DO ~ApplySpellRES("c0wl106z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl107") !Global("C0WL107","LOCALS",2)~ + @15 /* Frightful Blast */ DO ~ApplySpellRES("c0wl107z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl108") !Global("C0WL108","LOCALS",2)~ + @16 /* Darkness */ DO ~ApplySpellRES("c0wl108z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl109") !Global("C0WL109","LOCALS",2)~ + @17 /* Entropic Warding */ DO ~ApplySpellRES("c0wl109z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl110") !Global("C0WL110","LOCALS",2)~ + @18 /* Leaps and Bounds */ DO ~ApplySpellRES("c0wl110z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl111") !Global("C0WL111","LOCALS",2)~ + @19 /* See the Unseen */ DO ~ApplySpellRES("c0wl111z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl112") !Global("C0WL112","LOCALS",2)~ + @82 /* Devil's Sight */ DO ~ApplySpellRES("c0wl112z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl113") !Global("C0WL113","LOCALS",2)~ + @84 /* Call of the Beast */ DO ~ApplySpellRES("c0wl113z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl114") !Global("C0WL114","LOCALS",2)~ + @86 /* Soulreaving Aura */ DO ~ApplySpellRES("c0wl114z",Myself) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
END

IF ~~ change.lesser
SAY @20 /* Choose one Lesser Invocation: */
+ ~HaveKnownSpellRES("c0wl201") !Global("C0WL201","LOCALS",2)~ + @21 /* Beshadowed Blast */ DO ~ApplySpellRES("c0wl201z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl202") !Global("C0WL202","LOCALS",2)~ + @22 /* Brimstone Blast */ DO ~ApplySpellRES("c0wl202z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl203") !Global("C0WL203","LOCALS",2)~ + @23 /* Hellrime Blast */ DO ~ApplySpellRES("c0wl203z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl204") !Global("C0WL204","LOCALS",2)~ + @24 /* Charm */ DO ~ApplySpellRES("c0wl204z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl205") !Global("C0WL205","LOCALS",2)~ + @25 /* Curse of Despair */ DO ~ApplySpellRES("c0wl205z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl206") !Global("C0WL206","LOCALS",2)~ + @26 /* Dread Seizure */ DO ~ApplySpellRES("c0wl206z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl207") !Global("C0WL207","LOCALS",2)~ + @27 /* Flee the Scene */ DO ~ApplySpellRES("c0wl207z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl208") !Global("C0WL208","LOCALS",2)~ + @28 /* The Dead Walk */ DO ~ApplySpellRES("c0wl208z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl209") !Global("C0WL209","LOCALS",2)~ + @29 /* Voracious Dispelling */ DO ~ApplySpellRES("c0wl209z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl210") !Global("C0WL210","LOCALS",2)~ + @30 /* Walk Unseen */ DO ~ApplySpellRES("c0wl210z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl211") !Global("C0WL211","LOCALS",2)~ + @88 /* Crawling Eye */ DO ~ApplySpellRES("c0wl211z",Myself) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
END

IF ~~ change.greater
SAY @31 /* Choose one Greater Invocation: */
+ ~HaveKnownSpellRES("c0wl301") !Global("C0WL301","LOCALS",2)~ + @32 /* Bewitching Blast */ DO ~ApplySpellRES("c0wl301z",Myself) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl302") !Global("C0WL302","LOCALS",2)~ + @33 /* Electrifying Blast */ DO ~ApplySpellRES("c0wl302z",Myself) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl303") !Global("C0WL303","LOCALS",2)~ + @34 /* Noxious Blast */ DO ~ApplySpellRES("c0wl303z",Myself) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl304") !Global("C0WL304","LOCALS",2)~ + @35 /* Vitriolic Blast */ DO ~ApplySpellRES("c0wl304z",Myself) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl305") !Global("C0WL305","LOCALS",2)~ + @36 /* Chilling Tentacles */ DO ~ApplySpellRES("c0wl305z",Myself) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl306") !Global("C0WL306","LOCALS",2)~ + @37 /* Devour Magic */ DO ~ApplySpellRES("c0wl306z",Myself) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl307") !Global("C0WL307","LOCALS",2)~ + @38 /* Tenacious Plague */ DO ~ApplySpellRES("c0wl307z",Myself) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl308") !Global("C0WL308","LOCALS",2)~ + @39 /* Wall of Perilous Flame */ DO ~ApplySpellRES("c0wl308z",Myself) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl309") !Global("C0WL309","LOCALS",2)~ + @90 /* Nightmares Made Real */ DO ~ApplySpellRES("c0wl309z",Myself) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl310") !Global("C0WL310","LOCALS",2)~ + @92 /* Painful Slumber of Ages */ DO ~ApplySpellRES("c0wl310z",Myself) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
END

IF ~~ change.dark
SAY @40 /* Choose one Dark Invocation: */
+ ~HaveKnownSpellRES("c0wl401") !Global("C0WL401","LOCALS",2)~ + @41 /* Binding Blast */ DO ~ApplySpellRES("c0wl401z",Myself) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl402") !Global("C0WL402","LOCALS",2)~ + @42 /* Utterdark Blast */ DO ~ApplySpellRES("c0wl402z",Myself) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl403") !Global("C0WL403","LOCALS",2)~ + @43 /* Dark Foresight */ DO ~ApplySpellRES("c0wl403z",Myself) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl404") !Global("C0WL404","LOCALS",2)~ + @44 /* Retributive Invisibility */ DO ~ApplySpellRES("c0wl404z",Myself) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl405") !Global("C0WL405","LOCALS",2)~ + @45 /* Word of Changing */ DO ~ApplySpellRES("c0wl405z",Myself) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl406") !Global("C0WL406","LOCALS",2)~ + @94 /* Path of Shadows */ DO ~ApplySpellRES("c0wl406z",Myself) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl407") !Global("C0WL407","LOCALS",2)~ + @96 /* Steal Summoning */ DO ~ApplySpellRES("c0wl407z",Myself) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl408") !Global("C0WL408","LOCALS",2)~ + @98 /* Infernal Crest */ DO ~ApplySpellRES("c0wl408z",Myself) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
END

IF ~~ change2
SAY @46 /* Invocation removed. */
IF ~~ EXIT
END