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
-- Name: around_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.around_galaxy (
    around_galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.around_galaxy OWNER TO freecodecamp;

--
-- Name: around_galaxy_around_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.around_galaxy_around_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.around_galaxy_around_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: around_galaxy_around_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.around_galaxy_around_galaxy_id_seq OWNED BY public.around_galaxy.around_galaxy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_types character varying(50),
    description text,
    age_in_millions_of_years integer
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
    moon_id integer NOT NULL,
    distance_from_earth numeric,
    name character varying(50) NOT NULL,
    planet_id integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_id integer,
    name character varying(50) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: around_galaxy around_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.around_galaxy ALTER COLUMN around_galaxy_id SET DEFAULT nextval('public.around_galaxy_around_galaxy_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: around_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.around_galaxy VALUES (1, 'ax 1', NULL);
INSERT INTO public.around_galaxy VALUES (2, 'ax 2', NULL);
INSERT INTO public.around_galaxy VALUES (3, 'ax 3', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', 'AA', 'Aaaa', 5);
INSERT INTO public.galaxy VALUES (2, 'B', 'BB', 'Bbbb', 7);
INSERT INTO public.galaxy VALUES (3, 'C', 'CC', 'Cccc', 6);
INSERT INTO public.galaxy VALUES (4, 'D', 'DD', 'Dddd', 8);
INSERT INTO public.galaxy VALUES (5, 'E', 'EE', 'Eeee', 4);
INSERT INTO public.galaxy VALUES (6, 'F', 'FF', 'Ffff', 9);
INSERT INTO public.galaxy VALUES (7, 'G', 'GG', 'Gggg', 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1000, 'Moon 1', 1, 'Bulan 1');
INSERT INTO public.moon VALUES (2, 1000, 'Moon 2', 2, 'Bulan 2');
INSERT INTO public.moon VALUES (3, 1000, 'Moon 3', 3, 'Bulan 3');
INSERT INTO public.moon VALUES (4, 1000, 'Moon 4', 4, 'Bulan 4');
INSERT INTO public.moon VALUES (5, 1000, 'Moon 5', 5, 'Bulan 5');
INSERT INTO public.moon VALUES (6, 1000, 'Moon 6', 6, 'Bulan 6');
INSERT INTO public.moon VALUES (8, 1000, 'Moon 8', 8, 'Bulan 8');
INSERT INTO public.moon VALUES (9, 1000, 'Moon 9', 9, 'Bulan 9');
INSERT INTO public.moon VALUES (10, 1000, 'Moon 10', 10, 'Bulan 10');
INSERT INTO public.moon VALUES (11, 1000, 'Moon 11', 11, 'Bulan 11');
INSERT INTO public.moon VALUES (12, 1000, 'Moon 12', 12, 'Bulan 12');
INSERT INTO public.moon VALUES (13, 1000, 'Moon 13', 13, 'Bulan 13');
INSERT INTO public.moon VALUES (14, 1000, 'Moon 1', 1, 'Bulan 1');
INSERT INTO public.moon VALUES (15, 1000, 'Moon 2', 2, 'Bulan 2');
INSERT INTO public.moon VALUES (16, 1000, 'Moon 3', 3, 'Bulan 3');
INSERT INTO public.moon VALUES (17, 1000, 'Moon 4', 4, 'Bulan 4');
INSERT INTO public.moon VALUES (18, 1000, 'Moon 5', 5, 'Bulan 5');
INSERT INTO public.moon VALUES (19, 1000, 'Moon 5', 6, 'Bulan 6');
INSERT INTO public.moon VALUES (20, 1000, 'Moon 8', 8, 'Bulan 8');
INSERT INTO public.moon VALUES (21, 1000, 'Moon 9', 9, 'Bulan 9');
INSERT INTO public.moon VALUES (22, 1000, 'Moon 10', 10, 'Bulan 10');
INSERT INTO public.moon VALUES (23, 1000, 'Moon 11', 11, 'Bulan 11');
INSERT INTO public.moon VALUES (24, 1000, 'Moon 12', 12, 'Bulan 12');
INSERT INTO public.moon VALUES (25, 1000, 'Moon 13', 13, 'Bulan 13');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', true, false, 2);
INSERT INTO public.planet VALUES (3, 'Planet 3', true, false, 3);
INSERT INTO public.planet VALUES (4, 'Planet 4', true, false, 4);
INSERT INTO public.planet VALUES (5, 'Planet 5', true, false, 5);
INSERT INTO public.planet VALUES (6, 'Planet 6', true, false, 6);
INSERT INTO public.planet VALUES (8, 'Planet 7', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Planet 8', false, true, 2);
INSERT INTO public.planet VALUES (10, 'Planet 10', false, true, 3);
INSERT INTO public.planet VALUES (11, 'Planet 11', false, true, 4);
INSERT INTO public.planet VALUES (12, 'Planet 12', false, true, 5);
INSERT INTO public.planet VALUES (13, 'Planet 12', false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star One', 1, 1, 'Star 1');
INSERT INTO public.star VALUES (2, 'Star Dua', 1, 2, 'Star 2');
INSERT INTO public.star VALUES (3, 'Star Tiga', 1, 3, 'Star 3');
INSERT INTO public.star VALUES (4, 'Star Empat', 1, 4, 'Star 4');
INSERT INTO public.star VALUES (5, 'Star Lima', 1, 5, 'Star 5');
INSERT INTO public.star VALUES (6, 'Star Enam', 1, 6, 'Star 6');


--
-- Name: around_galaxy_around_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.around_galaxy_around_galaxy_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: around_galaxy around_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.around_galaxy
    ADD CONSTRAINT around_galaxy_id UNIQUE (around_galaxy_id);


--
-- Name: around_galaxy around_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.around_galaxy
    ADD CONSTRAINT around_galaxy_pkey PRIMARY KEY (around_galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: star unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_id UNIQUE (star_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

