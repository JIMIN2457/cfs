
CREATE TABLE ACCOUNT
(
	ACCOUNT_BANK          VARCHAR2(100)  NOT NULL ,
	ACCOUNT_NUMBER        VARCHAR2(100)  NOT NULL ,
	ACCOUNT_NAME          VARCHAR2(100)  NOT NULL ,
	ACCOUNT_PHONE         VARCHAR2(100)  NOT NULL ,
	ACCOUNT_BIRTH         VARCHAR2(100)  NOT NULL ,
	ACCOUNT_NO            NUMBER(10)  NOT NULL ,
	PAYMENT_NO            NUMBER(10)  NOT NULL 
);



CREATE UNIQUE INDEX XPKACCOUNT ON ACCOUNT
(ACCOUNT_NO  ASC);



ALTER TABLE ACCOUNT
	ADD CONSTRAINT  XPKACCOUNT PRIMARY KEY (ACCOUNT_NO);



CREATE TABLE CARD
(
	CARD_NUMBER           VARCHAR2(100)  NOT NULL ,
	CARD_TIME             VARCHAR2(100)  NOT NULL ,
	CARD_PASSWORD         VARCHAR2(100)  NOT NULL ,
	CARD_PHONE            VARCHAR2(100)  NOT NULL ,
	CARD_BIRTH            VARCHAR2(100)  NOT NULL ,
	CARD_NO               NUMBER(10)  NOT NULL ,
	PAYMENT_NO            NUMBER(10)  NOT NULL 
);



CREATE UNIQUE INDEX XPKCARD ON CARD
(CARD_NO  ASC);



ALTER TABLE CARD
	ADD CONSTRAINT  XPKCARD PRIMARY KEY (CARD_NO);



CREATE TABLE CFS_PROJECT
(
	PROJECT_NO            NUMBER(10)  NOT NULL ,
	PROJECT_SUBJECT       VARCHAR2(100)  NOT NULL ,
	PROJECT_IMG           VARCHAR2(100)  NOT NULL ,
	PROJECT_CONTEXT       VARCHAR2(100)  NOT NULL ,
	PROJECT_CATEGORY      VARCHAR2(100)  NOT NULL ,
	PROJECT_URL           VARCHAR2(100)  NOT NULL ,
	START_DATE            VARCHAR2(100)  NOT NULL ,
	LAST_DATE             VARCHAR2(100)  NOT NULL ,
	PROJECT_CHECK         NUMBER(1)  NOT NULL ,
	PROJECT_AVI           VARCHAR2(100)  NOT NULL ,
	USER_ID               VARCHAR2(100)  NOT NULL ,
	PROJECT_PRICE         NUMBER(10)  NOT NULL ,
	PROJECT_TARGET_PRICE  CHAR(18)  NOT NULL 
);



CREATE UNIQUE INDEX XPKCFS_PROJECT ON CFS_PROJECT
(PROJECT_NO  ASC);



ALTER TABLE CFS_PROJECT
	ADD CONSTRAINT  XPKCFS_PROJECT PRIMARY KEY (PROJECT_NO);



CREATE TABLE CFS_USER
(
	USER_EMAIL            VARCHAR2(100)  NOT NULL ,
	USER_NAME             VARCHAR2(100)  NOT NULL ,
	USER_PASSWORD         VARCHAR2(100)  NOT NULL ,
	USER_ID               VARCHAR2(100)  NOT NULL ,
	USER_GRADE            NUMBER(1)  NOT NULL 
);



CREATE UNIQUE INDEX XPKCFS_USER ON CFS_USER
(USER_ID  ASC);



ALTER TABLE CFS_USER
	ADD CONSTRAINT  XPKCFS_USER PRIMARY KEY (USER_ID);



CREATE TABLE PAYMENT
(
	PAYMENT_NO            NUMBER(10)  NOT NULL ,
	PAYMENT_TYPE          VARCHAR2(100)  NOT NULL ,
	USER_ID               VARCHAR2(100)  NOT NULL 
);



CREATE UNIQUE INDEX XPKPAYMENT ON PAYMENT
(PAYMENT_NO  ASC);



