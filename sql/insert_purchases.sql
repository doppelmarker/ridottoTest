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
-- Data for Name: purchases; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.purchases (id, client_id, good_id, created_at) VALUES (1, 1, 1, '2021-11-16 15:11:14');
INSERT INTO public.purchases (id, client_id, good_id, created_at) VALUES (2, 2, 1, '2021-11-16 15:11:20');
INSERT INTO public.purchases (id, client_id, good_id, created_at) VALUES (3, 3, 1, '2021-11-16 15:11:21');
INSERT INTO public.purchases (id, client_id, good_id, created_at) VALUES (5, 1, 2, '2021-11-15 13:15:07');
INSERT INTO public.purchases (id, client_id, good_id, created_at) VALUES (4, 1, 2, '2021-11-15 14:14:50');
INSERT INTO public.purchases (id, client_id, good_id, created_at) VALUES (6, 1, 2, '2021-11-14 17:15:12');
INSERT INTO public.purchases (id, client_id, good_id, created_at) VALUES (7, 3, 3, '2021-11-13 15:15:50');


--
-- Name: purchases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchases_id_seq', 7, true);


--
-- PostgreSQL database dump complete
--

