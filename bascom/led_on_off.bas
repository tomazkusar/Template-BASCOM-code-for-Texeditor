'on/off LED
$regfile = "m328pdef.dat"
$crystal = 16000000

config portb = output

Do
   Portb.5 = 1
   Waitms 500
   Portb.5 = 0
   Waitms 500
Loop

End       'end programa