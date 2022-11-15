--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23
-- Dumped by pg_dump version 10.23

-- Started on 2022-11-14 23:31:37

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2819 (class 1262 OID 16393)
-- Name: pratica-2; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "pratica-2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';


ALTER DATABASE "pratica-2" OWNER TO postgres;

\connect -reuse-previous=on "dbname='pratica-2'"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2821 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16595)
-- Name: atores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.atores (
    id integer NOT NULL,
    data_nascimento date,
    nome character varying(255)
);


ALTER TABLE public.atores OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16593)
-- Name: atores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.atores ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.atores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 199 (class 1259 OID 16602)
-- Name: filmes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filmes (
    id integer NOT NULL,
    ano_lancamento integer,
    titulo character varying(255)
);


ALTER TABLE public.filmes OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16607)
-- Name: filmes_atores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filmes_atores (
    filme_id integer NOT NULL,
    ator_id integer NOT NULL
);


ALTER TABLE public.filmes_atores OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16600)
-- Name: filmes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.filmes ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.filmes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2810 (class 0 OID 16595)
-- Dependencies: 197
-- Data for Name: atores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.atores VALUES (1, '1926-11-01', 'Betsy Palmer');
INSERT INTO public.atores VALUES (2, '1960-07-21', 'Adrienne King');
INSERT INTO public.atores VALUES (3, '1969-11-04', 'Matthew McConaughey');
INSERT INTO public.atores VALUES (4, '1982-11-12', 'Anne Hathaway');
INSERT INTO public.atores VALUES (5, '1974-01-30', 'Christian Bale');
INSERT INTO public.atores VALUES (6, '1955-07-22', 'William James Dafoe');
INSERT INTO public.atores VALUES (7, '1965-04-04', 'Robert Downey Jr.');
INSERT INTO public.atores VALUES (8, '1972-09-27', 'Gwyneth Paltrow');
INSERT INTO public.atores VALUES (9, '1974-11-11', 'Leonardo DiCaprio');


--
-- TOC entry 2812 (class 0 OID 16602)
-- Dependencies: 199
-- Data for Name: filmes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.filmes VALUES (1, 1980, 'Sexta-Feira 13');
INSERT INTO public.filmes VALUES (2, 2014, 'Interstellar');
INSERT INTO public.filmes VALUES (3, 2000, 'American Psycho');
INSERT INTO public.filmes VALUES (4, 2008, 'The Dark Knight');
INSERT INTO public.filmes VALUES (5, 2008, 'Iron Man');
INSERT INTO public.filmes VALUES (6, 1997, 'Titanic');


--
-- TOC entry 2813 (class 0 OID 16607)
-- Dependencies: 200
-- Data for Name: filmes_atores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.filmes_atores VALUES (1, 1);
INSERT INTO public.filmes_atores VALUES (1, 2);
INSERT INTO public.filmes_atores VALUES (2, 4);
INSERT INTO public.filmes_atores VALUES (2, 3);
INSERT INTO public.filmes_atores VALUES (3, 5);
INSERT INTO public.filmes_atores VALUES (3, 6);
INSERT INTO public.filmes_atores VALUES (4, 5);
INSERT INTO public.filmes_atores VALUES (5, 7);
INSERT INTO public.filmes_atores VALUES (5, 8);
INSERT INTO public.filmes_atores VALUES (6, 9);


--
-- TOC entry 2822 (class 0 OID 0)
-- Dependencies: 196
-- Name: atores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.atores_id_seq', 9, true);


--
-- TOC entry 2823 (class 0 OID 0)
-- Dependencies: 198
-- Name: filmes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filmes_id_seq', 6, true);


--
-- TOC entry 2681 (class 2606 OID 16599)
-- Name: atores atores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atores
    ADD CONSTRAINT atores_pkey PRIMARY KEY (id);


--
-- TOC entry 2685 (class 2606 OID 16611)
-- Name: filmes_atores filmes_atores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filmes_atores
    ADD CONSTRAINT filmes_atores_pkey PRIMARY KEY (filme_id, ator_id);


--
-- TOC entry 2683 (class 2606 OID 16606)
-- Name: filmes filmes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filmes
    ADD CONSTRAINT filmes_pkey PRIMARY KEY (id);


--
-- TOC entry 2686 (class 2606 OID 16612)
-- Name: filmes_atores fk1flpk9ovekq4bkc2i5j77aio9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filmes_atores
    ADD CONSTRAINT fk1flpk9ovekq4bkc2i5j77aio9 FOREIGN KEY (ator_id) REFERENCES public.atores(id);


--
-- TOC entry 2687 (class 2606 OID 16617)
-- Name: filmes_atores fknhk64ra6oy797xpu897d0gik3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filmes_atores
    ADD CONSTRAINT fknhk64ra6oy797xpu897d0gik3 FOREIGN KEY (filme_id) REFERENCES public.filmes(id);


-- Completed on 2022-11-14 23:31:43

--
-- PostgreSQL database dump complete
--

