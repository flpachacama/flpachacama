PGDMP     ;                     {            bd_aeropuerto    15.4    15.4 Y    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            W           1262    16515    bd_aeropuerto    DATABASE     �   CREATE DATABASE bd_aeropuerto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE bd_aeropuerto;
                postgres    false            �            1259    16517    AEROPUERTO_LLEGA    TABLE     �   CREATE TABLE public."AEROPUERTO_LLEGA" (
    aerlle_id integer NOT NULL,
    aerlle_nombre character varying(100) NOT NULL,
    aerlle_ubicacion character varying(100) NOT NULL
);
 &   DROP TABLE public."AEROPUERTO_LLEGA";
       public         heap    postgres    false            �            1259    16516    AEROPUERTO_LLEGA_aerlle_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AEROPUERTO_LLEGA_aerlle_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."AEROPUERTO_LLEGA_aerlle_id_seq";
       public          postgres    false    215            X           0    0    AEROPUERTO_LLEGA_aerlle_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."AEROPUERTO_LLEGA_aerlle_id_seq" OWNED BY public."AEROPUERTO_LLEGA".aerlle_id;
          public          postgres    false    214            �            1259    16524    AEROPUERTO_SALIDA    TABLE     �   CREATE TABLE public."AEROPUERTO_SALIDA" (
    aersal_id integer NOT NULL,
    aersal_nombre character varying(100) NOT NULL,
    aersal_ubicacion character varying(100) NOT NULL
);
 '   DROP TABLE public."AEROPUERTO_SALIDA";
       public         heap    postgres    false            �            1259    16523    AEROPUERTO_SALIDA_aersal_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AEROPUERTO_SALIDA_aersal_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."AEROPUERTO_SALIDA_aersal_id_seq";
       public          postgres    false    217            Y           0    0    AEROPUERTO_SALIDA_aersal_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."AEROPUERTO_SALIDA_aersal_id_seq" OWNED BY public."AEROPUERTO_SALIDA".aersal_id;
          public          postgres    false    216            �            1259    16600    EQUIPAJE    TABLE     ]   CREATE TABLE public."EQUIPAJE" (
    equ_id integer NOT NULL,
    pas_id integer NOT NULL
);
    DROP TABLE public."EQUIPAJE";
       public         heap    postgres    false            �            1259    16598    EQUIPAJE_equ_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EQUIPAJE_equ_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."EQUIPAJE_equ_id_seq";
       public          postgres    false    230            Z           0    0    EQUIPAJE_equ_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."EQUIPAJE_equ_id_seq" OWNED BY public."EQUIPAJE".equ_id;
          public          postgres    false    228            �            1259    16599    EQUIPAJE_pas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EQUIPAJE_pas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."EQUIPAJE_pas_id_seq";
       public          postgres    false    230            [           0    0    EQUIPAJE_pas_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."EQUIPAJE_pas_id_seq" OWNED BY public."EQUIPAJE".pas_id;
          public          postgres    false    229            �            1259    16569 	   PASAJEROS    TABLE     M  CREATE TABLE public."PASAJEROS" (
    pas_id integer NOT NULL,
    pas_nombre character varying(100) NOT NULL,
    pas_apellido character varying(100) NOT NULL,
    pas_nacionalidad character varying(100) NOT NULL,
    pas_email character varying(60) NOT NULL,
    pas_fechanacimiento date NOT NULL,
    pas_edad integer NOT NULL
);
    DROP TABLE public."PASAJEROS";
       public         heap    postgres    false            �            1259    16568    PASAJEROS_pas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PASAJEROS_pas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."PASAJEROS_pas_id_seq";
       public          postgres    false    223            \           0    0    PASAJEROS_pas_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."PASAJEROS_pas_id_seq" OWNED BY public."PASAJEROS".pas_id;
          public          postgres    false    222            �            1259    16578    TICKET    TABLE     �   CREATE TABLE public."TICKET" (
    tic_id integer NOT NULL,
    vue_id integer NOT NULL,
    pas_id integer NOT NULL,
    tic_fechaemision date NOT NULL,
    tic_numasiento character(3) NOT NULL,
    tic_numvuelo character(6) NOT NULL
);
    DROP TABLE public."TICKET";
       public         heap    postgres    false            �            1259    16577    TICKET_pas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TICKET_pas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."TICKET_pas_id_seq";
       public          postgres    false    227            ]           0    0    TICKET_pas_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."TICKET_pas_id_seq" OWNED BY public."TICKET".pas_id;
          public          postgres    false    226            �            1259    16575    TICKET_tic_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TICKET_tic_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."TICKET_tic_id_seq";
       public          postgres    false    227            ^           0    0    TICKET_tic_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."TICKET_tic_id_seq" OWNED BY public."TICKET".tic_id;
          public          postgres    false    224            �            1259    16576    TICKET_vue_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TICKET_vue_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."TICKET_vue_id_seq";
       public          postgres    false    227            _           0    0    TICKET_vue_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."TICKET_vue_id_seq" OWNED BY public."TICKET".vue_id;
          public          postgres    false    225            �            1259    16630    TIPO_EQUIPAJE    TABLE     �   CREATE TABLE public."TIPO_EQUIPAJE" (
    tipequ_id integer NOT NULL,
    equ_id integer NOT NULL,
    tipequ_mano boolean NOT NULL,
    tipequ_bodega boolean NOT NULL,
    tipequ_personal boolean NOT NULL
);
 #   DROP TABLE public."TIPO_EQUIPAJE";
       public         heap    postgres    false            �            1259    16629    TIPO_EQUIPAJE_equ_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TIPO_EQUIPAJE_equ_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."TIPO_EQUIPAJE_equ_id_seq";
       public          postgres    false    233            `           0    0    TIPO_EQUIPAJE_equ_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."TIPO_EQUIPAJE_equ_id_seq" OWNED BY public."TIPO_EQUIPAJE".equ_id;
          public          postgres    false    232            �            1259    16628    TIPO_EQUIPAJE_tipequ_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TIPO_EQUIPAJE_tipequ_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."TIPO_EQUIPAJE_tipequ_id_seq";
       public          postgres    false    233            a           0    0    TIPO_EQUIPAJE_tipequ_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."TIPO_EQUIPAJE_tipequ_id_seq" OWNED BY public."TIPO_EQUIPAJE".tipequ_id;
          public          postgres    false    231            �            1259    16533    VUELO    TABLE     M  CREATE TABLE public."VUELO" (
    vue_id integer NOT NULL,
    aersal_id integer NOT NULL,
    aerlle_id integer NOT NULL,
    vue_fecha date NOT NULL,
    vue_horasalida time(3) with time zone NOT NULL,
    vue_horallegada time(3) with time zone NOT NULL,
    vue_puertaembarque character(3) NOT NULL,
    vuel_fechallegada date
);
    DROP TABLE public."VUELO";
       public         heap    postgres    false            �            1259    16532    VUELO_aerlle_id_seq    SEQUENCE     �   CREATE SEQUENCE public."VUELO_aerlle_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."VUELO_aerlle_id_seq";
       public          postgres    false    221            b           0    0    VUELO_aerlle_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."VUELO_aerlle_id_seq" OWNED BY public."VUELO".aerlle_id;
          public          postgres    false    220            �            1259    16531    VUELO_aersal_id_seq    SEQUENCE     �   CREATE SEQUENCE public."VUELO_aersal_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."VUELO_aersal_id_seq";
       public          postgres    false    221            c           0    0    VUELO_aersal_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."VUELO_aersal_id_seq" OWNED BY public."VUELO".aersal_id;
          public          postgres    false    219            �            1259    16530    VUELO_vue_id_seq    SEQUENCE     �   CREATE SEQUENCE public."VUELO_vue_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."VUELO_vue_id_seq";
       public          postgres    false    221            d           0    0    VUELO_vue_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."VUELO_vue_id_seq" OWNED BY public."VUELO".vue_id;
          public          postgres    false    218            �           2604    16520    AEROPUERTO_LLEGA aerlle_id    DEFAULT     �   ALTER TABLE ONLY public."AEROPUERTO_LLEGA" ALTER COLUMN aerlle_id SET DEFAULT nextval('public."AEROPUERTO_LLEGA_aerlle_id_seq"'::regclass);
 K   ALTER TABLE public."AEROPUERTO_LLEGA" ALTER COLUMN aerlle_id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16527    AEROPUERTO_SALIDA aersal_id    DEFAULT     �   ALTER TABLE ONLY public."AEROPUERTO_SALIDA" ALTER COLUMN aersal_id SET DEFAULT nextval('public."AEROPUERTO_SALIDA_aersal_id_seq"'::regclass);
 L   ALTER TABLE public."AEROPUERTO_SALIDA" ALTER COLUMN aersal_id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16603    EQUIPAJE equ_id    DEFAULT     v   ALTER TABLE ONLY public."EQUIPAJE" ALTER COLUMN equ_id SET DEFAULT nextval('public."EQUIPAJE_equ_id_seq"'::regclass);
 @   ALTER TABLE public."EQUIPAJE" ALTER COLUMN equ_id DROP DEFAULT;
       public          postgres    false    228    230    230            �           2604    16604    EQUIPAJE pas_id    DEFAULT     v   ALTER TABLE ONLY public."EQUIPAJE" ALTER COLUMN pas_id SET DEFAULT nextval('public."EQUIPAJE_pas_id_seq"'::regclass);
 @   ALTER TABLE public."EQUIPAJE" ALTER COLUMN pas_id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    16572    PASAJEROS pas_id    DEFAULT     x   ALTER TABLE ONLY public."PASAJEROS" ALTER COLUMN pas_id SET DEFAULT nextval('public."PASAJEROS_pas_id_seq"'::regclass);
 A   ALTER TABLE public."PASAJEROS" ALTER COLUMN pas_id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16581    TICKET tic_id    DEFAULT     r   ALTER TABLE ONLY public."TICKET" ALTER COLUMN tic_id SET DEFAULT nextval('public."TICKET_tic_id_seq"'::regclass);
 >   ALTER TABLE public."TICKET" ALTER COLUMN tic_id DROP DEFAULT;
       public          postgres    false    227    224    227            �           2604    16582    TICKET vue_id    DEFAULT     r   ALTER TABLE ONLY public."TICKET" ALTER COLUMN vue_id SET DEFAULT nextval('public."TICKET_vue_id_seq"'::regclass);
 >   ALTER TABLE public."TICKET" ALTER COLUMN vue_id DROP DEFAULT;
       public          postgres    false    225    227    227            �           2604    16583    TICKET pas_id    DEFAULT     r   ALTER TABLE ONLY public."TICKET" ALTER COLUMN pas_id SET DEFAULT nextval('public."TICKET_pas_id_seq"'::regclass);
 >   ALTER TABLE public."TICKET" ALTER COLUMN pas_id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16633    TIPO_EQUIPAJE tipequ_id    DEFAULT     �   ALTER TABLE ONLY public."TIPO_EQUIPAJE" ALTER COLUMN tipequ_id SET DEFAULT nextval('public."TIPO_EQUIPAJE_tipequ_id_seq"'::regclass);
 H   ALTER TABLE public."TIPO_EQUIPAJE" ALTER COLUMN tipequ_id DROP DEFAULT;
       public          postgres    false    231    233    233            �           2604    16634    TIPO_EQUIPAJE equ_id    DEFAULT     �   ALTER TABLE ONLY public."TIPO_EQUIPAJE" ALTER COLUMN equ_id SET DEFAULT nextval('public."TIPO_EQUIPAJE_equ_id_seq"'::regclass);
 E   ALTER TABLE public."TIPO_EQUIPAJE" ALTER COLUMN equ_id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16536    VUELO vue_id    DEFAULT     p   ALTER TABLE ONLY public."VUELO" ALTER COLUMN vue_id SET DEFAULT nextval('public."VUELO_vue_id_seq"'::regclass);
 =   ALTER TABLE public."VUELO" ALTER COLUMN vue_id DROP DEFAULT;
       public          postgres    false    221    218    221            �           2604    16537    VUELO aersal_id    DEFAULT     v   ALTER TABLE ONLY public."VUELO" ALTER COLUMN aersal_id SET DEFAULT nextval('public."VUELO_aersal_id_seq"'::regclass);
 @   ALTER TABLE public."VUELO" ALTER COLUMN aersal_id DROP DEFAULT;
       public          postgres    false    219    221    221            �           2604    16538    VUELO aerlle_id    DEFAULT     v   ALTER TABLE ONLY public."VUELO" ALTER COLUMN aerlle_id SET DEFAULT nextval('public."VUELO_aerlle_id_seq"'::regclass);
 @   ALTER TABLE public."VUELO" ALTER COLUMN aerlle_id DROP DEFAULT;
       public          postgres    false    221    220    221            ?          0    16517    AEROPUERTO_LLEGA 
   TABLE DATA           X   COPY public."AEROPUERTO_LLEGA" (aerlle_id, aerlle_nombre, aerlle_ubicacion) FROM stdin;
    public          postgres    false    215   �i       A          0    16524    AEROPUERTO_SALIDA 
   TABLE DATA           Y   COPY public."AEROPUERTO_SALIDA" (aersal_id, aersal_nombre, aersal_ubicacion) FROM stdin;
    public          postgres    false    217   �k       N          0    16600    EQUIPAJE 
   TABLE DATA           4   COPY public."EQUIPAJE" (equ_id, pas_id) FROM stdin;
    public          postgres    false    230   �m       G          0    16569 	   PASAJEROS 
   TABLE DATA           �   COPY public."PASAJEROS" (pas_id, pas_nombre, pas_apellido, pas_nacionalidad, pas_email, pas_fechanacimiento, pas_edad) FROM stdin;
    public          postgres    false    223   �m       K          0    16578    TICKET 
   TABLE DATA           j   COPY public."TICKET" (tic_id, vue_id, pas_id, tic_fechaemision, tic_numasiento, tic_numvuelo) FROM stdin;
    public          postgres    false    227   Dp       Q          0    16630    TIPO_EQUIPAJE 
   TABLE DATA           i   COPY public."TIPO_EQUIPAJE" (tipequ_id, equ_id, tipequ_mano, tipequ_bodega, tipequ_personal) FROM stdin;
    public          postgres    false    233   Eq       E          0    16533    VUELO 
   TABLE DATA           �   COPY public."VUELO" (vue_id, aersal_id, aerlle_id, vue_fecha, vue_horasalida, vue_horallegada, vue_puertaembarque, vuel_fechallegada) FROM stdin;
    public          postgres    false    221   �q       e           0    0    AEROPUERTO_LLEGA_aerlle_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."AEROPUERTO_LLEGA_aerlle_id_seq"', 1, false);
          public          postgres    false    214            f           0    0    AEROPUERTO_SALIDA_aersal_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."AEROPUERTO_SALIDA_aersal_id_seq"', 1, false);
          public          postgres    false    216            g           0    0    EQUIPAJE_equ_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."EQUIPAJE_equ_id_seq"', 1, false);
          public          postgres    false    228            h           0    0    EQUIPAJE_pas_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."EQUIPAJE_pas_id_seq"', 1, false);
          public          postgres    false    229            i           0    0    PASAJEROS_pas_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."PASAJEROS_pas_id_seq"', 1, false);
          public          postgres    false    222            j           0    0    TICKET_pas_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."TICKET_pas_id_seq"', 1, false);
          public          postgres    false    226            k           0    0    TICKET_tic_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."TICKET_tic_id_seq"', 1, false);
          public          postgres    false    224            l           0    0    TICKET_vue_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."TICKET_vue_id_seq"', 1, false);
          public          postgres    false    225            m           0    0    TIPO_EQUIPAJE_equ_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."TIPO_EQUIPAJE_equ_id_seq"', 1, false);
          public          postgres    false    232            n           0    0    TIPO_EQUIPAJE_tipequ_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."TIPO_EQUIPAJE_tipequ_id_seq"', 1, false);
          public          postgres    false    231            o           0    0    VUELO_aerlle_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."VUELO_aerlle_id_seq"', 1, false);
          public          postgres    false    220            p           0    0    VUELO_aersal_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."VUELO_aersal_id_seq"', 1, false);
          public          postgres    false    219            q           0    0    VUELO_vue_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."VUELO_vue_id_seq"', 1, false);
          public          postgres    false    218            �           2606    16522 &   AEROPUERTO_LLEGA AEROPUERTO_LLEGA_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."AEROPUERTO_LLEGA"
    ADD CONSTRAINT "AEROPUERTO_LLEGA_pkey" PRIMARY KEY (aerlle_id);
 T   ALTER TABLE ONLY public."AEROPUERTO_LLEGA" DROP CONSTRAINT "AEROPUERTO_LLEGA_pkey";
       public            postgres    false    215            �           2606    16529 (   AEROPUERTO_SALIDA AEROPUERTO_SALIDA_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."AEROPUERTO_SALIDA"
    ADD CONSTRAINT "AEROPUERTO_SALIDA_pkey" PRIMARY KEY (aersal_id);
 V   ALTER TABLE ONLY public."AEROPUERTO_SALIDA" DROP CONSTRAINT "AEROPUERTO_SALIDA_pkey";
       public            postgres    false    217            �           2606    16606    EQUIPAJE EQUIPAJE_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."EQUIPAJE"
    ADD CONSTRAINT "EQUIPAJE_pkey" PRIMARY KEY (equ_id);
 D   ALTER TABLE ONLY public."EQUIPAJE" DROP CONSTRAINT "EQUIPAJE_pkey";
       public            postgres    false    230            �           2606    16574    PASAJEROS PASAJEROS_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."PASAJEROS"
    ADD CONSTRAINT "PASAJEROS_pkey" PRIMARY KEY (pas_id);
 F   ALTER TABLE ONLY public."PASAJEROS" DROP CONSTRAINT "PASAJEROS_pkey";
       public            postgres    false    223            �           2606    16585    TICKET TICKET_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."TICKET"
    ADD CONSTRAINT "TICKET_pkey" PRIMARY KEY (tic_id);
 @   ALTER TABLE ONLY public."TICKET" DROP CONSTRAINT "TICKET_pkey";
       public            postgres    false    227            �           2606    16636     TIPO_EQUIPAJE TIPO_EQUIPAJE_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."TIPO_EQUIPAJE"
    ADD CONSTRAINT "TIPO_EQUIPAJE_pkey" PRIMARY KEY (tipequ_id);
 N   ALTER TABLE ONLY public."TIPO_EQUIPAJE" DROP CONSTRAINT "TIPO_EQUIPAJE_pkey";
       public            postgres    false    233            �           2606    16540    VUELO VUELO_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."VUELO"
    ADD CONSTRAINT "VUELO_pkey" PRIMARY KEY (vue_id);
 >   ALTER TABLE ONLY public."VUELO" DROP CONSTRAINT "VUELO_pkey";
       public            postgres    false    221            �           1259    16546    fki_AEROPUERTO_LLEGADA_VUELO_FK    INDEX     Z   CREATE INDEX "fki_AEROPUERTO_LLEGADA_VUELO_FK" ON public."VUELO" USING btree (aerlle_id);
 5   DROP INDEX public."fki_AEROPUERTO_LLEGADA_VUELO_FK";
       public            postgres    false    221            �           1259    16642    fki_EQUIPAJE_TIPOEQUIPAJE_FK    INDEX     \   CREATE INDEX "fki_EQUIPAJE_TIPOEQUIPAJE_FK" ON public."TIPO_EQUIPAJE" USING btree (equ_id);
 2   DROP INDEX public."fki_EQUIPAJE_TIPOEQUIPAJE_FK";
       public            postgres    false    233            �           1259    16552    fki_PASAJEROS    INDEX     H   CREATE INDEX "fki_PASAJEROS" ON public."VUELO" USING btree (aersal_id);
 #   DROP INDEX public."fki_PASAJEROS";
       public            postgres    false    221            �           1259    16612    fki_PASAJEROS_EQUIPAJE_FK    INDEX     T   CREATE INDEX "fki_PASAJEROS_EQUIPAJE_FK" ON public."EQUIPAJE" USING btree (pas_id);
 /   DROP INDEX public."fki_PASAJEROS_EQUIPAJE_FK";
       public            postgres    false    230            �           1259    16597    fki_PASAJEROS_TICKET_FK    INDEX     P   CREATE INDEX "fki_PASAJEROS_TICKET_FK" ON public."TICKET" USING btree (pas_id);
 -   DROP INDEX public."fki_PASAJEROS_TICKET_FK";
       public            postgres    false    227            �           1259    16591    fki_VUELO_TICKET_FK    INDEX     L   CREATE INDEX "fki_VUELO_TICKET_FK" ON public."TICKET" USING btree (vue_id);
 )   DROP INDEX public."fki_VUELO_TICKET_FK";
       public            postgres    false    227            �           2606    16541 !   VUELO AEROPUERTO_LLEGADA_VUELO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."VUELO"
    ADD CONSTRAINT "AEROPUERTO_LLEGADA_VUELO_FK" FOREIGN KEY (aerlle_id) REFERENCES public."AEROPUERTO_LLEGA"(aerlle_id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public."VUELO" DROP CONSTRAINT "AEROPUERTO_LLEGADA_VUELO_FK";
       public          postgres    false    221    3223    215            �           2606    16547     VUELO AEROPUERTO_SALIDA_VUELO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."VUELO"
    ADD CONSTRAINT "AEROPUERTO_SALIDA_VUELO_FK" FOREIGN KEY (aersal_id) REFERENCES public."AEROPUERTO_SALIDA"(aersal_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public."VUELO" DROP CONSTRAINT "AEROPUERTO_SALIDA_VUELO_FK";
       public          postgres    false    3225    217    221            �           2606    16637 &   TIPO_EQUIPAJE EQUIPAJE_TIPOEQUIPAJE_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."TIPO_EQUIPAJE"
    ADD CONSTRAINT "EQUIPAJE_TIPOEQUIPAJE_FK" FOREIGN KEY (equ_id) REFERENCES public."EQUIPAJE"(equ_id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public."TIPO_EQUIPAJE" DROP CONSTRAINT "EQUIPAJE_TIPOEQUIPAJE_FK";
       public          postgres    false    230    3237    233            �           2606    16607    EQUIPAJE PASAJEROS_EQUIPAJE_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."EQUIPAJE"
    ADD CONSTRAINT "PASAJEROS_EQUIPAJE_FK" FOREIGN KEY (pas_id) REFERENCES public."PASAJEROS"(pas_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public."EQUIPAJE" DROP CONSTRAINT "PASAJEROS_EQUIPAJE_FK";
       public          postgres    false    223    230    3231            �           2606    16592    TICKET PASAJEROS_TICKET_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."TICKET"
    ADD CONSTRAINT "PASAJEROS_TICKET_FK" FOREIGN KEY (pas_id) REFERENCES public."PASAJEROS"(pas_id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY public."TICKET" DROP CONSTRAINT "PASAJEROS_TICKET_FK";
       public          postgres    false    223    3231    227            �           2606    16586    TICKET VUELO_TICKET_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public."TICKET"
    ADD CONSTRAINT "VUELO_TICKET_FK" FOREIGN KEY (vue_id) REFERENCES public."VUELO"(vue_id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public."TICKET" DROP CONSTRAINT "VUELO_TICKET_FK";
       public          postgres    false    221    3227    227            ?   �  x�u�Qr�0���S���-Px���!$mh�3�l�m�A֦k+4��	8C.��fHF^�������7U�\��"v`M�Ƃ)��P��	>S�*�H^'}yn�4��cR���\_��f��f�A��L���VЪòlװ��Mtei�G�Y����-7�m��,��ݯ��15�LQ�~�
