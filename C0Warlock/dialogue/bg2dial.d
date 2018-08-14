INTERJECT BRUS2 0 C0BrusWarlock
== BRUS2 IF ~Kit(Player1,C0WLOCK)~ THEN @0 /* Ye're a wizard or somethin', right? No? Whatever, ye're close enough... anyways, me boys tell me there's this feller named Madeen in the Government District... he's workin' fer the Cowled Wizards and offering some job. I could takes ye to the edge of the slums if ye wants to check it out. */
COPY_TRANS BRUS2 11

INTERJECT GAELAN 70 C0GAELANWARLOCK
== GAELAN IF ~Kit(Player1,C0WLOCK)~ THEN @1 /* There was some fellow named Madeen looking for adventurers. Don't know much about him, but he's at the Government District if you're interested. */
EXTERN GAELAN 71

INTERJECT LAVOK 59 C0LAVOKWARLOCK
== LAVOK IF ~Kit(Player1,C0WLOCK)
Global("PlayerHasStronghold","GLOBAL",0)~ THEN @2 /* ...I... I sense within you... a power not so different from mine. You... you are the bearer of a fell pact, are you not? */
= @3 /* Yes... I see that you are. You are no mage, but... you still command the arcane regardless. I... I grant you the sphere, warlock. Do... do with it far... far better than I ever did. It is yours... to use wisely... */
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
@4 /* Ah, it is the sky after all. I had forgotten how it looked after so long. I thank you... and I wish to repay you for your kindness... */
DO ~AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)~
= @5 /* ...I sense within you a power and ability similar to my own, yes? You... you are the bearer of a fell pact, are you not? Yes, I am correct. You are no mage, but you command the arcane regardless. */
= @6 /* Take the planar sphere, warlock. I grant it to you, in payment for my release. Use it... use it far more wisely than I ever did... */
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

// Cromwell

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("C0WLI#02")~ THEN GOTO CROMWELL1
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN CROMWELL1 SAY @7	/* Eh? By Moradin, this blade's flames could that o' me forge. What be this infernal thing, eh? */
    IF ~PartyHasItem("C0WLI#02")
        !PartyHasItem("MISC6M")~ THEN GOTO CROMWELL2
    IF ~PartyHasItem("C0WLI#02")
        PartyHasItem("MISC6M")~ THEN GOTO CROMWELL3
  END
  
  IF ~~ THEN BEGIN CROMWELL2 SAY @8	/* Ach, this weapon be a dangerous thing indeed, me friend. If ye be willin' ter wield it, though, the blood from the heart o' a tanar'ri be an effective catalyst to draw out a baatezu's rage, should ye ever find such a vile thing. */
    COPY_TRANS WSMITH01 13
  END
  
  IF ~~ THEN BEGIN CROMWELL3 SAY @9	/* Ach, this weapon be a dangerous thing indeed, me friend. If ye be willin' ter wield it, though, the blood from the heart o' a tanar'ri be an effective catalyst to draw out a baatezu's rage. Ye've a heart with ye, so I can make this sword's flames burn as hot as those o' Phlegethos itself. It'll cost ye 12,000 gold fer the task. */
    IF ~PartyGoldLT(12000)~ THEN REPLY @10 /* I don't have enough gold. */ GOTO CROMWELLNO
    IF ~PartyGoldGT(11999)~ THEN REPLY @11 /* That sounds good. Do it. */ DO ~SetGlobal("C0HellfireBladeUpgrade","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(12000)
                                                 TakePartyItemNum("C0WLI#02",1)
                                                 DestroyItem("C0WLI#02")
                                                 TakePartyItemNum("MISC6M",1)
                                                 DestroyItem("MISC6M")
                                                 DestroyGold(12000)~ GOTO 56
    IF ~~ THEN REPLY @12 /* Not at this time. What else? */ GOTO CROMWELLNO
  END

  IF WEIGHT #-1 ~GlobalGT("C0HellfireBladeCraft","ar0334",0)~ THEN BEGIN CROMWELL4 SAY @13 /* Well, there ye go, me friend. Use it well. And if ye comes across anything else of interest, ye knows where to bring it, aye? */
    IF ~~ THEN DO ~SetGlobal("C0HellfireBladeCraft","ar0334",0)~ EXIT
  END

  IF ~~ THEN BEGIN CROMWELLNO SAY @14 /* As ye wish. Perhaps it be fer the best not to meddle with the tools o' devils. */
   COPY_TRANS WSMITH01 13
  END
END
