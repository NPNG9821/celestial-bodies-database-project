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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    distance numeric NOT NULL,
    star_count integer,
    descryption text
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
    name character varying(30) NOT NULL,
    size integer,
    descryption text,
    planet_id integer
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
-- Name: other_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other_bodies (
    other_bodies_id integer NOT NULL,
    type character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    descryption text,
    galaxy_id integer
);


ALTER TABLE public.other_bodies OWNER TO freecodecamp;

--
-- Name: other_bodies_other_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_bodies_other_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_bodies_other_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: other_bodies_other_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_bodies_other_bodies_id_seq OWNED BY public.other_bodies.other_bodies_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    has_moons boolean,
    descryption text,
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
    name character varying(30) NOT NULL,
    size integer,
    distance numeric NOT NULL,
    has_planets boolean,
    descryption text,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: other_bodies other_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies ALTER COLUMN other_bodies_id SET DEFAULT nextval('public.other_bodies_other_bodies_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 0, NULL, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 2.537, NULL, 'Nearest large galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 3.0, NULL, 'Third largest galaxy in the Local Group');
INSERT INTO public.galaxy VALUES (4, 'nepjjsm', NULL, 10000, NULL, ' blue lihjjlllljjjjchfvhhgj a sm..');
INSERT INTO public.galaxy VALUES (5, 'nepjfdsfjsm', NULL, 10000, NULL, ' blue lfvhhgj a sm..');
INSERT INTO public.galaxy VALUES (7, 'nepxgfsjjsm', NULL, 10000, NULL, ' blue lfvhcghfjfhgj a sm..');
INSERT INTO public.galaxy VALUES (8, 'nepxgfsjj', NULL, 10000, NULL, ' blue lfvhgj a sm..');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'nepdemossjj', 10000, ' blue lfvhgj a sm..', 1);
INSERT INTO public.moon VALUES (2, 'nepdemjj', 10000, ' blue vhgj a sm..', 1);
INSERT INTO public.moon VALUES (3, 'nepdemsdfsfsjj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (4, 'nepdemsddfsfsjj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (5, 'nepdemfsjj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (6, 'nemfsjj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (7, 'nemreerrefsjj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (8, 'nemreerrewfergej', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (9, 'nemreerrewferwj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (10, 'nemreerrewfewj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (11, 'nemrwfewj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (12, 'nwfwfewj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (13, 'nwwfewj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (14, 'nwwfewrj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (15, 'nwwfesrj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (16, 'nwwfesrewwwfj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (17, 'nwwfesrewj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (18, 'nwwsrewj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (19, 'nwwswj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (20, 'nwwwrewrwswj', 10000, ' blue vhg a sm..', 1);
INSERT INTO public.moon VALUES (21, 'nwwwreggswj', 10000, ' blue vhg a sm..', 1);


--
-- Data for Name: other_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other_bodies VALUES (1, 'nwqqwztwqggj', 'yuiyghj', NULL, ' blue vhg a sm..', NULL);
INSERT INTO public.other_bodies VALUES (2, 'nwqqwztafggj', 'dduiyghj', NULL, ' blue vhg a sm..', NULL);
INSERT INTO public.other_bodies VALUES (3, 'nwqqwztafggsdvsj', 'ddyghj', NULL, ' blue vhg a sm..', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 324, NULL, 'home sweet home', 1);
INSERT INTO public.planet VALUES (2, 'mars', 1000, NULL, 'new home..', 1);
INSERT INTO public.planet VALUES (3, 'neptue', 10000, NULL, ' blue like a smurf..', 1);
INSERT INTO public.planet VALUES (4, 'neptuem', 10000, NULL, ' blue like a sm..', 1);
INSERT INTO public.planet VALUES (5, 'neptuejsfesm', 10000, NULL, ' blue lihjjjjjjjjjjj a sm..', 1);
INSERT INTO public.planet VALUES (6, 'neptuejsjjjsm', 10000, NULL, ' blue lihjjjjjjlllljjjjj a sm..', 1);
INSERT INTO public.planet VALUES (7, 'neptuejsj;jjsm', 10000, NULL, ' blue lihjjjjjjlllljjjjchfvhhgj a sm..', 1);
INSERT INTO public.planet VALUES (8, 'nwwwreggswj', 10000, NULL, ' blue vhg a sm..', 1);
INSERT INTO public.planet VALUES (9, 'nwwzgeggswj', 10000, NULL, ' blue vhg a sm..', 1);
INSERT INTO public.planet VALUES (10, 'nwwzgeggj', 10000, NULL, ' blue vhg a sm..', 1);
INSERT INTO public.planet VALUES (11, 'nwwzggj', 10000, NULL, ' blue vhg a sm..', 1);
INSERT INTO public.planet VALUES (12, 'nwqqwzggj', 10000, NULL, ' blue vhg a sm..', 1);
INSERT INTO public.planet VALUES (13, 'nwqqwzqqggj', 10000, NULL, ' blue vhg a sm..', 1);
INSERT INTO public.planet VALUES (14, 'nwqqwzwqqggj', 10000, NULL, ' blue vhg a sm..', 1);
INSERT INTO public.planet VALUES (15, 'nwqqwztwqqggj', 10000, NULL, ' blue vhg a sm..', 1);
INSERT INTO public.planet VALUES (16, 'nwqqwztwqggj', 10000, NULL, ' blue vhg a sm..', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', NULL, 1000, NULL, 'our own star', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', NULL, 0.154, NULL, 'Nearest star to the Sun', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', NULL, 887, NULL, 'A red supergiant star in the Orion constellation', 1);
INSERT INTO public.star VALUES (4, 'Beteeuse', NULL, 887, NULL, 'A red supergiant star in the Orion constellon', 1);
INSERT INTO public.star VALUES (6, 'Bete', NULL, 887, NULL, 'A red supergiellon', 1);
INSERT INTO public.star VALUES (5, 'Beteee', NULL, 887, NULL, 'A red supergia constellon', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: other_bodies_other_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_bodies_other_bodies_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: other_bodies other_bodies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies
    ADD CONSTRAINT other_bodies_name_key UNIQUE (name);


--
-- Name: other_bodies other_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies
    ADD CONSTRAINT other_bodies_pkey PRIMARY KEY (other_bodies_id);


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
-- Name: other_bodies other_bodies_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_bodies
    ADD CONSTRAINT other_bodies_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
