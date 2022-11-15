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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    no_of_guess integer NOT NULL,
    random_num integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 7, 135);
INSERT INTO public.games VALUES (2, 1, 3, 48);
INSERT INTO public.games VALUES (10, 45, 231, 230);
INSERT INTO public.games VALUES (11, 46, 146, 145);
INSERT INTO public.games VALUES (12, 47, 948, 947);
INSERT INTO public.games VALUES (13, 48, 543, 542);
INSERT INTO public.games VALUES (14, 1, 1, 798);
INSERT INTO public.games VALUES (15, 49, 408, 407);
INSERT INTO public.games VALUES (16, 49, 512, 511);
INSERT INTO public.games VALUES (17, 50, 400, 399);
INSERT INTO public.games VALUES (18, 50, 606, 605);
INSERT INTO public.games VALUES (19, 49, 60, 57);
INSERT INTO public.games VALUES (20, 49, 574, 572);
INSERT INTO public.games VALUES (21, 49, 626, 625);
INSERT INTO public.games VALUES (22, 1, 3, 716);
INSERT INTO public.games VALUES (23, 51, 968, 967);
INSERT INTO public.games VALUES (24, 51, 744, 743);
INSERT INTO public.games VALUES (25, 52, 436, 435);
INSERT INTO public.games VALUES (26, 52, 353, 352);
INSERT INTO public.games VALUES (27, 51, 78, 75);
INSERT INTO public.games VALUES (28, 51, 421, 419);
INSERT INTO public.games VALUES (29, 51, 982, 981);
INSERT INTO public.games VALUES (30, 53, 669, 668);
INSERT INTO public.games VALUES (31, 53, 595, 594);
INSERT INTO public.games VALUES (32, 54, 963, 962);
INSERT INTO public.games VALUES (33, 54, 362, 361);
INSERT INTO public.games VALUES (34, 53, 889, 886);
INSERT INTO public.games VALUES (35, 53, 493, 491);
INSERT INTO public.games VALUES (36, 53, 158, 157);
INSERT INTO public.games VALUES (37, 55, 728, 727);
INSERT INTO public.games VALUES (38, 55, 644, 643);
INSERT INTO public.games VALUES (39, 56, 470, 469);
INSERT INTO public.games VALUES (40, 56, 922, 921);
INSERT INTO public.games VALUES (41, 55, 166, 163);
INSERT INTO public.games VALUES (42, 55, 738, 736);
INSERT INTO public.games VALUES (43, 55, 956, 955);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'free');
INSERT INTO public.users VALUES (2, 'code');
INSERT INTO public.users VALUES (45, 'user_1668544654307');
INSERT INTO public.users VALUES (46, 'user_1668544654306');
INSERT INTO public.users VALUES (47, 'user_1668544693036');
INSERT INTO public.users VALUES (48, 'user_1668544693035');
INSERT INTO public.users VALUES (49, 'user_1668544838377');
INSERT INTO public.users VALUES (50, 'user_1668544838376');
INSERT INTO public.users VALUES (51, 'user_1668544868046');
INSERT INTO public.users VALUES (52, 'user_1668544868045');
INSERT INTO public.users VALUES (53, 'user_1668545016757');
INSERT INTO public.users VALUES (54, 'user_1668545016756');
INSERT INTO public.users VALUES (55, 'user_1668545068981');
INSERT INTO public.users VALUES (56, 'user_1668545068980');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 56, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