ALTER TABLE PAYMENT
	ADD CONSTRAINT  XPKPAYMENT PRIMARY KEY (PAYMENT_NO);



CREATE TABLE REWORD
(
	REWORD_NAME           VARCHAR2(100)  NOT NULL ,
	REWORD_MAX            NUMBER(10)  NOT NULL ,
	REWORD_PRICE          NUMBER(10)  NOT NULL ,
	REWORD_NO             NUMBER(10)  NOT NULL ,
	REWORD_INFO           VARCHAR2(100)  NOT NULL ,
	PROJECT_NO            NUMBER(10)  NOT NULL 
);



CREATE UNIQUE INDEX XPKREWORD ON REWORD
(REWORD_NO  ASC);



ALTER TABLE REWORD
	ADD CONSTRAINT  XPKREWORD PRIMARY KEY (REWORD_NO);



CREATE TABLE SUPPORT
(
	SUPPORT_PRICE         NUMBER(10)  NOT NULL ,
	PAYMENT_OK            NUMBER(1)  NOT NULL ,
	SUPPORT_NO            NUMBER(10)  NOT NULL ,
	USER_ID               VARCHAR2(100)  NOT NULL ,
	REWORD_NO             NUMBER(10)  NOT NULL 
);



CREATE UNIQUE INDEX XPKSUPPORT ON SUPPORT
(SUPPORT_NO  ASC);



ALTER TABLE SUPPORT
	ADD CONSTRAINT  XPKSUPPORT PRIMARY KEY (SUPPORT_NO);



ALTER TABLE ACCOUNT
	ADD (CONSTRAINT  R_23 FOREIGN KEY (PAYMENT_NO) REFERENCES PAYMENT(PAYMENT_NO));



ALTER TABLE CARD
	ADD (CONSTRAINT  R_22 FOREIGN KEY (PAYMENT_NO) REFERENCES PAYMENT(PAYMENT_NO));



ALTER TABLE CFS_PROJECT
	ADD (CONSTRAINT  R_15 FOREIGN KEY (USER_ID) REFERENCES CFS_USER(USER_ID));



ALTER TABLE PAYMENT
	ADD (CONSTRAINT  R_14 FOREIGN KEY (USER_ID) REFERENCES CFS_USER(USER_ID));



ALTER TABLE REWORD
	ADD (CONSTRAINT  R_17 FOREIGN KEY (PROJECT_NO) REFERENCES CFS_PROJECT(PROJECT_NO));



ALTER TABLE SUPPORT
	ADD (CONSTRAINT  R_18 FOREIGN KEY (USER_ID) REFERENCES CFS_USER(USER_ID));



ALTER TABLE SUPPORT
	ADD (CONSTRAINT  R_21 FOREIGN KEY (REWORD_NO) REFERENCES REWORD(REWORD_NO));



CREATE  TRIGGER tI_ACCOUNT BEFORE INSERT ON ACCOUNT for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- INSERT trigger on ACCOUNT 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* PAYMENT  ACCOUNT on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000f39a", PARENT_OWNER="", PARENT_TABLE="PAYMENT"
    CHILD_OWNER="", CHILD_TABLE="ACCOUNT"
    P2C_VERB_PHRASE="R/23", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="PAYMENT_NO" */
    SELECT count(*) INTO NUMROWS
      FROM PAYMENT
      WHERE
        /* %JoinFKPK(:%New,PAYMENT," = "," AND") */
        :new.PAYMENT_NO = PAYMENT.PAYMENT_NO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert ACCOUNT because PAYMENT does not exist.'
      );
    END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

CREATE  TRIGGER tU_ACCOUNT AFTER UPDATE ON ACCOUNT for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- UPDATE trigger on ACCOUNT 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* PAYMENT  ACCOUNT on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0000f81c", PARENT_OWNER="", PARENT_TABLE="PAYMENT"
    CHILD_OWNER="", CHILD_TABLE="ACCOUNT"
    P2C_VERB_PHRASE="R/23", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="PAYMENT_NO" */
  SELECT count(*) INTO NUMROWS
    FROM PAYMENT
    WHERE
      /* %JoinFKPK(:%New,PAYMENT," = "," AND") */
      :new.PAYMENT_NO = PAYMENT.PAYMENT_NO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update ACCOUNT because PAYMENT does not exist.'
    );
  END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/


