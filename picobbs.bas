   10  PRINT " "
   20  PRINT "     WELCOME TO PICOBBS"
   30  PRINT "        PRE-ALPHA 0.1"
   40  PRINT "      (C)1988 MOS6502"
   50  PRINT " "
   70  OPEN "picoc.txt", AS #1
   71  IF EOF(1) = -1 THEN GOTO 80
   72  INPUT# 1, A
   73  PRINT A
   74  goto 71
   80  PRINT " "
   82  PRINT# 1, "------------"
   84  PRINT# 1, user$
   86  PRINT# 1, date$
   88  PRINT# 1, time$
   89  PRINT " ------------"
   90  PRINT " "
   91  PRINT "TYPE YOUR MESSAGE NOW"
  100  PRINT "WHEN YOU ARE FINISHED, TYPE '.' ON ONE LINE"
  110  PRINT " "
  120  INPUT "." LINE$
  130  IF LINE$ = "." GOTO 160
  140  PRINT# 1, LINE$
  150  GOTO 120
  160  CLOSE #1
  170  END