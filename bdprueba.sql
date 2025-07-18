PGDMP  :                    }            bd_cooperativapost    17.5    17.5 h    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16389    bd_cooperativapost    DATABASE     �   CREATE DATABASE bd_cooperativapost WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
 "   DROP DATABASE bd_cooperativapost;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    16391    cooperativa    TABLE     f  CREATE TABLE public.cooperativa (
    coo_cod integer NOT NULL,
    coo_iden character varying(45) NOT NULL,
    coo_nom character varying(45),
    coo_sig character varying(10),
    coo_dir text,
    coo_tel character varying(20),
    coo_cor character varying(45),
    coo_slo bytea,
    coo_log character varying(45),
    coo_usu character varying(45)
);
    DROP TABLE public.cooperativa;
       public         heap r       postgres    false    4            �            1259    16390    cooperativa_coo_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.cooperativa_coo_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cooperativa_coo_cod_seq;
       public               postgres    false    4    218            �           0    0    cooperativa_coo_cod_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cooperativa_coo_cod_seq OWNED BY public.cooperativa.coo_cod;
          public               postgres    false    217            �            1259    16401    moneda    TABLE     �   CREATE TABLE public.moneda (
    mon_cod integer NOT NULL,
    mon_nom character varying(20) NOT NULL,
    mon_sig character varying(5) NOT NULL,
    mon_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);
    DROP TABLE public.moneda;
       public         heap r       postgres    false    4            �            1259    16400    moneda_mon_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.moneda_mon_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.moneda_mon_cod_seq;
       public               postgres    false    4    220            �           0    0    moneda_mon_cod_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.moneda_mon_cod_seq OWNED BY public.moneda.mon_cod;
          public               postgres    false    219            �            1259    16409    persona    TABLE     �  CREATE TABLE public.persona (
    per_cod integer NOT NULL,
    per_iden character varying(45) NOT NULL,
    per_ape_pat character varying(45) NOT NULL,
    per_ape_mat character varying(45) NOT NULL,
    per_nom character varying(45) NOT NULL,
    per_fec_nac date NOT NULL,
    per_cor character varying(45) NOT NULL,
    per_fot bytea NOT NULL,
    per_coo integer NOT NULL,
    per_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);
    DROP TABLE public.persona;
       public         heap r       postgres    false    4            �            1259    16408    persona_per_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_per_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.persona_per_cod_seq;
       public               postgres    false    222    4            �           0    0    persona_per_cod_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.persona_per_cod_seq OWNED BY public.persona.per_cod;
          public               postgres    false    221            �            1259    16420    producto    TABLE       CREATE TABLE public.producto (
    pro_cod integer NOT NULL,
    pro_iden character varying(45) NOT NULL,
    pro_des text NOT NULL,
    mon_cod integer NOT NULL,
    tip_pro_cod integer DEFAULT 1 NOT NULL,
    pro_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);
    DROP TABLE public.producto;
       public         heap r       postgres    false    4            �            1259    16419    producto_pro_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_pro_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.producto_pro_cod_seq;
       public               postgres    false    224    4            �           0    0    producto_pro_cod_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.producto_pro_cod_seq OWNED BY public.producto.pro_cod;
          public               postgres    false    223            �            1259    16432    rol    TABLE     �   CREATE TABLE public.rol (
    rol_cod integer NOT NULL,
    rol_rol character varying(45),
    rol_nom character varying(45) NOT NULL,
    rol_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);
    DROP TABLE public.rol;
       public         heap r       postgres    false    4            �            1259    16431    rol_rol_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_rol_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.rol_rol_cod_seq;
       public               postgres    false    4    226            �           0    0    rol_rol_cod_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.rol_rol_cod_seq OWNED BY public.rol.rol_cod;
          public               postgres    false    225            �            1259    16440    socio    TABLE     �  CREATE TABLE public.socio (
    soc_cod integer NOT NULL,
    soc_iden character varying(45) NOT NULL,
    soc_ape_pat character varying(45) NOT NULL,
    soc_ape_mat character varying(45) NOT NULL,
    soc_nom character varying(45) NOT NULL,
    soc_fec_nac date NOT NULL,
    soc_cor character varying(45) NOT NULL,
    soc_coo integer NOT NULL,
    ubi_cod integer NOT NULL,
    soc_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);
    DROP TABLE public.socio;
       public         heap r       postgres    false    4            �            1259    16439    socio_soc_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.socio_soc_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.socio_soc_cod_seq;
       public               postgres    false    4    228            �           0    0    socio_soc_cod_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.socio_soc_cod_seq OWNED BY public.socio.soc_cod;
          public               postgres    false    227            �            1259    24615    socioproducto    TABLE     B  CREATE TABLE public.socioproducto (
    id_socpro integer NOT NULL,
    id_socio integer NOT NULL,
    id_producto integer NOT NULL,
    num_cuenta character varying(20) NOT NULL,
    fec_apertura date NOT NULL,
    saldo numeric(10,2) DEFAULT 0.00 NOT NULL,
    socpro_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);
 !   DROP TABLE public.socioproducto;
       public         heap r       postgres    false    4            �            1259    24624    socioproducto_id_socpro_seq    SEQUENCE     �   CREATE SEQUENCE public.socioproducto_id_socpro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.socioproducto_id_socpro_seq;
       public               postgres    false    4    238            �           0    0    socioproducto_id_socpro_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.socioproducto_id_socpro_seq OWNED BY public.socioproducto.id_socpro;
          public               postgres    false    239            �            1259    16452    tasa    TABLE     Z  CREATE TABLE public.tasa (
    pro_cod integer NOT NULL,
    tas_iden character varying(45) NOT NULL,
    tas_desc character varying(45) NOT NULL,
    tas_tasa double precision NOT NULL,
    tas_plaz_dias smallint NOT NULL,
    tas_ini_fec date NOT NULL,
    tas_fin_fec date NOT NULL,
    tas_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);
    DROP TABLE public.tasa;
       public         heap r       postgres    false    4            �            1259    16458    tipoproducto    TABLE     �   CREATE TABLE public.tipoproducto (
    tip_pro_cod integer NOT NULL,
    tip_pro_nom character varying(45) NOT NULL,
    tip_pro_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);
     DROP TABLE public.tipoproducto;
       public         heap r       postgres    false    4            �            1259    16457    tipoproducto_tip_pro_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.tipoproducto_tip_pro_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tipoproducto_tip_pro_cod_seq;
       public               postgres    false    231    4            �           0    0    tipoproducto_tip_pro_cod_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tipoproducto_tip_pro_cod_seq OWNED BY public.tipoproducto.tip_pro_cod;
          public               postgres    false    230            �            1259    16466 	   ubicacion    TABLE     �   CREATE TABLE public.ubicacion (
    ubi_cod integer NOT NULL,
    ubi_dep character varying(45) NOT NULL,
    ubi_pro character varying(45) NOT NULL,
    ubi_dis character varying(45) NOT NULL,
    ubi_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);
    DROP TABLE public.ubicacion;
       public         heap r       postgres    false    4            �            1259    16465    ubicacion_ubi_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.ubicacion_ubi_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ubicacion_ubi_cod_seq;
       public               postgres    false    4    233            �           0    0    ubicacion_ubi_cod_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ubicacion_ubi_cod_seq OWNED BY public.ubicacion.ubi_cod;
          public               postgres    false    232            �            1259    16474    usuario    TABLE     8  CREATE TABLE public.usuario (
    usu_cod integer NOT NULL,
    usu_ide character varying(50) NOT NULL,
    usu_usu character varying(50) NOT NULL,
    usu_pas character varying(50) NOT NULL,
    coo_cod integer NOT NULL,
    per_cod integer NOT NULL,
    usu_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);
    DROP TABLE public.usuario;
       public         heap r       postgres    false    4            �            1259    24579    usuarioroles    TABLE     x   CREATE TABLE public.usuarioroles (
    id integer NOT NULL,
    usu_id integer NOT NULL,
    rol_id integer NOT NULL
);
     DROP TABLE public.usuarioroles;
       public         heap r       postgres    false    4            �            1259    24587    usuario_rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.usuario_rol_id_seq;
       public               postgres    false    236    4            �           0    0    usuario_rol_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.usuario_rol_id_seq OWNED BY public.usuarioroles.id;
          public               postgres    false    237            �            1259    16473    usuario_usu_cod_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_usu_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usuario_usu_cod_seq;
       public               postgres    false    235    4            �           0    0    usuario_usu_cod_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usuario_usu_cod_seq OWNED BY public.usuario.usu_cod;
          public               postgres    false    234            �           2604    16394    cooperativa coo_cod    DEFAULT     z   ALTER TABLE ONLY public.cooperativa ALTER COLUMN coo_cod SET DEFAULT nextval('public.cooperativa_coo_cod_seq'::regclass);
 B   ALTER TABLE public.cooperativa ALTER COLUMN coo_cod DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16404    moneda mon_cod    DEFAULT     p   ALTER TABLE ONLY public.moneda ALTER COLUMN mon_cod SET DEFAULT nextval('public.moneda_mon_cod_seq'::regclass);
 =   ALTER TABLE public.moneda ALTER COLUMN mon_cod DROP DEFAULT;
       public               postgres    false    220    219    220            �           2604    16412    persona per_cod    DEFAULT     r   ALTER TABLE ONLY public.persona ALTER COLUMN per_cod SET DEFAULT nextval('public.persona_per_cod_seq'::regclass);
 >   ALTER TABLE public.persona ALTER COLUMN per_cod DROP DEFAULT;
       public               postgres    false    222    221    222            �           2604    16423    producto pro_cod    DEFAULT     t   ALTER TABLE ONLY public.producto ALTER COLUMN pro_cod SET DEFAULT nextval('public.producto_pro_cod_seq'::regclass);
 ?   ALTER TABLE public.producto ALTER COLUMN pro_cod DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    16435    rol rol_cod    DEFAULT     j   ALTER TABLE ONLY public.rol ALTER COLUMN rol_cod SET DEFAULT nextval('public.rol_rol_cod_seq'::regclass);
 :   ALTER TABLE public.rol ALTER COLUMN rol_cod DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    16443    socio soc_cod    DEFAULT     n   ALTER TABLE ONLY public.socio ALTER COLUMN soc_cod SET DEFAULT nextval('public.socio_soc_cod_seq'::regclass);
 <   ALTER TABLE public.socio ALTER COLUMN soc_cod DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    24625    socioproducto id_socpro    DEFAULT     �   ALTER TABLE ONLY public.socioproducto ALTER COLUMN id_socpro SET DEFAULT nextval('public.socioproducto_id_socpro_seq'::regclass);
 F   ALTER TABLE public.socioproducto ALTER COLUMN id_socpro DROP DEFAULT;
       public               postgres    false    239    238            �           2604    16461    tipoproducto tip_pro_cod    DEFAULT     �   ALTER TABLE ONLY public.tipoproducto ALTER COLUMN tip_pro_cod SET DEFAULT nextval('public.tipoproducto_tip_pro_cod_seq'::regclass);
 G   ALTER TABLE public.tipoproducto ALTER COLUMN tip_pro_cod DROP DEFAULT;
       public               postgres    false    230    231    231            �           2604    16469    ubicacion ubi_cod    DEFAULT     v   ALTER TABLE ONLY public.ubicacion ALTER COLUMN ubi_cod SET DEFAULT nextval('public.ubicacion_ubi_cod_seq'::regclass);
 @   ALTER TABLE public.ubicacion ALTER COLUMN ubi_cod DROP DEFAULT;
       public               postgres    false    233    232    233            �           2604    16477    usuario usu_cod    DEFAULT     r   ALTER TABLE ONLY public.usuario ALTER COLUMN usu_cod SET DEFAULT nextval('public.usuario_usu_cod_seq'::regclass);
 >   ALTER TABLE public.usuario ALTER COLUMN usu_cod DROP DEFAULT;
       public               postgres    false    235    234    235            �           2604    24588    usuarioroles id    DEFAULT     q   ALTER TABLE ONLY public.usuarioroles ALTER COLUMN id SET DEFAULT nextval('public.usuario_rol_id_seq'::regclass);
 >   ALTER TABLE public.usuarioroles ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    236            �          0    16391    cooperativa 
   TABLE DATA           �   COPY public.cooperativa (coo_cod, coo_iden, coo_nom, coo_sig, coo_dir, coo_tel, coo_cor, coo_slo, coo_log, coo_usu) FROM stdin;
    public               postgres    false    218   V~       �          0    16401    moneda 
   TABLE DATA           G   COPY public.moneda (mon_cod, mon_nom, mon_sig, mon_estado) FROM stdin;
    public               postgres    false    220          �          0    16409    persona 
   TABLE DATA           �   COPY public.persona (per_cod, per_iden, per_ape_pat, per_ape_mat, per_nom, per_fec_nac, per_cor, per_fot, per_coo, per_estado) FROM stdin;
    public               postgres    false    222   �       �          0    16420    producto 
   TABLE DATA           `   COPY public.producto (pro_cod, pro_iden, pro_des, mon_cod, tip_pro_cod, pro_estado) FROM stdin;
    public               postgres    false    224   ��       �          0    16432    rol 
   TABLE DATA           D   COPY public.rol (rol_cod, rol_rol, rol_nom, rol_estado) FROM stdin;
    public               postgres    false    226   ��       �          0    16440    socio 
   TABLE DATA           �   COPY public.socio (soc_cod, soc_iden, soc_ape_pat, soc_ape_mat, soc_nom, soc_fec_nac, soc_cor, soc_coo, ubi_cod, soc_estado) FROM stdin;
    public               postgres    false    228   ^�       �          0    24615    socioproducto 
   TABLE DATA           y   COPY public.socioproducto (id_socpro, id_socio, id_producto, num_cuenta, fec_apertura, saldo, socpro_estado) FROM stdin;
    public               postgres    false    238   R�       �          0    16452    tasa 
   TABLE DATA           z   COPY public.tasa (pro_cod, tas_iden, tas_desc, tas_tasa, tas_plaz_dias, tas_ini_fec, tas_fin_fec, tas_estado) FROM stdin;
    public               postgres    false    229   �       �          0    16458    tipoproducto 
   TABLE DATA           P   COPY public.tipoproducto (tip_pro_cod, tip_pro_nom, tip_pro_estado) FROM stdin;
    public               postgres    false    231   �       �          0    16466 	   ubicacion 
   TABLE DATA           S   COPY public.ubicacion (ubi_cod, ubi_dep, ubi_pro, ubi_dis, ubi_estado) FROM stdin;
    public               postgres    false    233   ��       �          0    16474    usuario 
   TABLE DATA           c   COPY public.usuario (usu_cod, usu_ide, usu_usu, usu_pas, coo_cod, per_cod, usu_estado) FROM stdin;
    public               postgres    false    235   #�       �          0    24579    usuarioroles 
   TABLE DATA           :   COPY public.usuarioroles (id, usu_id, rol_id) FROM stdin;
    public               postgres    false    236   �       �           0    0    cooperativa_coo_cod_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cooperativa_coo_cod_seq', 1, true);
          public               postgres    false    217            �           0    0    moneda_mon_cod_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.moneda_mon_cod_seq', 6, true);
          public               postgres    false    219            �           0    0    persona_per_cod_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.persona_per_cod_seq', 21, true);
          public               postgres    false    221            �           0    0    producto_pro_cod_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.producto_pro_cod_seq', 31, true);
          public               postgres    false    223            �           0    0    rol_rol_cod_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.rol_rol_cod_seq', 5, true);
          public               postgres    false    225            �           0    0    socio_soc_cod_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.socio_soc_cod_seq', 20, true);
          public               postgres    false    227            �           0    0    socioproducto_id_socpro_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.socioproducto_id_socpro_seq', 20, true);
          public               postgres    false    239            �           0    0    tipoproducto_tip_pro_cod_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tipoproducto_tip_pro_cod_seq', 10, true);
          public               postgres    false    230            �           0    0    ubicacion_ubi_cod_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ubicacion_ubi_cod_seq', 20, true);
          public               postgres    false    232            �           0    0    usuario_rol_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.usuario_rol_id_seq', 4, true);
          public               postgres    false    237            �           0    0    usuario_usu_cod_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.usuario_usu_cod_seq', 13, true);
          public               postgres    false    234            �           2606    16399    cooperativa PRIMARY 
   CONSTRAINT     X   ALTER TABLE ONLY public.cooperativa
    ADD CONSTRAINT "PRIMARY" PRIMARY KEY (coo_cod);
 ?   ALTER TABLE ONLY public.cooperativa DROP CONSTRAINT "PRIMARY";
       public                 postgres    false    218            �           2606    16407    moneda primary00000 
   CONSTRAINT     V   ALTER TABLE ONLY public.moneda
    ADD CONSTRAINT primary00000 PRIMARY KEY (mon_cod);
 =   ALTER TABLE ONLY public.moneda DROP CONSTRAINT primary00000;
       public                 postgres    false    220            �           2606    16417    persona primary00001 
   CONSTRAINT     W   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT primary00001 PRIMARY KEY (per_cod);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT primary00001;
       public                 postgres    false    222            �           2606    16428    producto primary00002 
   CONSTRAINT     X   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT primary00002 PRIMARY KEY (pro_cod);
 ?   ALTER TABLE ONLY public.producto DROP CONSTRAINT primary00002;
       public                 postgres    false    224            �           2606    16438    rol primary00003 
   CONSTRAINT     S   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT primary00003 PRIMARY KEY (rol_cod);
 :   ALTER TABLE ONLY public.rol DROP CONSTRAINT primary00003;
       public                 postgres    false    226            �           2606    16448    socio primary00004 
   CONSTRAINT     U   ALTER TABLE ONLY public.socio
    ADD CONSTRAINT primary00004 PRIMARY KEY (soc_cod);
 <   ALTER TABLE ONLY public.socio DROP CONSTRAINT primary00004;
       public                 postgres    false    228            �           2606    16456    tasa primary00005 
   CONSTRAINT     T   ALTER TABLE ONLY public.tasa
    ADD CONSTRAINT primary00005 PRIMARY KEY (pro_cod);
 ;   ALTER TABLE ONLY public.tasa DROP CONSTRAINT primary00005;
       public                 postgres    false    229            �           2606    16464    tipoproducto primary00006 
   CONSTRAINT     `   ALTER TABLE ONLY public.tipoproducto
    ADD CONSTRAINT primary00006 PRIMARY KEY (tip_pro_cod);
 C   ALTER TABLE ONLY public.tipoproducto DROP CONSTRAINT primary00006;
       public                 postgres    false    231            �           2606    16472    ubicacion primary00007 
   CONSTRAINT     Y   ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT primary00007 PRIMARY KEY (ubi_cod);
 @   ALTER TABLE ONLY public.ubicacion DROP CONSTRAINT primary00007;
       public                 postgres    false    233            �           2606    16480    usuario primary00008 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT primary00008 PRIMARY KEY (usu_cod);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT primary00008;
       public                 postgres    false    235            �           2606    24630     socioproducto socioproducto_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.socioproducto
    ADD CONSTRAINT socioproducto_pkey PRIMARY KEY (id_socpro);
 J   ALTER TABLE ONLY public.socioproducto DROP CONSTRAINT socioproducto_pkey;
       public                 postgres    false    238            �           2606    24643    usuario uniq_persona 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uniq_persona UNIQUE (per_cod);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT uniq_persona;
       public                 postgres    false    235            �           2606    24593    usuarioroles usuario_rol_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarioroles
    ADD CONSTRAINT usuario_rol_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.usuarioroles DROP CONSTRAINT usuario_rol_pkey;
       public                 postgres    false    236            �           1259    16418 
   IX_COO-PER    INDEX     C   CREATE INDEX "IX_COO-PER" ON public.persona USING btree (per_coo);
     DROP INDEX public."IX_COO-PER";
       public                 postgres    false    222            �           1259    16430    IX_Relationship1    INDEX     J   CREATE INDEX "IX_Relationship1" ON public.producto USING btree (mon_cod);
 &   DROP INDEX public."IX_Relationship1";
       public                 postgres    false    224            �           1259    16482    IX_Relationship10    INDEX     J   CREATE INDEX "IX_Relationship10" ON public.usuario USING btree (coo_cod);
 '   DROP INDEX public."IX_Relationship10";
       public                 postgres    false    235            �           1259    16449    IX_Relationship24    INDEX     H   CREATE INDEX "IX_Relationship24" ON public.socio USING btree (soc_coo);
 '   DROP INDEX public."IX_Relationship24";
       public                 postgres    false    228            �           1259    16451    IX_Relationship4    INDEX     G   CREATE INDEX "IX_Relationship4" ON public.socio USING btree (ubi_cod);
 &   DROP INDEX public."IX_Relationship4";
       public                 postgres    false    228            �           2606    16493    persona fk_per-coo    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "fk_per-coo" FOREIGN KEY (per_coo) REFERENCES public.cooperativa(coo_cod) NOT VALID;
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT "fk_per-coo";
       public               postgres    false    4820    222    218            �           2606    16518    producto fk_pro-mon    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT "fk_pro-mon" FOREIGN KEY (mon_cod) REFERENCES public.moneda(mon_cod) NOT VALID;
 ?   ALTER TABLE ONLY public.producto DROP CONSTRAINT "fk_pro-mon";
       public               postgres    false    224    4822    220            �           2606    24637    socioproducto fk_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.socioproducto
    ADD CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES public.producto(pro_cod) NOT VALID;
 C   ALTER TABLE ONLY public.socioproducto DROP CONSTRAINT fk_producto;
       public               postgres    false    238    4828    224            �           2606    24599    usuarioroles fk_rol    FK CONSTRAINT     ~   ALTER TABLE ONLY public.usuarioroles
    ADD CONSTRAINT fk_rol FOREIGN KEY (rol_id) REFERENCES public.rol(rol_cod) NOT VALID;
 =   ALTER TABLE ONLY public.usuarioroles DROP CONSTRAINT fk_rol;
       public               postgres    false    236    226    4830            �           2606    16508    socio fk_soc-emp    FK CONSTRAINT     �   ALTER TABLE ONLY public.socio
    ADD CONSTRAINT "fk_soc-emp" FOREIGN KEY (soc_coo) REFERENCES public.cooperativa(coo_cod) NOT VALID;
 <   ALTER TABLE ONLY public.socio DROP CONSTRAINT "fk_soc-emp";
       public               postgres    false    4820    218    228            �           2606    16503    socio fk_soc-ubi    FK CONSTRAINT     �   ALTER TABLE ONLY public.socio
    ADD CONSTRAINT "fk_soc-ubi" FOREIGN KEY (ubi_cod) REFERENCES public.ubicacion(ubi_cod) NOT VALID;
 <   ALTER TABLE ONLY public.socio DROP CONSTRAINT "fk_soc-ubi";
       public               postgres    false    4840    228    233            �           2606    24632    socioproducto fk_socio    FK CONSTRAINT     �   ALTER TABLE ONLY public.socioproducto
    ADD CONSTRAINT fk_socio FOREIGN KEY (id_socio) REFERENCES public.socio(soc_cod) NOT VALID;
 @   ALTER TABLE ONLY public.socioproducto DROP CONSTRAINT fk_socio;
       public               postgres    false    238    4834    228            �           2606    16525    tasa fk_tas-pro    FK CONSTRAINT     �   ALTER TABLE ONLY public.tasa
    ADD CONSTRAINT "fk_tas-pro" FOREIGN KEY (pro_cod) REFERENCES public.producto(pro_cod) NOT VALID;
 ;   ALTER TABLE ONLY public.tasa DROP CONSTRAINT "fk_tas-pro";
       public               postgres    false    224    229    4828            �           2606    24619    producto fk_tippro-pro    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT "fk_tippro-pro" FOREIGN KEY (tip_pro_cod) REFERENCES public.tipoproducto(tip_pro_cod) NOT VALID;
 B   ALTER TABLE ONLY public.producto DROP CONSTRAINT "fk_tippro-pro";
       public               postgres    false    231    224    4838            �           2606    16488    usuario fk_usu-cod    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "fk_usu-cod" FOREIGN KEY (coo_cod) REFERENCES public.cooperativa(coo_cod) NOT VALID;
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT "fk_usu-cod";
       public               postgres    false    4820    235    218            �           2606    24644    usuario fk_usu-per    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "fk_usu-per" FOREIGN KEY (per_cod) REFERENCES public.persona(per_cod) NOT VALID;
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT "fk_usu-per";
       public               postgres    false    235    4825    222            �           2606    24594    usuarioroles fk_usuario    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarioroles
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usu_id) REFERENCES public.usuario(usu_cod) NOT VALID;
 A   ALTER TABLE ONLY public.usuarioroles DROP CONSTRAINT fk_usuario;
       public               postgres    false    236    235    4843            �   �   x�%��
