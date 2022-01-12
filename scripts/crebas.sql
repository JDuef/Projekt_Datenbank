/*==============================================================*/
/* DBMS name:      ORACLE Version 19c                           */
/* Created on:     12.01.2022 12:39:30                          */
/*==============================================================*/


alter table ACCOUNT
   drop constraint FK_ACCOUNT_KOENIGREI_KOENIGRE;

alter table ACCOUNT
   drop constraint FK_ACCOUNT_USER_TO_A_ALLIANZ;

alter table ACCOUNT
   drop constraint FK_ACCOUNT_ZUGEHOERI_WELT;

alter table ACCOUNT_TO_ITEM
   drop constraint FK_ACCOUNT__BESITZT2_ITEM;

alter table ACCOUNT_TO_ITEM
   drop constraint FK_ACCOUNT__BEZITZT_V_ACCOUNT;

alter table ADMINISTRATION
   drop constraint FK_ADMINIST_WIRD_VERW_ALLIANZ;

alter table ALLIANZ
   drop constraint FK_ALLIANZ_ALLIANZ_T_FORUM;

alter table ALLIANZ
   drop constraint FK_ALLIANZ_VERWALTET_ADMINIST;

alter table ANGRIFF
   drop constraint FK_ANGRIFF_ANGREIFER_BURG;

alter table ANGRIFF
   drop constraint FK_ANGRIFF_BEWEGUNG__EINHEIT_;

alter table ANGRIFF
   drop constraint FK_ANGRIFF_VERTEIDIG_BURG;

alter table ATTRIBUTE
   drop constraint FK_ATTRIBUT_ATTRIB_EI_EINHEIT_;

alter table ATTRIBUT_TO_ITEM
   drop constraint FK_ATTRIBUT_AUF_ITEM;

alter table ATTRIBUT_TO_ITEM
   drop constraint FK_ATTRIBUT_HAT_ITEM_ATT;

alter table AUKTION
   drop constraint FK_AUKTION_ACCOUNT_T_ACCOUNT;

alter table AUKTION
   drop constraint FK_AUKTION_RELATIONS_ITEM;

alter table BESTELLUNG
   drop constraint FK_BESTELLU_KAUF_ACCOUNT;

alter table BESTELLUNG_TO_ITEM
   drop constraint FK_BESTELLU_BEINHALTE_ITEM;

alter table BESTELLUNG_TO_ITEM
   drop constraint FK_BESTELLU_IN_BESTELLU;

alter table BURG
   drop constraint FK_BURG_KONIGREIC_KOENIGRE;

alter table CHATNACHRICHT
   drop constraint FK_CHATNACH_NACHRICHT_ACCOUNT;

alter table CHATNACHRICHT
   drop constraint FK_CHATNACH_USER_TO_N_ACCOUNT;

alter table CHATROOM
   drop constraint FK_CHATROOM_ADMIN_TO__ADMINIST;

alter table CHATROOM
   drop constraint FK_CHATROOM_ALLIANZ_T_ALLIANZ;

alter table CHATROOM_NACHRICHT
   drop constraint FK_CHATROOM_CR_NACHRI_CHATROOM;

alter table CHATROOM_NACHRICHT
   drop constraint FK_CHATROOM_USER_TO_C_ACCOUNT;

alter table EINHEIT
   drop constraint FK_EINHEIT_GEBAUEDE__GEBAEUDE;

alter table EINHEIT
   drop constraint FK_EINHEIT_GEHOERT_BURG;

alter table EINHEIT_ATTRIBUT
   drop constraint FK_EINHEIT__EINHEIT_A_EINHEIT;

alter table EINTRAG
   drop constraint FK_EINTRAG_FORUM_TO__FORUM;

alter table EINTRAG
   drop constraint FK_EINTRAG_USER_TO_E_ACCOUNT;

alter table FORUM
   drop constraint FK_FORUM_ADMIN_TO__ADMINIST;

alter table GEBOT
   drop constraint FK_GEBOT_ACCOUNT_T_ACCOUNT;

alter table GEBOT
   drop constraint FK_GEBOT_AUKTION_T_AUKTION;

alter table GEB_TO_GEBEIG
   drop constraint FK_GEB_TO_G_GEHORT2_GEBAEUDE;

alter table GEB_TO_GEBEIG
   drop constraint FK_GEB_TO_G_HAT2_GEBAEUDE;

alter table GRUPPE
   drop constraint FK_GRUPPE_BEINHALTE_EINHEIT;

alter table GRUPPE
   drop constraint FK_GRUPPE_GEHORT_EINHEIT_;

alter table KOENIGREICH
   drop constraint FK_KOENIGRE_KOENIGREI_ACCOUNT;

alter table KOMMENTAR
   drop constraint FK_KOMMENTA_EINTRAG_T_EINTRAG;

alter table KOMMENTAR
   drop constraint FK_KOMMENTA_USER_TO_K_ACCOUNT;

alter table KRIEGSBEUTE
   drop constraint FK_KRIEGSBE_KRIEGSBEU_ANGRIFF;

alter table SPEICHERLEVEL
   drop constraint FK_SPEICHER_BESITZT_GEBAEUDE;

