--
-- PostgreSQL database dump
--

\restrict Vm5pJwBaAjx0YpuhIoaab9v8WwnMyhc6VvbKElRCdK8QoWTDSy7fjOxNFfyhXus

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-11-06 16:37:30

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
-- TOC entry 219 (class 1259 OID 16428)
-- Name: Livros ; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Livros " (
    id_livro integer NOT NULL,
    titulo character varying,
    "autor " character varying
);


ALTER TABLE public."Livros " OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16437)
-- Name: Livros _id_livro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Livros _id_livro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Livros _id_livro_seq" OWNER TO postgres;

--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 220
-- Name: Livros _id_livro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Livros _id_livro_seq" OWNED BY public."Livros ".id_livro;


--
-- TOC entry 221 (class 1259 OID 16486)
-- Name: alunos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alunos (
    id_aluno integer CONSTRAINT alunos_id_alunos_not_null NOT NULL,
    turma character varying,
    "nome " character varying
);


ALTER TABLE public.alunos OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16489)
-- Name: alunos_id_alunos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alunos_id_alunos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alunos_id_alunos_seq OWNER TO postgres;

--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 222
-- Name: alunos_id_alunos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alunos_id_alunos_seq OWNED BY public.alunos.id_aluno;


--
-- TOC entry 224 (class 1259 OID 16501)
-- Name: emprestimos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emprestimos (
    id_emprestimos integer NOT NULL,
    id_aluno integer NOT NULL,
    "id_livro " integer NOT NULL,
    "data_emprestimo " date NOT NULL
);


ALTER TABLE public.emprestimos OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16500)
-- Name: emprestimos_id_emprestimos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.emprestimos_id_emprestimos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.emprestimos_id_emprestimos_seq OWNER TO postgres;

--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 223
-- Name: emprestimos_id_emprestimos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.emprestimos_id_emprestimos_seq OWNED BY public.emprestimos.id_emprestimos;


--
-- TOC entry 4866 (class 2604 OID 16438)
-- Name: Livros  id_livro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Livros " ALTER COLUMN id_livro SET DEFAULT nextval('public."Livros _id_livro_seq"'::regclass);


--
-- TOC entry 4867 (class 2604 OID 16490)
-- Name: alunos id_aluno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos ALTER COLUMN id_aluno SET DEFAULT nextval('public.alunos_id_alunos_seq'::regclass);


--
-- TOC entry 4868 (class 2604 OID 16504)
-- Name: emprestimos id_emprestimos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimos ALTER COLUMN id_emprestimos SET DEFAULT nextval('public.emprestimos_id_emprestimos_seq'::regclass);


--
-- TOC entry 5024 (class 0 OID 16428)
-- Dependencies: 219
-- Data for Name: Livros ; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Livros " (id_livro, titulo, "autor ") FROM stdin;
1	Harry Potter e a Pedra Filosofal 	J.K. Rowling
2	O Senhor dos Anéis 	J.R.R. Tolkien
\.


--
-- TOC entry 5026 (class 0 OID 16486)
-- Dependencies: 221
-- Data for Name: alunos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alunos (id_aluno, turma, "nome ") FROM stdin;
1	9º Ano A	Lucas Silva
2	8º Ano B	Maria Clara 
\.


--
-- TOC entry 5029 (class 0 OID 16501)
-- Dependencies: 224
-- Data for Name: emprestimos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.emprestimos (id_emprestimos, id_aluno, "id_livro ", "data_emprestimo ") FROM stdin;
1	1	1	2026-09-23
\.


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 220
-- Name: Livros _id_livro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Livros _id_livro_seq"', 2, true);


--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 222
-- Name: alunos_id_alunos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alunos_id_alunos_seq', 2, true);


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 223
-- Name: emprestimos_id_emprestimos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.emprestimos_id_emprestimos_seq', 1, true);


--
-- TOC entry 4874 (class 2606 OID 16510)
-- Name: emprestimos emprestimos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimos
    ADD CONSTRAINT emprestimos_pkey PRIMARY KEY (id_emprestimos);


--
-- TOC entry 4872 (class 2606 OID 16499)
-- Name: alunos pk_alunos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT pk_alunos PRIMARY KEY (id_aluno);


--
-- TOC entry 4870 (class 2606 OID 16458)
-- Name: Livros  pk_livros ; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Livros "
    ADD CONSTRAINT "pk_livros " PRIMARY KEY (id_livro);


--
-- TOC entry 4875 (class 2606 OID 16511)
-- Name: emprestimos fk_aluno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimos
    ADD CONSTRAINT fk_aluno FOREIGN KEY (id_aluno) REFERENCES public.alunos(id_aluno) NOT VALID;


--
-- TOC entry 4876 (class 2606 OID 16516)
-- Name: emprestimos fk_livro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimos
    ADD CONSTRAINT fk_livro FOREIGN KEY ("id_livro ") REFERENCES public."Livros "(id_livro) NOT VALID;


-- Completed on 2026-11-06 16:37:31

--
-- PostgreSQL database dump complete
--

\unrestrict Vm5pJwBaAjx0YpuhIoaab9v8WwnMyhc6VvbKElRCdK8QoWTDSy7fjOxNFfyhXus

