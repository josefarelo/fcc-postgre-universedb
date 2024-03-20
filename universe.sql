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
-- Name: biome; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.biome (
    biome_id integer NOT NULL,
    name character varying NOT NULL,
    size integer NOT NULL,
    temperature integer,
    description text,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.biome OWNER TO freecodecamp;

--
-- Name: biome_biome_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.biome_biome_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.biome_biome_id_seq OWNER TO freecodecamp;

--
-- Name: biome_biome_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.biome_biome_id_seq OWNED BY public.biome.biome_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    size integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    description text
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
    name character varying NOT NULL,
    mass numeric NOT NULL,
    temperature integer,
    description text,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    mass numeric NOT NULL,
    temperature integer,
    description text,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    mass integer NOT NULL,
    temperature integer,
    description text,
    galaxy_id integer NOT NULL
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
-- Name: biome biome_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.biome ALTER COLUMN biome_id SET DEFAULT nextval('public.biome_biome_id_seq'::regclass);


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
-- Data for Name: biome; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.biome VALUES (2, 'Tropical Forest', 99999, 30, 'A biome characterized by high biodiversity and warm, humid climate. ', true, true, 1);
INSERT INTO public.biome VALUES (3, 'Desert', 99999, 50, 'An arid biome with low rainfall and high daytime temperatures.', false, false, 2);
INSERT INTO public.biome VALUES (4, 'Tundra', 99999, -10, 'A cold biome with frozen soils and sparse, hardy vegetation. ', true, false, 10);
INSERT INTO public.biome VALUES (5, 'Temperate Forest', 99999, 20, 'A biome with definite seasons and a variety of deciduous trees.', true, true, 11);
INSERT INTO public.biome VALUES (6, 'Grassland', 99999, 20, 'A grassland biome with a large number of grasses and low-lying plants. ', true, true, 4);
INSERT INTO public.biome VALUES (7, 'Ocean', 99999, 20, 'An aquatic biome covering most of the planets surface, with a great diversity of marine life.', true, true, 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 13000, 'Our home galaxy, in which the solar system and Earth are located.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000, 14000, 'The largest spiral galaxy in the Local Group, which is expected to collide with the Milky Way in approximately 4 billion years.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 90000, 12000, 'A spiral galaxy that is part of the Leo Triplet along with M65 and M66.');
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 60000, 13000, 'A giant elliptical galaxy in the constellation Centaurus, known for its intense star-forming activity.');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 50000, 15000, 'Spiral galaxy located in the constellation Virgo, distinguished by its bright, hat-shaped nucleus.');
INSERT INTO public.galaxy VALUES (7, 'Whirlpool', 70000, 14000, 'Barred spiral galaxy known for its distortion caused by gravitational interaction with its companion NGC 5195.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 7.35, -23, 'Earths only natural satellite, with a surface covered with craters and seas of solidified lava.', false, false, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 4.80, -171, 'One of Jupiters moons, known for its ice-covered surface and possible subsurface oceans.', true, true, 10);
INSERT INTO public.moon VALUES (3, 'Titan', 1.35, -179, 'Saturns largest moon, with a dense atmosphere and methane and ethane lakes on its surface.', false, false, 11);
INSERT INTO public.moon VALUES (4, 'Phobos', 1.08, -60, 'Mars largest moon, with a surface covered with craters and grooves.', false, false, 2);
INSERT INTO public.moon VALUES (5, 'Deimos', 2.00, -70, 'The second moon of Mars, with a smooth surface and rocky appearance.', false, false, 2);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1.48, -160, 'The largest moon of Jupiter, with a thin atmosphere and a subsurface ocean.', true, true, 10);
INSERT INTO public.moon VALUES (7, 'Andromeda I', 6.20, -213, 'A moon in the Andromeda galaxy, with an arid surface and no atmosphere.', false, false, 4);
INSERT INTO public.moon VALUES (8, 'Andromeda II', 5.90, -201, 'Another moon of the Andromeda galaxy, with craters and rugged mountains.', false, false, 4);
INSERT INTO public.moon VALUES (9, 'Andromeda III', 7.40, -225, 'A third satellite of the Andromeda galaxy, with an eccentric orbit and extreme conditions.', false, false, 4);
INSERT INTO public.moon VALUES (10, 'Andromeda IV', 8.30, -200, 'A moon of the Andromeda galaxy, with a surface covered with craters and valleys.', false, false, 5);
INSERT INTO public.moon VALUES (11, 'Andromeda V', 7.90, -195, 'Another moon of the Andromeda galaxy, with a mountainous terrain and dormant volcanoes.', false, false, 5);
INSERT INTO public.moon VALUES (12, 'Andromeda VI', 6.20, -215, 'A third satellite of the Andromeda galaxy, with a metallic core and a tenuous atmosphere.', false, false, 5);
INSERT INTO public.moon VALUES (13, 'Triangle I-A', 3.80, -195, 'A Triangle I moon, with an ice-covered surface and a rocky core.', false, true, 7);
INSERT INTO public.moon VALUES (14, 'Triangle I-B', 4.50, -210, 'Another moon of Triangle I, with water geysers and geologic activity on its surface.', true, true, 7);
INSERT INTO public.moon VALUES (15, 'Triangle I-C', 3.20, -185, 'A third satellite of Triangle I, with a synchronous orbit and a rocky appearance.', false, false, 7);
INSERT INTO public.moon VALUES (16, 'Triangle II-A', 2.70, -180, 'A moon of Triangle II, with an ice-covered surface and craters.', false, true, 8);
INSERT INTO public.moon VALUES (17, 'Triangulum II-B', 3.40, -195, 'Another moon of Triangulum II, with a thin atmosphere and rivers of solidified lava.', false, false, 8);
INSERT INTO public.moon VALUES (18, 'Triangulum II-C', 2.10, -175, 'A third satellite of Triangulum II, with a desert landscape and sand dunes.', false, false, 8);
INSERT INTO public.moon VALUES (19, 'Triángulo I-2', 3.80, -195, 'Una luna hipotética adicional de Triángulo I, con características similares a Triángulo I.', false, true, 1);
INSERT INTO public.moon VALUES (20, 'Triángulo I-3', 3.80, -195, 'Otra luna hipotética adicional de Triángulo I, con características similares a Triángulo I.', false, true, 1);
INSERT INTO public.moon VALUES (21, 'Triángulo I-4', 3.80, -195, 'Una tercera luna hipotética adicional de Triángulo I, con características similares a Triángulo I.', false, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 5.972, 288, 'The third planet in the solar system, the only one known to harbor life.', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 6.417, 218, 'The fourth planet in the solar system, called the red planet because of its characteristic color.', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 4.867, 737, 'The second planet in the solar system, known to be the hottest due to its dense atmosphere and extreme greenhouse effect.', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Andromeda A', 7.500, 297, 'A planet in the Andromeda galaxy, possibly habitable for extraterrestrial life forms.', true, true, 4);
INSERT INTO public.planet VALUES (5, 'Andromeda B', 8.200, 250, 'Another planet in the Andromeda galaxy, with unique geological features.', false, true, 4);
INSERT INTO public.planet VALUES (6, 'Andromeda C', 6.800, 311, 'A third planet in the Andromeda galaxy, with an extremely variable climate.', false, false, 4);
INSERT INTO public.planet VALUES (7, 'Triangle I', 4.200, 265, 'A planet in the Triangulum galaxy, with a rocky landscape and active volcanoes.', false, false, 7);
INSERT INTO public.planet VALUES (8, 'Triangle II', 3.800, 213, 'Another planet in the Triangulum galaxy, with vast oceans and aquatic life.', true, true, 7);
INSERT INTO public.planet VALUES (9, 'Triangulum III', 4.500, 288, 'A third planet in the Triangulum galaxy, with a dense atmosphere and permanent clouds.', false, true, 7);
INSERT INTO public.planet VALUES (10, 'Jupiter', 1.898, 165, 'The fifth planet of the solar system, known to be a gas giant with a large red spot.', false, false, 1);
INSERT INTO public.planet VALUES (11, 'Saturn', 5.683, 134, 'The sixth planet of the solar system, known for its distinctive rings.', false, false, 1);
INSERT INTO public.planet VALUES (12, 'Neptune', 1.024, 72, 'The eighth planet of the solar system, a deep blue gas giant.', false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 2, 5778, 'Our main star and the main source of light and energy in the solar system.', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 9940, 'The brightest star in the night sky as seen from Earth.', 1);
INSERT INTO public.star VALUES (3, 'Vega', 2, 9602, 'One of the brightest stars in the night sky and the fifth brightest star visible from Earth.', 1);
INSERT INTO public.star VALUES (4, 'Andromeda', 5, 11700, 'The central star of the Andromeda galaxy, also known as M31.', 2);
INSERT INTO public.star VALUES (5, 'M31-ULS-2017', 5, 11500, 'An ultraluminous star found in the Andromeda galaxy.', 2);
INSERT INTO public.star VALUES (6, 'M31N 2008-12a', 6, 11600, 'A nova that occurred in the Andromeda galaxy.', 2);
INSERT INTO public.star VALUES (7, 'M33-DEEP2-1426', 7, 11500, 'A star in the Triangulum galaxy.', 3);
INSERT INTO public.star VALUES (8, 'M33-013914', 7, 11450, 'Another star in the Triangulum galaxy.', 3);
INSERT INTO public.star VALUES (9, 'M33-V1', 8, 11600, 'A variable star in the Triangulum galaxy.', 3);
INSERT INTO public.star VALUES (10, 'Centaurus A', 3, 11000, 'The central star of the Centaurus A galaxy, also known as NGC 5128.', 5);
INSERT INTO public.star VALUES (11, 'NGC 5128-DEEP2-0025', 3, 10950, 'A star in the galaxy Centaurus A.', 5);
INSERT INTO public.star VALUES (12, 'NGC 5128-DEEP2-0024', 3, 10980, 'Another star in the galaxy Centaurus A.', 5);


--
-- Name: biome_biome_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.biome_biome_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: biome biome_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.biome
    ADD CONSTRAINT biome_pkey PRIMARY KEY (biome_id);


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
-- Name: biome unique_bioma_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.biome
    ADD CONSTRAINT unique_bioma_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: biome planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.biome
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

