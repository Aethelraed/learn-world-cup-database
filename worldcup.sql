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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(50) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (129, 2018, 'Final', 302, 303, 4, 2);
INSERT INTO public.games VALUES (130, 2018, 'Third Place', 304, 305, 2, 0);
INSERT INTO public.games VALUES (131, 2018, 'Semi-Final', 303, 305, 2, 1);
INSERT INTO public.games VALUES (132, 2018, 'Semi-Final', 302, 304, 1, 0);
INSERT INTO public.games VALUES (133, 2018, 'Quarter-Final', 303, 306, 3, 2);
INSERT INTO public.games VALUES (134, 2018, 'Quarter-Final', 305, 307, 2, 0);
INSERT INTO public.games VALUES (135, 2018, 'Quarter-Final', 304, 308, 2, 1);
INSERT INTO public.games VALUES (136, 2018, 'Quarter-Final', 302, 309, 2, 0);
INSERT INTO public.games VALUES (137, 2018, 'Eighth-Final', 305, 310, 2, 1);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 307, 311, 1, 0);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 304, 312, 3, 2);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 308, 313, 2, 0);
INSERT INTO public.games VALUES (141, 2018, 'Eighth-Final', 303, 314, 2, 1);
INSERT INTO public.games VALUES (142, 2018, 'Eighth-Final', 306, 315, 2, 1);
INSERT INTO public.games VALUES (143, 2018, 'Eighth-Final', 309, 316, 2, 1);
INSERT INTO public.games VALUES (144, 2018, 'Eighth-Final', 302, 317, 4, 3);
INSERT INTO public.games VALUES (145, 2014, 'Final', 318, 317, 1, 0);
INSERT INTO public.games VALUES (146, 2014, 'Third Place', 319, 308, 3, 0);
INSERT INTO public.games VALUES (147, 2014, 'Semi-Final', 317, 319, 1, 0);
INSERT INTO public.games VALUES (148, 2014, 'Semi-Final', 318, 308, 7, 1);
INSERT INTO public.games VALUES (149, 2014, 'Quarter-Final', 319, 320, 1, 0);
INSERT INTO public.games VALUES (150, 2014, 'Quarter-Final', 317, 304, 1, 0);
INSERT INTO public.games VALUES (151, 2014, 'Quarter-Final', 308, 310, 2, 1);
INSERT INTO public.games VALUES (152, 2014, 'Quarter-Final', 318, 302, 1, 0);
INSERT INTO public.games VALUES (153, 2014, 'Eighth-Final', 308, 321, 2, 1);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 310, 309, 2, 0);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 302, 322, 2, 0);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 318, 323, 2, 1);
INSERT INTO public.games VALUES (157, 2014, 'Eighth-Final', 319, 313, 2, 1);
INSERT INTO public.games VALUES (158, 2014, 'Eighth-Final', 320, 324, 2, 1);
INSERT INTO public.games VALUES (159, 2014, 'Eighth-Final', 317, 311, 1, 0);
INSERT INTO public.games VALUES (160, 2014, 'Eighth-Final', 304, 325, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 302);
INSERT INTO public.teams VALUES ('Croatia', 303);
INSERT INTO public.teams VALUES ('Belgium', 304);
INSERT INTO public.teams VALUES ('England', 305);
INSERT INTO public.teams VALUES ('Russia', 306);
INSERT INTO public.teams VALUES ('Sweden', 307);
INSERT INTO public.teams VALUES ('Brazil', 308);
INSERT INTO public.teams VALUES ('Uruguay', 309);
INSERT INTO public.teams VALUES ('Colombia', 310);
INSERT INTO public.teams VALUES ('Switzerland', 311);
INSERT INTO public.teams VALUES ('Japan', 312);
INSERT INTO public.teams VALUES ('Mexico', 313);
INSERT INTO public.teams VALUES ('Denmark', 314);
INSERT INTO public.teams VALUES ('Spain', 315);
INSERT INTO public.teams VALUES ('Portugal', 316);
INSERT INTO public.teams VALUES ('Argentina', 317);
INSERT INTO public.teams VALUES ('Germany', 318);
INSERT INTO public.teams VALUES ('Netherlands', 319);
INSERT INTO public.teams VALUES ('Costa Rica', 320);
INSERT INTO public.teams VALUES ('Chile', 321);
INSERT INTO public.teams VALUES ('Nigeria', 322);
INSERT INTO public.teams VALUES ('Algeria', 323);
INSERT INTO public.teams VALUES ('Greece', 324);
INSERT INTO public.teams VALUES ('United States', 325);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 160, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 325, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