alter table SPEICHERLEVEL
   drop constraint FK_SPEICHER_GEHORT_ZU_BURG;

alter table USER_TO_ADMIN
   drop constraint FK_USER_TO__IST_TEIL_ADMINIST;

alter table USER_TO_ADMIN
   drop constraint FK_USER_TO__WIRD_GEFU_ACCOUNT;

drop index KOENIGREICH_TO_ACCOUNT2_FK;

drop index ZUGEHOERIG_FK;

drop index USER_TO_ALLIANZ_FK;

drop table ACCOUNT cascade constraints;

drop index BEZITZT_VON_FK;

drop index BESITZT2_FK;

drop table ACCOUNT_TO_ITEM cascade constraints;

drop index WIRD_VERWALTET_FK;

drop table ADMINISTRATION cascade constraints;

drop index VERWALTET_FK;

drop index ALLIANZ_TO_FORUM_FK;

drop table ALLIANZ cascade constraints;

drop index ANGREIFER_BURG_FK;

drop index BEWEGUNG_GRP_FK;

drop index VERTEIDIGER_BURG_FK;

drop table ANGRIFF cascade constraints;

drop index ATTRIB_EINHEIT_FK;

drop table ATTRIBUTE cascade constraints;

drop index HAT_FK;

drop index AUF_FK;

drop table ATTRIBUT_TO_ITEM cascade constraints;

drop index RELATIONSHIP_8_FK;

drop index ACCOUNT_TO_AUKTION_FK;

drop table AUKTION cascade constraints;

drop index KAUF_FK;

drop table BESTELLUNG cascade constraints;

drop index BEINHALTET2_FK;

drop index IN_FK;

drop table BESTELLUNG_TO_ITEM cascade constraints;

drop index KONIGREICHBURG_FK;

drop table BURG cascade constraints;

drop index USER_TO_NACHRICHT_FK;

drop index NACHRICHT_TO_USER_FK;

drop table CHATNACHRICHT cascade constraints;

drop index ADMIN_TO_CHATROOM_FK;

drop index ALLIANZ_TO_CHATROOM_FK;

drop table CHATROOM cascade constraints;

drop index USER_TO_CR_NACHRICHT_FK;

drop index CR_NACHRICHT_TO_CHATROOM_FK;

drop table CHATROOM_NACHRICHT cascade constraints;

drop index GEB_VORRAUSETZUNG_EINHEIT_FK;

drop index GEHOERT_FK;

drop table EINHEIT cascade constraints;

drop index EINHEIT_ATTRIB_FK;

drop table EINHEIT_ATTRIBUT cascade constraints;

drop table EINHEIT_GRUPPE cascade constraints;

drop index USER_TO_EINTRAG_FK;

drop index FORUM_TO_EINTRAG_FK;

drop table EINTRAG cascade constraints;

drop index ADMIN_TO_FORUM_FK;

drop table FORUM cascade constraints;

drop table GEBAEUDE cascade constraints;

drop table GEBAEUDE_EIGENSCHAFT cascade constraints;

drop index AUKTION_TO_GEBOT_FK;

drop index ACCOUNT_TO_GEBOT_FK;

drop table GEBOT cascade constraints;

drop index HAT2_FK;

drop index GEHORT2_FK;

drop table GEB_TO_GEBEIG cascade constraints;

drop index GEHORT_FK;

drop index BEINHALTET_FK;

drop table GRUPPE cascade constraints;

drop table ITEM cascade constraints;

drop table ITEM_ATTRIBUT cascade constraints;

drop index KOENIGREICH_TO_ACCOUNT_FK;

drop table KOENIGREICH cascade constraints;

drop index USER_TO_KOMMENTAR_FK;

drop index EINTRAG_TO_KOMMENTAR_FK;

drop table KOMMENTAR cascade constraints;

drop index KRIEGSBEUTE_FK;

drop table KRIEGSBEUTE cascade constraints;

drop index BESITZT_FK;

drop index GEHORT_ZU_FK;

drop table SPEICHERLEVEL cascade constraints;

drop index IST_TEIL_FK;

drop index WIRD_GEFUEHRT_FK;

drop table USER_TO_ADMIN cascade constraints;

drop table WELT cascade constraints;

/*==============================================================*/
/* Table: ACCOUNT                                               */
/*==============================================================*/
create table ACCOUNT (
   ACC_ID               INTEGER               not null,
   WELT_ID              INTEGER               not null,
   KOE_ID               INTEGER,
   AL_ID                INTEGER,
   ACC_USERNAME         VARCHAR2(100)         not null,
   ACC_PASSWORD         VARCHAR2(100)         not null,
   ACC_EMAIL            VARCHAR2(100)         not null,
   ACC_LETZTER_LOGIN    DATE,
   ACC_PREMIUM          SMALLINT,
   ACC_PAYMENT_TOKEN    VARCHAR2(1024),
   constraint PK_ACCOUNT primary key (ACC_ID)
);

/*==============================================================*/
/* Index: USER_TO_ALLIANZ_FK                                    */
/*==============================================================*/
create index USER_TO_ALLIANZ_FK on ACCOUNT (
   AL_ID ASC
);