CREATE  TRIGGER tI_CARD BEFORE INSERT ON CARD for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- INSERT trigger on CARD 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* PAYMENT  CARD on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000f0c5", PARENT_OWNER="", PARENT_TABLE="PAYMENT"
    CHILD_OWNER="", CHILD_TABLE="CARD"
    P2C_VERB_PHRASE="R/22", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="PAYMENT_NO" */
    SELECT count(*) INTO NUMROWS
      FROM PAYMENT
      WHERE
        /* %JoinFKPK(:%New,PAYMENT," = "," AND") */
        :new.PAYMENT_NO = PAYMENT.PAYMENT_NO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert CARD because PAYMENT does not exist.'
      );
    END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

CREATE  TRIGGER tU_CARD AFTER UPDATE ON CARD for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- UPDATE trigger on CARD 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* PAYMENT  CARD on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0000f4c6", PARENT_OWNER="", PARENT_TABLE="PAYMENT"
    CHILD_OWNER="", CHILD_TABLE="CARD"
    P2C_VERB_PHRASE="R/22", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="PAYMENT_NO" */
  SELECT count(*) INTO NUMROWS
    FROM PAYMENT
    WHERE
      /* %JoinFKPK(:%New,PAYMENT," = "," AND") */
      :new.PAYMENT_NO = PAYMENT.PAYMENT_NO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update CARD because PAYMENT does not exist.'
    );
  END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/


CREATE  TRIGGER tI_CFS_PROJECT BEFORE INSERT ON CFS_PROJECT for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- INSERT trigger on CFS_PROJECT 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* CFS_USER  CFS_PROJECT on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000f61e", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="CFS_PROJECT"
    P2C_VERB_PHRASE="R/15", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="USER_ID" */
    SELECT count(*) INTO NUMROWS
      FROM CFS_USER
      WHERE
        /* %JoinFKPK(:%New,CFS_USER," = "," AND") */
        :new.USER_ID = CFS_USER.USER_ID;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert CFS_PROJECT because CFS_USER does not exist.'
      );
    END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

CREATE  TRIGGER tD_CFS_PROJECT AFTER DELETE ON CFS_PROJECT for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- DELETE trigger on CFS_PROJECT 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* CFS_PROJECT  REWORD on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0000e3dd", PARENT_OWNER="", PARENT_TABLE="CFS_PROJECT"
    CHILD_OWNER="", CHILD_TABLE="REWORD"
    P2C_VERB_PHRASE="R/17", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="PROJECT_NO" */
    SELECT count(*) INTO NUMROWS
      FROM REWORD
      WHERE
        /*  %JoinFKPK(REWORD,:%Old," = "," AND") */
        REWORD.PROJECT_NO = :old.PROJECT_NO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete CFS_PROJECT because REWORD exists.'
      );
    END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

CREATE  TRIGGER tU_CFS_PROJECT AFTER UPDATE ON CFS_PROJECT for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- UPDATE trigger on CFS_PROJECT 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* CFS_PROJECT  REWORD on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00022c6b", PARENT_OWNER="", PARENT_TABLE="CFS_PROJECT"
    CHILD_OWNER="", CHILD_TABLE="REWORD"
    P2C_VERB_PHRASE="R/17", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="PROJECT_NO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.PROJECT_NO <> :new.PROJECT_NO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM REWORD
      WHERE
        /*  %JoinFKPK(REWORD,:%Old," = "," AND") */
        REWORD.PROJECT_NO = :old.PROJECT_NO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update CFS_PROJECT because REWORD exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* CFS_USER  CFS_PROJECT on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="CFS_PROJECT"
    P2C_VERB_PHRASE="R/15", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="USER_ID" */
  SELECT count(*) INTO NUMROWS
    FROM CFS_USER
    WHERE
      /* %JoinFKPK(:%New,CFS_USER," = "," AND") */
      :new.USER_ID = CFS_USER.USER_ID;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update CFS_PROJECT because CFS_USER does not exist.'
    );
  END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/


