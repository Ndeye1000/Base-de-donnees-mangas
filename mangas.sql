--
-- PostgreSQL database dump
--

\restrict beMPR0fIizLzP4U79KXdgZTPO8ubBfnAcdRGo11IbjMHTORghsIHT4yefXgGqqz

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

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

DROP DATABASE manga_db;
--
-- Name: manga_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE manga_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_Senegal.1252';


ALTER DATABASE manga_db OWNER TO postgres;

\unrestrict beMPR0fIizLzP4U79KXdgZTPO8ubBfnAcdRGo11IbjMHTORghsIHT4yefXgGqqz
\connect manga_db
\restrict beMPR0fIizLzP4U79KXdgZTPO8ubBfnAcdRGo11IbjMHTORghsIHT4yefXgGqqz

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
-- Name: mangas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mangas (
    id integer NOT NULL,
    titre character varying(255),
    auteur character varying(255),
    genre character varying(100),
    note numeric(4,2),
    nb_chapitres integer,
    statut character varying(50),
    annee_debut integer,
    source character varying(100)
);


ALTER TABLE public.mangas OWNER TO postgres;

--
-- Name: mangas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mangas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mangas_id_seq OWNER TO postgres;

--
-- Name: mangas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mangas_id_seq OWNED BY public.mangas.id;


--
-- Name: ventes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventes (
    id integer NOT NULL,
    manga_id integer,
    annee integer,
    nb_volumes numeric(10,2),
    pays character varying(100)
);


ALTER TABLE public.ventes OWNER TO postgres;

--
-- Name: ventes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ventes_id_seq OWNER TO postgres;

--
-- Name: ventes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventes_id_seq OWNED BY public.ventes.id;


--
-- Name: mangas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mangas ALTER COLUMN id SET DEFAULT nextval('public.mangas_id_seq'::regclass);


--
-- Name: ventes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventes ALTER COLUMN id SET DEFAULT nextval('public.ventes_id_seq'::regclass);


--
-- Data for Name: mangas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: ventes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: mangas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mangas_id_seq', 1, false);


--
-- Name: ventes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventes_id_seq', 1, false);


--
-- Name: mangas mangas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mangas
    ADD CONSTRAINT mangas_pkey PRIMARY KEY (id);


--
-- Name: ventes ventes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventes
    ADD CONSTRAINT ventes_pkey PRIMARY KEY (id);


--
-- Name: ventes ventes_manga_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventes
    ADD CONSTRAINT ventes_manga_id_fkey FOREIGN KEY (manga_id) REFERENCES public.mangas(id);


--
-- PostgreSQL database dump complete
--

\unrestrict beMPR0fIizLzP4U79KXdgZTPO8ubBfnAcdRGo11IbjMHTORghsIHT4yefXgGqqz