/*==============================================================*/
/* Index: ZUGEHOERIG_FK                                         */
/*==============================================================*/
create index ZUGEHOERIG_FK on ACCOUNT (
   WELT_ID ASC
);

/*==============================================================*/
/* Index: KOENIGREICH_TO_ACCOUNT2_FK                            */
/*==============================================================*/
create index KOENIGREICH_TO_ACCOUNT2_FK on ACCOUNT (
   KOE_ID ASC
);

/*==============================================================*/
/* Table: ACCOUNT_TO_ITEM                                       */
/*==============================================================*/
create table ACCOUNT_TO_ITEM (
   ITEM_ID              INTEGER               not null,
   ACC_ID               INTEGER               not null,
   ANZAHL               INTEGER               not null,
   constraint PK_ACCOUNT_TO_ITEM primary key (ITEM_ID, ACC_ID)
);

/*==============================================================*/
/* Index: BESITZT2_FK                                           */
/*==============================================================*/
create index BESITZT2_FK on ACCOUNT_TO_ITEM (
   ITEM_ID ASC
);

/*==============================================================*/
/* Index: BEZITZT_VON_FK                                        */
/*==============================================================*/
create index BEZITZT_VON_FK on ACCOUNT_TO_ITEM (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: ADMINISTRATION                                        */
/*==============================================================*/
create table ADMINISTRATION (
   AD_ID                INTEGER               not null,
   AL_ID                INTEGER,
   constraint PK_ADMINISTRATION primary key (AD_ID)
);

/*==============================================================*/
/* Index: WIRD_VERWALTET_FK                                     */
/*==============================================================*/
create index WIRD_VERWALTET_FK on ADMINISTRATION (
   AL_ID ASC
);

/*==============================================================*/
/* Table: ALLIANZ                                               */
/*==============================================================*/
create table ALLIANZ (
   AL_ID                INTEGER               not null,
   FO_ID                INTEGER               not null,
   AD_ID                INTEGER               not null,
   AL_NAME              CLOB                  not null,
   AL_BESCHREIBUNG      CLOB,
   AL_DATE_OF_CREATION  DATE,
   constraint PK_ALLIANZ primary key (AL_ID)
);

/*==============================================================*/
/* Index: ALLIANZ_TO_FORUM_FK                                   */
/*==============================================================*/
create index ALLIANZ_TO_FORUM_FK on ALLIANZ (
   FO_ID ASC
);

/*==============================================================*/
/* Index: VERWALTET_FK                                          */
/*==============================================================*/
create index VERWALTET_FK on ALLIANZ (
   AD_ID ASC
);

/*==============================================================*/
/* Table: ANGRIFF                                               */
/*==============================================================*/
create table ANGRIFF (
   ANGRIFF_ID           INTEGER               not null,
   BU_POSITION          INTEGER               not null,
   BUR_BU_POSITION      INTEGER               not null,
   GRUPPE_ID            INTEGER               not null,
   ANGRIFF_GEPLANT_AM   DATE                  not null,
   ANGRIFF_STATUS       VARCHAR2(20)          not null
      constraint CKC_ANGRIFF_STATUS_ANGRIFF check (ANGRIFF_STATUS in ('Geplant','Gewonnen','Verloren','<Val16>')),
   constraint PK_ANGRIFF primary key (ANGRIFF_ID)
);

/*==============================================================*/
/* Index: VERTEIDIGER_BURG_FK                                   */
/*==============================================================*/
create index VERTEIDIGER_BURG_FK on ANGRIFF (
   BU_POSITION ASC
);

/*==============================================================*/
/* Index: BEWEGUNG_GRP_FK                                       */
/*==============================================================*/
create index BEWEGUNG_GRP_FK on ANGRIFF (
   GRUPPE_ID ASC
);

/*==============================================================*/
/* Index: ANGREIFER_BURG_FK                                     */
/*==============================================================*/
create index ANGREIFER_BURG_FK on ANGRIFF (
   BUR_BU_POSITION ASC
);

/*==============================================================*/
/* Table: ATTRIBUTE                                             */
/*==============================================================*/
create table ATTRIBUTE (
   ATTRIBUT_ID          INTEGER               not null,
   EINHEIT_ATTRIBU_ID   INTEGER,
   ATTRIBUT_TYP         VARCHAR2(20)          not null
      constraint CKC_ATTRIBUT_TYP_ATTRIBUT check (ATTRIBUT_TYP in ('Angriff','Verteidigung','Bewegungsgeschwindigkeit')),
   ATTRIBUT_BEZEICHNUNG VARCHAR2(50)          not null,
   constraint PK_ATTRIBUTE primary key (ATTRIBUT_ID)
);

/*==============================================================*/
/* Index: ATTRIB_EINHEIT_FK                                     */
/*==============================================================*/
create index ATTRIB_EINHEIT_FK on ATTRIBUTE (
   EINHEIT_ATTRIBU_ID ASC
);

/*==============================================================*/
/* Table: ATTRIBUT_TO_ITEM                                      */
/*==============================================================*/
create table ATTRIBUT_TO_ITEM (
   ITEM_ID              INTEGER               not null,
   ITAT_ID              INTEGER               not null,
   constraint PK_ATTRIBUT_TO_ITEM primary key (ITEM_ID, ITAT_ID)
);

/*==============================================================*/
/* Index: AUF_FK                                                */
/*==============================================================*/
create index AUF_FK on ATTRIBUT_TO_ITEM (
   ITEM_ID ASC
);

/*==============================================================*/
/* Index: HAT_FK                                                */
/*==============================================================*/
create index HAT_FK on ATTRIBUT_TO_ITEM (
   ITAT_ID ASC
);

/*==============================================================*/
/* Table: AUKTION                                               */
/*==============================================================*/
create table AUKTION (
   ACC_ID               INTEGER               not null,
   ITEM_ID              INTEGER               not null,
   AUK_ID               INTEGER               not null,
   AUK_START_DATUM      DATE                  not null,
   AUK_END_DATUM        DATE                  not null,
   constraint PK_AUKTION primary key (ACC_ID, ITEM_ID, AUK_ID)
);

/*==============================================================*/
/* Index: ACCOUNT_TO_AUKTION_FK                                 */
/*==============================================================*/
create index ACCOUNT_TO_AUKTION_FK on AUKTION (
   ACC_ID ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on AUKTION (
   ITEM_ID ASC
);

/*==============================================================*/
/* Table: BESTELLUNG                                            */
/*==============================================================*/
create table BESTELLUNG (
   BEST_ID              INTEGER               not null,
   ACC_ID               INTEGER,
   BEST_DATUM           DATE                  not null,
   BEST_WERT            INTEGER               not null,
   constraint PK_BESTELLUNG primary key (BEST_ID)
);

/*==============================================================*/
/* Index: KAUF_FK                                               */
/*==============================================================*/
create index KAUF_FK on BESTELLUNG (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: BESTELLUNG_TO_ITEM                                    */
/*==============================================================*/
create table BESTELLUNG_TO_ITEM (
   BEST_ID              INTEGER               not null,
   ITEM_ID              INTEGER               not null,
   ANZAHL               INTEGER,
   constraint PK_BESTELLUNG_TO_ITEM primary key (BEST_ID, ITEM_ID)
);

/*==============================================================*/
/* Index: IN_FK                                                 */
/*==============================================================*/
create index IN_FK on BESTELLUNG_TO_ITEM (
   BEST_ID ASC
);

/*==============================================================*/
/* Index: BEINHALTET2_FK                                        */
/*==============================================================*/
create index BEINHALTET2_FK on BESTELLUNG_TO_ITEM (
   ITEM_ID ASC
);

/*==============================================================*/
/* Table: BURG                                                  */
/*==============================================================*/
create table BURG (
   BU_POSITION          INTEGER               not null,
   KOE_ID               INTEGER               not null,
   BU_BURGNAME          CLOB                  not null,
   BU_LEHM              INTEGER               not null,
   BU_EISEN             INTEGER               not null,
   BU_HOLZ              INTEGER               not null,
   constraint PK_BURG primary key (BU_POSITION)
);

/*==============================================================*/
/* Index: KONIGREICHBURG_FK                                     */
/*==============================================================*/
create index KONIGREICHBURG_FK on BURG (
   KOE_ID ASC
);

/*==============================================================*/
/* Table: CHATNACHRICHT                                         */
/*==============================================================*/
create table CHATNACHRICHT (
   CN_ID                INTEGER               not null,
   ACC_ID               INTEGER               not null,
   ACC_ACC_ID           INTEGER               not null,
   CN_INHALT            CLOB                  not null,
   CN_DATE_OF_CREATION  DATE                  not null,
   constraint PK_CHATNACHRICHT primary key (CN_ID)
);

/*==============================================================*/
/* Index: NACHRICHT_TO_USER_FK                                  */
/*==============================================================*/
create index NACHRICHT_TO_USER_FK on CHATNACHRICHT (
   ACC_ACC_ID ASC
);

/*==============================================================*/
/* Index: USER_TO_NACHRICHT_FK                                  */
/*==============================================================*/
create index USER_TO_NACHRICHT_FK on CHATNACHRICHT (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: CHATROOM                                              */
/*==============================================================*/
create table CHATROOM (
   CR_ID                INTEGER               not null,
   AD_ID                INTEGER               not null,
   AL_ID                INTEGER               not null,
   CR_TOPIC             CLOB                  not null,
   CR_DATE_OF_CREATION  DATE                  not null,
   constraint PK_CHATROOM primary key (CR_ID)
);

/*==============================================================*/
/* Index: ALLIANZ_TO_CHATROOM_FK                                */
/*==============================================================*/
create index ALLIANZ_TO_CHATROOM_FK on CHATROOM (
   AL_ID ASC
);

/*==============================================================*/
/* Index: ADMIN_TO_CHATROOM_FK                                  */
/*==============================================================*/
create index ADMIN_TO_CHATROOM_FK on CHATROOM (
   AD_ID ASC
);

/*==============================================================*/
/* Table: CHATROOM_NACHRICHT                                    */
/*==============================================================*/
create table CHATROOM_NACHRICHT (
   CRN_ID               INTEGER               not null,
   ACC_ID               INTEGER               not null,
   CR_ID                INTEGER               not null,
   CRN_INHALT           CLOB                  not null,
   CRN_DATE_OF_CREATION DATE                  not null,
   constraint PK_CHATROOM_NACHRICHT primary key (CRN_ID)
);

/*==============================================================*/
/* Index: CR_NACHRICHT_TO_CHATROOM_FK                           */
/*==============================================================*/
create index CR_NACHRICHT_TO_CHATROOM_FK on CHATROOM_NACHRICHT (
   CR_ID ASC
);

/*==============================================================*/
/* Index: USER_TO_CR_NACHRICHT_FK                               */
/*==============================================================*/
create index USER_TO_CR_NACHRICHT_FK on CHATROOM_NACHRICHT (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: EINHEIT                                               */
/*==============================================================*/
create table EINHEIT (
   EINHEIT_ID           INTEGER               not null,
   BU_POSITION          INTEGER,
   GEB_ID               INTEGER               not null,
   EINHEIT_NAME         VARCHAR2(50)          not null,
   EINHEIT_KLASSE       VARCHAR2(50)          not null
      constraint CKC_EINHEIT_KLASSE_EINHEIT check (EINHEIT_KLASSE in ('Speertraeger','Schwertkaempfer','Axtkaempfer','Bogenschuetze','Reiter')),
   EINHEIT_RESSOURCE    VARCHAR2(100)         not null
      constraint CKC_EINHEIT_RESSOURCE_EINHEIT check (EINHEIT_RESSOURCE in ('Eisen','Lehm','Holz')),
   EINHEIT_RES_WERT     INTEGER,
   constraint PK_EINHEIT primary key (EINHEIT_ID)
);

/*==============================================================*/
/* Index: GEHOERT_FK                                            */
/*==============================================================*/
create index GEHOERT_FK on EINHEIT (
   BU_POSITION ASC
);

/*==============================================================*/
/* Index: GEB_VORRAUSETZUNG_EINHEIT_FK                          */
/*==============================================================*/
create index GEB_VORRAUSETZUNG_EINHEIT_FK on EINHEIT (
   GEB_ID ASC
);

/*==============================================================*/
/* Table: EINHEIT_ATTRIBUT                                      */
/*==============================================================*/
create table EINHEIT_ATTRIBUT (
   EINHEIT_ATTRIBU_ID   INTEGER               not null,
   EINHEIT_ID           INTEGER               not null,
   EINHEIT_ATTRIBU_WERT INTEGER               not null,
   constraint PK_EINHEIT_ATTRIBUT primary key (EINHEIT_ATTRIBU_ID)
);

/*==============================================================*/
/* Index: EINHEIT_ATTRIB_FK                                     */
/*==============================================================*/
create index EINHEIT_ATTRIB_FK on EINHEIT_ATTRIBUT (
   EINHEIT_ID ASC
);

/*==============================================================*/
/* Table: EINHEIT_GRUPPE                                        */
/*==============================================================*/
create table EINHEIT_GRUPPE (
   GRUPPE_ID            INTEGER               not null,
   GRUPPE_ANZAHL        INTEGER               not null,
   constraint PK_EINHEIT_GRUPPE primary key (GRUPPE_ID)
);

/*==============================================================*/
/* Table: EINTRAG                                               */
/*==============================================================*/
create table EINTRAG (
   EI_ID                INTEGER               not null,
   ACC_ID               INTEGER               not null,
   FO_ID                INTEGER               not null,
   EI_TITEL             CLOB                  not null,
   EI_INALT             CLOB                  not null,
   EI_DATE_OF_CREATION  DATE                  not null,
   constraint PK_EINTRAG primary key (EI_ID)
);

/*==============================================================*/
/* Index: FORUM_TO_EINTRAG_FK                                   */
/*==============================================================*/
create index FORUM_TO_EINTRAG_FK on EINTRAG (
   FO_ID ASC
);

/*==============================================================*/
/* Index: USER_TO_EINTRAG_FK                                    */
/*==============================================================*/
create index USER_TO_EINTRAG_FK on EINTRAG (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: FORUM                                                 */
/*==============================================================*/
create table FORUM (
   FO_ID                INTEGER               not null,
   AD_ID                INTEGER               not null,
   FO_DATE_OF_CREATION  DATE                  not null,
   FO_TOPIC             CLOB                  not null,
   constraint PK_FORUM primary key (FO_ID)
);

/*==============================================================*/
/* Index: ADMIN_TO_FORUM_FK                                     */
/*==============================================================*/
create index ADMIN_TO_FORUM_FK on FORUM (
   AD_ID ASC
);

/*==============================================================*/
/* Table: GEBAEUDE                                              */
/*==============================================================*/
create table GEBAEUDE (
   GEB_ID               INTEGER               not null,
   GEB_TYP              VARCHAR2(100)         not null
      constraint CKC_GEB_TYP_GEBAEUDE check (GEB_TYP in ('Holzfaeller','Lehmgrube','Eisenmine','Speicher','Kaserne','Rathaus')),
   GEB_LEVEL            INTEGER               not null,
   constraint PK_GEBAEUDE primary key (GEB_ID)
);

/*==============================================================*/
/* Table: GEBAEUDE_EIGENSCHAFT                                  */
/*==============================================================*/
create table GEBAEUDE_EIGENSCHAFT (
   GE_ID                INTEGER               not null,
   GE_EIGENSCHAFT       VARCHAR2(100)         not null
      constraint CKC_GE_EIGENSCHAFT_GEBAEUDE check (GE_EIGENSCHAFT in ('Produktionsrate','Bauzeit','Kosten')),
   GE_WERT              INTEGER               not null,
   constraint PK_GEBAEUDE_EIGENSCHAFT primary key (GE_ID)
);

/*==============================================================*/
/* Table: GEBOT                                                 */
/*==============================================================*/
create table GEBOT (
   GEBOT_ID             INTEGER               not null,
   AUK_ACC_ID           INTEGER,
   ITEM_ID              INTEGER,
   AUK_ID               INTEGER,
   ACC_ID               INTEGER,
   GEBOT_WERT           INTEGER               not null,
   constraint PK_GEBOT primary key (GEBOT_ID)
);

/*==============================================================*/
/* Index: ACCOUNT_TO_GEBOT_FK                                   */
/*==============================================================*/
create index ACCOUNT_TO_GEBOT_FK on GEBOT (
   ACC_ID ASC
);

/*==============================================================*/
/* Index: AUKTION_TO_GEBOT_FK                                   */
/*==============================================================*/
create index AUKTION_TO_GEBOT_FK on GEBOT (
   AUK_ACC_ID ASC,
   ITEM_ID ASC,
   AUK_ID ASC
);

/*==============================================================*/
/* Table: GEB_TO_GEBEIG                                         */
/*==============================================================*/
create table GEB_TO_GEBEIG (
   GEB_ID               INTEGER               not null,
   GE_ID                INTEGER               not null,
   constraint PK_GEB_TO_GEBEIG primary key (GEB_ID, GE_ID)
);

/*==============================================================*/
/* Index: GEHORT2_FK                                            */
/*==============================================================*/
create index GEHORT2_FK on GEB_TO_GEBEIG (
   GEB_ID ASC
);

/*==============================================================*/
/* Index: HAT2_FK                                               */
/*==============================================================*/
create index HAT2_FK on GEB_TO_GEBEIG (
   GE_ID ASC
);

/*==============================================================*/
/* Table: GRUPPE                                                */
/*==============================================================*/
create table GRUPPE (
   EINHEIT_ID           INTEGER               not null,
   GRUPPE_ID            INTEGER               not null,
   constraint PK_GRUPPE primary key (EINHEIT_ID, GRUPPE_ID)
);

/*==============================================================*/
/* Index: BEINHALTET_FK                                         */
/*==============================================================*/
create index BEINHALTET_FK on GRUPPE (
   EINHEIT_ID ASC
);

/*==============================================================*/
/* Index: GEHORT_FK                                             */
/*==============================================================*/
create index GEHORT_FK on GRUPPE (
   GRUPPE_ID ASC
);

/*==============================================================*/
/* Table: ITEM                                                  */
/*==============================================================*/
create table ITEM (
   ITEM_ID              INTEGER               not null,
   ITEM_NAME            VARCHAR2(1024)        not null,
   ITEM_BESCHREIBUNG    VARCHAR2(100),
   ITEM_PREIS           INTEGER,
   ITEM_VERKAUFBAR      SMALLINT,
   constraint PK_ITEM primary key (ITEM_ID)
);

/*==============================================================*/
/* Table: ITEM_ATTRIBUT                                         */
/*==============================================================*/
create table ITEM_ATTRIBUT (
   ITAT_ID              INTEGER               not null,
   ITAT_ATTRIBUTTYP     VARCHAR2(1024)        not null,
   ITAT_EFFEKT          VARCHAR2(1024)        not null,
   constraint PK_ITEM_ATTRIBUT primary key (ITAT_ID)
);

/*==============================================================*/
/* Table: KOENIGREICH                                           */
/*==============================================================*/
create table KOENIGREICH (
   KOE_WAPPEN           INTEGER               not null,
   KOE_RUHM             INTEGER               not null,
   KOE_ID               INTEGER               not null,
   ACC_ID               INTEGER               not null,
   constraint PK_KOENIGREICH primary key (KOE_ID)
);

/*==============================================================*/
/* Index: KOENIGREICH_TO_ACCOUNT_FK                             */
/*==============================================================*/
create index KOENIGREICH_TO_ACCOUNT_FK on KOENIGREICH (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: KOMMENTAR                                             */
/*==============================================================*/
create table KOMMENTAR (
   KO_ID                INTEGER               not null,
   EI_ID                INTEGER               not null,
   ACC_ID               INTEGER               not null,
   KO_INHALT            CLOB                  not null,
   KO_DATE_OF_CREATION  DATE                  not null,
   constraint PK_KOMMENTAR primary key (KO_ID)
);

/*==============================================================*/
/* Index: EINTRAG_TO_KOMMENTAR_FK                               */
/*==============================================================*/
create index EINTRAG_TO_KOMMENTAR_FK on KOMMENTAR (
   EI_ID ASC
);

/*==============================================================*/
/* Index: USER_TO_KOMMENTAR_FK                                  */
/*==============================================================*/
create index USER_TO_KOMMENTAR_FK on KOMMENTAR (
   ACC_ID ASC
);

/*==============================================================*/
/* Table: KRIEGSBEUTE                                           */
/*==============================================================*/
create table KRIEGSBEUTE (
   KRIEGSBEUTE_ID       INTEGER               not null,
   ANGRIFF_ID           INTEGER               not null,
   KRIEGSBEUTE_ANZAHL   INTEGER               not null,
   KRIEGSBEUTE_RESSOURCE INTEGER               not null,
   constraint PK_KRIEGSBEUTE primary key (KRIEGSBEUTE_ID)
);

/*==============================================================*/
/* Index: KRIEGSBEUTE_FK                                        */
/*==============================================================*/
create index KRIEGSBEUTE_FK on KRIEGSBEUTE (
   ANGRIFF_ID ASC
);

/*==============================================================*/
/* Table: SPEICHERLEVEL                                         */
/*==============================================================*/
create table SPEICHERLEVEL (
   BU_POSITION          INTEGER               not null,
   GEB_ID               INTEGER               not null,
   constraint PK_SPEICHERLEVEL primary key (BU_POSITION, GEB_ID)
);

/*==============================================================*/
/* Index: GEHORT_ZU_FK                                          */
/*==============================================================*/
create index GEHORT_ZU_FK on SPEICHERLEVEL (
   BU_POSITION ASC
);

/*==============================================================*/
/* Index: BESITZT_FK                                            */
/*==============================================================*/
create index BESITZT_FK on SPEICHERLEVEL (
   GEB_ID ASC
);

/*==============================================================*/
/* Table: USER_TO_ADMIN                                         */
/*==============================================================*/
create table USER_TO_ADMIN (
   ACC_ID               INTEGER               not null,
   AD_ID                INTEGER               not null,
   constraint PK_USER_TO_ADMIN primary key (ACC_ID, AD_ID)
);

/*==============================================================*/
/* Index: WIRD_GEFUEHRT_FK                                      */
/*==============================================================*/
create index WIRD_GEFUEHRT_FK on USER_TO_ADMIN (
   ACC_ID ASC
);

/*==============================================================*/
/* Index: IST_TEIL_FK                                           */
/*==============================================================*/
create index IST_TEIL_FK on USER_TO_ADMIN (
   AD_ID ASC
);

/*==============================================================*/
/* Table: WELT                                                  */
/*==============================================================*/
create table WELT (
   WELT_ID              INTEGER               not null,
   WELT_FELD_X          INTEGER               not null,
   WELT_FELD_Y          INTEGER               not null,
   WELT_NAME            VARCHAR2(100)         not null,
   constraint PK_WELT primary key (WELT_ID)
);

alter table ACCOUNT
   add constraint FK_ACCOUNT_KOENIGREI_KOENIGRE foreign key (KOE_ID)
      references KOENIGREICH (KOE_ID);

alter table ACCOUNT
   add constraint FK_ACCOUNT_USER_TO_A_ALLIANZ foreign key (AL_ID)
      references ALLIANZ (AL_ID);

alter table ACCOUNT
   add constraint FK_ACCOUNT_ZUGEHOERI_WELT foreign key (WELT_ID)
      references WELT (WELT_ID);

alter table ACCOUNT_TO_ITEM
   add constraint FK_ACCOUNT__BESITZT2_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID);

alter table ACCOUNT_TO_ITEM
   add constraint FK_ACCOUNT__BEZITZT_V_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID);

alter table ADMINISTRATION
   add constraint FK_ADMINIST_WIRD_VERW_ALLIANZ foreign key (AL_ID)
      references ALLIANZ (AL_ID);

alter table ALLIANZ
   add constraint FK_ALLIANZ_ALLIANZ_T_FORUM foreign key (FO_ID)
      references FORUM (FO_ID);

alter table ALLIANZ
   add constraint FK_ALLIANZ_VERWALTET_ADMINIST foreign key (AD_ID)
      references ADMINISTRATION (AD_ID);

alter table ANGRIFF
   add constraint FK_ANGRIFF_ANGREIFER_BURG foreign key (BUR_BU_POSITION)
      references BURG (BU_POSITION);

alter table ANGRIFF
   add constraint FK_ANGRIFF_BEWEGUNG__EINHEIT_ foreign key (GRUPPE_ID)
      references EINHEIT_GRUPPE (GRUPPE_ID);

alter table ANGRIFF
   add constraint FK_ANGRIFF_VERTEIDIG_BURG foreign key (BU_POSITION)
      references BURG (BU_POSITION);

alter table ATTRIBUTE
   add constraint FK_ATTRIBUT_ATTRIB_EI_EINHEIT_ foreign key (EINHEIT_ATTRIBU_ID)
      references EINHEIT_ATTRIBUT (EINHEIT_ATTRIBU_ID);

alter table ATTRIBUT_TO_ITEM
   add constraint FK_ATTRIBUT_AUF_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID);

alter table ATTRIBUT_TO_ITEM
   add constraint FK_ATTRIBUT_HAT_ITEM_ATT foreign key (ITAT_ID)
      references ITEM_ATTRIBUT (ITAT_ID);

alter table AUKTION
   add constraint FK_AUKTION_ACCOUNT_T_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID);

alter table AUKTION
   add constraint FK_AUKTION_RELATIONS_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID);

alter table BESTELLUNG
   add constraint FK_BESTELLU_KAUF_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID);

alter table BESTELLUNG_TO_ITEM
   add constraint FK_BESTELLU_BEINHALTE_ITEM foreign key (ITEM_ID)
      references ITEM (ITEM_ID);

alter table BESTELLUNG_TO_ITEM
   add constraint FK_BESTELLU_IN_BESTELLU foreign key (BEST_ID)
      references BESTELLUNG (BEST_ID);

alter table BURG
   add constraint FK_BURG_KONIGREIC_KOENIGRE foreign key (KOE_ID)
      references KOENIGREICH (KOE_ID);

alter table CHATNACHRICHT
   add constraint FK_CHATNACH_NACHRICHT_ACCOUNT foreign key (ACC_ACC_ID)
      references ACCOUNT (ACC_ID);

alter table CHATNACHRICHT
   add constraint FK_CHATNACH_USER_TO_N_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID);

