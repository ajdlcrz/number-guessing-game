--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    user_id integer,
    number_of_guesses integer,
    secret_number integer
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_user_id_seq OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.username_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 864, 863);
INSERT INTO public.games VALUES (2, 1, 510, 509);
INSERT INTO public.games VALUES (3, 2, 242, 241);
INSERT INTO public.games VALUES (4, 2, 674, 673);
INSERT INTO public.games VALUES (5, 1, 302, 299);
INSERT INTO public.games VALUES (6, 1, 127, 125);
INSERT INTO public.games VALUES (7, 1, 122, 121);
INSERT INTO public.games VALUES (8, 3, 697, 696);
INSERT INTO public.games VALUES (9, 3, 111, 110);
INSERT INTO public.games VALUES (10, 4, 917, 916);
INSERT INTO public.games VALUES (11, 4, 778, 777);
INSERT INTO public.games VALUES (12, 3, 816, 813);
INSERT INTO public.games VALUES (13, 3, 612, 610);
INSERT INTO public.games VALUES (14, 3, 994, 993);
INSERT INTO public.games VALUES (15, 5, 942, 941);
INSERT INTO public.games VALUES (16, 5, 558, 557);
INSERT INTO public.games VALUES (17, 6, 406, 405);
INSERT INTO public.games VALUES (18, 6, 720, 719);
INSERT INTO public.games VALUES (19, 5, 531, 528);
INSERT INTO public.games VALUES (20, 5, 346, 344);
INSERT INTO public.games VALUES (21, 5, 736, 735);
INSERT INTO public.games VALUES (22, 7, 115, 114);
INSERT INTO public.games VALUES (23, 7, 851, 850);
INSERT INTO public.games VALUES (24, 8, 993, 992);
INSERT INTO public.games VALUES (25, 8, 726, 725);
INSERT INTO public.games VALUES (26, 7, 53, 50);
INSERT INTO public.games VALUES (27, 7, 436, 434);
INSERT INTO public.games VALUES (28, 7, 754, 753);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1716535628523');
INSERT INTO public.players VALUES (2, 'user_1716535628522');
INSERT INTO public.players VALUES (3, 'user_1716535662642');
INSERT INTO public.players VALUES (4, 'user_1716535662641');
INSERT INTO public.players VALUES (5, 'user_1716535726707');
INSERT INTO public.players VALUES (6, 'user_1716535726706');
INSERT INTO public.players VALUES (7, 'user_1716535777303');
INSERT INTO public.players VALUES (8, 'user_1716535777302');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 8, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT username_pkey PRIMARY KEY (user_id);


--
-- Name: players username_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT username_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