n�fa�I��4A!�&GG]0��uN�%Y��*C�5ȓ�����e�r��[��`�d�$��gu-������[u�q�ˏ��aw�Y��DG����\�%��U,A,������� �&7�
d�8��}������;�` :����lRV> �^�����#��\��O'5������DNu���*�T�I���ʻŉ6N��_m��q'h-8Pe��ב�����@��ܪ)K��]q\Ct(a��5A�)�hۣ+ά�n��]��tB�]B��X��E���U=9_	�/���������b��Z뿈�S�      A   �  x�uSKr�0]S��䉒�i���x�کǋ�t�H��"Ht�\''�r�Bvjw8��� �Cf>��CE���)��.�4�u��U��%9��cnQx�m���k�f3
���ܑxK�;;t l��;8"�E�95�mΎ� ���}.��<��@U���C��f���������ˈu�వw�h�|ͭ��t�%\���1"�У�p�v�l���C{$]ũ@CN��+��zʚ��\�E�ā-(�P��)>Q�&>HS��r���~L�r�X$م��X���Z�NsXCk޶e���ߐd��Z�O,��yɪt���{Rh,ߘe��X��O�Hg(!�b�
nX�v(]�i�*�=u����`�i�"�Ivi��{����D��!	��Po�5�X�1����/�=�;sp�;�Ͽ��26�Z��������GNs��\r~f�줷�ގ 8�f�w\z�Fq�������;�� I�?>�N�      N   K   x�˹1�@��A��l�q��بLz<�tf��lv,N�qs�E4.�|���\�u��Ď7�z���	��      G   U  x�mT�N�0<?��Q�Mr[�.�"*!X�i/��*F���!�f�8�	�����f�V��;~3��Y��Ȏ.��`��[3������_�#���9j|O:�2�-�Z�΅�5���lz�=��o�d�7@U]/dVI���DN':?���z��<�&�l�r��*��Re�/DAǸ��Ӌ�҄1v�7���RR�j-t1ځ�|1����A���v�TUԸ��w��ǵѡa˭�m�u�<�����Z҅(ie���O��8l��Ztnc9��S�DE�<vL+X�D��]c��XLapju���AP�<�57�`�5��Z�Z�H�ݥ��o!��zzu�,�����XO�Z`>��B):�`MG�#dB����[=%��X�V�B�yj$��~zv�"����<�%�Z�������������6W2ç�<��;�_����fjߊ)����@�؅h���a\����~"��7��y�]�1��^����	YIrK����o�+p����4��(ZB��`Qh=.��v��/b\|���~|c�T,�;PowG)��U�sR��{�f����`��������xGt���GB������      K   �   x�M�Ir!��_ơ����x�8�����iZG")��`*���f���K�I��#��K]R�@�����Y�#t�ExgKj.i]8�
�:�KK�d�G���`n��v����n{|���d3��}�=O4�3�k6�'O��Bn���Dx���2�+�4�:}�,#�7�q�^\x���٘w��tn��{��S�t��*����b���1dj�B�r�?6��w�R�b1j�      Q   n   x�=���0��0E(۱�Kߙ �#J�%B:�"��q��Д�n�Wvl/�����yx����`���;	�u"�P�p�l�����U��{J7���=$Ǐ�~"��d)�      E   5  x�uS]n�0{��tߞ��9F��q�M�CDq������e���Y~�U�����ť0F��.������mW�jބ�F}ɃڴH�8p�I莨�[ɮ��M&�K`Ԧ-'0 ��.)��];v	9Ӧ�i2�$���l�9�n,cߊ�5�f�����4�D�HR��=�ĳ�]�e��������r�@R`0�~ c�
Z��!t�>��h�2�@��{� Vy"��~���
���1Ϙ�4,g����!�W,�N��l���\�v6��V;�se���}�b����	A��5����ϗ�~jɬ     