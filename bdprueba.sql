--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cooperativa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cooperativa (
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


ALTER TABLE public.cooperativa OWNER TO postgres;

--
-- Name: cooperativa_coo_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cooperativa_coo_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cooperativa_coo_cod_seq OWNER TO postgres;

--
-- Name: cooperativa_coo_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cooperativa_coo_cod_seq OWNED BY public.cooperativa.coo_cod;


--
-- Name: moneda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moneda (
    mon_cod integer NOT NULL,
    mon_nom character varying(20) NOT NULL,
    mon_sig character varying(5) NOT NULL,
    mon_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);


ALTER TABLE public.moneda OWNER TO postgres;

--
-- Name: moneda_mon_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moneda_mon_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.moneda_mon_cod_seq OWNER TO postgres;

--
-- Name: moneda_mon_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moneda_mon_cod_seq OWNED BY public.moneda.mon_cod;


--
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    per_cod integer NOT NULL,
    per_iden character varying(45) NOT NULL,
    per_ape_pat character varying(45) NOT NULL,
    per_ape_mat character varying(45) NOT NULL,
    per_nom character varying(45),
    per_fec_nac date,
    per_cor character varying(45),
    per_fot bytea,
    per_coo integer NOT NULL
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- Name: persona_per_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persona_per_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.persona_per_cod_seq OWNER TO postgres;

--
-- Name: persona_per_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persona_per_cod_seq OWNED BY public.persona.per_cod;


--
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    pro_cod integer NOT NULL,
    pro_iden character varying(45) NOT NULL,
    pro_des text,
    mon_cod integer,
    tip_pro_cod integer DEFAULT 1 NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- Name: producto_pro_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_pro_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.producto_pro_cod_seq OWNER TO postgres;

--
-- Name: producto_pro_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_pro_cod_seq OWNED BY public.producto.pro_cod;


--
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    rol_cod integer NOT NULL,
    rol_rol character varying(45),
    rol_nom character varying(45) NOT NULL,
    rol_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- Name: rol_rol_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rol_rol_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rol_rol_cod_seq OWNER TO postgres;

--
-- Name: rol_rol_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rol_rol_cod_seq OWNED BY public.rol.rol_cod;


--
-- Name: socio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socio (
    soc_cod integer NOT NULL,
    soc_iden character varying(45) NOT NULL,
    soc_ape_pat character varying(45) NOT NULL,
    soc_ape_mat character varying(45) NOT NULL,
    soc_nom character varying(45) NOT NULL,
    soc_fec_nac date,
    soc_cor bytea,
    soc_emp integer NOT NULL,
    ubi_cod integer
);


ALTER TABLE public.socio OWNER TO postgres;

--
-- Name: socio_soc_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socio_soc_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.socio_soc_cod_seq OWNER TO postgres;

--
-- Name: socio_soc_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socio_soc_cod_seq OWNED BY public.socio.soc_cod;


--
-- Name: socioproducto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socioproducto (
    id_socpro integer NOT NULL,
    id_socio integer NOT NULL,
    id_producto integer NOT NULL,
    num_cuenta character varying(20) NOT NULL,
    fec_apertura date NOT NULL,
    saldo numeric(10,2) DEFAULT 0.00 NOT NULL
);


ALTER TABLE public.socioproducto OWNER TO postgres;

--
-- Name: socioproducto_id_socpro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socioproducto_id_socpro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.socioproducto_id_socpro_seq OWNER TO postgres;

--
-- Name: socioproducto_id_socpro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socioproducto_id_socpro_seq OWNED BY public.socioproducto.id_socpro;


--
-- Name: tasa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasa (
    pro_cod integer NOT NULL,
    tas_iden character varying(45) NOT NULL,
    tas_desc character varying(45) NOT NULL,
    tas_tasa double precision NOT NULL,
    tas_plaz_dias smallint NOT NULL,
    tas_ini_fec date NOT NULL,
    tas_fin_fec date NOT NULL,
    tas_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);


ALTER TABLE public.tasa OWNER TO postgres;

--
-- Name: tipoproducto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipoproducto (
    tip_pro_cod integer NOT NULL,
    tip_pro_nom character varying(45) NOT NULL,
    tip_pro_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);


ALTER TABLE public.tipoproducto OWNER TO postgres;

--
-- Name: tipoproducto_tip_pro_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipoproducto_tip_pro_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipoproducto_tip_pro_cod_seq OWNER TO postgres;

--
-- Name: tipoproducto_tip_pro_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipoproducto_tip_pro_cod_seq OWNED BY public.tipoproducto.tip_pro_cod;


--
-- Name: ubicacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ubicacion (
    ubi_cod integer NOT NULL,
    ubi_dep character varying(45) NOT NULL,
    ubi_pro character varying(45) NOT NULL,
    ubi_dis character varying(45) NOT NULL,
    ubi_estado character(1) DEFAULT 'A'::bpchar NOT NULL
);


ALTER TABLE public.ubicacion OWNER TO postgres;

--
-- Name: ubicacion_ubi_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ubicacion_ubi_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ubicacion_ubi_cod_seq OWNER TO postgres;

--
-- Name: ubicacion_ubi_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ubicacion_ubi_cod_seq OWNED BY public.ubicacion.ubi_cod;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    usu_cod integer NOT NULL,
    usu_ide character varying(50) NOT NULL,
    usu_usu character varying(50) NOT NULL,
    usu_pas character varying(50) NOT NULL,
    usu_emp integer NOT NULL,
    per_cod integer NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuarioroles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarioroles (
    id integer NOT NULL,
    usu_id integer NOT NULL,
    rol_id integer NOT NULL
);


ALTER TABLE public.usuarioroles OWNER TO postgres;

--
-- Name: usuario_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_rol_id_seq OWNER TO postgres;

--
-- Name: usuario_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_rol_id_seq OWNED BY public.usuarioroles.id;


--
-- Name: usuario_usu_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_usu_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_usu_cod_seq OWNER TO postgres;

--
-- Name: usuario_usu_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_usu_cod_seq OWNED BY public.usuario.usu_cod;


--
-- Name: cooperativa coo_cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooperativa ALTER COLUMN coo_cod SET DEFAULT nextval('public.cooperativa_coo_cod_seq'::regclass);


--
-- Name: moneda mon_cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moneda ALTER COLUMN mon_cod SET DEFAULT nextval('public.moneda_mon_cod_seq'::regclass);


--
-- Name: persona per_cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona ALTER COLUMN per_cod SET DEFAULT nextval('public.persona_per_cod_seq'::regclass);


--
-- Name: producto pro_cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN pro_cod SET DEFAULT nextval('public.producto_pro_cod_seq'::regclass);


--
-- Name: rol rol_cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol ALTER COLUMN rol_cod SET DEFAULT nextval('public.rol_rol_cod_seq'::regclass);


--
-- Name: socio soc_cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socio ALTER COLUMN soc_cod SET DEFAULT nextval('public.socio_soc_cod_seq'::regclass);


--
-- Name: socioproducto id_socpro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socioproducto ALTER COLUMN id_socpro SET DEFAULT nextval('public.socioproducto_id_socpro_seq'::regclass);


--
-- Name: tipoproducto tip_pro_cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipoproducto ALTER COLUMN tip_pro_cod SET DEFAULT nextval('public.tipoproducto_tip_pro_cod_seq'::regclass);


--
-- Name: ubicacion ubi_cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ubicacion ALTER COLUMN ubi_cod SET DEFAULT nextval('public.ubicacion_ubi_cod_seq'::regclass);


--
-- Name: usuario usu_cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN usu_cod SET DEFAULT nextval('public.usuario_usu_cod_seq'::regclass);


--
-- Name: usuarioroles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioroles ALTER COLUMN id SET DEFAULT nextval('public.usuario_rol_id_seq'::regclass);


--
-- Data for Name: cooperativa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cooperativa (coo_cod, coo_iden, coo_nom, coo_sig, coo_dir, coo_tel, coo_cor, coo_slo, coo_log, coo_usu) FROM stdin;
1	12345678	Cooperativa Los Andes	CLA	Av. Principal 123	999888777	contacto@losandes.com	\N	logo.png	admincoop
\.


--
-- Data for Name: moneda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moneda (mon_cod, mon_nom, mon_sig, mon_estado) FROM stdin;
1	Sol Peruano	S/	A
2	Dolar	$$	A
\.


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persona (per_cod, per_iden, per_ape_pat, per_ape_mat, per_nom, per_fec_nac, per_cor, per_fot, per_coo) FROM stdin;
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (pro_cod, pro_iden, pro_des, mon_cod, tip_pro_cod) FROM stdin;
2	DPF001	Dep¢sito a plazo fijo a 1 a¤o	1	1
3	DPF002	Dep¢sito a plazo fijo a 180 d¡as	1	1
1	CTA001	Cuenta de ahorro básica	1	1
\.


--
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rol (rol_cod, rol_rol, rol_nom, rol_estado) FROM stdin;
10	ADM	Administrador de Sistemas	A
11	ASE	Asesor Financiero	A
12	CJA	Cajero	A
13	SOC	Socio	A
16	SUP	Supervisor de Cuentas	A
17	CCO	Coodinador de Créditos	A
18	CTA	Contador	I
15	AUD	Auditor Interno	A
20			A
21	JOP	Jefe de Operaciones Internas	I
22	JOP	Jefe de Operaciones Internas	A
23			A
24	ejmeplo	Administrador interno	A
19	INV	Investigador de Transacciones	*
14	JOP	Jefe de Operaciones Internas	A
\.


--
-- Data for Name: socio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socio (soc_cod, soc_iden, soc_ape_pat, soc_ape_mat, soc_nom, soc_fec_nac, soc_cor, soc_emp, ubi_cod) FROM stdin;
1	SOC001	Pérez	Ramírez	Juan Carlos	1990-05-10	\N	1	1
\.


--
-- Data for Name: socioproducto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socioproducto (id_socpro, id_socio, id_producto, num_cuenta, fec_apertura, saldo) FROM stdin;
1	1	1	CTA-000001	2025-06-25	0.00
\.


--
-- Data for Name: tasa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tasa (pro_cod, tas_iden, tas_desc, tas_tasa, tas_plaz_dias, tas_ini_fec, tas_fin_fec, tas_estado) FROM stdin;
1	TASA_AHORRO	Tasa base para cuenta de ahorro	2.5	0	2025-06-18	2025-06-24	A
2	TAS PF	ASDAD	2.5	15	2025-06-20	2025-06-28	A
\.


--
-- Data for Name: tipoproducto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipoproducto (tip_pro_cod, tip_pro_nom, tip_pro_estado) FROM stdin;
1	Ahorro Individual	A
\.


--
-- Data for Name: ubicacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ubicacion (ubi_cod, ubi_dep, ubi_pro, ubi_dis, ubi_estado) FROM stdin;
1	Lima	Lima	Miraflores	A
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (usu_cod, usu_ide, usu_usu, usu_pas, usu_emp, per_cod) FROM stdin;
\.


--
-- Data for Name: usuarioroles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarioroles (id, usu_id, rol_id) FROM stdin;
\.


--
-- Name: cooperativa_coo_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cooperativa_coo_cod_seq', 1, true);


--
-- Name: moneda_mon_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moneda_mon_cod_seq', 2, true);


--
-- Name: persona_per_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_per_cod_seq', 1, false);


--
-- Name: producto_pro_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_pro_cod_seq', 3, true);


--
-- Name: rol_rol_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rol_rol_cod_seq', 24, true);


--
-- Name: socio_soc_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socio_soc_cod_seq', 1, true);


--
-- Name: socioproducto_id_socpro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socioproducto_id_socpro_seq', 1, true);


--
-- Name: tipoproducto_tip_pro_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipoproducto_tip_pro_cod_seq', 1, true);


--
-- Name: ubicacion_ubi_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ubicacion_ubi_cod_seq', 1, true);


--
-- Name: usuario_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_rol_id_seq', 1, false);


--
-- Name: usuario_usu_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_usu_cod_seq', 1, false);


--
-- Name: cooperativa PRIMARY; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooperativa
    ADD CONSTRAINT "PRIMARY" PRIMARY KEY (coo_cod);


--
-- Name: moneda primary00000; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moneda
    ADD CONSTRAINT primary00000 PRIMARY KEY (mon_cod);


--
-- Name: persona primary00001; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT primary00001 PRIMARY KEY (per_cod);


--
-- Name: producto primary00002; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT primary00002 PRIMARY KEY (pro_cod);


--
-- Name: rol primary00003; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT primary00003 PRIMARY KEY (rol_cod);


--
-- Name: socio primary00004; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socio
    ADD CONSTRAINT primary00004 PRIMARY KEY (soc_cod);


--
-- Name: tasa primary00005; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasa
    ADD CONSTRAINT primary00005 PRIMARY KEY (pro_cod);


--
-- Name: tipoproducto primary00006; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipoproducto
    ADD CONSTRAINT primary00006 PRIMARY KEY (tip_pro_cod);


--
-- Name: ubicacion primary00007; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ubicacion
    ADD CONSTRAINT primary00007 PRIMARY KEY (ubi_cod);


--
-- Name: usuario primary00008; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT primary00008 PRIMARY KEY (usu_cod);


--
-- Name: socioproducto socioproducto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socioproducto
    ADD CONSTRAINT socioproducto_pkey PRIMARY KEY (id_socpro);


--
-- Name: usuario uniq_persona; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uniq_persona UNIQUE (per_cod);


--
-- Name: usuarioroles usuario_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioroles
    ADD CONSTRAINT usuario_rol_pkey PRIMARY KEY (id);


--
-- Name: IX_COO-PER; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_COO-PER" ON public.persona USING btree (per_coo);


--
-- Name: IX_Relationship1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship1" ON public.producto USING btree (mon_cod);


--
-- Name: IX_Relationship10; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship10" ON public.usuario USING btree (usu_emp);


--
-- Name: IX_Relationship24; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship24" ON public.socio USING btree (soc_emp);


--
-- Name: IX_Relationship4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Relationship4" ON public.socio USING btree (ubi_cod);


--
-- Name: persona fk_per-coo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT "fk_per-coo" FOREIGN KEY (per_coo) REFERENCES public.cooperativa(coo_cod) NOT VALID;


--
-- Name: producto fk_pro-mon; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT "fk_pro-mon" FOREIGN KEY (mon_cod) REFERENCES public.moneda(mon_cod) NOT VALID;


--
-- Name: socioproducto fk_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socioproducto
    ADD CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES public.producto(pro_cod) NOT VALID;


--
-- Name: usuarioroles fk_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioroles
    ADD CONSTRAINT fk_rol FOREIGN KEY (rol_id) REFERENCES public.rol(rol_cod) NOT VALID;


--
-- Name: socio fk_soc-emp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socio
    ADD CONSTRAINT "fk_soc-emp" FOREIGN KEY (soc_emp) REFERENCES public.cooperativa(coo_cod) NOT VALID;


--
-- Name: socio fk_soc-ubi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socio
    ADD CONSTRAINT "fk_soc-ubi" FOREIGN KEY (ubi_cod) REFERENCES public.ubicacion(ubi_cod) NOT VALID;


--
-- Name: socioproducto fk_socio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socioproducto
    ADD CONSTRAINT fk_socio FOREIGN KEY (id_socio) REFERENCES public.socio(soc_cod) NOT VALID;


--
-- Name: tasa fk_tas-pro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasa
    ADD CONSTRAINT "fk_tas-pro" FOREIGN KEY (pro_cod) REFERENCES public.producto(pro_cod) NOT VALID;


--
-- Name: producto fk_tippro-pro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT "fk_tippro-pro" FOREIGN KEY (tip_pro_cod) REFERENCES public.tipoproducto(tip_pro_cod) NOT VALID;


--
-- Name: usuario fk_usu-emp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "fk_usu-emp" FOREIGN KEY (usu_emp) REFERENCES public.cooperativa(coo_cod) NOT VALID;


--
-- Name: usuario fk_usu-per; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "fk_usu-per" FOREIGN KEY (per_cod) REFERENCES public.persona(per_cod) NOT VALID;


--
-- Name: usuarioroles fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarioroles
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usu_id) REFERENCES public.usuario(usu_cod) NOT VALID;


--
-- PostgreSQL database dump complete
--

