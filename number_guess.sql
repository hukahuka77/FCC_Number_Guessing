--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL,
    number_of_games integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (4, 'Cersei', 1, 2);
INSERT INTO public.users VALUES (1, 'andrew', 1, 11);
INSERT INTO public.users VALUES (2, 'Tyrion', 1, 11);
INSERT INTO public.users VALUES (21, 'user_1689994075264', 2, 362);
INSERT INTO public.users VALUES (11, 'user_1689993614209', 2, 125);
INSERT INTO public.users VALUES (20, 'user_1689994075265', 5, 111);
INSERT INTO public.users VALUES (10, 'user_1689993614210', 5, 285);
INSERT INTO public.users VALUES (13, 'user_1689993679805', 2, 52);
INSERT INTO public.users VALUES (23, 'user_1689994087065', 2, 160);
INSERT INTO public.users VALUES (3, 'Jon Snow', 0, 10000);
INSERT INTO public.users VALUES (5, 'Jamie', 0, 10000);
INSERT INTO public.users VALUES (12, 'user_1689993679806', 5, 59);
INSERT INTO public.users VALUES (22, 'user_1689994087066', 5, 317);
INSERT INTO public.users VALUES (7, 'user_1689993384077', 2, 3);
INSERT INTO public.users VALUES (6, 'user_1689993384078', 5, 1);
INSERT INTO public.users VALUES (15, 'user_1689993727865', 2, 73);
INSERT INTO public.users VALUES (9, 'user_1689993423650', 2, 3);
INSERT INTO public.users VALUES (14, 'user_1689993727866', 5, 90);
INSERT INTO public.users VALUES (8, 'user_1689993423651', 5, 1);
INSERT INTO public.users VALUES (17, 'user_1689993929312', 2, 96);
INSERT INTO public.users VALUES (16, 'user_1689993929313', 4, 725);
INSERT INTO public.users VALUES (19, 'user_1689994052239', 2, 483);
INSERT INTO public.users VALUES (18, 'user_1689994052241', 5, 260);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 23, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL,
    number_of_games integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (4, 'Cersei', 1, 2);
INSERT INTO public.users VALUES (1, 'andrew', 1, 11);
INSERT INTO public.users VALUES (2, 'Tyrion', 1, 11);
INSERT INTO public.users VALUES (21, 'user_1689994075264', 2, 362);
INSERT INTO public.users VALUES (11, 'user_1689993614209', 2, 125);
INSERT INTO public.users VALUES (20, 'user_1689994075265', 5, 111);
INSERT INTO public.users VALUES (10, 'user_1689993614210', 5, 285);
INSERT INTO public.users VALUES (13, 'user_1689993679805', 2, 52);
INSERT INTO public.users VALUES (23, 'user_1689994087065', 2, 160);
INSERT INTO public.users VALUES (3, 'Jon Snow', 0, 10000);
INSERT INTO public.users VALUES (5, 'Jamie', 0, 10000);
INSERT INTO public.users VALUES (12, 'user_1689993679806', 5, 59);
INSERT INTO public.users VALUES (22, 'user_1689994087066', 5, 317);
INSERT INTO public.users VALUES (7, 'user_1689993384077', 2, 3);
INSERT INTO public.users VALUES (6, 'user_1689993384078', 5, 1);
INSERT INTO public.users VALUES (15, 'user_1689993727865', 2, 73);
INSERT INTO public.users VALUES (9, 'user_1689993423650', 2, 3);
INSERT INTO public.users VALUES (14, 'user_1689993727866', 5, 90);
INSERT INTO public.users VALUES (8, 'user_1689993423651', 5, 1);
INSERT INTO public.users VALUES (17, 'user_1689993929312', 2, 96);
INSERT INTO public.users VALUES (16, 'user_1689993929313', 4, 725);
INSERT INTO public.users VALUES (19, 'user_1689994052239', 2, 483);
INSERT INTO public.users VALUES (18, 'user_1689994052241', 5, 260);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 23, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