�0 ϯ_��B7��%��V\z
Hh�<1IIJ�ނ���!N�,_��p��R���Wޜ��Z(�k�qOF��,�♼�4D���,Vzp�KG�bMZ�"�q�^�2�0Mb�e7ڝ�Ω�&�dM4('`[!�^9��������XӜ�Kq�mQ7��5<A���CwS � ~ :�      �   �   x�3��+M-�W���p��t�2�t--��trL8}2��\�KR�r2�9ݝ��f�nE�y�@}��U���n@A#N�Ûs�sS�2���9C�]�����y
^��y�WszDc���� �$�      �      x�}��rǕE�K�D�/o��#�
q�!~p�%� @7D�G_#y�K�e�v5��G�!�KWgee�����d�#�kr��k��iO�_/��t|���鰵�o�;�y}��9�w�����u;��|�c{���9Z�k	Ǘ�2>�܎W��1㋇yY��J���ƙ��Wn�0�=3�geLS=^���O���w���]�ϥ�������E���,��S���v�����������׏[+e:wcX_8��]�}˰;F=3a<��ΧZ�/����O�_�ߵ7���G�7ߘt���Nn7��=3g:2۵�����������������Fc����}Ҩg&�G.5h���?]�z k��������fi:{cص;�Ӆ[�x{f�BS(����z��?��u�gV"z]^�7&��r<��:����N����N����O?�����A�7� ��;^��?�{6p��J������������������ݺoW([vk�y�t;�C��Ԓc��SM�&��3�}]�W�k�1��ƣ]/�~}nNj�9�ɋ@�����u���ۻ�O0�7΁j]��.��*a�̗?��������oN�>{���-�o�~yn.��MU����.ǋ7�Y�>����|�!�MF���;]�E�����OZi�ɲ��ēY4�EÞ���(����������}q�����nϽFU�r�^�}x�|[
Ȝ�;�����&�iڏ� �y};��DE)���T������Y����������w���`v�t�
� �����'^�E� y�ǿ��.�v|q��﯐�b.S����m;�>���L�` 觳J�߻GU2�؞>RC��Rf���u�sS��?���������ū?��U����|���o?��Kݵ�,{/c�5��jH�k����m׍)�?�I&sq���ٯ��6���dG;]u���E�u�Yo�u���-}�l���x�Ϯ����z����{q��ݴ�n���3n~�9�{��Z��w~��y�w��PX�)�tΛ���謖���QDˎ3������������~$��dS���uv|]�׻��5S���<ϛ��|��Q�3�޹j�5ٻam8��:�r<`��}�>��on8v]{��b�����ڃ�׻Xŧ��ܷ����ܥU+�&�� �H��x�w]#�x��Y}�ޯ�_�L�Q�6x[ʬ��	Ӕ�l��C�d��X�˱��r��x��ʪ�o ��p����5o�57�]@p;�F]����ckk��JX5�8r�y/,\�iO۫�!���B[{���X0g�%,��F��=ϲ�^����gOn�m�c�;,�f��$�.~0f�Qf��t�>}��Nߐޚ⌙5ĵL;K/��Sqe���3#�S������!7GlG��i�e6��qaR���G�A�A)#�i0E2iV�n�p.)����5A�<��CI��8_��c������C>�k�d��&�ئ�AՅ�FC���9s"}Ϲv�aTqX$|L�?[�QG�<�n�6,R˅�t�a�3Ϝ}���9瘍,���l=��֦';�-3�Ⱦ�^:��6F�An[Ͻ��ɭ!ۉT������Z�Z�-2�Q{Ž &G'�~ �I�Dp��Qc�pĹ]KP��f�,���0��t���jvl
����8ލ��V]�>�P=hm	h���R�s��`7��յ�(-�+Y�f���2�ߞ��k8����ʖGj���d�H,������=����G/�B���Ο�Ēd��$�J"͔5�EW2�i��l�f���¸�#��j�B���D*pt�Q/� �g�yjG�}0	�w�(��kA��=8�M�RP�x~�B�S��k���~�!��6m���M�B�Ї+y%�����ݔ{L��Ӭ�*Cs��VoG��M�B��Y��q�L���|���$`# '�O�
�6l�d�ؑkl�a��Zm[�F���
.Jy��Q0���D�*MVC�\Z�m�L�U��v��0	��/є�c��l�F�^-B���>�i�XF�a��#t"c���.�sQH��-��젣zE˳U�nqv�s�� �g a��@�Iq'�!��q!���(Z!�����+u*u�:+����]����$?�e��\������e���e[�(j'3'���ϥ����[@��6c �Q���etkTZb^v�
�O���q|�4+��$��?�h�T
w���P���aNP�5��w�}����]���dt�7���"3~��I.�ٚ
�Z�t��u�ҝ�t�l�A���pq��Xo�hd��η�.�m�$�*d��:zN^�C0F�F�tBdڴ J��Ӏ�c��MU��o&�Vʽ���	)�K�ٗ�Z:WX���X*��n���-���T.��`j����,������vK�Ȳ�(�jA;!0�:��7@tZ��wfq��� ���� ���6�wy3�H"3��ͳRG���Myh��(+Nh��55��8dQȦ�w+����R(��+�8�nÎ���x������F���@Lk�����3YM�(�h(�X��D��a�r�	�_ �4���z^�&`*����*Z�zRP����yf�b��a8�ל��oN�d
O��t;�]��m!�-���G��P%H���"Q�*Q&XC��"C��'�? �6W���1�n#K�0BTZ�
�]��&�%����	d��`1��2�W�eq��-����4<<���0��TnD�ΝV�$�rh[� ��or!�O	m�Pƞ0$Nl"��_�������NX� @�b�Ő��`*�}P�<�j��l ��-�"�o@���z-�CG� 9����8q	�+V�V�{�f�̺�P��*£�	Y��F��L `!�j�`D0P��H��0��P[dFP� Č&�aڢF#�'�7�.	2��$t�������F�;1r$O�n���`"�0Ո��`9�^*�Ȟ؍�	h��o��8� ��k
�����!D��]h�NBT�ؓ�-�.pF>e�0�^I9`r�F��N�F�#2Je�;F��:n0���ƹ+�	��G�J�[#V�����T2V��{����c�Ĝh�]��	{�H��m�!~�۪������N;��Xx�L-"�3��`f��!s�2�&f��26��K�H�,�t��M늅�%c�o���ZpENP	&y�6�Ĉ���p���I& ɫ��,����(WC���)b;���>;[I+�eO ���N������xvf��U	|����AX���FԖ�O�%� p�-�����
�G�&V��8�Ǖ$*E&7�D㬛����
lsB2j� & �T,��&��̽[rf�+�y.h �`���	�Q�`{�7�F���2�;}Ҡ�=K��*��\����cϨ���@f�����he`�+Uk@|QV����LT�3�7���Φ�������3R� �n+ؙq鐨M��Aj��f��K+�h#hW�/��\3K�����-��U�H^��k�e��U���8��sVQ��x�0�uc�Ճ r+(���u�h�í����	�4Aq����6\�<�((�N� ��g�-i�Pc�4��L��T�� �J"`iG�@���-�<>(�.)�RA~4�k r��A�MFې]$�7,p��P�.� �0q�Q����:`^��:�,OXt�t�j0��$6Qc:�H�3L��Q���:.�[y8�����O�R!�-�T�gi��4  ����в���:�J�%c\7�����A%�|)�Q�C	fd]�&� �}@���n�!��r��!J>�x�n]�4S(yܷOmVev9A����b����N3�`�nWz�T�hT������D0��G]Pbu���4��\�.��ޛ���vk=]�L�?�Z�T�V\֋�i�� � ��iё����k�SZK�!Eb%T�f�Л��B�[�&�[+�,�8$z4���~:�fP9��	Z1��K�t����'�����&�9�D|���v�.˽JA��A�6�=�|OJ��.�e����`qC.�w �  ���@ꄁ#��D�쳰�S@
��r R8��$�f`��IM:˃m��j/���ͥ�J�1�%��a!�(�-Y"~�:��[�xnY�b�]4x�Jf"�C�-sI�p�<'�{����:��S~#�,϶� �f��D���:[��1,O:Q��'OC�N�P8r:P��D� ��Wʍ�T�o���b�ϗ��6v�y�ʩd|G#{�ab���:T�{S�fZ�,�ު���T�^u��T*hL_ˈ��z.7@�����D�	bp���!�9(&���8�Rvƌx���00ܑ��!K8��D��:��Q��Q��7 �{J��	Q�bN'������1��WraCz-��`9�:d�ZX�ZC�����L1�m��7��p����`�H�1BE�&-�"�:��~�Y�q���-Ӧ�'���R�::&���x">��<��G7���� ��>A�����V T�
"%;g�@��:�U-=Rc�>O�D���|P��H�1�v����X����ƴJZ\9ц��@��p+�Kg�S�:�G[����tO�6��;�T���.��L���u� �E&����:>ncG�G�h�ъ��H�ZV��HG4h��c�w50㦡�ǀ���\u�����Wj�K��eˍ�1�T�t*�2�N��䳘��9�H��W-s:�N�����'QXA�2NL��60˲���x�Lk?h�@|�8ػ�������u�X�i����M'�F�3���Yւ}o9<@.8ZĳKS��723���h��1Cl��f��i��~=c��BO�'+$����41!�����K�6Un�o�/���{K�8�h�)V�**[�J_Es��<� %FX�5�#<�C8����Q����3��dv�'��G���Y]�D��	A���eui��z��6K_�Lv�H�u\O�`8���̴�*<XO{1;�_U踑�ӭO��v*)O��e�1��_������_�U��P߃t�4�t�
��+�cH�iO,��C�c7��vZ��R�:��k�(�PY}�BO=����p���n�A\�Z�F���*'xp+x0ȹ���M͔0��a��Y��'���m:| #�5�2L:߆�w����Ƥ�+W��`ag���k(#-|,k���o�~�Dy���ҡ� 3�/F�dV��x�nĝ\N�
�iLN��N�N�i���y�7��}���)j�      �   ,  x����N�0���S�v����cU@p`�T���^��e]%vd'H��}�>َ=	���84���x~&����8N�� u��l��Xk��4ұ,���I댆&J�o����O=-M�
A���� �ڰ�hfe��qL5�U=�ơ#�I�I'g{��ҽ�8 i񰽱-�(�Q�H�f����t���9���Tgͣ���Vj7��K��ea�Y}|i ��Y����,,'�:����;����ũ�0`]φ���0�m8=gh�5t��?��y/!O|�%|)�^�$��g��l�И .\~����偛�:����i��C���rQm�B�"�ys.)�\�����ⷕ{iqo�WR���;��<�j����M���7m�GW�X���S���;�+5��Q>x���z�HO;�Զ�iz�>ޜ�ǧf���jy�g�hsA�8�JW\�D�D.�&���,��=��xVA�3���������RH�;n\�=^,]`S^ƨ�ut��~���j�t��p�z�X�#���B�,`�\/m�48|$�$�/����j���C��      �   �   x��M
� ���x
OP��$��@c0]v#:�qd�K��X�.?������&0i�5o;�D����5�Q'��h��.��I7�5�������0 c�Q��"��n���΃][AIKYS��*nr���f�%�P#����Ě#	>J�T�2�      �   �  x�e�Kn�0�ד�P%?�]���I$EE7�uhP�AY�U��U^'�Qz��#�(�=>G�PS��Z^����?�~�`�kn,�v�z�e��T�MkI$+T������6�|M�Ã,�2���Y������4��J3��T�$pm��e����u��T��ܘ�t��V�BO��)9�NZ*�cr`f3�O&4 ����-]����B�3�3
���DK�{��y����?�����3Nz�T:WYJ��AW(z��������N:1�<��Y:*s�.T��p���W�'-@ZFҒ.���m�t����Y��+�*]�<�;I$M�L����������<��a�Ɔ�*-�.�怆�{�M98e�������=��H�~*�%�c�P���J��d�,7V��w�A�Gg��'<�TiMF�n(�X�
IG��|�w�9��|�+���9�CI��pDo�F�5l͊�ں��{���!��45�H�P3��:���Sg�-Z:6nŘ&^�Q%-{RK"��/��DpGp��� ��<܏IWcH���p�m�Fpi�7Ɲ�=g�r�����U6���K6��"j��6�s�y��֋�&����J1��6k;��:����?r���w�'eۭ�f�>�T��������Nn��aW���[��q<^uؗm�Lbo��u�⹎�#�DS�?:�p�ԇ�oy�Z�f,��D�,���ʯa�߲s2�W�LG�+!H����$�t��      �   �   x�mл�PCњo����.�e��?GdXPR#�V�`����9_�:���%R�4IGפ�d`h2L215�&YX�,�llM�IN���&�pir�����Q=&*^�f�1�1�X��Y��L��bVi:i�Z�Y��U�N����t�,n��GX�t⟣����x�      �   �  x����j�0���S�Z��$G��Bo�I{�E먭�m+)���a��O���gb/t�_|�d���/w��F�m��}�}��_��핾�&WZ���J�į��R����߹W_��L�:�F�:��h�pr�!����"{��D&��g��݋�u3�$��bF�������t��U�6w���v�n�m&؏Ǉ�߾�����g��I����j�=gt9����24 �44%s�
�8Q,Cb�����T.
w8�B�r������}P�s� ���΁{���4t�FH�y3�Ľ��t�?��lI;8y��~�.��Li�=�����b�Z\$������0bm�.�^�B�8�����}���e	0L��,T���6���8��l�p�#��xD���Y��_����z���2���h�bn%��qNY6<:*�M���^z�U>,����z�6��ކE���W��?,���      �   �   x�u�A�0��u9Ŝ�(� &.LHp�f��Z-�c<�G�dV��1,�ͷ�cQ��$����QK�Pr�V�Q��/���"������e%���V9U�/�H�#K֓��&�͑8��FL�W�N�z�a���;�v��8����A����$ʧc�1zpYDQ��[&      �   o  x�m�MN1�יS��)m�e5B��TT*?Bb�����I���`�G�$�3H�Ɗ��/�srU�5�a�n=�m�$l�%=m\M��`\:�A�x��5��/p"6�#6Kj��D��Y��XM�>&� ?�Zn�d�;�5X% �G�H���x%�����_y�zi+h�ۼ���*A����V���E�.7�&"�Ƞ>�D��&�w׳�'�8���%n�c����!<	;(d�f)lރ:eo���9�+�&����y�u��"��,y}��G]Wв[V����6�/����j�gݳ���7Q͡��)����;��@Q&�c��(�"�͇��}u�c�w�s�`;Cbg�"�^6���eY�N��A      �   �   x�M�M�0�s�1c�P�c����vH�*j�U��]Y	�<��e��� ��-�3.�Q���=�isq�~�ݦ=���{����%Dd&z^�RHu�Շ`c)jM5D�qإ��!�f��m�;{g?MKFe��/�"��Q0n��՗/i׏h�f��<�&R�M�a��˜�<�;�}_���L�Y�      �      x�3�4�4�2�4�1z\\\ m     