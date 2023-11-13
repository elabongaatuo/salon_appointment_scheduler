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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer,
    service_id integer,
    "time" character varying(40)
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying(15),
    name character varying(40)
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying(40)
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (1, 6, NULL, '');
INSERT INTO public.appointments VALUES (260, 172, 3, '2:30');
INSERT INTO public.appointments VALUES (261, 140, 1, '2:30');
INSERT INTO public.appointments VALUES (14, 17, NULL, '10:30');
INSERT INTO public.appointments VALUES (15, 17, 2, '');
INSERT INTO public.appointments VALUES (16, 18, 3, '10.30');
INSERT INTO public.appointments VALUES (17, 18, 2, '5:30');
INSERT INTO public.appointments VALUES (18, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (19, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (20, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (21, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (22, 20, 1, '555-5555');
INSERT INTO public.appointments VALUES (23, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (24, 21, 2, '6:30');
INSERT INTO public.appointments VALUES (25, 22, 3, '6:35');
INSERT INTO public.appointments VALUES (26, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (27, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (28, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (29, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (30, 20, 1, '555-5555');
INSERT INTO public.appointments VALUES (31, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (32, 23, 2, '4:35');
INSERT INTO public.appointments VALUES (33, 24, 2, '1:30');
INSERT INTO public.appointments VALUES (34, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (35, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (36, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (37, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (38, 20, 1, '555-5555');
INSERT INTO public.appointments VALUES (39, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (40, 24, 3, '3:45');
INSERT INTO public.appointments VALUES (41, 24, 1, '2:30');
INSERT INTO public.appointments VALUES (42, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (43, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (44, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (45, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (46, 20, 1, '555-5555');
INSERT INTO public.appointments VALUES (47, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (48, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (49, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (50, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (51, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (52, 20, 1, '555-5555');
INSERT INTO public.appointments VALUES (53, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (66, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (67, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (68, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (69, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (70, 20, 1, '555-5555');
INSERT INTO public.appointments VALUES (71, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (72, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (73, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (74, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (75, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (76, 20, 1, '555-5555');
INSERT INTO public.appointments VALUES (77, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (78, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (79, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (80, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (81, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (82, 20, 1, '555-5555');
INSERT INTO public.appointments VALUES (83, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (84, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (85, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (86, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (87, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (88, 20, 1, '555-5555');
INSERT INTO public.appointments VALUES (89, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (90, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (91, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (92, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (93, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (94, 20, 1, '555-5555');
INSERT INTO public.appointments VALUES (95, 19, 1, '555-5555');
INSERT INTO public.appointments VALUES (96, 35, 3, '');
INSERT INTO public.appointments VALUES (97, 36, 1, '');
INSERT INTO public.appointments VALUES (98, 36, 1, '');
INSERT INTO public.appointments VALUES (99, 36, 1, '');
INSERT INTO public.appointments VALUES (100, 37, 1, '10:30');
INSERT INTO public.appointments VALUES (101, 36, 1, '10:30');
INSERT INTO public.appointments VALUES (202, 36, 1, '90');
INSERT INTO public.appointments VALUES (220, 140, 1, '3:45');
INSERT INTO public.appointments VALUES (242, 140, 1, '3:45');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (172, '56', 'shule');
INSERT INTO public.customers VALUES (6, '', '');
INSERT INTO public.customers VALUES (17, '555-555-5555', 'Fabio');
INSERT INTO public.customers VALUES (18, '00-000-0000', 'Ela');
INSERT INTO public.customers VALUES (19, 'Test', 'FakeTime');
INSERT INTO public.customers VALUES (20, 'FakeTime', '');
INSERT INTO public.customers VALUES (21, '11-111-1111', 'Monicah');
INSERT INTO public.customers VALUES (22, '44-444-4444', 'Shiru');
INSERT INTO public.customers VALUES (23, '123-3456-788', 'Sheila');
INSERT INTO public.customers VALUES (24, '90-0099-000', 'Enid');
INSERT INTO public.customers VALUES (35, '89-09', 'mik');
INSERT INTO public.customers VALUES (36, '89', 'mik');
INSERT INTO public.customers VALUES (37, '909', 'Tinkle');
INSERT INTO public.customers VALUES (136, '1', '555-5555');
INSERT INTO public.customers VALUES (140, '23', 'Mikaela');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'blowdry');
INSERT INTO public.services VALUES (2, 'wash and set');
INSERT INTO public.services VALUES (3, 'box braids');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 281, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 195, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 3, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments appointments_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments appointments_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

