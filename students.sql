--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (26, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (27, 'Web Programming');
INSERT INTO public.courses VALUES (28, 'Database Systems');
INSERT INTO public.courses VALUES (29, 'Computer Networks');
INSERT INTO public.courses VALUES (30, 'SQL');
INSERT INTO public.courses VALUES (31, 'Machine Learning');
INSERT INTO public.courses VALUES (32, 'Computer Systems');
INSERT INTO public.courses VALUES (33, 'Web Applications');
INSERT INTO public.courses VALUES (34, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (35, 'Python');
INSERT INTO public.courses VALUES (36, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (37, 'Calculus');
INSERT INTO public.courses VALUES (38, 'Game Architecture');
INSERT INTO public.courses VALUES (39, 'Algorithms');
INSERT INTO public.courses VALUES (40, 'UNIX');
INSERT INTO public.courses VALUES (41, 'Server Administration');
INSERT INTO public.courses VALUES (42, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (40, 'Database Administration');
INSERT INTO public.majors VALUES (41, 'Web Development');
INSERT INTO public.majors VALUES (42, 'Data Science');
INSERT INTO public.majors VALUES (43, 'Network Engineering');
INSERT INTO public.majors VALUES (44, 'Computer Programming');
INSERT INTO public.majors VALUES (45, 'Game Design');
INSERT INTO public.majors VALUES (46, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (40, 26);
INSERT INTO public.majors_courses VALUES (41, 27);
INSERT INTO public.majors_courses VALUES (40, 28);
INSERT INTO public.majors_courses VALUES (42, 26);
INSERT INTO public.majors_courses VALUES (43, 29);
INSERT INTO public.majors_courses VALUES (40, 30);
INSERT INTO public.majors_courses VALUES (42, 31);
INSERT INTO public.majors_courses VALUES (43, 32);
INSERT INTO public.majors_courses VALUES (44, 29);
INSERT INTO public.majors_courses VALUES (40, 33);
INSERT INTO public.majors_courses VALUES (45, 34);
INSERT INTO public.majors_courses VALUES (42, 35);
INSERT INTO public.majors_courses VALUES (44, 36);
INSERT INTO public.majors_courses VALUES (46, 32);
INSERT INTO public.majors_courses VALUES (45, 37);
INSERT INTO public.majors_courses VALUES (41, 26);
INSERT INTO public.majors_courses VALUES (42, 37);
INSERT INTO public.majors_courses VALUES (41, 36);
INSERT INTO public.majors_courses VALUES (45, 38);
INSERT INTO public.majors_courses VALUES (46, 29);
INSERT INTO public.majors_courses VALUES (45, 39);
INSERT INTO public.majors_courses VALUES (46, 40);
INSERT INTO public.majors_courses VALUES (46, 41);
INSERT INTO public.majors_courses VALUES (44, 32);
INSERT INTO public.majors_courses VALUES (44, 35);
INSERT INTO public.majors_courses VALUES (43, 42);
INSERT INTO public.majors_courses VALUES (41, 33);
INSERT INTO public.majors_courses VALUES (43, 39);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (6, 'Rhea', 'Kellems', 40, 2.5);
INSERT INTO public.students VALUES (7, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (8, 'Kimberly', 'Whitley', 41, 3.8);
INSERT INTO public.students VALUES (9, 'Jimmy', 'Felipe', 40, 3.7);
INSERT INTO public.students VALUES (10, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (11, 'Casares', 'Hijo', 45, 4.0);
INSERT INTO public.students VALUES (12, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (13, 'Sterling', 'Boss', 45, 3.9);
INSERT INTO public.students VALUES (14, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (15, 'Kaija', 'Uronen', 45, 3.7);
INSERT INTO public.students VALUES (16, 'Faye', 'Conn', 45, 2.1);
INSERT INTO public.students VALUES (17, 'Efren', 'Reilly', 41, 3.9);
INSERT INTO public.students VALUES (18, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (19, 'Maxine', 'Hagenes', 40, 2.9);
INSERT INTO public.students VALUES (20, 'Larry', 'Saunders', 42, 2.2);
INSERT INTO public.students VALUES (21, 'Karl', 'Kuhar', 41, NULL);
INSERT INTO public.students VALUES (22, 'Lieke', 'Hazenveld', 45, 3.5);
INSERT INTO public.students VALUES (23, 'Obie', 'Hilpert', 41, NULL);
INSERT INTO public.students VALUES (24, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (25, 'Nathan', 'Turner', 40, 3.3);
INSERT INTO public.students VALUES (26, 'Gerald', 'Osiki', 42, 2.2);
INSERT INTO public.students VALUES (27, 'Vanya', 'Hassanah', 45, 4.0);
INSERT INTO public.students VALUES (28, 'Roxelana', 'Florescu', 40, 3.2);
INSERT INTO public.students VALUES (29, 'Helene', 'Parker', 42, 3.4);
INSERT INTO public.students VALUES (30, 'Mariana', 'Russel', 41, 1.8);
INSERT INTO public.students VALUES (31, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (32, 'Mehdi', 'Vandenberghe', 40, 1.9);
INSERT INTO public.students VALUES (33, 'Dejon', 'Howell', 41, 4.0);
INSERT INTO public.students VALUES (34, 'Aliya', 'Gulgowski', 46, 2.6);
INSERT INTO public.students VALUES (35, 'Ana', 'Tupajic', 42, 3.1);
INSERT INTO public.students VALUES (36, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 42, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 46, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 36, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