CREATE  TRIGGER tD_CFS_USER AFTER DELETE ON CFS_USER for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- DELETE trigger on CFS_USER 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* CFS_USER  PAYMENT on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0002e0e1", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="PAYMENT"
    P2C_VERB_PHRASE="R/14", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_14", FK_COLUMNS="USER_ID" */
    SELECT count(*) INTO NUMROWS
      FROM PAYMENT
      WHERE
        /*  %JoinFKPK(PAYMENT,:%Old," = "," AND") */
        PAYMENT.USER_ID = :old.USER_ID;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete CFS_USER because PAYMENT exists.'
      );
    END IF;

    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* CFS_USER  CFS_PROJECT on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="CFS_PROJECT"
    P2C_VERB_PHRASE="R/15", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="USER_ID" */
    SELECT count(*) INTO NUMROWS
      FROM CFS_PROJECT
      WHERE
        /*  %JoinFKPK(CFS_PROJECT,:%Old," = "," AND") */
        CFS_PROJECT.USER_ID = :old.USER_ID;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete CFS_USER because CFS_PROJECT exists.'
      );
    END IF;

    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* CFS_USER  SUPPORT on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="SUPPORT"
    P2C_VERB_PHRASE="R/18", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="USER_ID" */
    SELECT count(*) INTO NUMROWS
      FROM SUPPORT
      WHERE
        /*  %JoinFKPK(SUPPORT,:%Old," = "," AND") */
        SUPPORT.USER_ID = :old.USER_ID;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete CFS_USER because SUPPORT exists.'
      );
    END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

CREATE  TRIGGER tU_CFS_USER AFTER UPDATE ON CFS_USER for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- UPDATE trigger on CFS_USER 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* CFS_USER  PAYMENT on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00033d7a", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="PAYMENT"
    P2C_VERB_PHRASE="R/14", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_14", FK_COLUMNS="USER_ID" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.USER_ID <> :new.USER_ID
  THEN
    SELECT count(*) INTO NUMROWS
      FROM PAYMENT
      WHERE
        /*  %JoinFKPK(PAYMENT,:%Old," = "," AND") */
        PAYMENT.USER_ID = :old.USER_ID;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update CFS_USER because PAYMENT exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* CFS_USER  CFS_PROJECT on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="CFS_PROJECT"
    P2C_VERB_PHRASE="R/15", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_15", FK_COLUMNS="USER_ID" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.USER_ID <> :new.USER_ID
  THEN
    SELECT count(*) INTO NUMROWS
      FROM CFS_PROJECT
      WHERE
        /*  %JoinFKPK(CFS_PROJECT,:%Old," = "," AND") */
        CFS_PROJECT.USER_ID = :old.USER_ID;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update CFS_USER because CFS_PROJECT exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* CFS_USER  SUPPORT on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="SUPPORT"
    P2C_VERB_PHRASE="R/18", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="USER_ID" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.USER_ID <> :new.USER_ID
  THEN
    SELECT count(*) INTO NUMROWS
      FROM SUPPORT
      WHERE
        /*  %JoinFKPK(SUPPORT,:%Old," = "," AND") */
        SUPPORT.USER_ID = :old.USER_ID;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update CFS_USER because SUPPORT exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/


CREATE  TRIGGER tI_PAYMENT BEFORE INSERT ON PAYMENT for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- INSERT trigger on PAYMENT 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* CFS_USER  PAYMENT on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000ee21", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="PAYMENT"
    P2C_VERB_PHRASE="R/14", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_14", FK_COLUMNS="USER_ID" */
    SELECT count(*) INTO NUMROWS
      FROM CFS_USER
      WHERE
        /* %JoinFKPK(:%New,CFS_USER," = "," AND") */
        :new.USER_ID = CFS_USER.USER_ID;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert PAYMENT because CFS_USER does not exist.'
      );
    END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