alter table CHATROOM
   add constraint FK_CHATROOM_ADMIN_TO__ADMINIST foreign key (AD_ID)
      references ADMINISTRATION (AD_ID);

alter table CHATROOM
   add constraint FK_CHATROOM_ALLIANZ_T_ALLIANZ foreign key (AL_ID)
      references ALLIANZ (AL_ID);

alter table CHATROOM_NACHRICHT
   add constraint FK_CHATROOM_CR_NACHRI_CHATROOM foreign key (CR_ID)
      references CHATROOM (CR_ID);

alter table CHATROOM_NACHRICHT
   add constraint FK_CHATROOM_USER_TO_C_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID);

alter table EINHEIT
   add constraint FK_EINHEIT_GEBAUEDE__GEBAEUDE foreign key (GEB_ID)
      references GEBAEUDE (GEB_ID);

alter table EINHEIT
   add constraint FK_EINHEIT_GEHOERT_BURG foreign key (BU_POSITION)
      references BURG (BU_POSITION);

alter table EINHEIT_ATTRIBUT
   add constraint FK_EINHEIT__EINHEIT_A_EINHEIT foreign key (EINHEIT_ID)
      references EINHEIT (EINHEIT_ID);

alter table EINTRAG
   add constraint FK_EINTRAG_FORUM_TO__FORUM foreign key (FO_ID)
      references FORUM (FO_ID);

