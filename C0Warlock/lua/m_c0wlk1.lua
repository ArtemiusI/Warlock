function MoWarlockThievingActionbarListener(config, state)
   if 
      state == 5
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4000
      then
      EEex_Actionbar_SetButton(3, EEex_Actionbar_ButtonType.FIND_TRAPS)
   end
end
EEex_Actionbar_AddListener(MoWarlockThievingActionbarListener)