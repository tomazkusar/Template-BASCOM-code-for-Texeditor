'-------------------------------------------------------------------------------
'                ARDUINO-UNO-REV3.BAS
'              (c) 1995-2020, MCS Electronics
'  This is a sample file for the Mega328 based ARDUINO board UNO REV3
'  Select Programmer 'ARDUINO' , 115200 baud and the proper COM port
'-------------------------------------------------------------------------------
$regfile = "m328def.dat"                                    ' used micro
$crystal = 16000000                                         ' used xtal
$baud = 19200                                               ' baud rate we want
$hwstack = 40
$swstack = 40
$framesize = 40

Config Clockdiv = 1                                         ' either use this or change the divider fuse byte
'-------------------------------------------------------------------------------

Config Portb = Output                                       ' make portb an output
Do
  Toggle Portb                                              ' toggle level
  Waitms 1000                                               ' wait 1 sec
  Print "UNO REV3"                                          ' test serial com
Loop