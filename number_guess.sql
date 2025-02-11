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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 1000
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (55, 'user_1739289623409', 5, 175);
INSERT INTO public.users VALUES (3, 'user_1739287420832', 2, 174);
INSERT INTO public.users VALUES (14, 'user_1739287880053', 2, NULL);
INSERT INTO public.users VALUES (76, 'user_1739289689701', 2, 106);
INSERT INTO public.users VALUES (13, 'user_1739287880054', 5, NULL);
INSERT INTO public.users VALUES (2, 'user_1739287420833', 5, 47);
INSERT INTO public.users VALUES (43, 'user_1739289303809', 2, NULL);
INSERT INTO public.users VALUES (87, 'user_1739289748359', 5, 257);
INSERT INTO public.users VALUES (30, 'user_1739288824560', 2, 580);
INSERT INTO public.users VALUES (42, 'user_1739289303810', 5, NULL);
INSERT INTO public.users VALUES (16, 'user_1739287912764', 2, NULL);
INSERT INTO public.users VALUES (5, 'user_1739287555851', 2, 691);
INSERT INTO public.users VALUES (29, 'user_1739288824561', 5, 233);
INSERT INTO public.users VALUES (4, 'user_1739287555852', 5, 68);
INSERT INTO public.users VALUES (15, 'user_1739287912765', 5, NULL);
INSERT INTO public.users VALUES (1, 'd', 4, 8);
INSERT INTO public.users VALUES (44, 'G', 1, NULL);
INSERT INTO public.users VALUES (8, 'user_1739287628561', 2, 37);
INSERT INTO public.users VALUES (18, 'user_1739287951915', 2, NULL);
INSERT INTO public.users VALUES (7, 'user_1739287628562', 5, 476);
INSERT INTO public.users VALUES (17, 'user_1739287951916', 5, NULL);
INSERT INTO public.users VALUES (32, 'user_1739288874485', 2, 969);
INSERT INTO public.users VALUES (10, 'user_1739287730484', 2, 717);
INSERT INTO public.users VALUES (20, 'user_1739288140331', 2, NULL);
INSERT INTO public.users VALUES (46, 'user_1739289363964', 2, NULL);
INSERT INTO public.users VALUES (9, 'user_1739287730485', 5, 246);
INSERT INTO public.users VALUES (31, 'user_1739288874486', 5, 238);
INSERT INTO public.users VALUES (19, 'user_1739288140332', 5, NULL);
INSERT INTO public.users VALUES (58, 'user_1739289625055', 2, 468);
INSERT INTO public.users VALUES (12, 'user_1739287751801', 2, 735);
INSERT INTO public.users VALUES (68, 'user_1739289683491', 2, 824);
INSERT INTO public.users VALUES (11, 'user_1739287751802', 5, 358);
INSERT INTO public.users VALUES (22, 'user_1739288180232', 2, NULL);
INSERT INTO public.users VALUES (45, 'user_1739289363965', 5, NULL);
INSERT INTO public.users VALUES (21, 'user_1739288180233', 5, NULL);
INSERT INTO public.users VALUES (75, 'user_1739289689702', 5, 103);
INSERT INTO public.users VALUES (34, 'user_1739288921911', 2, 715);
INSERT INTO public.users VALUES (24, 'user_1739288237377', 2, NULL);
INSERT INTO public.users VALUES (57, 'user_1739289625056', 5, 113);
INSERT INTO public.users VALUES (23, 'user_1739288237378', 5, NULL);
INSERT INTO public.users VALUES (26, 'user_1739288421851', 2, NULL);
INSERT INTO public.users VALUES (33, 'user_1739288921912', 5, 138);
INSERT INTO public.users VALUES (25, 'user_1739288421852', 5, NULL);
INSERT INTO public.users VALUES (48, 'user_1739289554827', 2, 10);
INSERT INTO public.users VALUES (67, 'user_1739289683492', 5, 155);
INSERT INTO public.users VALUES (47, 'user_1739289554828', 5, 154);
INSERT INTO public.users VALUES (28, 'user_1739288750990', 2, 577);
INSERT INTO public.users VALUES (103, 'user_1739289901537', 2, NULL);
INSERT INTO public.users VALUES (36, 'user_1739288932298', 2, 34);
INSERT INTO public.users VALUES (27, 'user_1739288750991', 5, 308);
INSERT INTO public.users VALUES (99, 'user_1739289896467', 2, NULL);
INSERT INTO public.users VALUES (84, 'user_1739289744850', 2, 493);
INSERT INTO public.users VALUES (35, 'user_1739288932299', 5, 411);
INSERT INTO public.users VALUES (60, 'user_1739289626630', 2, 72);
INSERT INTO public.users VALUES (50, 'user_1739289563145', 2, 750);
INSERT INTO public.users VALUES (38, 'user_1739289195107', 2, NULL);
INSERT INTO public.users VALUES (37, 'user_1739289195108', 5, NULL);
INSERT INTO public.users VALUES (94, 'user_1739289753491', 2, 563);
INSERT INTO public.users VALUES (59, 'user_1739289626631', 5, 90);
INSERT INTO public.users VALUES (49, 'user_1739289563146', 5, 228);
INSERT INTO public.users VALUES (40, 'user_1739289245942', 2, NULL);
INSERT INTO public.users VALUES (70, 'user_1739289685106', 2, 762);
INSERT INTO public.users VALUES (39, 'user_1739289245943', 5, NULL);
INSERT INTO public.users VALUES (41, 'g', 1, NULL);
INSERT INTO public.users VALUES (78, 'user_1739289712125', 2, 668);
INSERT INTO public.users VALUES (83, 'user_1739289744851', 5, 197);
INSERT INTO public.users VALUES (52, 'user_1739289619770', 2, 882);
INSERT INTO public.users VALUES (69, 'user_1739289685107', 5, 170);
INSERT INTO public.users VALUES (62, 'user_1739289677572', 2, 716);
INSERT INTO public.users VALUES (51, 'user_1739289619771', 5, 582);
INSERT INTO public.users VALUES (77, 'user_1739289712126', 5, 104);
INSERT INTO public.users VALUES (61, 'user_1739289677573', 5, 611);
INSERT INTO public.users VALUES (54, 'user_1739289621851', 2, 310);
INSERT INTO public.users VALUES (90, 'user_1739289750026', 2, 726);
INSERT INTO public.users VALUES (53, 'user_1739289621852', 5, 7);
INSERT INTO public.users VALUES (72, 'user_1739289686692', 2, 810);
INSERT INTO public.users VALUES (64, 'user_1739289679759', 2, 107);
INSERT INTO public.users VALUES (93, 'user_1739289753492', 5, 80);
INSERT INTO public.users VALUES (71, 'user_1739289686693', 5, 146);
INSERT INTO public.users VALUES (56, 'user_1739289623408', 2, 305);
INSERT INTO public.users VALUES (63, 'user_1739289679760', 5, 58);
INSERT INTO public.users VALUES (80, 'user_1739289740601', 2, 94);
INSERT INTO public.users VALUES (89, 'user_1739289750027', 5, 455);
INSERT INTO public.users VALUES (66, 'user_1739289681620', 2, 7);
INSERT INTO public.users VALUES (74, 'user_1739289688234', 2, 351);
INSERT INTO public.users VALUES (86, 'user_1739289746543', 2, 209);
INSERT INTO public.users VALUES (65, 'user_1739289681621', 5, 152);
INSERT INTO public.users VALUES (79, 'user_1739289740602', 5, 320);
INSERT INTO public.users VALUES (73, 'user_1739289688235', 5, 77);
INSERT INTO public.users VALUES (98, 'user_1739289896468', 5, NULL);
INSERT INTO public.users VALUES (85, 'user_1739289746544', 5, 359);
INSERT INTO public.users VALUES (102, 'user_1739289901538', 5, NULL);
INSERT INTO public.users VALUES (82, 'user_1739289742583', 2, 753);
INSERT INTO public.users VALUES (92, 'user_1739289751759', 2, 883);
INSERT INTO public.users VALUES (81, 'user_1739289742584', 5, 86);
INSERT INTO public.users VALUES (88, 'user_1739289748358', 2, 914);
INSERT INTO public.users VALUES (96, 'user_1739289755343', 2, 546);
INSERT INTO public.users VALUES (101, 'user_1739289899843', 2, NULL);
INSERT INTO public.users VALUES (109, 'user_1739289907637', 2, NULL);
INSERT INTO public.users VALUES (91, 'user_1739289751760', 5, 111);
INSERT INTO public.users VALUES (95, 'user_1739289755344', 5, 152);
INSERT INTO public.users VALUES (97, 'Li', 1, NULL);
INSERT INTO public.users VALUES (100, 'user_1739289899844', 5, NULL);
INSERT INTO public.users VALUES (107, 'user_1739289905044', 2, NULL);
INSERT INTO public.users VALUES (105, 'user_1739289902904', 2, NULL);
INSERT INTO public.users VALUES (114, 'user_1739289912971', 5, NULL);
INSERT INTO public.users VALUES (111, 'user_1739289908993', 2, NULL);
INSERT INTO public.users VALUES (106, 'user_1739289905045', 5, NULL);
INSERT INTO public.users VALUES (104, 'user_1739289902905', 5, NULL);
INSERT INTO public.users VALUES (108, 'user_1739289907638', 5, NULL);
INSERT INTO public.users VALUES (110, 'user_1739289908994', 5, NULL);
INSERT INTO public.users VALUES (113, 'user_1739289911218', 2, NULL);
INSERT INTO public.users VALUES (112, 'user_1739289911219', 5, NULL);
INSERT INTO public.users VALUES (115, 'user_1739289912970', 2, NULL);
INSERT INTO public.users VALUES (116, 'user_1739289938189', 5, NULL);
INSERT INTO public.users VALUES (117, 'user_1739289938188', 2, NULL);
INSERT INTO public.users VALUES (6, 'Luis', 10, 5);
INSERT INTO public.users VALUES (118, 'user_1739289940377', 5, NULL);
INSERT INTO public.users VALUES (119, 'user_1739289940376', 2, NULL);
INSERT INTO public.users VALUES (120, 'user_1739289986043', 5, NULL);
INSERT INTO public.users VALUES (121, 'user_1739289986042', 2, NULL);
INSERT INTO public.users VALUES (122, 'user_1739289998702', 5, NULL);
INSERT INTO public.users VALUES (123, 'user_1739289998701', 2, NULL);
INSERT INTO public.users VALUES (124, 'user_1739290003753', 5, NULL);
INSERT INTO public.users VALUES (125, 'user_1739290003752', 2, NULL);
INSERT INTO public.users VALUES (127, 'user_1739290184562', 2, 171);
INSERT INTO public.users VALUES (126, 'user_1739290184563', 5, 164);
INSERT INTO public.users VALUES (197, 'user_1739290596134', 2, 326);
INSERT INTO public.users VALUES (146, 'user_1739290277454', 5, 73);
INSERT INTO public.users VALUES (176, 'user_1739290484854', 5, 34);
INSERT INTO public.users VALUES (129, 'user_1739290193288', 2, 480);
INSERT INTO public.users VALUES (128, 'user_1739290193289', 5, 24);
INSERT INTO public.users VALUES (165, 'user_1739290462959', 2, 447);
INSERT INTO public.users VALUES (149, 'user_1739290279299', 2, 127);
INSERT INTO public.users VALUES (148, 'user_1739290279300', 5, 375);
INSERT INTO public.users VALUES (131, 'user_1739290221613', 2, 735);
INSERT INTO public.users VALUES (164, 'user_1739290462960', 5, 42);
INSERT INTO public.users VALUES (130, 'user_1739290221614', 5, 297);
INSERT INTO public.users VALUES (151, 'user_1739290364025', 2, NULL);
INSERT INTO public.users VALUES (189, 'user_1739290587450', 2, 42);
INSERT INTO public.users VALUES (150, 'user_1739290364026', 5, NULL);
INSERT INTO public.users VALUES (133, 'user_1739290248387', 2, 375);
INSERT INTO public.users VALUES (132, 'user_1739290248388', 5, 41);
INSERT INTO public.users VALUES (196, 'user_1739290596135', 5, 230);
INSERT INTO public.users VALUES (179, 'user_1739290578471', 2, 234);
INSERT INTO public.users VALUES (153, 'user_1739290391222', 2, 290);
INSERT INTO public.users VALUES (167, 'user_1739290464929', 2, 367);
INSERT INTO public.users VALUES (135, 'user_1739290251277', 2, 597);
INSERT INTO public.users VALUES (178, 'user_1739290578472', 5, 50);
INSERT INTO public.users VALUES (166, 'user_1739290464930', 5, 70);
INSERT INTO public.users VALUES (134, 'user_1739290251278', 5, 150);
INSERT INTO public.users VALUES (152, 'user_1739290391223', 5, 385);
INSERT INTO public.users VALUES (188, 'user_1739290587451', 5, 145);
INSERT INTO public.users VALUES (137, 'user_1739290253452', 2, 198);
INSERT INTO public.users VALUES (155, 'user_1739290393522', 2, 349);
INSERT INTO public.users VALUES (136, 'user_1739290253453', 5, 56);
INSERT INTO public.users VALUES (154, 'user_1739290393523', 5, 173);
INSERT INTO public.users VALUES (169, 'user_1739290466647', 2, 905);
INSERT INTO public.users VALUES (139, 'user_1739290255708', 2, 500);
INSERT INTO public.users VALUES (138, 'user_1739290255709', 5, 5);
INSERT INTO public.users VALUES (168, 'user_1739290466648', 5, 35);
INSERT INTO public.users VALUES (157, 'user_1739290395474', 2, 441);
INSERT INTO public.users VALUES (181, 'user_1739290580304', 2, 525);
INSERT INTO public.users VALUES (141, 'user_1739290259985', 2, 816);
INSERT INTO public.users VALUES (199, 'user_1739290605118', 2, 218);
INSERT INTO public.users VALUES (140, 'user_1739290259986', 5, 39);
INSERT INTO public.users VALUES (156, 'user_1739290395475', 5, 314);
INSERT INTO public.users VALUES (180, 'user_1739290580305', 5, 104);
INSERT INTO public.users VALUES (191, 'user_1739290589319', 2, 886);
INSERT INTO public.users VALUES (143, 'user_1739290261995', 2, 181);
INSERT INTO public.users VALUES (171, 'user_1739290468242', 2, 108);
INSERT INTO public.users VALUES (142, 'user_1739290261996', 5, 270);
INSERT INTO public.users VALUES (159, 'user_1739290444049', 2, 12);
INSERT INTO public.users VALUES (198, 'user_1739290605119', 5, 18);
INSERT INTO public.users VALUES (170, 'user_1739290468243', 5, 89);
INSERT INTO public.users VALUES (158, 'user_1739290444050', 5, 86);
INSERT INTO public.users VALUES (145, 'user_1739290275267', 2, 526);
INSERT INTO public.users VALUES (144, 'user_1739290275268', 5, 345);
INSERT INTO public.users VALUES (190, 'user_1739290589320', 5, 127);
INSERT INTO public.users VALUES (183, 'user_1739290582069', 2, 18);
INSERT INTO public.users VALUES (161, 'user_1739290451244', 2, 171);
INSERT INTO public.users VALUES (147, 'user_1739290277453', 2, 259);
INSERT INTO public.users VALUES (173, 'user_1739290469875', 2, 95);
INSERT INTO public.users VALUES (182, 'user_1739290582070', 5, 20);
INSERT INTO public.users VALUES (160, 'user_1739290451245', 5, 21);
INSERT INTO public.users VALUES (172, 'user_1739290469876', 5, 87);
INSERT INTO public.users VALUES (163, 'user_1739290460733', 2, 75);
INSERT INTO public.users VALUES (162, 'user_1739290460734', 5, 260);
INSERT INTO public.users VALUES (185, 'user_1739290583867', 2, 348);
INSERT INTO public.users VALUES (175, 'user_1739290482762', 2, 258);
INSERT INTO public.users VALUES (193, 'user_1739290591345', 2, 255);
INSERT INTO public.users VALUES (174, 'user_1739290482763', 5, 149);
INSERT INTO public.users VALUES (184, 'user_1739290583868', 5, 14);
INSERT INTO public.users VALUES (192, 'user_1739290591346', 5, 26);
INSERT INTO public.users VALUES (177, 'user_1739290484853', 2, 110);
INSERT INTO public.users VALUES (187, 'user_1739290585441', 2, 869);
INSERT INTO public.users VALUES (186, 'user_1739290585442', 5, 84);
INSERT INTO public.users VALUES (195, 'user_1739290594090', 2, 214);
INSERT INTO public.users VALUES (194, 'user_1739290594091', 5, 327);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 199, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

