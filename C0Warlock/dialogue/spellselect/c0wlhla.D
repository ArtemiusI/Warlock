BEGIN C0WLHLA

IF ~Global("C0WLHLA1","LOCALS",1)~ least
SAY ~Choose one Least Invocation:~
+ ~!HaveKnownSpellRES("c0wl104")~ + ~Beguiling Influence~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL104","LOCALS",2) AddSpecialAbility("C0WL104")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl105")~ + ~Dark One's Own Luck~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL105","LOCALS",2) AddSpecialAbility("C0WL105")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl106")~ + ~Draining Blast~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL106","LOCALS",2) AddSpecialAbility("C0WL106") ApplySpellRES("C0WL106A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl107")~ + ~Frightful Blast~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL107","LOCALS",2) AddSpecialAbility("C0WL107") ApplySpellRES("C0WL107A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl108")~ + ~Darkness~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL108","LOCALS",2) AddSpecialAbility("C0WL108")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl109")~ + ~Entropic Warding~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL109","LOCALS",2) AddSpecialAbility("C0WL109")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl110")~ + ~Leaps and Bounds~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL110","LOCALS",2) AddSpecialAbility("C0WL110")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl111")~ + ~See the Unseen~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL111","LOCALS",2) AddSpecialAbility("C0WL111")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl112")~ + ~Devil's Sight~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL112","LOCALS",2) AddSpecialAbility("C0WL112")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl113")~ + ~Call of the Beast~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL113","LOCALS",2) AddSpecialAbility("C0WL113")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl114")~ + ~Soulrending Aura~ DO ~SetGlobal("C0WLHLA1","LOCALS",2) SetGlobal("C0WL114","LOCALS",2) AddSpecialAbility("C0WL114")~ EXIT 
END

IF ~Global("C0WLHLA2","LOCALS",1)~ lesser
SAY ~Choose one Lesser Invocation:~
+ ~!HaveKnownSpellRES("c0wl201")~ + ~Beshadowed Blast~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL201","LOCALS",2) AddSpecialAbility("C0WL201") ApplySpellRES("C0WL201A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl202")~ + ~Brimstone Blast~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL202","LOCALS",2) AddSpecialAbility("C0WL202") ApplySpellRES("C0WL202A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl203")~ + ~Hellrime Blast~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL203","LOCALS",2) AddSpecialAbility("C0WL203") ApplySpellRES("C0WL203A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl204")~ + ~Charm~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL204","LOCALS",2) AddSpecialAbility("C0WL204")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl205")~ + ~Curse of Despair~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL205","LOCALS",2) AddSpecialAbility("C0WL205")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl206")~ + ~Dread Seizure~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL206","LOCALS",2) AddSpecialAbility("C0WL206")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl207")~ + ~Flee the Scene~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL207","LOCALS",2) AddSpecialAbility("C0WL207")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl208")~ + ~The Dead Walk~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL208","LOCALS",2) AddSpecialAbility("C0WL208")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl209")~ + ~Voracious Dispelling~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL209","LOCALS",2) AddSpecialAbility("C0WL209")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl210")~ + ~Walk Unseen~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL210","LOCALS",2) AddSpecialAbility("C0WL210")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl211")~ + ~Crawling Eye~ DO ~SetGlobal("C0WLHLA2","LOCALS",2) SetGlobal("C0WL211","LOCALS",2) AddSpecialAbility("C0WL211")~ EXIT 
END

