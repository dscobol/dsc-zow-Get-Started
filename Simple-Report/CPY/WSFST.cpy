      ***********************************************************
      * Copybook name: WSFST
      * Original author: David Stagowski
      *
      * Description: A basic File Status copybook.
      *
      * Typical Use: Within the Working-Storage Section:
      *
      * 01  WS-FILE-STATUS.
      *     COPY WSFST REPLACING ==:tag:== BY ==INFILE==.
      *        where "INFILE" would be whatever you need it to be.
      *
      *
      * Maintenence Log
      * Date       Author        Maintenance Requirement
      * ---------- ------------  --------------------------------
      * 2020-08-11 dastagg       Created to Learn
      *
      **********************************************************
           12 WS-:tag:-Status            PIC X(2).
              88 WS-:tag:-EOF            VALUE  "10".
              88 WS-:tag:-Good           VALUE  "00".
              88 WS-:tag:-Okay           VALUES "00" "10".
