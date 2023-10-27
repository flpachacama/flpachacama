/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     10/07/2023 12:03:06 p. m.                    */
/*==============================================================*/


alter table PLATO 
   drop foreign key FK_PLATO_RELATIONS_CATEGORI;

alter table RELATIONSHIP_1 
   drop foreign key FK_RELATION_RELATIONS_INGREDIE;

alter table RELATIONSHIP_1 
   drop foreign key FK_RELATION_RELATIONS_PLATO;

drop table if exists CATEGORIA;

drop table if exists INGREDIENTE;


alter table PLATO 
   drop foreign key FK_PLATO_RELATIONS_CATEGORI;

drop table if exists PLATO;


alter table RELATIONSHIP_1 
   drop foreign key FK_RELATION_RELATIONS_INGREDIE;

alter table RELATIONSHIP_1 
   drop foreign key FK_RELATION_RELATIONS_PLATO;

drop table if exists RELATIONSHIP_1;

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA
(
   ID_CATEGORIA         int not null  comment '',
   CAT_NOMBRE           text not null  comment '',
   CAT_DESCRIPCION      text not null  comment '',
   CAT_ENCARGADO        text not null  comment '',
   primary key (ID_CATEGORIA)
);

/*==============================================================*/
/* Table: INGREDIENTE                                           */
/*==============================================================*/
create table INGREDIENTE
(
   ID_INGEDIENTE        int not null  comment '',
   ING_NOMBRE           text not null  comment '',
   ING_UNIDAD           text not null  comment '',
   ING_STOCK            float not null  comment '',
   primary key (ID_INGEDIENTE)
);

/*==============================================================*/
/* Table: PLATO                                                 */
/*==============================================================*/
create table PLATO
(
   ID_PLATO             int not null  comment '',
   ID_CATEGORIA         int  comment '',
   PLA_NOMBRE           text not null  comment '',
   PLA_DESCRIPCION      text not null  comment '',
   PLA_DIFICULTAD       text not null  comment '',
   PLA_PRECIO           float not null  comment '',
   PLA_FOTO             longblob  comment '',
   primary key (ID_PLATO)
);

/*==============================================================*/
/* Table: RELATIONSHIP_1                                        */
/*==============================================================*/
create table RELATIONSHIP_1
(
   ID_INGEDIENTE        int not null  comment '',
   ID_PLATO             int not null  comment '',
   CANTIDAD             float not null  comment '',
   primary key (ID_INGEDIENTE, ID_PLATO)
);

alter table PLATO add constraint FK_PLATO_RELATIONS_CATEGORI foreign key (ID_CATEGORIA)
      references CATEGORIA (ID_CATEGORIA) on delete restrict on update restrict;

alter table RELATIONSHIP_1 add constraint FK_RELATION_RELATIONS_INGREDIE foreign key (ID_INGEDIENTE)
      references INGREDIENTE (ID_INGEDIENTE) on delete restrict on update restrict;

alter table RELATIONSHIP_1 add constraint FK_RELATION_RELATIONS_PLATO foreign key (ID_PLATO)
      references PLATO (ID_PLATO) on delete restrict on update restrict;

