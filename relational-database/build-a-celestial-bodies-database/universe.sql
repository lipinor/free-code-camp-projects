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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    radius integer,
    mass numeric,
    is_rotating boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    is_active boolean,
    has_spiral_structure boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    radius integer,
    mass numeric,
    is_rotating boolean
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
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    radius integer,
    mass numeric,
    has_atmosphere boolean
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
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    radius integer,
    mass numeric,
    is_active boolean
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Moon', 4500, 1737, 0.073431, true);
INSERT INTO public.asteroid VALUES (2, 'Phobos', 4500, 1737, 0.073431, true);
INSERT INTO public.asteroid VALUES (3, 'Deimos', 4500, 1737, 0.073431, true);
INSERT INTO public.asteroid VALUES (4, 'Europa', 4500, 1737, 0.073431, true);
INSERT INTO public.asteroid VALUES (5, 'Callisto', 4500, 1737, 0.073431, true);
INSERT INTO public.asteroid VALUES (6, 'Ganymede', 4500, 1737, 0.073431, true);
INSERT INTO public.asteroid VALUES (7, 'Amalthea', 4500, 1737, 0.073431, true);
INSERT INTO public.asteroid VALUES (8, 'Io', 4500, 1737, 0.073431, true);
INSERT INTO public.asteroid VALUES (9, 'Titan', 3500, 1754, 0.2431, true);
INSERT INTO public.asteroid VALUES (10, 'Enceladus', 3500, 1754, 0.2431, true);
INSERT INTO public.asteroid VALUES (11, 'Mimas', 3500, 1754, 0.2431, true);
INSERT INTO public.asteroid VALUES (12, 'Dione', 3500, 1754, 0.2431, true);
INSERT INTO public.asteroid VALUES (13, 'Iapetus', 3500, 1754, 0.2431, true);
INSERT INTO public.asteroid VALUES (14, 'Tethys', 3500, 1754, 0.2431, true);
INSERT INTO public.asteroid VALUES (15, 'Hyperion', 3500, 1754, 0.2431, true);
INSERT INTO public.asteroid VALUES (16, 'Miranda', 2500, 1354, 0.2431, true);
INSERT INTO public.asteroid VALUES (17, 'Ariel', 2500, 1354, 0.2431, true);
INSERT INTO public.asteroid VALUES (18, 'Umbriel', 2500, 1354, 0.2431, true);
INSERT INTO public.asteroid VALUES (19, 'Naiad', 2500, 1354, 0.2431, true);
INSERT INTO public.asteroid VALUES (20, 'Thalassa', 2500, 1354, 0.2431, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13000, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy to Milky Way', 12000, true, true);
INSERT INTO public.galaxy VALUES (3, 'Antennae', 'Appearance is similar to an insects antennae.', 400, true, true);
INSERT INTO public.galaxy VALUES (4, 'Milky Way Dummy', 'Our home galaxy dummy', 13000, true, true);
INSERT INTO public.galaxy VALUES (5, 'Andromeda Dummy', 'Nearest major galaxy to Milky Way dummy', 12000, true, true);
INSERT INTO public.galaxy VALUES (6, 'Antennae Dummy', 'Appearance is similar to an insects antennae dummy.', 400, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon', 4500, 1737, 0.073431, true);
INSERT INTO public.moon VALUES (2, 4, 'Phobos', 4500, 1737, 0.073431, true);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', 4500, 1737, 0.073431, true);
INSERT INTO public.moon VALUES (4, 5, 'Europa', 4500, 1737, 0.073431, true);
INSERT INTO public.moon VALUES (5, 5, 'Callisto', 4500, 1737, 0.073431, true);
INSERT INTO public.moon VALUES (6, 5, 'Ganymede', 4500, 1737, 0.073431, true);
INSERT INTO public.moon VALUES (7, 5, 'Amalthea', 4500, 1737, 0.073431, true);
INSERT INTO public.moon VALUES (8, 5, 'Io', 4500, 1737, 0.073431, true);
INSERT INTO public.moon VALUES (9, 6, 'Titan', 3500, 1754, 0.2431, true);
INSERT INTO public.moon VALUES (10, 6, 'Enceladus', 3500, 1754, 0.2431, true);
INSERT INTO public.moon VALUES (11, 6, 'Mimas', 3500, 1754, 0.2431, true);
INSERT INTO public.moon VALUES (12, 6, 'Dione', 3500, 1754, 0.2431, true);
INSERT INTO public.moon VALUES (13, 6, 'Iapetus', 3500, 1754, 0.2431, true);
INSERT INTO public.moon VALUES (14, 6, 'Tethys', 3500, 1754, 0.2431, true);
INSERT INTO public.moon VALUES (15, 6, 'Hyperion', 3500, 1754, 0.2431, true);
INSERT INTO public.moon VALUES (16, 7, 'Miranda', 2500, 1354, 0.2431, true);
INSERT INTO public.moon VALUES (17, 7, 'Ariel', 2500, 1354, 0.2431, true);
INSERT INTO public.moon VALUES (18, 7, 'Umbriel', 2500, 1354, 0.2431, true);
INSERT INTO public.moon VALUES (19, 8, 'Naiad', 2500, 1354, 0.2431, true);
INSERT INTO public.moon VALUES (20, 8, 'Thalassa', 2500, 1354, 0.2431, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 4500, 2440, 0.330, false);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 4500, 6052, 4.87, true);
INSERT INTO public.planet VALUES (3, 1, 'Earth', 4500, 6371, 5.97, true);
INSERT INTO public.planet VALUES (4, 1, 'Mars', 4500, 3390, 0.642, false);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 4500, 69911, 1898, true);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 4500, 58232, 568, true);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 4500, 25362, 86.8, true);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 4500, 24622, 102, true);
INSERT INTO public.planet VALUES (9, 2, 'Proxima Centauri b', 8270, 0, 0.123, true);
INSERT INTO public.planet VALUES (10, 3, 'Andromeda', 8270, 0, 0.123, true);
INSERT INTO public.planet VALUES (11, 4, 'Antennae', 8270, 0, 0.123, true);
INSERT INTO public.planet VALUES (12, 5, '51 Pegasi b', 8270, 0, 0.123, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 5778, 696, 0.123, true);
INSERT INTO public.star VALUES (2, 1, 'Proxima Centauri', 8270, 0, 0.123, true);
INSERT INTO public.star VALUES (3, 2, 'Andromeda', 1000, 1989, 0.123, true);
INSERT INTO public.star VALUES (4, 3, 'Antennae', 400, 1989, 0.123, true);
INSERT INTO public.star VALUES (5, 1, '51 Pegasi', 5778, 2, 0.123, true);
INSERT INTO public.star VALUES (6, 1, 'Betelgeuse', 5778, 696, 0.123, true);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

