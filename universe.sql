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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: aux_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aux_info (
    name character varying(30) NOT NULL,
    aux_info_id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.aux_info OWNER TO freecodecamp;

--
-- Name: aux_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aux_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aux_info_id_seq OWNER TO freecodecamp;

--
-- Name: aux_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aux_info_id_seq OWNED BY public.aux_info.aux_info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric(9,2),
    description text NOT NULL,
    random_stuff integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    mass numeric(9,2),
    color text NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    is_habitable boolean NOT NULL,
    mass numeric(9,2),
    num_moons integer,
    age integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    is_dwarf boolean,
    mass numeric(9,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.start_id_seq OWNER TO freecodecamp;

--
-- Name: start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.start_id_seq OWNED BY public.star.star_id;


--
-- Name: aux_info aux_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux_info ALTER COLUMN aux_info_id SET DEFAULT nextval('public.aux_info_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.start_id_seq'::regclass);


--
-- Data for Name: aux_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aux_info VALUES ('A', 1, 'some text');
INSERT INTO public.aux_info VALUES ('B', 2, 'some text');
INSERT INTO public.aux_info VALUES ('C', 3, 'some text');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('one', 1, NULL, 'first', NULL);
INSERT INTO public.galaxy VALUES ('two', 2, NULL, 'second', NULL);
INSERT INTO public.galaxy VALUES ('three', 3, NULL, 'third', NULL);
INSERT INTO public.galaxy VALUES ('a', 4, NULL, 'b', NULL);
INSERT INTO public.galaxy VALUES ('c', 5, NULL, 'd', NULL);
INSERT INTO public.galaxy VALUES ('e', 6, NULL, 'f', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, 1, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 2, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 3, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 4, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 5, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 6, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 7, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 8, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 9, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 10, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 11, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 12, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 13, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 14, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 15, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 16, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 17, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 18, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 19, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 20, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 21, NULL, 'a', 1);
INSERT INTO public.moon VALUES (NULL, 22, NULL, 'a', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('a', 1, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('b', 2, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('c', 3, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('d', 4, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('e', 5, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('f', 6, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('g', 7, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('h', 8, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('i', 9, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('j', 10, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('k', 11, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('l', 12, true, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('A', 1, NULL, NULL, 1);
INSERT INTO public.star VALUES ('B', 2, NULL, NULL, 1);
INSERT INTO public.star VALUES ('C', 3, NULL, NULL, 1);
INSERT INTO public.star VALUES ('D', 4, NULL, NULL, 1);
INSERT INTO public.star VALUES ('E', 5, NULL, NULL, 1);
INSERT INTO public.star VALUES ('F', 6, NULL, NULL, 1);


--
-- Name: aux_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aux_info_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.start_id_seq', 6, true);


--
-- Name: aux_info aux_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux_info
    ADD CONSTRAINT aux_info_name_key UNIQUE (name);


--
-- Name: aux_info aux_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aux_info
    ADD CONSTRAINT aux_info_pkey PRIMARY KEY (aux_info_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star start_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_name_key UNIQUE (name);


--
-- Name: star start_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

