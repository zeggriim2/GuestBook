--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.conference (id, city, year, is_international) FROM stdin;
2	Lille	2018	f
1	Lyon	2019	t
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.comment (id, conference_id, author, text, email, created_at, photo_filename) FROM stdin;
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: main
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20210525233911	2021-05-26 19:56:00	62
DoctrineMigrations\\Version20210527104007	2021-05-27 10:40:18	18
\.


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: main
--

SELECT pg_catalog.setval('public.comment_id_seq', 2, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: main
--

SELECT pg_catalog.setval('public.conference_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

