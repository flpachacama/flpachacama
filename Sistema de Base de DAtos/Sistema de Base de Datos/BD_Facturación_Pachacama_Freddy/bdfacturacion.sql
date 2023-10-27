/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     10/07/2023 07:21:53 p. m.                    */
/*==============================================================*/


alter table FACTURA 
   drop foreign key FK_FACTURA_RELATIONS_CLIENTE;

alter table FACTURA_PRODUCTO 
   drop foreign key FK_FACTURA__RELATIONS_PRODUCTO;

alter table FACTURA_PRODUCTO 
   drop foreign key FK_FACTURA__RELATIONS_FACTURA;

drop table if exists CLIENTE;


alter table FACTURA 
   drop foreign key FK_FACTURA_RELATIONS_CLIENTE;

drop table if exists FACTURA;


alter table FACTURA_PRODUCTO 
   drop foreign key FK_FACTURA__RELATIONS_PRODUCTO;

alter table FACTURA_PRODUCTO 
   drop foreign key FK_FACTURA__RELATIONS_FACTURA;

drop table if exists FACTURA_PRODUCTO;

drop table if exists PRODUCTO;

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE
(
   ID_CLIENTE           int not null  comment '',
   CLI_NOMBRE           text not null  comment '',
   CLI_APELLIDO         text not null  comment '',
   CLI_CEDULA           numeric(10,0) not null  comment '',
   CLI_DIRECCION        text not null  comment '',
   primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA
(
   ID_FACTURA           int not null  comment '',
   ID_CLIENTE           int  comment '',
   FAC_FECHA            date not null  comment '',
   primary key (ID_FACTURA)
);

/*==============================================================*/
/* Table: FACTURA_PRODUCTO                                      */
/*==============================================================*/
create table FACTURA_PRODUCTO
(
   ID_FACTURA           int not null  comment '',
   ID_PRODUCTO          int not null  comment '',
   CANTIDAD             numeric(8,0) not null  comment '',
   primary key (ID_FACTURA, ID_PRODUCTO)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO
(
   ID_PRODUCTO          int not null  comment '',
   PRO_CANTIDAD         numeric(8,0) not null  comment '',
   PRO_DESCRIPCION      text not null  comment '',
   PRO_PRECIO           float(8,2) not null  comment '',
   primary key (ID_PRODUCTO)
);

alter table FACTURA add constraint FK_FACTURA_RELATIONS_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE) on delete restrict on update restrict;

alter table FACTURA_PRODUCTO add constraint FK_FACTURA__RELATIONS_PRODUCTO foreign key (ID_PRODUCTO)
      references PRODUCTO (ID_PRODUCTO) on delete restrict on update restrict;

alter table FACTURA_PRODUCTO add constraint FK_FACTURA__RELATIONS_FACTURA foreign key (ID_FACTURA)
      references FACTURA (ID_FACTURA) on delete restrict on update restrict;

