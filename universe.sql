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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    habitable boolean,
    more_information text,
    circumference integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    habitable boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    habitable boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, true, NULL, 2000000, 'dwarf_planet1');
INSERT INTO public.dwarf_planet VALUES (2, true, NULL, 2000000, 'dwarf_planet2');
INSERT INTO public.dwarf_planet VALUES (3, true, NULL, 2000000, 'dwarf_planet3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 12127, 'brun', 10000);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 12127, 'brun', 20000);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 12127, 'purple', 10000);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 76127, 'kind of terrifying', 87622);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 127, 'lowkey', 1000);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 147, 'highkey', 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 120, 'secret', NULL, true, 1);
INSERT INTO public.moon VALUES (2, NULL, 120, 'secret', NULL, true, 1);
INSERT INTO public.moon VALUES (3, NULL, 120, 'secret', NULL, true, 1);
INSERT INTO public.moon VALUES (4, NULL, 120, 'secret', NULL, true, 1);
INSERT INTO public.moon VALUES (5, NULL, 120, 'secret', NULL, true, 3);
INSERT INTO public.moon VALUES (6, NULL, 120, 'secret', NULL, true, 6);
INSERT INTO public.moon VALUES (7, NULL, 120, 'secret', NULL, true, 3);
INSERT INTO public.moon VALUES (8, NULL, 120, 'secret', NULL, true, 3);
INSERT INTO public.moon VALUES (9, NULL, 120, 'secret', NULL, true, 3);
INSERT INTO public.moon VALUES (10, NULL, 120, 'secret', NULL, true, 3);
INSERT INTO public.moon VALUES (11, NULL, 120, 'secret', NULL, true, 2);
INSERT INTO public.moon VALUES (12, NULL, 120, 'secret', NULL, true, 2);
INSERT INTO public.moon VALUES (13, NULL, 120, 'secret', NULL, true, 2);
INSERT INTO public.moon VALUES (14, NULL, 120, 'secret', NULL, true, 2);
INSERT INTO public.moon VALUES (15, NULL, 120, 'secret', NULL, true, 2);
INSERT INTO public.moon VALUES (16, NULL, 120, 'secret', NULL, true, 2);
INSERT INTO public.moon VALUES (17, NULL, 120, 'secret', NULL, true, 2);
INSERT INTO public.moon VALUES (18, NULL, 120, 'secret', NULL, true, 2);
INSERT INTO public.moon VALUES (19, NULL, 120, 'secret', NULL, true, 2);
INSERT INTO public.moon VALUES (20, NULL, 120, 'secret', NULL, false, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 200, 'unknown', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, NULL, 200, 'unknown', NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, NULL, 200, 'unknown', NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, NULL, 200, 'unknown', NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, NULL, 200, 'unknown', NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, NULL, 200, 'unknown', NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, NULL, 200, 'unknown', NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, NULL, 200, 'unknown', NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, NULL, 200, 'unknown', NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, NULL, 200, 'unknown', NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, NULL, 200, 'unknown', NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, NULL, 200, 'unknown', NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 12, 'mjau', 800, 1);
INSERT INTO public.star VALUES (2, 'star2', 12, 'mjau', 800, 2);
INSERT INTO public.star VALUES (3, 'star3', 12, 'mjau', 800, 3);
INSERT INTO public.star VALUES (4, 'star4', 12, 'mjau', 800, 4);
INSERT INTO public.star VALUES (5, 'star5', 12, 'mjau', 800, 5);
INSERT INTO public.star VALUES (6, 'star6', 12, 'mjau', 800, 6);


--
-- Name: dwarf_planet dwarf_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_name_key UNIQUE (name);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


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

