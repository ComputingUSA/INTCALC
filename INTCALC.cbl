      ******************************************************************
      * Author: PETER D UNGSUNAN
      * Date: 11/20/2020
      * Purpose: CALCULATE INTEREST
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INTCALC.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 DATA-FIELDS.
           05 PRINCIPAL PIC 9(10)V99.
           05 INT-RATE PIC 9(3)V99 VALUE 0100.
           05 RESULT PIC 9(10)V99.
           05 RESULT-EDITED   PIC $$$$$,$$9.99.
           05 INT-EDITED       PIC ZZ9.99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "YEARLY INTEREST RATE CALCULATOR"
            DISPLAY "ENTER PRINCIPAL ($):"
            ACCEPT PRINCIPAL.
            DISPLAY "ENTER INTEREST RATE (%):"
            ACCEPT INT-RATE.

            MOVE PRINCIPAL TO RESULT-EDITED
            DISPLAY "PRINCIPAL: "RESULT-EDITED
            MOVE INT-RATE TO INT-EDITED
            DISPLAY "INT RATE: %"INT-EDITED

            COMPUTE RESULT = PRINCIPAL * INT-RATE/100
            MOVE RESULT TO RESULT-EDITED
            DISPLAY "1 YEAR INTEREST = ", RESULT-EDITED
            ADD RESULT TO PRINCIPAL GIVING RESULT-EDITED.
            DISPLAY "FINAL TOTAL = ", RESULT-EDITED
      * compute daily interest
            COMPUTE RESULT = PRINCIPAL * INT-RATE/36500
            MOVE RESULT TO RESULT-EDITED
            DISPLAY "DAILY INTEREST = ", RESULT-EDITED

            STOP RUN.
       END PROGRAM INTCALC.
