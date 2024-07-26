DATABASE trending;

CREATE TABLE pw1000g
   ( sequence            char(9) NOT NULL,
     serialno            char(20),
     enginetype          char(20),
     dashnumber          char(20),
     eecname             char(20),
     opendate            char(10),
     opentime            char(8),
     closedate           char(10),
     closetime           char(8),
   );

CREATE TABLE p_pw1000g
   ( sequence            char(9) NOT NULL,
     perfnum             integer NOT NULL,
     label               char(20),
     perftime            char(8),
   );

CREATE TABLE u_pw1000g
   ( sequence            char(9) NOT NULL,
   );

CREATE UNIQUE INDEX i1_pw1000g ON pw1000g (sequence);

CREATE INDEX i2_pw1000g ON p_pw1000g (sequence);

CREATE UNIQUE INDEX i3_pw1000g ON p_pw1000g (sequence, label);

CREATE UNIQUE INDEX i4_pw1000g ON u_pw1000g (sequence);

