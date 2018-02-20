INTERJECT BRUS2 0 C0BrusWarlock
== BRUS2 IF ~Kit(Player1,C0WLOCK)~ THEN ~Ye're a wizard or somethin', right? No? Whatever, ye're close enough... anyways, me boys tell me there's this feller named Madeen in the Government District... he's workin' fer the Cowled Wizards and offering some job. I could takes ye to the edge of the slums if ye wants to check it out.~
COPY_TRANS BRUS2 11

INTERJECT GAELAN 70 C0GAELANWARLOCK
== GAELAN IF ~Kit(Player1,C0WLOCK)~ THEN ~There was some fellow named Madeen looking for adventurers. Don't know much about him, but he's at the Government District if you're interested.~
COPY_TRANS BRUS2 11

INTERJECT LAVOK 59 C0LAVOKWARLOCK
== LAVOK IF ~Kit(Player1,C0WLOCK)
Global("PlayerHasStronghold","GLOBAL",0)~ THEN ~...I... I sense within you... a power not so different from mine. You... you are the bearer of a fell pact, are you not?~
= ~Yes... I see that you are. You are no mage, but... you still command the arcane regardless. I... I grant you the sphere, warlock. Do... do with it far... far better than I ever did. It is yours... to use wisely...~
DO ~DestroyItem("MINHP1")
EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
SetGlobal("PlayerHasStronghold","GLOBAL",1)
SetGlobal("PCSphere","GLOBAL",1)~ EXTERN LAVOK 60

CHAIN IF ~Global("LavokOutside","GLOBAL",1)
Global("PlayerHasStronghold","GLOBAL",0)
Kit(Player1,C0WLOCK)~ THEN LAVOK C0LAVOKWARLOCK2
~Ah, it is the sky after all. I had forgotten how it looked after so long. I thank you... and I wish to repay you for your kindness...~ [LAVOK18]
DO ~AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)~
= ~...I sense within you a power and ability similar to my own, yes? You... you are the bearer of a fell pact, are you not? Yes, I am correct. You are no mage, but you command the arcane regardless.~
= ~Take the planar sphere, warlock. I grant it to you, in payment for my release. Use it... use it far more wisely than I ever did...~
DO ~DestroyItem("MINHP1")
EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
SetGlobal("PlayerHasStronghold","GLOBAL",1)
SetGlobal("PCSphere","GLOBAL",1)
Kill(Myself)~ EXIT