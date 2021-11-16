--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Data for Name: goods; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.goods (id, name, price) VALUES (1, 'brick', 50);
INSERT INTO public.goods (id, name, price) VALUES (2, 'flower', 100);
INSERT INTO public.goods (id, name, price) VALUES (3, 'bottle', 150);
INSERT INTO public.goods (id, name, price) VALUES (4, 'paper', 200);


--
-- Name: goods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.goods_id_seq', 4, true);


--
-- PostgreSQL database dump complete
--

