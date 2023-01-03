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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    constellation text,
    diameter_lgt_years integer,
    type text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    diameter numeric(4,2),
    orbital_period integer,
    axial_tilt numeric(3,2),
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    planet_mass numeric(10,2),
    num_of_moons integer NOT NULL,
    has_rings boolean NOT NULL,
    axial_tilt_deg numeric(10,2) NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    mass numeric(3,2),
    system text,
    has_life boolean,
    distance_ly numeric(8,7),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda', 152000, 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 'Saggitarius', 87400, 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'Triangulum', 60000, 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Dorado', 32200, 'Magellanic Spiral Galaxy');
INSERT INTO public.galaxy VALUES (5, 'Wold-Lundmark-Melotte', 'Cetus', 25000, 'Irregular Galaxy');
INSERT INTO public.galaxy VALUES (6, 'IC 10', 'Cassiopeia', 20000, 'Irregular Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.20, 27, 6.68, 3);
INSERT INTO public.moon VALUES (2, 'Io', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (3, 'Europa', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (6, 'Mimas', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (7, 'Enceladus', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (8, 'Tethys', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (9, 'Dione', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (10, 'Rhea', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (11, 'Titan', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (12, 'Iapetus', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (13, 'Miranda', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (14, 'Ariel', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (15, 'Umbriel', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (16, 'Titania', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (17, 'Oberon', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (18, 'Triton', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (19, 'Charon', 0.20, 27, 6.68, 5);
INSERT INTO public.moon VALUES (20, 'Dysonomia', 0.20, 27, 6.68, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.06, 0, false, 0.04, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0.81, 0, false, 177.30, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1.00, 1, false, 23.44, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 0.11, 2, false, 25.19, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 317.83, 80, true, 3.13, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 95.16, 83, true, 26.73, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 14.54, 27, true, 97.77, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 17.15, 14, true, 28.32, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 14.54, 27, true, 97.77, 1);
INSERT INTO public.planet VALUES (10, 'Orcus', 17.15, 14, true, 28.32, 1);
INSERT INTO public.planet VALUES (11, 'Pluto', 14.54, 27, true, 97.77, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 17.15, 14, true, 28.32, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1.00, 'Solar System', true, 0.0000158, 2);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 0.12, 'Alpha Centauri', false, 4.2465000, 2);
INSERT INTO public.star VALUES (3, 'Toliman', 0.91, 'Alpha Centauri', false, 4.3441000, 2);
INSERT INTO public.star VALUES (4, 'Rigil Kentaurus', 1.08, 'Alpha Centauri', false, 4.3441000, 2);
INSERT INTO public.star VALUES (5, 'Sirius', 2.06, 'Alpha Canis Majoris', false, 8.7094000, 2);
INSERT INTO public.star VALUES (6, 'Procyon', 1.50, 'Alpha Canis Minoris', false, 9.4020000, 2);


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
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