alter table EINTRAG
   add constraint FK_EINTRAG_USER_TO_E_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID);

alter table FORUM
   add constraint FK_FORUM_ADMIN_TO__ADMINIST foreign key (AD_ID)
      references ADMINISTRATION (AD_ID);

alter table GEBOT
   add constraint FK_GEBOT_ACCOUNT_T_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID);

alter table GEBOT
   add constraint FK_GEBOT_AUKTION_T_AUKTION foreign key (AUK_ACC_ID, ITEM_ID, AUK_ID)
      references AUKTION (ACC_ID, ITEM_ID, AUK_ID);

alter table GEB_TO_GEBEIG
   add constraint FK_GEB_TO_G_GEHORT2_GEBAEUDE foreign key (GEB_ID)
      references GEBAEUDE (GEB_ID);

alter table GEB_TO_GEBEIG
   add constraint FK_GEB_TO_G_HAT2_GEBAEUDE foreign key (GE_ID)
      references GEBAEUDE_EIGENSCHAFT (GE_ID);

alter table GRUPPE
   add constraint FK_GRUPPE_BEINHALTE_EINHEIT foreign key (EINHEIT_ID)
      references EINHEIT (EINHEIT_ID);

alter table GRUPPE
   add constraint FK_GRUPPE_GEHORT_EINHEIT_ foreign key (GRUPPE_ID)
      references EINHEIT_GRUPPE (GRUPPE_ID);

