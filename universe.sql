--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    galaxy_width numeric(10,5),
    description text NOT NULL
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
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    moon_radius numeric(10,5),
    description text NOT NULL,
    is_spherical boolean,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_radius numeric(10,5),
    description text NOT NULL,
    is_spherical boolean,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    description text NOT NULL,
    solar_system_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_galaxy_id_seq OWNED BY public.solar_system.galaxy_id;


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    star_width numeric(10,5),
    description text NOT NULL,
    solar_system_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: star_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_solar_system_id_seq OWNED BY public.star.solar_system_id;


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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: solar_system galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN galaxy_id SET DEFAULT nextval('public.solar_system_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN solar_system_id SET DEFAULT nextval('public.star_solar_system_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 25000, 1000.00000, 'A barred spiral galaxy.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 22000, 23000, 900.00000, 'A spiral galaxy in the local group.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 30000, 18000, 600.00000, 'A small spiral galaxy.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 40000, 35000, 800.00000, 'A grand-design spiral galaxy.');
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 14000, 16000, 7500.00000, 'An elliptical galaxy with a prominent dust lane.');
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 60000, 55000, 9500.00000, 'A giant elliptical galaxy in the Virgo Cluster.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, 384, 1737.00000, 'Earth''s natural satellite.', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 9377, 11.00000, 'Mars''s larger moon.', true, 10);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 23459, 6.00000, 'Mars''s smaller moon.', true, 10);
INSERT INTO public.moon VALUES (4, 'Io', 4500, 421, 1821.00000, 'One of Jupiter''s volcanic moons.', true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 671, 1561.00000, 'Jupiter''s moon with a subsurface ocean.', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 1070, 2634.00000, 'The largest moon in the solar system.', true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 1882, 2400.00000, 'A heavily cratered moon of Jupiter.', true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, 886, 2576.00000, 'Saturn''s moon with a thick atmosphere.', true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, 238, 252.00000, 'A moon of Saturn with ice geysers.', true, 6);
INSERT INTO public.moon VALUES (10, 'Miranda', 4500, 130, 235.00000, 'A moon of Uranus with a fractured surface.', true, 7);
INSERT INTO public.moon VALUES (11, 'Triton', 4500, 354, 1353.00000, 'Neptune''s largest moon with geysers.', true, 8);
INSERT INTO public.moon VALUES (12, 'Charon', 4500, 19591, 603.00000, 'Pluto''s largest moon.', true, 9);
INSERT INTO public.moon VALUES (13, 'Phobos II', 500, 9380, 10.00000, 'Mars''s small moon.', true, 10);
INSERT INTO public.moon VALUES (14, 'Lysithea', 4500, 11767, 18.00000, 'A small moon of Jupiter.', true, 5);
INSERT INTO public.moon VALUES (15, 'Mimas', 4500, 185539, 198.00000, 'A moon of Saturn with a distinctive crater.', true, 6);
INSERT INTO public.moon VALUES (16, 'Umbriel', 4500, 266, 584.00000, 'A moon of Uranus with a dark surface.', true, 7);
INSERT INTO public.moon VALUES (17, 'Nereid', 4500, 5513670, 170.00000, 'A small moon of Neptune with an eccentric orbit.', true, 8);
INSERT INTO public.moon VALUES (18, 'Hydra', 4500, 39093, 38.00000, 'A small moon of Pluto.', true, 9);
INSERT INTO public.moon VALUES (19, 'Caliban', 4500, 72345, 29.00000, 'An irregular moon of Uranus.', true, 7);
INSERT INTO public.moon VALUES (20, 'Proteus', 4500, 117647, 210.00000, 'A moon of Neptune with a heavily cratered surface.', true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 77, 2439.00000, 'A rocky planet closest to the Sun.', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 38, 6052.00000, 'A rocky planet with a thick atmosphere.', true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 0, 6371.00000, 'Our home planet with diverse life.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4500, 55, 3389.00000, 'A rocky planet with evidence of water.', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4500, 589, 69911.00000, 'A gas giant with a massive storm called the Great Red Spot.', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, 1195, 58232.00000, 'A gas giant known for its stunning ring system.', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500, 2627, 25362.00000, 'An ice giant that rotates on its side.', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, 4298, 24622.00000, 'A blue ice giant with strong winds.', true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 4500, 3673, 1188.00000, 'A dwarf planet with a heart-shaped feature.', true, 1);
INSERT INTO public.planet VALUES (10, 'Mars 2', 500, 62, 3370.00000, 'A potential future colony for humans.', true, 4);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 1000, 490, 6000.00000, 'An exoplanet in the habitable zone of its star.', true, 6);
INSERT INTO public.planet VALUES (12, 'Gliese 581c', 5000, 20, 13000.00000, 'An exoplanet in the habitable zone of its star.', true, 7);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (true, 4500, 26000, 'Our solar system', 1, 1, NULL);
INSERT INTO public.solar_system VALUES (false, 7500, 120000, 'Alpha Centauri system', 2, 1, NULL);
INSERT INTO public.solar_system VALUES (true, 2000, 35000, 'Trappist-1 system', 3, 2, NULL);
INSERT INTO public.solar_system VALUES (false, 6000, 55000, 'Kepler-186 system', 4, 2, NULL);
INSERT INTO public.solar_system VALUES (true, 3000, 98000, 'Gliese 581 system', 5, 3, NULL);
INSERT INTO public.solar_system VALUES (true, 9000, 75000, 'HD 10180 system', 6, 3, NULL);
INSERT INTO public.solar_system VALUES (false, 3500, 24000, 'PSR B1257+12 system', 7, 4, NULL);
INSERT INTO public.solar_system VALUES (true, 5000, 130000, '55 Cancri system', 8, 4, NULL);
INSERT INTO public.solar_system VALUES (true, 4000, 32000, 'GJ 581 system', 9, 5, NULL);
INSERT INTO public.solar_system VALUES (false, 8000, 65000, 'Epsilon Eridani system', 10, 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 93, 100.00000, 'The center of our solar system.', 1, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 6000, 4, 100.00000, 'A red dwarf star in the Alpha Centauri system.', 2, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 6000, 4, 100.00000, 'A Sun-like star in the Alpha Centauri system.', 3, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 6000, 4, 100.00000, 'A Sun-like star in the Alpha Centauri system.', 4, 1);
INSERT INTO public.star VALUES (5, 'TRAPPIST-1', 8000, 40, 100.00000, 'A red dwarf star with multiple exoplanets.', 5, 2);
INSERT INTO public.star VALUES (6, 'Kepler-186', 3500, 500, 100.00000, 'A red dwarf star with five known planets.', 6, 2);
INSERT INTO public.star VALUES (7, 'Gliese 581', 13000, 20, 100.00000, 'A red dwarf star with known exoplanets.', 7, 3);
INSERT INTO public.star VALUES (8, 'HD 10180', 2000, 127, 100.00000, 'A Sun-like star with a high number of planets.', 8, 3);
INSERT INTO public.star VALUES (9, 'PSR B1257+12', 1, 980, 100.00000, 'A pulsar with three known planets.', 9, 4);
INSERT INTO public.star VALUES (10, '55 Cancri', 7000, 40, 100.00000, 'A Sun-like star with five known planets.', 10, 4);
INSERT INTO public.star VALUES (11, 'GJ 581', 8000, 20, 100.00000, 'A red dwarf star with known exoplanets.', 10, 5);
INSERT INTO public.star VALUES (12, 'Epsilon Eridani', 8500, 11, 100.00000, 'A Sun-like star with known exoplanets.', 10, 5);
INSERT INTO public.star VALUES (13, 'Sirius', 240, 9, 100.00000, 'The brightest star in our night sky.', 10, 1);
INSERT INTO public.star VALUES (14, 'Vega', 450, 25, 100.00000, 'A bright star in the Lyra constellation.', 10, 1);
INSERT INTO public.star VALUES (15, 'Betelgeuse', 8500, 640, 100.00000, 'A red supergiant star in Orion.', 10, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: solar_system_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_galaxy_id_seq', 1, false);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_solar_system_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy identification_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT identification_galaxy UNIQUE (galaxy_id);


--
-- Name: moon identification_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT identification_moon UNIQUE (moon_id);


--
-- Name: planet identification_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT identification_planet UNIQUE (planet_id);


--
-- Name: solar_system identification_solar_system; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT identification_solar_system UNIQUE (solar_system_id);


--
-- Name: star identification_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT identification_star UNIQUE (star_id);


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
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: solar_system corresponding_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT corresponding_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star corresponding_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT corresponding_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star corresponding_solar_system; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT corresponding_solar_system FOREIGN KEY (solar_system_id) REFERENCES public.solar_system(solar_system_id);


--
-- Name: moon related_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT related_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet related_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT related_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