IF ~Global("C0WLHLA3","LOCALS",1)~ greater
SAY ~Choose one Greater Invocation:~
+ ~!HaveKnownSpellRES("c0wl301")~ + ~Bewitching Blast~ DO ~SetGlobal("C0WLHLA3","LOCALS",2) SetGlobal("C0WL301","LOCALS",2) AddSpecialAbility("C0WL301") ApplySpellRES("C0WL301A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl302")~ + ~Electrifying Blast~ DO ~SetGlobal("C0WLHLA3","LOCALS",2) SetGlobal("C0WL302","LOCALS",2) AddSpecialAbility("C0WL302") ApplySpellRES("C0WL302A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl303")~ + ~Noxious Blast~ DO ~SetGlobal("C0WLHLA3","LOCALS",2) SetGlobal("C0WL303","LOCALS",2) AddSpecialAbility("C0WL303") ApplySpellRES("C0WL303A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl304")~ + ~Vitriolic Blast~ DO ~SetGlobal("C0WLHLA3","LOCALS",2) SetGlobal("C0WL304","LOCALS",2) AddSpecialAbility("C0WL304") ApplySpellRES("C0WL304A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl305")~ + ~Chilling Tentacles~ DO ~SetGlobal("C0WLHLA3","LOCALS",2) SetGlobal("C0WL305","LOCALS",2) AddSpecialAbility("C0WL305")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl306")~ + ~Devour Magic~ DO ~SetGlobal("C0WLHLA3","LOCALS",2) SetGlobal("C0WL306","LOCALS",2) AddSpecialAbility("C0WL306")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl307")~ + ~Tenacious Plague~ DO ~SetGlobal("C0WLHLA3","LOCALS",2) SetGlobal("C0WL307","LOCALS",2) AddSpecialAbility("C0WL307")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl308")~ + ~Wall of Perilous Flame~ DO ~SetGlobal("C0WLHLA3","LOCALS",2) SetGlobal("C0WL308","LOCALS",2) AddSpecialAbility("C0WL308")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl309")~ + ~Nightmares Made Real~ DO ~SetGlobal("C0WLHLA3","LOCALS",2) SetGlobal("C0WL309","LOCALS",2) AddSpecialAbility("C0WL309")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl310")~ + ~Painful Slumber of Ages~ DO ~SetGlobal("C0WLHLA3","LOCALS",2) SetGlobal("C0WL310","LOCALS",2) AddSpecialAbility("C0WL310")~ EXIT 
END

IF ~Global("C0WLHLA4","LOCALS",1)~ dark
SAY ~Choose one Dark Invocation:~
+ ~!HaveKnownSpellRES("c0wl401")~ + ~Binding Blast~ DO ~SetGlobal("C0WLHLA4","LOCALS",2) SetGlobal("C0WL401","LOCALS",2) AddSpecialAbility("C0WL401") ApplySpellRES("C0WL401A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl402")~ + ~Utterdark Blast~ DO ~SetGlobal("C0WLHLA4","LOCALS",2) SetGlobal("C0WL402","LOCALS",2) AddSpecialAbility("C0WL402") ApplySpellRES("C0WL402A",Myself)~ EXIT 
+ ~!HaveKnownSpellRES("c0wl403")~ + ~Dark Foresight~ DO ~SetGlobal("C0WLHLA4","LOCALS",2) SetGlobal("C0WL403","LOCALS",2) AddSpecialAbility("C0WL403")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl404")~ + ~Retributive Invisibility~ DO ~SetGlobal("C0WLHLA4","LOCALS",2) SetGlobal("C0WL404","LOCALS",2) AddSpecialAbility("C0WL404")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl405")~ + ~Word of Changing~ DO ~SetGlobal("C0WLHLA4","LOCALS",2) SetGlobal("C0WL405","LOCALS",2) AddSpecialAbility("C0WL405")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl406")~ + ~Path of Shadow~ DO ~SetGlobal("C0WLHLA4","LOCALS",2) SetGlobal("C0WL406","LOCALS",2) AddSpecialAbility("C0WL406")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl407")~ + ~Steal Summoning~ DO ~SetGlobal("C0WLHLA4","LOCALS",2) SetGlobal("C0WL407","LOCALS",2) AddSpecialAbility("C0WL407")~ EXIT 
+ ~!HaveKnownSpellRES("c0wl408")~ + ~Infernal Crest~ DO ~SetGlobal("C0WLHLA4","LOCALS",2) SetGlobal("C0WL408","LOCALS",2) AddSpecialAbility("C0WL408")~ EXIT 
END