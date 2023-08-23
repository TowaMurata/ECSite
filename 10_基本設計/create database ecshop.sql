create database ecshop;


create table account(
 id          INTEGER        NOT NULL ,
 name        VARCHAR(8)     NOT NULL ,
 password    VARCHAR(32)    NOT NULL ,
 PRIMARY KEY (id)
);

create table item(
 id                  INTEGER          NOT NULL ,
 name                VARCHAR(32)      NOT NULL ,
 category            VARCHAR(32)      NOT NULL ,
 stock               INTEGER          NOT NULL ,
 sales_price         INTEGER          NOT NULL ,
 target_gender_code  CHAR(1)          NOT NULL ,
 detail              VARCHAR(32)          NULL ,
 PRIMARY KEY (id)
);

create table orderPurchase(
 id              INTEGER          NOT NULL ,
 account_id      INTEGER          NOT NULL ,
 item_id         INTEGER          NOT NULL ,
 order_quantity  INTEGER          NOT NULL ,
 order_date      Date             NOT NULL ,
 PRIMARY KEY (id)
);

create table review(
 id                 INTEGER          NOT NULL ,
 item_id            INTEGER          NOT NULL ,
 account_id         INTEGER          NOT NULL ,
 review             VARCHAR(100)     NOT NULL ,
 PRIMARY KEY (id)
);