CREATE  TRIGGER tD_PAYMENT AFTER DELETE ON PAYMENT for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- DELETE trigger on PAYMENT 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* PAYMENT  CARD on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0001d493", PARENT_OWNER="", PARENT_TABLE="PAYMENT"
    CHILD_OWNER="", CHILD_TABLE="CARD"
    P2C_VERB_PHRASE="R/22", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="PAYMENT_NO" */
    SELECT count(*) INTO NUMROWS
      FROM CARD
      WHERE
        /*  %JoinFKPK(CARD,:%Old," = "," AND") */
        CARD.PAYMENT_NO = :old.PAYMENT_NO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete PAYMENT because CARD exists.'
      );
    END IF;

    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* PAYMENT  ACCOUNT on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PAYMENT"
    CHILD_OWNER="", CHILD_TABLE="ACCOUNT"
    P2C_VERB_PHRASE="R/23", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="PAYMENT_NO" */
    SELECT count(*) INTO NUMROWS
      FROM ACCOUNT
      WHERE
        /*  %JoinFKPK(ACCOUNT,:%Old," = "," AND") */
        ACCOUNT.PAYMENT_NO = :old.PAYMENT_NO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete PAYMENT because ACCOUNT exists.'
      );
    END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

CREATE  TRIGGER tU_PAYMENT AFTER UPDATE ON PAYMENT for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- UPDATE trigger on PAYMENT 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* PAYMENT  CARD on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00031807", PARENT_OWNER="", PARENT_TABLE="PAYMENT"
    CHILD_OWNER="", CHILD_TABLE="CARD"
    P2C_VERB_PHRASE="R/22", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_22", FK_COLUMNS="PAYMENT_NO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.PAYMENT_NO <> :new.PAYMENT_NO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM CARD
      WHERE
        /*  %JoinFKPK(CARD,:%Old," = "," AND") */
        CARD.PAYMENT_NO = :old.PAYMENT_NO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update PAYMENT because CARD exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* PAYMENT  ACCOUNT on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PAYMENT"
    CHILD_OWNER="", CHILD_TABLE="ACCOUNT"
    P2C_VERB_PHRASE="R/23", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_23", FK_COLUMNS="PAYMENT_NO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.PAYMENT_NO <> :new.PAYMENT_NO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM ACCOUNT
      WHERE
        /*  %JoinFKPK(ACCOUNT,:%Old," = "," AND") */
        ACCOUNT.PAYMENT_NO = :old.PAYMENT_NO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update PAYMENT because ACCOUNT exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* CFS_USER  PAYMENT on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="PAYMENT"
    P2C_VERB_PHRASE="R/14", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_14", FK_COLUMNS="USER_ID" */
  SELECT count(*) INTO NUMROWS
    FROM CFS_USER
    WHERE
      /* %JoinFKPK(:%New,CFS_USER," = "," AND") */
      :new.USER_ID = CFS_USER.USER_ID;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update PAYMENT because CFS_USER does not exist.'
    );
  END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/


CREATE  TRIGGER tI_REWORD BEFORE INSERT ON REWORD for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- INSERT trigger on REWORD 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* CFS_PROJECT  REWORD on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000fb4b", PARENT_OWNER="", PARENT_TABLE="CFS_PROJECT"
    CHILD_OWNER="", CHILD_TABLE="REWORD"
    P2C_VERB_PHRASE="R/17", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="PROJECT_NO" */
    SELECT count(*) INTO NUMROWS
      FROM CFS_PROJECT
      WHERE
        /* %JoinFKPK(:%New,CFS_PROJECT," = "," AND") */
        :new.PROJECT_NO = CFS_PROJECT.PROJECT_NO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert REWORD because CFS_PROJECT does not exist.'
      );
    END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

CREATE  TRIGGER tD_REWORD AFTER DELETE ON REWORD for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- DELETE trigger on REWORD 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* REWORD  SUPPORT on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0000e0c1", PARENT_OWNER="", PARENT_TABLE="REWORD"
    CHILD_OWNER="", CHILD_TABLE="SUPPORT"
    P2C_VERB_PHRASE="R/21", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="REWORD_NO" */
    SELECT count(*) INTO NUMROWS
      FROM SUPPORT
      WHERE
        /*  %JoinFKPK(SUPPORT,:%Old," = "," AND") */
        SUPPORT.REWORD_NO = :old.REWORD_NO;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete REWORD because SUPPORT exists.'
      );
    END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

