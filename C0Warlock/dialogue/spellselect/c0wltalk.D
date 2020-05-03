// Warlock - learn spell

BEGIN C0WLTALK

IF ~True()~ start
SAY ~Would you like to swap an Invocation?~
++ ~Yes.~ + change
++ ~No.~ DO ~ClearAllActions()~ EXIT
END

IF ~~ change
SAY @9 /* Once per level up, a warlock may exchange one of their invocations for another of the same grade.

Choose a grade of invocation: */
+ ~OR(8)
HaveKnownSpellRES("c0wl104")
HaveKnownSpellRES("c0wl105")
HaveKnownSpellRES("c0wl106")
HaveKnownSpellRES("c0wl107")
HaveKnownSpellRES("c0wl108")
HaveKnownSpellRES("c0wl109")
HaveKnownSpellRES("c0wl110")
HaveKnownSpellRES("c0wl111")~ + @1 /* Least */ + change.least
+ ~OR(10)
HaveKnownSpellRES("c0wl201")
HaveKnownSpellRES("c0wl202")
HaveKnownSpellRES("c0wl203")
HaveKnownSpellRES("c0wl204")
HaveKnownSpellRES("c0wl205")
HaveKnownSpellRES("c0wl206")
HaveKnownSpellRES("c0wl207")
HaveKnownSpellRES("c0wl208")
HaveKnownSpellRES("c0wl209")
HaveKnownSpellRES("c0wl210")~ + @2 /* Lesser */ + change.lesser
+ ~OR(8)
HaveKnownSpellRES("c0wl301")
HaveKnownSpellRES("c0wl302")
HaveKnownSpellRES("c0wl303")
HaveKnownSpellRES("c0wl304")
HaveKnownSpellRES("c0wl305")
HaveKnownSpellRES("c0wl306")
HaveKnownSpellRES("c0wl307")
HaveKnownSpellRES("c0wl308")~ + @3 /* Greater */ + change.greater
+ ~OR(5)
HaveKnownSpellRES("c0wl401")
HaveKnownSpellRES("c0wl402")
HaveKnownSpellRES("c0wl403")
HaveKnownSpellRES("c0wl404")
HaveKnownSpellRES("c0wl405")~ + @4 /* Dark */ + change.dark
++ @10 /* Go back */ + start
END

IF ~~ change.least
SAY @11 /* Choose one Least Invocation: */
+ ~HaveKnownSpellRES("c0wl104")~ + @12 /* Beguiling Influence */ DO ~ApplySpellRES("c0wl104z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl105")~ + @13 /* Dark One's Own Luck */ DO ~ApplySpellRES("c0wl105z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl106")~ + @14 /* Draining Blast */ DO ~ApplySpellRES("c0wl106z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl107")~ + @15 /* Frightful Blast */ DO ~ApplySpellRES("c0wl107z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl108")~ + @16 /* Darkness */ DO ~ApplySpellRES("c0wl108z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl109")~ + @17 /* Entropic Warding */ DO ~ApplySpellRES("c0wl109z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl110")~ + @18 /* Leaps and Bounds */ DO ~ApplySpellRES("c0wl110z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl111")~ + @19 /* See the Unseen */ DO ~ApplySpellRES("c0wl111z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
END

IF ~~ change.lesser
SAY @20 /* Choose one Lesser Invocation: */
+ ~HaveKnownSpellRES("c0wl201")~ + @21 /* Beshadowed Blast */ DO ~ApplySpellRES("c0wl201z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl202")~ + @22 /* Brimstone Blast */ DO ~ApplySpellRES("c0wl202z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl203")~ + @23 /* Hellrime Blast */ DO ~ApplySpellRES("c0wl203z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl204")~ + @24 /* Charm */ DO ~ApplySpellRES("c0wl204z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl205")~ + @25 /* Curse of Despair */ DO ~ApplySpellRES("c0wl205z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl206")~ + @26 /* Dread Seizure */ DO ~ApplySpellRES("c0wl206z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl207")~ + @27 /* Flee the Scene */ DO ~ApplySpellRES("c0wl207z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl208")~ + @28 /* The Dead Walk */ DO ~ApplySpellRES("c0wl208z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl209")~ + @29 /* Voracious Dispelling */ DO ~ApplySpellRES("c0wl209z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl210")~ + @30 /* Walk Unseen */ DO ~ApplySpellRES("c0wl210z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
END

IF ~~ change.greater
SAY @31 /* Choose one Greater Invocation: */
+ ~HaveKnownSpellRES("c0wl301")~ + @32 /* Bewitching Blast */ DO ~ApplySpellRES("c0wl301z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl302")~ + @33 /* Electrifying Blast */ DO ~ApplySpellRES("c0wl302z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl303")~ + @34 /* Noxious Blast */ DO ~ApplySpellRES("c0wl303z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl304")~ + @35 /* Vitriolic Blast */ DO ~ApplySpellRES("c0wl304z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl305")~ + @36 /* Chilling Tentacles */ DO ~ApplySpellRES("c0wl305z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl306")~ + @37 /* Devour Magic */ DO ~ApplySpellRES("c0wl306z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl307")~ + @38 /* Tenacious Plague */ DO ~ApplySpellRES("c0wl307z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl308")~ + @39 /* Wall of Perilous Flame */ DO ~ApplySpellRES("c0wl308z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
END

IF ~~ change.dark
SAY @40 /* Choose one Dark Invocation: */
+ ~HaveKnownSpellRES("c0wl401")~ + @41 /* Binding Blast */ DO ~ApplySpellRES("c0wl401z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl402")~ + @42 /* Utterdark Blast */ DO ~ApplySpellRES("c0wl402z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl403")~ + @43 /* Dark Foresight */ DO ~ApplySpellRES("c0wl403z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl404")~ + @44 /* Retributive Invisibility */ DO ~ApplySpellRES("c0wl404z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl405")~ + @45 /* Word of Changing */ DO ~ApplySpellRES("c0wl405z",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
END

IF ~~ change2
SAY @46 /* Invocation removed. */
IF ~~ EXIT
END