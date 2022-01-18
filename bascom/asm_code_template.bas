Do_spm:
  Z = Page                                        'make equal to page
  Shift Z , Left , Maxwordshift                   'shift to proper place
  Z = Z + Wrd                                     'add word
  !lds r30,{Z}
  !lds r31,{Z+1}
  #if _romsize > 65536
      !lds r24,{Z+2}
      !sts rampz,r24                                        ' we need to set rampz also for the M128
  #endif
  Nvm_cmd = Spmcrval
  Cpu_ccp = &H9D
  !spm                                                      'this is an asm instruction
Do_spm_busy:
   !lds r23, NVM_STATUS
   !sbrc r23,7 ;if  busy bit is cleared  skip next instruc tion
   !rjmp do_spm_busy
Return