CREATE  TRIGGER tU_REWORD AFTER UPDATE ON REWORD for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- UPDATE trigger on REWORD 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* REWORD  SUPPORT on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000218d9", PARENT_OWNER="", PARENT_TABLE="REWORD"
    CHILD_OWNER="", CHILD_TABLE="SUPPORT"
    P2C_VERB_PHRASE="R/21", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="REWORD_NO" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.REWORD_NO <> :new.REWORD_NO
  THEN
    SELECT count(*) INTO NUMROWS
      FROM SUPPORT
      WHERE
        /*  %JoinFKPK(SUPPORT,:%Old," = "," AND") */
        SUPPORT.REWORD_NO = :old.REWORD_NO;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update REWORD because SUPPORT exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* CFS_PROJECT  REWORD on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="CFS_PROJECT"
    CHILD_OWNER="", CHILD_TABLE="REWORD"
    P2C_VERB_PHRASE="R/17", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="PROJECT_NO" */
  SELECT count(*) INTO NUMROWS
    FROM CFS_PROJECT
    WHERE
      /* %JoinFKPK(:%New,CFS_PROJECT," = "," AND") */
      :new.PROJECT_NO = CFS_PROJECT.PROJECT_NO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update REWORD because CFS_PROJECT does not exist.'
    );
  END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/


CREATE  TRIGGER tI_SUPPORT BEFORE INSERT ON SUPPORT for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- INSERT trigger on SUPPORT 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* CFS_USER  SUPPORT on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0001f0b6", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="SUPPORT"
    P2C_VERB_PHRASE="R/18", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="USER_ID" */
    SELECT count(*) INTO NUMROWS
      FROM CFS_USER
      WHERE
        /* %JoinFKPK(:%New,CFS_USER," = "," AND") */
        :new.USER_ID = CFS_USER.USER_ID;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert SUPPORT because CFS_USER does not exist.'
      );
    END IF;

    /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
    /* REWORD  SUPPORT on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="REWORD"
    CHILD_OWNER="", CHILD_TABLE="SUPPORT"
    P2C_VERB_PHRASE="R/21", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="REWORD_NO" */
    SELECT count(*) INTO NUMROWS
      FROM REWORD
      WHERE
        /* %JoinFKPK(:%New,REWORD," = "," AND") */
        :new.REWORD_NO = REWORD.REWORD_NO;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert SUPPORT because REWORD does not exist.'
      );
    END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

CREATE  TRIGGER tU_SUPPORT AFTER UPDATE ON SUPPORT for each row
-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
-- UPDATE trigger on SUPPORT 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* CFS_USER  SUPPORT on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0001fb75", PARENT_OWNER="", PARENT_TABLE="CFS_USER"
    CHILD_OWNER="", CHILD_TABLE="SUPPORT"
    P2C_VERB_PHRASE="R/18", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="USER_ID" */
  SELECT count(*) INTO NUMROWS
    FROM CFS_USER
    WHERE
      /* %JoinFKPK(:%New,CFS_USER," = "," AND") */
      :new.USER_ID = CFS_USER.USER_ID;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update SUPPORT because CFS_USER does not exist.'
    );
  END IF;

  /* ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04 */
  /* REWORD  SUPPORT on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="REWORD"
    CHILD_OWNER="", CHILD_TABLE="SUPPORT"
    P2C_VERB_PHRASE="R/21", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="REWORD_NO" */
  SELECT count(*) INTO NUMROWS
    FROM REWORD
    WHERE
      /* %JoinFKPK(:%New,REWORD," = "," AND") */
      :new.REWORD_NO = REWORD.REWORD_NO;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update SUPPORT because REWORD does not exist.'
    );
  END IF;


-- ERwin Builtin 2017년 10월 26일 목요일 오후 2:43:04
END;
/