alter table KOENIGREICH
   add constraint FK_KOENIGRE_KOENIGREI_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID);

alter table KOMMENTAR
   add constraint FK_KOMMENTA_EINTRAG_T_EINTRAG foreign key (EI_ID)
      references EINTRAG (EI_ID);

alter table KOMMENTAR
   add constraint FK_KOMMENTA_USER_TO_K_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID);

alter table KRIEGSBEUTE
   add constraint FK_KRIEGSBE_KRIEGSBEU_ANGRIFF foreign key (ANGRIFF_ID)
      references ANGRIFF (ANGRIFF_ID);

alter table SPEICHERLEVEL
   add constraint FK_SPEICHER_BESITZT_GEBAEUDE foreign key (GEB_ID)
      references GEBAEUDE (GEB_ID);

alter table SPEICHERLEVEL
   add constraint FK_SPEICHER_GEHORT_ZU_BURG foreign key (BU_POSITION)
      references BURG (BU_POSITION);

alter table USER_TO_ADMIN
   add constraint FK_USER_TO__IST_TEIL_ADMINIST foreign key (AD_ID)
      references ADMINISTRATION (AD_ID);

alter table USER_TO_ADMIN
   add constraint FK_USER_TO__WIRD_GEFU_ACCOUNT foreign key (ACC_ID)
      references ACCOUNT (ACC_ID);

