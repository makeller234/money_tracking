--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

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
-- Name: monies; Type: TABLE; Schema: public; Owner: mak
--

CREATE TABLE public.monies (
    id integer NOT NULL,
    email character varying(30),
    date date NOT NULL,
    amount numeric(6,3) NOT NULL,
    address character varying(30),
    city character varying(30),
    state character varying(3) NOT NULL,
    zip integer,
    locname character varying(50),
    missed boolean,
    money_year integer,
    money_type character varying(15) NOT NULL
);


ALTER TABLE public.monies OWNER TO mak;

--
-- Name: monies_id_seq; Type: SEQUENCE; Schema: public; Owner: mak
--

CREATE SEQUENCE public.monies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monies_id_seq OWNER TO mak;

--
-- Name: monies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mak
--

ALTER SEQUENCE public.monies_id_seq OWNED BY public.monies.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: mak
--

CREATE TABLE public.users (
    email character varying(30) NOT NULL,
    fname character varying(30) NOT NULL,
    lname character varying(30) NOT NULL,
    password character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO mak;

--
-- Name: monies id; Type: DEFAULT; Schema: public; Owner: mak
--

ALTER TABLE ONLY public.monies ALTER COLUMN id SET DEFAULT nextval('public.monies_id_seq'::regclass);


--
-- Data for Name: monies; Type: TABLE DATA; Schema: public; Owner: mak
--

COPY public.monies (id, email, date, amount, address, city, state, zip, locname, missed, money_year, money_type) FROM stdin;
51	tdurden@email.com	2019-01-12	1.000	99-500 Salt Lake Blvd	Honolulu	HI	96818	Aloha Stadium	f	2013	$1
165	tdurden@email.com	2021-09-24	1.000	501 30th Ave SE	Minneapolis 	MN	55414	The Market at Malcolm yards	f	2009	$1
431	tdurden@email.com	2021-06-19	1.000	15277 Barton Ave NW	Monticello	MN	55362	15277 Barton Ave NW	f	2013	$1
37	tdurden@email.com	2021-04-12	0.010	16396 Wagner Way	Eden Prairie	MN	55344	Tavern 4&5	t	\N	penny
42	tdurden@email.com	2020-06-27	0.100	60684 MN-23	Finlayson	MN	55735	Cenex	t	\N	dime
56	tdurden@email.com	2021-07-24	1.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$1
57	tdurden@email.com	2021-07-24	5.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$5
75	tdurden@email.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
76	tdurden@email.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
100	tdurden@email.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	t	\N	penny
689	hisnameis@email.com	2018-06-19	0.250	1 Valley Fair Drive	Shakopee	MN	\N	Valleyfair	f	2018	quarter
690	hisnameis@email.com	2018-07-02	0.050	84 Church Street SE	Minneapolis	MN	55455	Northrop	f	2017	nickel
586	tdurden@email.com	2019-07-21	0.010	\N	saint Paul	MN	\N	Marshall and snelling	t	\N	penny
587	tdurden@email.com	2019-08-11	0.010	\N	saint paul	MN	\N	Marshall and snelling	t	\N	penny
590	tdurden@email.com	2020-06-06	0.250	\N	Saint paul	MN	55102	Marshall Ave and Dale Ave	t	\N	quarter
598	tdurden@email.com	2019-10-07	0.100	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	t	\N	dime
620	tdurden@email.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny
621	tdurden@email.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny
622	tdurden@email.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny
691	hisnameis@email.com	2019-02-01	0.010	734 Grand Avenue	Saint Paul	MN	\N	Walgreens	f	2019	penny
692	hisnameis@email.com	2019-02-01	0.010	734 Grand Avenue	Saint Paul	MN	\N	Walgreens	f	2019	penny
693	hisnameis@email.com	2019-02-01	0.010	734 Grand Avenue	Saint Paul	MN	\N	Walgreens	f	2019	penny
694	hisnameis@email.com	2019-02-01	0.010	734 Grand Avenue	Saint Paul	MN	\N	Walgreens	f	2019	penny
695	hisnameis@email.com	2019-02-01	0.010	734 Grand Avenue	Saint Paul	MN	\N	Walgreens	t	\N	penny
696	hisnameis@email.com	2018-03-04	0.050	3800 42nd Ave S	Minneapolis	MN	\N	Riverview Theatre	f	2018	nickel
257	tdurden@email.com	2019-06-25	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1990	penny
582	tdurden@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny
686	t3@email.com	2020-10-06	0.100	84 Church Street Southeast	Minneapolis	MN	\N	Northrop	f	1988	dime
687	t3@email.com	2020-10-07	0.100	199 W Kellogg Blvd	Saint Paul	MN	\N	Xcel Energy Center	f	1923	dime
77	tdurden@email.com	2019-06-07	20.000	1504 7th St S	Minneapolis	MN	55454	House of Balls	t	\N	$20
80	tdurden@email.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	nickel
81	tdurden@email.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	nickel
90	tdurden@email.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	penny
91	tdurden@email.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	penny
92	tdurden@email.com	2019-05-23	0.010	3425 E Lake St 	Minneapolis	MN	55406	Subway	t	\N	penny
93	tdurden@email.com	2019-10-19	0.010	301 19th Ave S	Minneapolis	MN	55455	Humphrey School	t	\N	penny
94	tdurden@email.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	penny
95	tdurden@email.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	penny
96	tdurden@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
97	tdurden@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
98	tdurden@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
99	tdurden@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
102	tdurden@email.com	2021-02-12	0.250	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	quarter
105	tdurden@email.com	2019-07-21	0.010	\N	Minneapolis	MN	\N	Lake and River Road	t	\N	penny
163	tdurden@email.com	2019-10-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	dime
191	tdurden@email.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	penny
190	tdurden@email.com	2021-04-05	0.050	824 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	t	\N	nickel
434	tdurden@email.com	2020-01-22	0.250	1335 6th Ave	New York	NY	10019	NY Hilton Midtown	f	1972	quarter
192	tdurden@email.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1988	penny
161	tdurden@email.com	2018-05-22	0.100	\N	Minneapolis 	MN	\N	\N	f	\N	dime
677	t3@email.com	2021-11-04	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2020	penny
680	t3@email.com	2021-11-04	0.010	350 Canal Park Dr	Duluth	MN	55802	Inn On Lake Superior	f	2013	penny
678	t3@email.com	2021-11-04	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2014	penny
681	t3@email.com	2021-11-06	0.010	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2021	penny
682	t3@email.com	2021-11-06	0.010	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2006	penny
683	t3@email.com	2021-11-06	0.050	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2014	nickle
671	t3@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2005	penny
675	t3@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2012	penny
669	t3@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2015	penny
670	t3@email.com	2021-11-01	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2020	penny
685	t3@email.com	2021-11-06	0.050	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2016	nickle
684	t3@email.com	2021-11-06	0.250	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2018	quarter
672	t3@email.com	2021-11-02	0.250	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2015	quarter
573	tdurden@email.com	2018-06-03	0.050	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	nickel
387	tdurden@email.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	penny
650	tdurden@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
651	tdurden@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
652	tdurden@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
653	tdurden@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
654	tdurden@email.com	2018-09-02	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny
655	tdurden@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny
660	tdurden@email.com	2020-11-21	0.100	7235 MN-61	Tofte	MN	55615	Holiday	f	1992	dime
388	tdurden@email.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	penny
389	tdurden@email.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	penny
390	tdurden@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
391	tdurden@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
392	tdurden@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
393	tdurden@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
394	tdurden@email.com	2020-07-11	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
395	tdurden@email.com	2021-03-02	0.010	2513 Central Ave NE	Minneapolis 	MN	55418	HolyLand	t	\N	penny
439	tdurden@email.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	dime
440	tdurden@email.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	dime
442	tdurden@email.com	2020-12-28	0.010	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	penny
452	tdurden@email.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshalls	t	\N	penny
484	tdurden@email.com	2019-01-08	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	nickel
557	tdurden@email.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny
558	tdurden@email.com	2019-01-02	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub foods	t	\N	penny
559	tdurden@email.com	2019-01-07	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	penny
560	tdurden@email.com	2019-01-08	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	penny
561	tdurden@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny
562	tdurden@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny
563	tdurden@email.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	t	\N	penny
572	tdurden@email.com	2019-08-11	0.100	\N	saint paul	MN	\N	Marshall and hamline	t	\N	dime
663	tdurden@email.com	2019-05-24	0.010	100 Jefferson Dr 	Zumbrota	MN	55992	Kwik Trip	t	\N	penny
673	tdurden@email.com	2021-10-30	0.250	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2018	quarter
674	tdurden@email.com	2021-10-30	0.050	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2021	nickel
1	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1978	penny
2	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	penny
3	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	penny
4	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1990	penny
5	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1997	penny
6	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1999	penny
7	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2011	penny
8	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2015	penny
9	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny
10	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny
11	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny
12	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny
13	tdurden@email.com	2021-05-30	0.100	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2004	dime
14	tdurden@email.com	2021-05-30	0.010	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2016	penny
15	tdurden@email.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	1992	penny
16	tdurden@email.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	2019	penny
17	tdurden@email.com	2018-06-10	0.010	7835 150th St W	Apple Valley	MN	55124	Walmart	f	\N	penny
18	tdurden@email.com	2019-03-22	0.100	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1990	dime
19	tdurden@email.com	2019-03-22	0.050	60 E Broadway	Bloomington	MN	55425	Mall of America	f	2000	nickel
20	tdurden@email.com	2019-01-06	0.010	324 W Marketplace	Bloomington	MN	55425	Nordstrom's Rack	f	1981	penny
21	tdurden@email.com	2019-03-22	0.010	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1981	penny
22	tdurden@email.com	2019-01-11	0.250	\N	Bloomington	MN	\N	Minneapolis−Saint Paul International Airport	f	2015	quarter
23	tdurden@email.com	2018-07-15	0.010	8089 Brooklyn Blvd	Brooklyn Park	MN	55445	Panda Garden Buffet	f	\N	penny
24	tdurden@email.com	2018-12-02	0.010	15400 Buck Hill Rd	Burnsville	MN	55306	Buck Hill	f	1973	penny
25	tdurden@email.com	2019-07-09	0.010	14050 Burnhaven Dr	Burnsville	MN	55337	Costco	f	1996	penny
26	tdurden@email.com	2021-01-21	0.010	900 Burnsville Pkwy	Burnsville	MN	55337	Holiday	f	2013	penny
27	tdurden@email.com	2019-06-12	0.010	2000 Hwy 13 E	Burnsville	MN	55337	Dollar Tree parking lot	f	2018	penny
28	tdurden@email.com	2019-08-10	0.010	7210 E Point Douglas Rd S	Cottage Grove	MN	55016	TJMaxx	f	1970	penny
29	tdurden@email.com	2018-05-19	0.100	\N	Duluth 	MN	55802	\N	f	\N	dime
30	tdurden@email.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	1975	penny
31	tdurden@email.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	2013	penny
32	tdurden@email.com	2018-05-19	0.010	\N	Duluth 	MN	55802	\N	f	\N	penny
34	tdurden@email.com	2019-06-01	0.010	2000 Cliff Lake Rd	Eagan	MN	55122	Target	f	2017	penny
35	tdurden@email.com	2019-04-01	0.010	1298 Promenade Pl	Eagan	MN	55121	Qdoba	f	2018	penny
36	tdurden@email.com	2019-06-01	0.010	1250 Town Centre Dr	Eagan	MN	55123	Koyoto	f	\N	penny
38	tdurden@email.com	2019-02-16	0.100	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2010	dime
39	tdurden@email.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2005	nickel
40	tdurden@email.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2017	nickel
41	tdurden@email.com	2019-02-16	0.250	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	1999	quarter
43	tdurden@email.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik Trip	f	2014	penny
44	tdurden@email.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik trip	f	2017	penny
45	tdurden@email.com	2021-03-27	0.010	113 E 2nd St E	Hastings	MN	55033	Muse2320	f	2021	penny
46	tdurden@email.com	2019-08-10	0.250	101 2nd St E,	Hastings	MN	55033	Lock and Dam Eatery	f	1974	quarter
47	tdurden@email.com	2019-01-14	0.050	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2014	nickel
48	tdurden@email.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	1982	penny
33	tdurden@email.com	2019-08-16	0.250	350 Harbor Dr	Duluth 	MN	55802	Bayfront Festival Park	f	2015	quarter
49	tdurden@email.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2013	penny
50	tdurden@email.com	2019-01-15	0.010	53-660 Kamehameha Hwy	Hauula	HI	96717	53-660 Kamehameha Hwy	f	2018	penny
52	tdurden@email.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1969	penny
53	tdurden@email.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1971	penny
54	tdurden@email.com	2019-01-16	0.010	2330 Kalakaua Ave	Honolulu	HI	69815	International Marketplace	f	1992	penny
55	tdurden@email.com	2019-01-18	0.010	300 Rodgers Blvd	Honolulu	HI	96819	Airport	f	2012	penny
58	tdurden@email.com	2021-07-24	0.100	Cedar Street	Houston	MN	55943	Hoedown	f	2008	dime
59	tdurden@email.com	2020-09-05	0.010	103 E Cedar St	Houston	MN	55943	Cenex	f	2005	penny
60	tdurden@email.com	2019-07-19	0.100	141 Carmichael Rd	Hudson	WI	54016	Walgreens	f	2015	dime
61	tdurden@email.com	2019-01-15	0.100	108 Hekili St	Kailu	HI	96734	Foodland	f	2007	dime
62	tdurden@email.com	2018-07-29	0.010	9242 Hudson Blvd N	Lake Elmo	MN	55042	Bride to Be Consignment	f	\N	penny
63	tdurden@email.com	2020-11-19	0.010	18275 Kenrick Ave	Lakeville	MN	55044	Target	f	1991	penny
64	tdurden@email.com	2021-05-26	0.010	20710 Keokuk Ave	Lakeville	MN	55044	Walmart	f	2010	penny
65	tdurden@email.com	2019-09-29	0.250	16854 Javelin	Lakeville	MN	55044	16854 Javelin	f	1996	quarter
66	tdurden@email.com	2018-12-20	0.100	5339 MN-61	Lutsen	MN	55612	Lutsen Liquors	f	1996	dime
67	tdurden@email.com	2018-12-20	0.100	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort	f	2011	dime
68	tdurden@email.com	2018-12-22	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1978	penny
69	tdurden@email.com	2018-12-20	0.010	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort parking lot	f	1981	penny
70	tdurden@email.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1990	penny
71	tdurden@email.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1999	penny
72	tdurden@email.com	2020-01-21	0.010	51 W 51st St	Manhattan	NY	10019	Duane reade	f	1980	penny
73	tdurden@email.com	2020-01-21	0.010	\N	Manhattan	NY	10036	Times Square	f	2018	penny
74	tdurden@email.com	2021-06-05	0.010	5050 Independence St	Maple Plain	MN	55359	Veterans Park	f	\N	penny
78	tdurden@email.com	2021-10-15	0.100	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1984	dime
79	tdurden@email.com	2021-06-22	0.100	2513 Central Ave NE	Minneapolis	MN	55418	HolyLand	f	2003	dime
82	tdurden@email.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1968	penny
83	tdurden@email.com	2021-10-26	0.010	3815 E Lake St	Minneapolis	MN	55406	Longfellow Market	f	1971	penny
84	tdurden@email.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	f	1976	penny
85	tdurden@email.com	2018-08-28	0.010	\N	Minneapolis	MN	55414	14th Ave SE	f	1980	penny
86	tdurden@email.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1981	penny
87	tdurden@email.com	2020-09-19	0.010	1931 Minnehaha Ave	Minneapolis	MN	55405	Taco Bell	f	1996	penny
88	tdurden@email.com	2021-10-26	0.010	36th Ave s and 29th st	Minneapolis	MN	55406	\N	f	2003	penny
89	tdurden@email.com	2018-06-15	0.010	84 Church Street SE	Minneapolis	MN	55455	Surdyks at Northrop	f	\N	penny
101	tdurden@email.com	2019-01-24	0.250	\N	Minneapolis	MN	\N	14th Ave SE	f	2018	quarter
103	tdurden@email.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	1998	penny
104	tdurden@email.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	2021	penny
106	tdurden@email.com	2019-09-03	5.000	\N	Minneapolis 	MN	\N	38th and lake st	f	2009	$5
107	tdurden@email.com	2019-05-08	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1970	Canadian penny
108	tdurden@email.com	2021-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	\N	Canadian penny
109	tdurden@email.com	2019-11-04	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1999	dime
110	tdurden@email.com	2019-08-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2015	dime
111	tdurden@email.com	2020-08-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1966	dime
112	tdurden@email.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1972	dime
113	tdurden@email.com	2021-10-02	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1972	dime
114	tdurden@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1974	dime
115	tdurden@email.com	2019-09-23	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1976	dime
116	tdurden@email.com	2019-12-13	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1978	dime
117	tdurden@email.com	2020-03-19	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	1980	dime
118	tdurden@email.com	2018-11-17	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1986	dime
119	tdurden@email.com	2019-06-17	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	dime
178	tdurden@email.com	2021-08-29	0.050	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2000	nickel
120	tdurden@email.com	2019-05-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1994	dime
121	tdurden@email.com	2018-06-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	dime
122	tdurden@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	dime
123	tdurden@email.com	2019-01-29	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1999	dime
124	tdurden@email.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	1999	dime
125	tdurden@email.com	2020-03-16	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	dime
126	tdurden@email.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	dime
127	tdurden@email.com	2019-12-12	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2000	dime
128	tdurden@email.com	2019-10-22	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2001	dime
129	tdurden@email.com	2019-03-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2002	dime
130	tdurden@email.com	2019-09-23	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2002	dime
131	tdurden@email.com	2019-07-15	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2003	dime
132	tdurden@email.com	2020-08-10	0.100	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2003	dime
133	tdurden@email.com	2021-02-13	0.100	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	dime
134	tdurden@email.com	2018-11-12	0.100	\N	Minneapolis 	MN	55455	17th Ave SE	f	2005	dime
135	tdurden@email.com	2019-04-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2005	dime
136	tdurden@email.com	2021-05-25	0.100	110 Penn Ave N	Minneapolis 	MN	55405	Bassett Park	f	2005	dime
137	tdurden@email.com	2018-10-31	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2006	dime
138	tdurden@email.com	2018-12-17	0.100	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	2006	dime
139	tdurden@email.com	2019-02-15	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2006	dime
140	tdurden@email.com	2019-06-25	0.100	2858 26th Ave S	Minneapolis 	MN	55406	Dollar Store Parking Lot	f	2006	dime
141	tdurden@email.com	2019-09-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2006	dime
142	tdurden@email.com	2019-10-19	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2007	dime
143	tdurden@email.com	2018-10-02	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2008	dime
144	tdurden@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2008	dime
145	tdurden@email.com	2019-05-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2008	dime
146	tdurden@email.com	2019-10-25	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2010	dime
147	tdurden@email.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2011	dime
148	tdurden@email.com	2019-05-20	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	dime
149	tdurden@email.com	2019-09-08	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	2012	dime
150	tdurden@email.com	2018-12-31	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2014	dime
151	tdurden@email.com	2020-03-19	0.100	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	2014	dime
152	tdurden@email.com	2019-09-27	0.100	\N	Minneapolis 	MN	\N	14th Ave SE	f	2015	dime
153	tdurden@email.com	2020-03-21	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2015	dime
154	tdurden@email.com	2018-12-06	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	dime
155	tdurden@email.com	2020-03-12	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2016	dime
156	tdurden@email.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2017	dime
157	tdurden@email.com	2019-02-17	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	dime
158	tdurden@email.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2018	dime
159	tdurden@email.com	2021-07-31	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2019	dime
160	tdurden@email.com	2021-09-09	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2021	dime
162	tdurden@email.com	2019-05-05	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	dime
164	tdurden@email.com	2019-11-24	0.100	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	\N	dime
166	tdurden@email.com	2019-10-04	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	dollar coin
167	tdurden@email.com	2019-09-17	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	dollar coin
168	tdurden@email.com	2019-03-15	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2008	dollar coin
169	tdurden@email.com	2019-06-06	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2010	dollar coin
170	tdurden@email.com	2019-05-14	0.005	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	half penny
171	tdurden@email.com	2018-10-30	0.050	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	nickel
172	tdurden@email.com	2021-03-19	0.050	1501 University Ave SE	Minneapolis 	MN	55414	DP Dough	f	1980	nickel
173	tdurden@email.com	2021-06-07	0.050	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1983	nickel
174	tdurden@email.com	2020-03-19	0.050	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	1994	nickel
175	tdurden@email.com	2018-12-10	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	1995	nickel
176	tdurden@email.com	2019-02-14	0.050	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	1999	nickel
177	tdurden@email.com	2019-04-07	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	2000	nickel
179	tdurden@email.com	2018-08-27	0.050	2929 36th Ave S	Minneapolis 	MN	55406	Karl's porch	f	2001	nickel
180	tdurden@email.com	2020-03-14	0.050	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2001	nickel
181	tdurden@email.com	2020-10-01	0.050	\N	Minneapolis 	MN	\N	Washington Ave SE	f	2007	nickel
182	tdurden@email.com	2018-10-31	0.050	2929 36th Ave S	Minneapolis 	MN	55406	2929 26th Ave s	f	2012	nickel
183	tdurden@email.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2015	nickel
184	tdurden@email.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2016	nickel
185	tdurden@email.com	2019-08-05	0.050	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	nickel
186	tdurden@email.com	2021-06-01	0.050	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2020	nickel
187	tdurden@email.com	2021-09-12	0.050	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2021	nickel
188	tdurden@email.com	2018-05-22	0.050	\N	Minneapolis 	MN	\N	\N	f	\N	nickel
189	tdurden@email.com	2018-09-07	0.050	\N	Minneapolis 	MN	55414	17th Ave SE	f	\N	nickel
193	tdurden@email.com	2019-08-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1959	penny
194	tdurden@email.com	2019-07-15	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1960	penny
195	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1961	penny
196	tdurden@email.com	2020-01-07	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1962	penny
197	tdurden@email.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1963	penny
198	tdurden@email.com	2019-07-21	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1964	penny
199	tdurden@email.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	penny
200	tdurden@email.com	2020-05-23	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th St s alley	f	1964	penny
201	tdurden@email.com	2021-05-11	0.010	302 15th Ave SE	Minneapolis 	MN	55414	Raising Canes	f	1964	penny
202	tdurden@email.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1968	penny
203	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1969	penny
204	tdurden@email.com	2019-03-14	0.010	\N	Minneapolis 	MN	\N	Scholars Walk	f	1971	penny
205	tdurden@email.com	2019-10-09	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1971	penny
206	tdurden@email.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1972	penny
207	tdurden@email.com	2019-08-28	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1972	penny
208	tdurden@email.com	2018-11-08	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1973	penny
209	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1973	penny
210	tdurden@email.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop locker room	f	1973	penny
211	tdurden@email.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1974	penny
212	tdurden@email.com	2018-07-31	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	penny
213	tdurden@email.com	2019-01-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	penny
214	tdurden@email.com	2019-07-14	0.010	4400 E Lake St	Minneapolis 	MN	55406	Dairy Queen	f	1975	penny
215	tdurden@email.com	2019-10-20	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1975	penny
216	tdurden@email.com	2018-09-25	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	1976	penny
217	tdurden@email.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1976	penny
218	tdurden@email.com	2021-09-26	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1977	penny
219	tdurden@email.com	2018-08-17	0.010	\N	Minneapolis 	MN	55414	Dinky town	f	1978	penny
220	tdurden@email.com	2020-01-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1978	penny
221	tdurden@email.com	2021-09-10	0.010	231 Pillsbury Dr SE	Minneapolis 	MN	55455	Williamson Hall	f	1978	penny
222	tdurden@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1979	penny
223	tdurden@email.com	2019-09-09	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1979	penny
224	tdurden@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	penny
225	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1980	penny
226	tdurden@email.com	2019-02-22	0.010	275 Market St	Minneapolis 	MN	55405	International Market Square	f	1980	penny
227	tdurden@email.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1980	penny
228	tdurden@email.com	2020-01-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1981	penny
229	tdurden@email.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1981	penny
230	tdurden@email.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1981	penny
231	tdurden@email.com	2021-10-12	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1981	penny
232	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1982	penny
233	tdurden@email.com	2019-01-09	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1982	penny
234	tdurden@email.com	2019-07-30	0.010	14 Church St SE 	Minneapolis 	MN	55455	Nolte Garage	f	1982	penny
235	tdurden@email.com	2019-04-07	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1983	penny
236	tdurden@email.com	2019-12-06	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	penny
237	tdurden@email.com	2020-06-14	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	1983	penny
238	tdurden@email.com	2021-04-04	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	penny
239	tdurden@email.com	2019-02-24	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1984	penny
240	tdurden@email.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	1984	penny
241	tdurden@email.com	2019-04-13	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	penny
242	tdurden@email.com	2019-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	penny
243	tdurden@email.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1985	penny
244	tdurden@email.com	2021-03-14	0.010	\N	Minneapolis 	MN	\N	44th ave s	f	1985	penny
245	tdurden@email.com	2018-11-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1986	penny
246	tdurden@email.com	2019-03-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1986	penny
247	tdurden@email.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	penny
248	tdurden@email.com	2019-10-21	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	penny
249	tdurden@email.com	2021-02-23	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	1986	penny
250	tdurden@email.com	2018-11-25	0.010	\N	Minneapolis 	MN	\N	37th Ave s	f	1987	penny
251	tdurden@email.com	2018-12-31	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1987	penny
252	tdurden@email.com	2021-01-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	1987	penny
253	tdurden@email.com	2019-07-05	0.010	4320 E Lake St 	Minneapolis 	MN	55406	Speedway	f	1988	penny
254	tdurden@email.com	2019-08-24	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1988	penny
255	tdurden@email.com	2021-09-08	0.010	3916 E Lake St	Minneapolis 	MN	55406	East Lake Liquor	f	1988	penny
256	tdurden@email.com	2019-05-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1990	penny
258	tdurden@email.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1990	penny
259	tdurden@email.com	2020-10-22	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	1990	penny
260	tdurden@email.com	2019-03-16	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1991	penny
261	tdurden@email.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	1991	penny
262	tdurden@email.com	2019-10-09	0.010	\N	Minneapolis 	MN	55455	17th Ave SE	f	1991	penny
263	tdurden@email.com	2020-08-20	0.010	\N	Minneapolis 	MN	\N	Washington Ave SE	f	1991	penny
264	tdurden@email.com	2019-02-27	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1992	penny
265	tdurden@email.com	2020-10-24	0.010	3915 E Lake St	Minneapolis 	MN	55406	Ace Hardware	f	1992	penny
266	tdurden@email.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1994	penny
267	tdurden@email.com	2021-07-22	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1994	penny
268	tdurden@email.com	2018-12-01	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1995	penny
269	tdurden@email.com	2019-06-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1995	penny
270	tdurden@email.com	2019-09-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	penny
271	tdurden@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	penny
272	tdurden@email.com	2019-12-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	penny
273	tdurden@email.com	2020-07-18	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1996	penny
274	tdurden@email.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1996	penny
275	tdurden@email.com	2021-03-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	northrop/nolte tunnel	f	1996	penny
276	tdurden@email.com	2019-10-22	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1997	penny
277	tdurden@email.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1997	penny
278	tdurden@email.com	2018-11-19	0.010	\N	Minneapolis 	MN	55414	17th Ave SE	f	1998	penny
279	tdurden@email.com	2019-02-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1998	penny
280	tdurden@email.com	2019-05-08	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1998	penny
281	tdurden@email.com	2019-07-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1998	penny
282	tdurden@email.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	penny
283	tdurden@email.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	penny
284	tdurden@email.com	2019-06-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	penny
285	tdurden@email.com	2019-06-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1999	penny
286	tdurden@email.com	2018-09-04	0.010	\N	Minneapolis 	MN	55455	16th Ave SE	f	2000	penny
287	tdurden@email.com	2018-11-20	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2000	penny
288	tdurden@email.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop box office	f	2000	penny
289	tdurden@email.com	2021-09-03	0.010	5001 S 34th Ave	Minneapolis 	MN	55417	Casa Maria	f	2000	penny
290	tdurden@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	penny
291	tdurden@email.com	2019-01-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	penny
292	tdurden@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	penny
293	tdurden@email.com	2019-04-04	0.010	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	2001	penny
294	tdurden@email.com	2019-09-26	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	penny
472	tdurden@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	dime
295	tdurden@email.com	2019-10-06	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2001	penny
296	tdurden@email.com	2020-04-07	0.010	\N	Minneapolis 	MN	\N	Mississippi River	f	2001	penny
297	tdurden@email.com	2021-01-10	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2001	penny
298	tdurden@email.com	2018-12-10	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2002	penny
299	tdurden@email.com	2019-05-28	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2002	penny
300	tdurden@email.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2004	penny
301	tdurden@email.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2004	penny
302	tdurden@email.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2004	penny
303	tdurden@email.com	2020-03-14	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	penny
304	tdurden@email.com	2019-10-23	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	penny
305	tdurden@email.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	2005	penny
306	tdurden@email.com	2019-12-13	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2006	penny
307	tdurden@email.com	2019-04-06	0.010	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2007	penny
308	tdurden@email.com	2019-04-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2007	penny
309	tdurden@email.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2007	penny
310	tdurden@email.com	2020-12-12	0.010	\N	Minneapolis 	MN	\N	\N	f	2007	penny
311	tdurden@email.com	2018-09-20	0.010	\N	Minneapolis 	MN	55414	14th Ave SE	f	2008	penny
312	tdurden@email.com	2019-09-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2008	penny
313	tdurden@email.com	2018-11-27	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	2010	penny
314	tdurden@email.com	2019-12-05	0.010	400 21st Ave S	Minneapolis 	MN	55455	21st Ave Ramp	f	2011	penny
315	tdurden@email.com	2020-03-21	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2011	penny
316	tdurden@email.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2011	penny
317	tdurden@email.com	2021-02-01	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2011	penny
318	tdurden@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	penny
319	tdurden@email.com	2020-03-25	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2012	penny
320	tdurden@email.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	penny
321	tdurden@email.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2013	penny
322	tdurden@email.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	penny
323	tdurden@email.com	2018-10-03	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2014	penny
324	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2014	penny
325	tdurden@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	2014	penny
326	tdurden@email.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	2014	penny
327	tdurden@email.com	2020-10-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2014	penny
328	tdurden@email.com	2019-05-28	0.010	324 14th Ave SE	Minneapolis 	MN	55414	Qdoba	f	2015	penny
329	tdurden@email.com	2021-06-15	0.010	601 SE Main St	Minneapolis 	MN	55414	Stone Arch Apartments	f	2015	penny
330	tdurden@email.com	2018-09-30	0.010	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	2016	penny
331	tdurden@email.com	2019-02-12	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	penny
332	tdurden@email.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2016	penny
333	tdurden@email.com	2019-04-03	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2016	penny
334	tdurden@email.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2016	penny
335	tdurden@email.com	2018-11-20	0.010	\N	Minneapolis 	MN	\N	University Ave 	f	2017	penny
336	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2017	penny
337	tdurden@email.com	2018-12-26	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	penny
338	tdurden@email.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	penny
339	tdurden@email.com	2019-02-22	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2017	penny
340	tdurden@email.com	2019-03-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2017	penny
341	tdurden@email.com	2019-07-20	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	2017	penny
342	tdurden@email.com	2020-05-06	0.010	\N	Minneapolis 	MN	\N	29th and 36th St s	f	2017	penny
343	tdurden@email.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2017	penny
344	tdurden@email.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	penny
345	tdurden@email.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2018	penny
346	tdurden@email.com	2019-04-15	0.010	417 14th Ave SE	Minneapolis 	MN	55414	Kafe421	f	2018	penny
347	tdurden@email.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	penny
348	tdurden@email.com	2019-06-11	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2019	penny
349	tdurden@email.com	2019-09-04	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2019	penny
350	tdurden@email.com	2019-09-12	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	penny
351	tdurden@email.com	2019-09-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2019	penny
352	tdurden@email.com	2019-12-16	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	penny
353	tdurden@email.com	2021-03-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S	f	2019	penny
354	tdurden@email.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	penny
355	tdurden@email.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2019	penny
356	tdurden@email.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2020	penny
357	tdurden@email.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2020	penny
358	tdurden@email.com	2021-03-10	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	2020	penny
359	tdurden@email.com	2021-05-03	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S alley	f	2020	penny
360	tdurden@email.com	2021-07-08	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2021	penny
361	tdurden@email.com	2021-07-20	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	2021	penny
362	tdurden@email.com	2021-07-27	0.010	326 14th Ave SE	Minneapolis 	MN	55414	Pot Bellys	f	2021	penny
363	tdurden@email.com	2019-04-11	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
364	tdurden@email.com	2018-09-18	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
365	tdurden@email.com	2018-05-29	0.010	\N	Minneapolis 	MN	\N	U Campus	f	\N	penny
366	tdurden@email.com	2018-06-08	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	penny
367	tdurden@email.com	2018-06-15	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
368	tdurden@email.com	2018-07-02	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	penny
369	tdurden@email.com	2018-07-06	0.010	\N	Minneapolis 	MN	55455	Washington Ave SE	f	\N	penny
370	tdurden@email.com	2018-07-27	0.010	1 Twins Way	Minneapolis 	MN	55403	Target Field	f	\N	penny
371	tdurden@email.com	2018-10-23	0.010	309 19th Ave S	Minneapolis 	MN	55455	Wilson library	f	\N	penny
372	tdurden@email.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	penny
373	tdurden@email.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	penny
374	tdurden@email.com	2018-11-16	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	penny
375	tdurden@email.com	2018-11-16	0.010	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	\N	penny
376	tdurden@email.com	2018-12-10	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	penny
377	tdurden@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
378	tdurden@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
379	tdurden@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
380	tdurden@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
381	tdurden@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
382	tdurden@email.com	2019-03-15	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	penny
383	tdurden@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	penny
384	tdurden@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	penny
385	tdurden@email.com	2019-06-08	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	\N	penny
386	tdurden@email.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	\N	penny
396	tdurden@email.com	2021-05-04	0.010	3425 E Lake St	Minneapolis 	MN	55406	Subway	f	\N	penny
397	tdurden@email.com	2021-05-13	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	\N	penny
398	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1968	penny
399	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1975	penny
400	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	penny
401	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	penny
402	tdurden@email.com	2021-08-31	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	penny
403	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2004	penny
404	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	penny
405	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2009	penny
406	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2014	penny
407	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2018	penny
408	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	penny
409	tdurden@email.com	2020-05-17	0.250	\N	Minneapolis 	MN	\N	29th and 32nd St	f	1974	quarter
410	tdurden@email.com	2019-03-15	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	quarter
411	tdurden@email.com	2019-11-08	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	quarter
412	tdurden@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1988	quarter
413	tdurden@email.com	2018-12-08	0.250	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	quarter
414	tdurden@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1995	quarter
415	tdurden@email.com	2019-02-17	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1998	quarter
416	tdurden@email.com	2019-03-22	0.250	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave Alley	f	1998	quarter
417	tdurden@email.com	2019-04-29	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	quarter
418	tdurden@email.com	2019-02-25	0.250	\N	Minneapolis 	MN	\N	University Ave	f	2000	quarter
419	tdurden@email.com	2019-03-02	0.250	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2001	quarter
420	tdurden@email.com	2019-07-30	0.250	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2007	quarter
421	tdurden@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	2008	quarter
422	tdurden@email.com	2020-03-14	0.250	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2008	quarter
423	tdurden@email.com	2021-07-10	0.250	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2009	quarter
424	tdurden@email.com	2020-01-12	0.100	\N	Minneapolis 	MN	\N	E 42nd St	f	1984	dime
425	tdurden@email.com	2019-07-04	0.010	\N	Minneapolis 	MN	\N	Lake Stret	f	1987	penny
426	tdurden@email.com	2020-05-24	0.010	\N	Minneapolis 	MN	\N	rental car	f	2012	penny
427	tdurden@email.com	2018-08-20	0.010	\N	Minneapolis 	MN	55455	Church St	f	2014	penny
428	tdurden@email.com	2018-08-31	0.010	\N	Minneapolis 	MN	55455	Church St	f	2018	penny
429	tdurden@email.com	2020-10-09	0.010	\N	Minneapolis 	MN	\N	Central Ave NE	f	2020	penny
430	tdurden@email.com	2021-09-01	0.010	\N	Minneapolis 	MN	\N	Lake Street	f	2021	penny
432	tdurden@email.com	2021-05-02	0.010	1578 WI-65	New Richland	WI	54017	Casey's	f	1983	penny
433	tdurden@email.com	2020-01-21	0.010	1500 Broadway	New York	NY	10036	AudienceView	f	2006	penny
435	tdurden@email.com	2019-06-13	0.250	16825 County Rd 24	Plymouth	MN	55447	Holiday	f	1999	quarter
436	tdurden@email.com	2020-01-23	0.100	\N	Queens	NY	11371	LaGuardia Airport	f	2019	dime
437	tdurden@email.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	1999	penny
438	tdurden@email.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	2016	penny
441	tdurden@email.com	2021-08-28	0.010	6445 Richfield Pkwy	Richfield	MN	55423	Target	f	2021	penny
443	tdurden@email.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	1976	penny
444	tdurden@email.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	\N	penny
445	tdurden@email.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1967	penny
446	tdurden@email.com	2020-07-24	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1982	penny
447	tdurden@email.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Cub Foods	f	1990	penny
448	tdurden@email.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1995	penny
449	tdurden@email.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	2006	penny
450	tdurden@email.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	2012	penny
451	tdurden@email.com	2020-07-24	0.010	2100 N Snelling Dr	Roseville	MN	55113	Staples	f	2013	penny
453	tdurden@email.com	2021-06-18	0.250	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1981	quarter
454	tdurden@email.com	2019-09-11	0.010	5801 W 16th St	Saint Louis Parl	MN	55416	Costco	f	2001	penny
455	tdurden@email.com	2019-03-16	1.000	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	$1
456	tdurden@email.com	2020-07-17	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1967	dime
457	tdurden@email.com	2018-09-15	0.100	755 Prior Ave N	Saint Paul	MN	55104	Can Can Wonderland	f	1976	dime
458	tdurden@email.com	2019-07-17	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	dime
459	tdurden@email.com	2019-04-10	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1981	dime
460	tdurden@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1984	dime
461	tdurden@email.com	2019-01-20	0.100	1225 Estabrook Dr	Saint Paul	MN	55103	Como conservatory 	f	1987	dime
462	tdurden@email.com	2019-05-20	0.100	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1989	dime
463	tdurden@email.com	2018-08-04	0.100	1300 Midway Pkwy	Saint Paul	MN	55103	Como Mini Golf	f	1990	dime
464	tdurden@email.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1990	dime
465	tdurden@email.com	2019-03-18	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	dime
466	tdurden@email.com	2019-04-01	0.100	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1993	dime
467	tdurden@email.com	2019-06-15	0.100	216 Arundel Street	Saint Paul	MN	55102	216 arundel	f	1998	dime
468	tdurden@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	dime
469	tdurden@email.com	2019-07-01	0.100	211 7th St W	Saint Paul	MN	55102	Bar Louis	f	1999	dime
470	tdurden@email.com	2018-10-26	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	2005	dime
471	tdurden@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	dime
473	tdurden@email.com	2019-06-20	0.100	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	2016	dime
474	tdurden@email.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2018	dime
475	tdurden@email.com	2019-09-01	0.100	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2019	dime
476	tdurden@email.com	2018-10-20	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	dime
477	tdurden@email.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1958	nickel
478	tdurden@email.com	2019-02-05	0.050	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	nickel
479	tdurden@email.com	2019-04-01	0.050	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1997	nickel
480	tdurden@email.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	nickel
481	tdurden@email.com	2019-04-01	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	nickel
482	tdurden@email.com	2019-04-22	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2001	nickel
483	tdurden@email.com	2019-06-14	0.050	275 White Bear Ave	Saint Paul	MN	55106	mgm liquors	f	2018	nickel
485	tdurden@email.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1961	penny
486	tdurden@email.com	2018-08-03	0.010	649 Grand Ave	Saint Paul	MN	55105	650 Alley	f	1968	penny
487	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1969	penny
488	tdurden@email.com	2021-09-06	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1969	penny
489	tdurden@email.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1974	penny
490	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1974	penny
491	tdurden@email.com	2019-06-20	0.010	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	1974	penny
492	tdurden@email.com	2018-08-23	0.010	275 White Bear Ave	Saint Paul	MN	55106	MGM liquor	f	1975	penny
493	tdurden@email.com	2018-12-30	0.010	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1975	penny
494	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1976	penny
495	tdurden@email.com	2019-04-22	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1978	penny
496	tdurden@email.com	2019-05-21	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1981	penny
497	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1982	penny
498	tdurden@email.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	penny
499	tdurden@email.com	2019-07-10	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	penny
500	tdurden@email.com	2020-11-15	0.010	33 County Rd B E	Saint Paul	MN	55117	Joe's sporting goods	f	1983	penny
501	tdurden@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1984	penny
502	tdurden@email.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1987	penny
503	tdurden@email.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1988	penny
504	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Oxford St	f	1988	penny
505	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1989	penny
506	tdurden@email.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1990	penny
507	tdurden@email.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1992	penny
508	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1993	penny
509	tdurden@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1995	penny
510	tdurden@email.com	2019-05-04	0.010	400 Snelling Ave N	Saint Paul	MN	55104	Allianz field	f	1995	penny
511	tdurden@email.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1997	penny
512	tdurden@email.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1997	penny
513	tdurden@email.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1998	penny
514	tdurden@email.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	penny
515	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Milton St	f	2001	penny
516	tdurden@email.com	2021-08-16	0.010	2530 Kasota Ave	Saint Paul	MN	55108	Napa Auto Parts	f	2002	penny
517	tdurden@email.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2005	penny
518	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	penny
519	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	penny
520	tdurden@email.com	2019-08-30	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2005	penny
521	tdurden@email.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2007	penny
522	tdurden@email.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2008	penny
523	tdurden@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2010	penny
524	tdurden@email.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2011	penny
525	tdurden@email.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2012	penny
526	tdurden@email.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2013	penny
527	tdurden@email.com	2019-09-11	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2013	penny
528	tdurden@email.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2015	penny
529	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	penny
530	tdurden@email.com	2018-10-08	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2016	penny
531	tdurden@email.com	2019-10-04	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2016	penny
532	tdurden@email.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	penny
533	tdurden@email.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	penny
534	tdurden@email.com	2019-02-16	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	penny
535	tdurden@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	penny
536	tdurden@email.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	penny
537	tdurden@email.com	2020-03-09	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	penny
538	tdurden@email.com	2020-06-13	0.010	975 Grand Ave	Saint Paul	MN	55105	Jimmy johns	f	2017	penny
539	tdurden@email.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	f	2017	penny
540	tdurden@email.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2018	penny
541	tdurden@email.com	2019-02-14	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	2018	penny
542	tdurden@email.com	2020-02-01	0.010	6 West 6th Street	Saint Paul	MN	55102	Amsterdam bar and grill	f	2019	penny
543	tdurden@email.com	2021-06-30	0.010	498 Selby Ave	Saint Paul	MN	55102	The Gnome	f	2021	penny
544	tdurden@email.com	2018-08-04	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	penny
545	tdurden@email.com	2018-09-08	0.010	649 Grand Ave	Saint Paul	MN	55105	653 Alley	f	\N	penny
546	tdurden@email.com	2018-05-26	0.010	652 Grand Ave	Saint Paul	MN	55105	652 Alley	f	\N	penny
547	tdurden@email.com	2018-05-27	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	penny
548	tdurden@email.com	2018-06-07	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	penny
549	tdurden@email.com	2018-06-15	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Alley	f	\N	penny
550	tdurden@email.com	2018-07-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	penny
551	tdurden@email.com	2018-07-16	0.010	651 Grand Ave	Saint Paul	MN	55105	651 Alley	f	\N	penny
552	tdurden@email.com	2018-08-01	0.010	857 Grand Ave	Saint Paul	MN	55105	Billys	f	\N	penny
553	tdurden@email.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	penny
554	tdurden@email.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	penny
555	tdurden@email.com	2018-10-22	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	penny
556	tdurden@email.com	2018-10-29	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	\N	penny
564	tdurden@email.com	2021-09-25	0.020	2277 Ford Pkwy	Saint Paul	MN	55116	PetCo	f	1964	penny
565	tdurden@email.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	quarter
566	tdurden@email.com	2019-08-28	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1980	quarter
567	tdurden@email.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1991	quarter
568	tdurden@email.com	2019-08-30	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1995	quarter
569	tdurden@email.com	2019-03-16	0.250	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	quarter
570	tdurden@email.com	2019-01-20	0.250	991 Lexington Pkwy N	Saint Paul	MN	55103	Gabes By The Park	f	2015	quarter
571	tdurden@email.com	2018-05-26	0.250	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	quarter
574	tdurden@email.com	2018-11-03	0.010	\N	Saint Paul	MN	55104	Marshall ave	f	1964	penny
575	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1981	penny
576	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1982	penny
577	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1984	penny
578	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1986	penny
579	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	2001	penny
580	tdurden@email.com	2019-07-21	0.010	\N	Saint Paul	MN	\N	Marshall and Fairview	f	2019	penny
581	tdurden@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny
583	tdurden@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny
584	tdurden@email.com	2018-10-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	penny
585	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	\N	penny
588	tdurden@email.com	2021-06-16	0.010	\N	Saint Paul	MN	\N	Frank Ave	f	\N	penny
589	tdurden@email.com	2019-06-02	0.250	\N	Saint Paul	MN	\N	Grand Ave	f	2004	quarter
591	tdurden@email.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1981	dime
592	tdurden@email.com	2019-06-09	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1999	dime
593	tdurden@email.com	2019-11-11	0.100	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2002	dime
594	tdurden@email.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2014	dime
595	tdurden@email.com	2018-05-30	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	dime
596	tdurden@email.com	2018-06-23	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	dime
597	tdurden@email.com	2018-07-19	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	dime
599	tdurden@email.com	2019-01-10	0.050	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	nickel
600	tdurden@email.com	2019-02-02	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1972	penny
601	tdurden@email.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1974	penny
602	tdurden@email.com	2018-07-31	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	penny
603	tdurden@email.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	1978	penny
604	tdurden@email.com	2019-01-10	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1981	penny
605	tdurden@email.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	penny
606	tdurden@email.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	penny
607	tdurden@email.com	2019-06-17	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1996	penny
608	tdurden@email.com	2018-08-07	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2004	penny
609	tdurden@email.com	2019-04-29	0.010	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2015	penny
610	tdurden@email.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2015	penny
611	tdurden@email.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	2017	penny
612	tdurden@email.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	penny
613	tdurden@email.com	2021-09-25	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	penny
614	tdurden@email.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
615	tdurden@email.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
616	tdurden@email.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
617	tdurden@email.com	2018-07-14	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
618	tdurden@email.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
619	tdurden@email.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
623	tdurden@email.com	2019-09-29	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	dime
624	tdurden@email.com	2018-09-15	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1998	dime
625	tdurden@email.com	2019-09-22	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	dime
626	tdurden@email.com	2018-09-02	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2011	dime
627	tdurden@email.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	dime
628	tdurden@email.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2017	dime
629	tdurden@email.com	2021-09-11	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2021	dime
630	tdurden@email.com	2018-06-19	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	dime
631	tdurden@email.com	2018-07-28	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	dime
632	tdurden@email.com	2018-09-23	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	dime
633	tdurden@email.com	2018-09-02	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1987	nickel
634	tdurden@email.com	2018-09-15	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2006	nickel
635	tdurden@email.com	2018-07-28	0.050	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	nickel
636	tdurden@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1961	penny
637	tdurden@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1973	penny
638	tdurden@email.com	2019-09-21	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1976	penny
639	tdurden@email.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1978	penny
640	tdurden@email.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1981	penny
641	tdurden@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	penny
642	tdurden@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1990	penny
643	tdurden@email.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	penny
644	tdurden@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2007	penny
645	tdurden@email.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	penny
646	tdurden@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	penny
647	tdurden@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
648	tdurden@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
649	tdurden@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
656	tdurden@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny
657	tdurden@email.com	2018-08-19	0.030	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1997	penny
658	tdurden@email.com	2018-08-25	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1996	quarter
659	tdurden@email.com	2019-09-29	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	quarter
661	tdurden@email.com	2019-06-21	0.100	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	2001	dime
662	tdurden@email.com	2019-06-21	0.010	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	1995	penny
664	tdurden@email.com	2020-06-27	0.010	\N	\N	MN	\N	\N	f	1979	penny
665	tdurden@email.com	2017-04-01	7.020	\N	\N	MN	\N	\N	f	\N	lump_sum
666	tdurden@email.com	2019-08-22	0.010	\N	\N	MN	\N	\N	f	1982	penny
667	tdurden@email.com	2018-07-22	0.250	\N	\N	MN	\N	\N	f	2008	quarter
668	tdurden@email.com	2018-07-30	0.250	\N	\N	MN	\N	Found by Louisa 	f	\N	quarter
688	tdurden@email.com	2021-11-18	0.010	1960 Twin Lakes Parkway	Roseville	MN	\N	Walmart	f	2021	penny
697	hisnameis@email.com	2021-07-24	1.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$1
698	hisnameis@email.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
699	hisnameis@email.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
700	hisnameis@email.com	2021-07-24	5.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$5
701	hisnameis@email.com	2019-06-07	20.000	1504 7th St S	Minneapolis	MN	55454	House of Balls	t	\N	$20
702	hisnameis@email.com	2019-08-11	0.100	\N	saint paul	MN	\N	Marshall and hamline	t	\N	dime
703	hisnameis@email.com	2019-10-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	dime
704	hisnameis@email.com	2019-10-07	0.100	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	t	\N	dime
705	hisnameis@email.com	2020-06-27	0.100	60684 MN-23	Finlayson	MN	55735	Cenex	t	\N	dime
706	hisnameis@email.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	dime
707	hisnameis@email.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	dime
708	hisnameis@email.com	2019-01-08	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	nickel
709	hisnameis@email.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny
710	hisnameis@email.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny
711	hisnameis@email.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	penny
712	hisnameis@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny
713	hisnameis@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny
714	hisnameis@email.com	2019-05-23	0.010	3425 E Lake St 	Minneapolis	MN	55406	Subway	t	\N	penny
715	hisnameis@email.com	2019-05-24	0.010	100 Jefferson Dr 	Zumbrota	MN	55992	Kwik Trip	t	\N	penny
716	hisnameis@email.com	2019-07-21	0.010	\N	saint Paul	MN	\N	Marshall and snelling	t	\N	penny
717	hisnameis@email.com	2019-07-21	0.010	\N	Minneapolis	MN	\N	Lake and River Road	t	\N	penny
718	hisnameis@email.com	2019-08-11	0.010	\N	saint paul	MN	\N	Marshall and snelling	t	\N	penny
719	hisnameis@email.com	2019-10-19	0.010	301 19th Ave S	Minneapolis	MN	55455	Humphrey School	t	\N	penny
720	hisnameis@email.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	penny
721	hisnameis@email.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	penny
722	hisnameis@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
723	hisnameis@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
724	hisnameis@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
725	hisnameis@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
726	hisnameis@email.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	penny
727	hisnameis@email.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	penny
728	hisnameis@email.com	2020-07-11	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
729	hisnameis@email.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshalls	t	\N	penny
730	hisnameis@email.com	2020-12-28	0.010	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	penny
731	hisnameis@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
732	hisnameis@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
733	hisnameis@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
734	hisnameis@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
735	hisnameis@email.com	2021-03-02	0.010	2513 Central Ave NE	Minneapolis 	MN	55418	HolyLand	t	\N	penny
736	hisnameis@email.com	2021-04-12	0.010	16396 Wagner Way	Eden Prairie	MN	55344	Tavern 4&5	t	\N	penny
737	hisnameis@email.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	t	\N	penny
738	hisnameis@email.com	2020-06-06	0.250	\N	Saint paul	MN	55102	Marshall Ave and Dale Ave	t	\N	quarter
739	hisnameis@email.com	2021-02-12	0.250	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	quarter
740	hisnameis@email.com	2019-03-16	1.000	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	$1
741	hisnameis@email.com	2019-09-03	5.000	\N	Minneapolis 	MN	\N	38th and lake st	f	2009	$5
742	hisnameis@email.com	2019-01-12	1.000	99-500 Salt Lake Blvd	Honolulu	HI	96818	Aloha Stadium	f	2013	bill
743	hisnameis@email.com	2021-06-19	1.000	15277 Barton Ave NW	Monticello	MN	55362	15277 Barton Ave NW	f	2013	bill
744	hisnameis@email.com	2019-05-08	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1970	Canadian penny
745	hisnameis@email.com	2021-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	\N	Canadian penny
746	hisnameis@email.com	2018-05-19	0.100	\N	Duluth 	MN	55802	\N	f	\N	dime
747	hisnameis@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	dime
748	hisnameis@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2008	dime
749	hisnameis@email.com	2018-12-17	0.100	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	2006	dime
750	hisnameis@email.com	2018-12-20	0.100	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort	f	2011	dime
751	hisnameis@email.com	2018-12-20	0.100	5339 MN-61	Lutsen	MN	55612	Lutsen Liquors	f	1996	dime
752	hisnameis@email.com	2018-12-31	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2014	dime
753	hisnameis@email.com	2019-01-15	0.100	108 Hekili St	Kailu	HI	96734	Foodland	f	2007	dime
754	hisnameis@email.com	2019-01-20	0.100	1225 Estabrook Dr	Saint Paul	MN	55103	Como conservatory 	f	1987	dime
755	hisnameis@email.com	2019-01-29	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1999	dime
756	hisnameis@email.com	2019-02-15	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2006	dime
757	hisnameis@email.com	2019-02-16	0.100	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2010	dime
758	hisnameis@email.com	2019-02-17	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	dime
759	hisnameis@email.com	2019-03-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2002	dime
760	hisnameis@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1984	dime
761	hisnameis@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	dime
762	hisnameis@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	dime
763	hisnameis@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	dime
764	hisnameis@email.com	2019-03-18	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	dime
765	hisnameis@email.com	2019-03-22	0.100	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1990	dime
766	hisnameis@email.com	2019-04-01	0.100	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1993	dime
767	hisnameis@email.com	2019-04-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2005	dime
768	hisnameis@email.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	1999	dime
769	hisnameis@email.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2017	dime
770	hisnameis@email.com	2019-04-10	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1981	dime
771	hisnameis@email.com	2019-05-05	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	dime
772	hisnameis@email.com	2019-05-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1994	dime
773	hisnameis@email.com	2019-05-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2008	dime
774	hisnameis@email.com	2019-05-20	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	dime
775	hisnameis@email.com	2019-05-20	0.100	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1989	dime
776	hisnameis@email.com	2019-06-09	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1999	dime
777	hisnameis@email.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1981	dime
778	hisnameis@email.com	2019-08-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2015	dime
779	hisnameis@email.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1990	dime
780	hisnameis@email.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2018	dime
781	hisnameis@email.com	2019-09-01	0.100	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2019	dime
782	hisnameis@email.com	2019-09-22	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	dime
783	hisnameis@email.com	2019-09-23	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2002	dime
784	hisnameis@email.com	2019-09-23	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1976	dime
785	hisnameis@email.com	2019-09-27	0.100	\N	Minneapolis 	MN	\N	14th Ave SE	f	2015	dime
786	hisnameis@email.com	2019-09-29	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	dime
787	hisnameis@email.com	2019-10-19	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2007	dime
788	hisnameis@email.com	2019-10-22	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2001	dime
789	hisnameis@email.com	2019-10-25	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2010	dime
790	hisnameis@email.com	2019-11-04	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1999	dime
791	hisnameis@email.com	2019-11-11	0.100	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2002	dime
792	hisnameis@email.com	2019-11-24	0.100	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	\N	dime
793	hisnameis@email.com	2019-12-12	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2000	dime
794	hisnameis@email.com	2019-12-13	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1978	dime
795	hisnameis@email.com	2020-01-12	0.100	\N	Minneapolis 	MN	\N	E 42nd St	f	1984	dime
796	hisnameis@email.com	2020-01-23	0.100	\N	Queens	NY	11371	LaGuardia Airport	f	2019	dime
797	hisnameis@email.com	2020-03-12	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2016	dime
798	hisnameis@email.com	2020-03-16	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	dime
799	hisnameis@email.com	2020-03-19	0.100	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	2014	dime
800	hisnameis@email.com	2020-03-19	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	1980	dime
801	hisnameis@email.com	2020-03-21	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2015	dime
802	hisnameis@email.com	2020-07-17	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1967	dime
803	hisnameis@email.com	2020-08-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1966	dime
804	hisnameis@email.com	2020-08-10	0.100	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2003	dime
805	hisnameis@email.com	2020-11-21	0.100	7235 MN-61	Tofte	MN	55615	Holiday	f	1992	dime
806	hisnameis@email.com	2021-02-13	0.100	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	dime
807	hisnameis@email.com	2021-05-25	0.100	110 Penn Ave N	Minneapolis 	MN	55405	Bassett Park	f	2005	dime
808	hisnameis@email.com	2021-05-30	0.100	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2004	dime
809	hisnameis@email.com	2021-06-22	0.100	2513 Central Ave NE	Minneapolis	MN	55418	HolyLand	f	2003	dime
810	hisnameis@email.com	2021-07-24	0.100	Cedar Street	Houston	MN	55943	Hoedown	f	2008	dime
811	hisnameis@email.com	2021-07-31	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2019	dime
812	hisnameis@email.com	2021-09-09	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2021	dime
813	hisnameis@email.com	2021-09-11	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2021	dime
814	hisnameis@email.com	2021-10-02	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1972	dime
815	hisnameis@email.com	2021-10-15	0.100	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1984	dime
816	hisnameis@email.com	2021-09-24	1.000	501 30th Ave SE	Minneapolis 	MN	55414	The Market at Malcolm yards	f	2009	dollar
817	hisnameis@email.com	2019-03-15	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2008	dollar coin
818	hisnameis@email.com	2019-06-06	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2010	dollar coin
819	hisnameis@email.com	2019-09-17	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	dollar coin
820	hisnameis@email.com	2019-10-04	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	dollar coin
821	hisnameis@email.com	2019-05-14	0.005	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	half penny
822	hisnameis@email.com	2018-05-22	0.050	\N	Minneapolis 	MN	\N	\N	f	\N	nickel
823	hisnameis@email.com	2018-07-28	0.050	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	nickel
824	hisnameis@email.com	2018-08-27	0.050	2929 36th Ave S	Minneapolis 	MN	55406	Karl's porch	f	2001	nickel
825	hisnameis@email.com	2018-09-02	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1987	nickel
826	hisnameis@email.com	2018-09-07	0.050	\N	Minneapolis 	MN	55414	17th Ave SE	f	\N	nickel
827	hisnameis@email.com	2018-09-15	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2006	nickel
828	hisnameis@email.com	2018-10-30	0.050	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	nickel
829	hisnameis@email.com	2018-10-31	0.050	2929 36th Ave S	Minneapolis 	MN	55406	2929 26th Ave s	f	2012	nickel
830	hisnameis@email.com	2018-12-10	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	1995	nickel
831	hisnameis@email.com	2019-01-10	0.050	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	nickel
832	hisnameis@email.com	2019-01-14	0.050	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2014	nickel
833	hisnameis@email.com	2019-02-05	0.050	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	nickel
834	hisnameis@email.com	2019-02-14	0.050	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	1999	nickel
835	hisnameis@email.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2005	nickel
836	hisnameis@email.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2017	nickel
837	hisnameis@email.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1958	nickel
838	hisnameis@email.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	nickel
839	hisnameis@email.com	2018-05-29	0.010	\N	Minneapolis 	MN	\N	U Campus	f	\N	penny
840	hisnameis@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny
841	hisnameis@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny
842	hisnameis@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny
843	hisnameis@email.com	2018-06-07	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	penny
844	hisnameis@email.com	2018-06-08	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	penny
845	hisnameis@email.com	2018-06-10	0.010	7835 150th St W	Apple Valley	MN	55124	Walmart	f	\N	penny
846	hisnameis@email.com	2018-06-15	0.010	84 Church Street SE	Minneapolis	MN	55455	Surdyks at Northrop	f	\N	penny
847	hisnameis@email.com	2018-06-15	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Alley	f	\N	penny
848	hisnameis@email.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
849	hisnameis@email.com	2018-07-15	0.010	8089 Brooklyn Blvd	Brooklyn Park	MN	55445	Panda Garden Buffet	f	\N	penny
850	hisnameis@email.com	2018-07-16	0.010	651 Grand Ave	Saint Paul	MN	55105	651 Alley	f	\N	penny
851	hisnameis@email.com	2018-07-27	0.010	1 Twins Way	Minneapolis 	MN	55403	Target Field	f	\N	penny
852	hisnameis@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
853	hisnameis@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
854	hisnameis@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
855	hisnameis@email.com	2018-07-29	0.010	9242 Hudson Blvd N	Lake Elmo	MN	55042	Bride to Be Consignment	f	\N	penny
856	hisnameis@email.com	2018-07-31	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	penny
857	hisnameis@email.com	2018-07-31	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	penny
858	hisnameis@email.com	2018-08-01	0.010	857 Grand Ave	Saint Paul	MN	55105	Billys	f	\N	penny
859	hisnameis@email.com	2018-08-03	0.010	649 Grand Ave	Saint Paul	MN	55105	extra_dta	f	1968	penny
860	hisnameis@email.com	2018-08-04	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	penny
861	hisnameis@email.com	2018-08-07	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2004	penny
862	hisnameis@email.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2013	penny
863	hisnameis@email.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	penny
864	hisnameis@email.com	2018-08-17	0.010	\N	Minneapolis 	MN	55414	Dinky town	f	1978	penny
865	hisnameis@email.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1978	penny
866	hisnameis@email.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1981	penny
867	hisnameis@email.com	2018-08-19	0.030	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1997	penny
868	hisnameis@email.com	2018-08-20	0.010	\N	Minneapolis 	MN	55455	Church St	f	2014	penny
869	hisnameis@email.com	2018-08-23	0.010	275 White Bear Ave	Saint Paul	MN	55106	MGM liquor	f	1975	penny
870	hisnameis@email.com	2018-08-28	0.010	\N	Minneapolis	MN	55414	14th Ave SE	f	1980	penny
871	hisnameis@email.com	2018-08-31	0.010	\N	Minneapolis 	MN	55455	Church St	f	2018	penny
872	hisnameis@email.com	2018-09-02	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny
873	hisnameis@email.com	2018-09-04	0.010	\N	Minneapolis 	MN	55455	16th Ave SE	f	2000	penny
874	hisnameis@email.com	2018-09-08	0.010	649 Grand Ave	Saint Paul	MN	55105	653 Alley	f	\N	penny
875	hisnameis@email.com	2018-09-18	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
876	hisnameis@email.com	2018-09-20	0.010	\N	Minneapolis 	MN	55414	14th Ave SE	f	2008	penny
877	hisnameis@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1973	penny
878	hisnameis@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	penny
879	hisnameis@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2007	penny
880	hisnameis@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny
881	hisnameis@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny
882	hisnameis@email.com	2018-09-25	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	1976	penny
883	hisnameis@email.com	2018-09-30	0.010	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	2016	penny
884	hisnameis@email.com	2018-10-03	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2014	penny
885	hisnameis@email.com	2018-10-08	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2016	penny
886	hisnameis@email.com	2018-10-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	penny
887	hisnameis@email.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	penny
888	hisnameis@email.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	penny
889	hisnameis@email.com	2018-10-22	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	penny
890	hisnameis@email.com	2018-10-23	0.010	309 19th Ave S	Minneapolis 	MN	55455	Wilson library	f	\N	penny
891	hisnameis@email.com	2018-10-29	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	\N	penny
892	hisnameis@email.com	2018-11-03	0.010	\N	Saint Paul	MN	55104	Marshall ave	f	1964	penny
893	hisnameis@email.com	2018-11-08	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1973	penny
894	hisnameis@email.com	2018-11-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1986	penny
895	hisnameis@email.com	2018-11-25	0.010	\N	Minneapolis 	MN	\N	37th Ave s	f	1987	penny
896	hisnameis@email.com	2018-11-27	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	2010	penny
897	hisnameis@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	penny
898	hisnameis@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	penny
899	hisnameis@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	penny
900	hisnameis@email.com	2018-12-01	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1995	penny
901	hisnameis@email.com	2018-12-02	0.010	15400 Buck Hill Rd	Burnsville	MN	55306	Buck Hill	f	1973	penny
902	hisnameis@email.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1974	penny
903	hisnameis@email.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	penny
904	hisnameis@email.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1974	penny
905	hisnameis@email.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	penny
906	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1961	penny
907	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1969	penny
908	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1973	penny
909	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1980	penny
910	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1982	penny
911	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2014	penny
912	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2017	penny
913	hisnameis@email.com	2018-12-10	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2002	penny
914	hisnameis@email.com	2018-12-10	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	penny
915	hisnameis@email.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2018	penny
916	hisnameis@email.com	2018-12-20	0.010	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort parking lot	f	1981	penny
917	hisnameis@email.com	2018-12-22	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1978	penny
918	hisnameis@email.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1990	penny
919	hisnameis@email.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1999	penny
920	hisnameis@email.com	2018-12-26	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	penny
921	hisnameis@email.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	1978	penny
922	hisnameis@email.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	2017	penny
923	hisnameis@email.com	2019-02-02	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1972	penny
924	hisnameis@email.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1963	penny
925	hisnameis@email.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	penny
926	hisnameis@email.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2004	penny
927	hisnameis@email.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2018	penny
928	hisnameis@email.com	2019-02-12	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	penny
929	hisnameis@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1979	penny
930	hisnameis@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	penny
931	hisnameis@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	penny
932	hisnameis@email.com	2019-02-14	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	2018	penny
933	hisnameis@email.com	2019-02-16	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	penny
934	hisnameis@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
935	hisnameis@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
936	hisnameis@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
937	hisnameis@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
938	hisnameis@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
939	hisnameis@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2010	penny
940	hisnameis@email.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1990	penny
941	hisnameis@email.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2005	penny
942	hisnameis@email.com	2019-02-22	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2017	penny
943	hisnameis@email.com	2019-02-22	0.010	275 Market St	Minneapolis 	MN	55405	International Market Square	f	1980	penny
944	hisnameis@email.com	2019-04-06	0.010	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2007	penny
945	hisnameis@email.com	2019-04-07	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1983	penny
946	hisnameis@email.com	2019-04-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2007	penny
947	hisnameis@email.com	2019-04-11	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
948	hisnameis@email.com	2019-04-13	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	penny
949	hisnameis@email.com	2019-04-15	0.010	417 14th Ave SE	Minneapolis 	MN	55414	Kafe421	f	2018	penny
950	hisnameis@email.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1988	penny
951	hisnameis@email.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2011	penny
952	hisnameis@email.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	1976	penny
953	hisnameis@email.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	\N	penny
954	hisnameis@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1984	penny
955	hisnameis@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1995	penny
956	hisnameis@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	penny
957	hisnameis@email.com	2019-04-22	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1978	penny
958	hisnameis@email.com	2019-04-29	0.010	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2015	penny
959	hisnameis@email.com	2019-05-04	0.010	400 Snelling Ave N	Saint Paul	MN	55104	Allianz field	f	1995	penny
960	hisnameis@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	2014	penny
961	hisnameis@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	penny
962	hisnameis@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	penny
963	hisnameis@email.com	2019-05-08	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1998	penny
964	hisnameis@email.com	2019-05-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1990	penny
965	hisnameis@email.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2007	penny
966	hisnameis@email.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	penny
967	hisnameis@email.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2013	penny
968	hisnameis@email.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2016	penny
969	hisnameis@email.com	2019-05-21	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1981	penny
970	hisnameis@email.com	2019-05-28	0.010	324 14th Ave SE	Minneapolis 	MN	55414	Qdoba	f	2015	penny
971	hisnameis@email.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1987	penny
972	hisnameis@email.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2008	penny
973	hisnameis@email.com	2019-05-28	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2002	penny
974	hisnameis@email.com	2019-06-01	0.010	2000 Cliff Lake Rd	Eagan	MN	55122	Target	f	2017	penny
975	hisnameis@email.com	2019-06-01	0.010	1250 Town Centre Dr	Eagan	MN	55123	Koyoto	f	\N	penny
976	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Oxford St	f	1988	penny
977	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Milton St	f	2001	penny
978	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1981	penny
979	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1982	penny
980	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1984	penny
981	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1986	penny
982	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	2001	penny
983	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	\N	penny
984	hisnameis@email.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	1992	penny
985	hisnameis@email.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	2019	penny
986	hisnameis@email.com	2019-06-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1999	penny
987	hisnameis@email.com	2019-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	penny
988	hisnameis@email.com	2019-07-04	0.010	\N	Minneapolis 	MN	\N	Lake Stret	f	1987	penny
989	hisnameis@email.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	1991	penny
990	hisnameis@email.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	2014	penny
991	hisnameis@email.com	2019-07-05	0.010	4320 E Lake St 	Minneapolis 	MN	55406	Speedway	f	1988	penny
992	hisnameis@email.com	2019-07-09	0.010	14050 Burnhaven Dr	Burnsville	MN	55337	Costco	f	1996	penny
993	hisnameis@email.com	2019-07-10	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	penny
994	hisnameis@email.com	2019-07-14	0.010	4400 E Lake St	Minneapolis 	MN	55406	Dairy Queen	f	1975	penny
995	hisnameis@email.com	2019-07-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1998	penny
996	hisnameis@email.com	2019-07-15	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1960	penny
997	hisnameis@email.com	2019-07-20	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	2017	penny
998	hisnameis@email.com	2019-07-21	0.010	\N	Saint Paul	MN	\N	Marshall and Fairview	f	2019	penny
999	hisnameis@email.com	2019-07-21	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1964	penny
1000	hisnameis@email.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop locker room	f	1973	penny
1001	hisnameis@email.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop box office	f	2000	penny
1002	hisnameis@email.com	2019-07-30	0.010	14 Church St SE 	Minneapolis 	MN	55455	Nolte Garage	f	1982	penny
1003	hisnameis@email.com	2019-08-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1959	penny
1004	hisnameis@email.com	2019-08-10	0.010	7210 E Point Douglas Rd S	Cottage Grove	MN	55016	TJMaxx	f	1970	penny
1005	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1968	penny
1006	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1975	penny
1007	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	penny
1008	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	penny
1009	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2004	penny
1010	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	penny
1011	hisnameis@email.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	penny
1012	hisnameis@email.com	2019-09-09	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1979	penny
1013	hisnameis@email.com	2019-09-11	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2013	penny
1014	hisnameis@email.com	2019-09-11	0.010	5801 W 16th St	Saint Louis Parl	MN	55416	Costco	f	2001	penny
1015	hisnameis@email.com	2019-09-12	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	penny
1016	hisnameis@email.com	2019-09-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2019	penny
1017	hisnameis@email.com	2019-09-21	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1976	penny
1018	hisnameis@email.com	2019-09-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	penny
1019	hisnameis@email.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	penny
1020	hisnameis@email.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	penny
1021	hisnameis@email.com	2019-09-26	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	penny
1022	hisnameis@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1961	penny
1023	hisnameis@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1990	penny
1024	hisnameis@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	penny
1025	hisnameis@email.com	2019-10-04	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2016	penny
1026	hisnameis@email.com	2019-10-06	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2001	penny
1027	hisnameis@email.com	2019-10-09	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1971	penny
1028	hisnameis@email.com	2019-10-09	0.010	\N	Minneapolis 	MN	55455	17th Ave SE	f	1991	penny
1029	hisnameis@email.com	2019-10-20	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1975	penny
1030	hisnameis@email.com	2019-10-21	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	penny
1031	hisnameis@email.com	2019-10-22	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1997	penny
1032	hisnameis@email.com	2019-10-23	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	penny
1033	hisnameis@email.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2004	penny
1034	hisnameis@email.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	penny
1035	hisnameis@email.com	2020-01-21	0.010	\N	Manhattan	NY	10036	Times Square	f	2018	penny
1036	hisnameis@email.com	2020-01-21	0.010	51 W 51st St	Manhattan	NY	10019	Duane reade	f	1980	penny
1037	hisnameis@email.com	2020-01-21	0.010	1500 Broadway	New York	NY	10036	AudienceView	f	2006	penny
1038	hisnameis@email.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	1999	penny
1039	hisnameis@email.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	2016	penny
1040	hisnameis@email.com	2020-02-01	0.010	6 West 6th Street	Saint Paul	MN	55102	Amsterdam bar and grill	f	2019	penny
1041	hisnameis@email.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	penny
1042	hisnameis@email.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1997	penny
1043	hisnameis@email.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1981	penny
1044	hisnameis@email.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2004	penny
1045	hisnameis@email.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1990	penny
1046	hisnameis@email.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2007	penny
1047	hisnameis@email.com	2020-03-09	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	penny
1048	hisnameis@email.com	2020-03-14	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	penny
1049	hisnameis@email.com	2020-03-21	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2011	penny
1050	hisnameis@email.com	2020-03-25	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2012	penny
1051	hisnameis@email.com	2020-04-07	0.010	\N	Minneapolis 	MN	\N	Mississippi River	f	2001	penny
1052	hisnameis@email.com	2020-05-06	0.010	\N	Minneapolis 	MN	\N	29th and 36th St s	f	2017	penny
1053	hisnameis@email.com	2020-05-23	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th St s alley	f	1964	penny
1054	hisnameis@email.com	2020-05-24	0.010	\N	Minneapolis 	MN	\N	rental car	f	2012	penny
1055	hisnameis@email.com	2020-06-13	0.010	975 Grand Ave	Saint Paul	MN	55105	Jimmy johns	f	2017	penny
1056	hisnameis@email.com	2020-06-14	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	1983	penny
1057	hisnameis@email.com	2020-06-27	0.010	\N	\N	MN	\N	\N	f	1979	penny
1058	hisnameis@email.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1968	penny
1059	hisnameis@email.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1976	penny
1060	hisnameis@email.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2011	penny
1061	hisnameis@email.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2020	penny
1062	hisnameis@email.com	2020-07-18	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1996	penny
1063	hisnameis@email.com	2020-07-24	0.010	2100 N Snelling Dr	Roseville	MN	55113	Staples	f	2013	penny
1064	hisnameis@email.com	2020-07-24	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1982	penny
1065	hisnameis@email.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Cub Foods	f	1990	penny
1066	hisnameis@email.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1988	penny
1067	hisnameis@email.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2020	penny
1068	hisnameis@email.com	2020-08-20	0.010	\N	Minneapolis 	MN	\N	Washington Ave SE	f	1991	penny
1069	hisnameis@email.com	2020-09-05	0.010	103 E Cedar St	Houston	MN	55943	Cenex	f	2005	penny
1070	hisnameis@email.com	2021-01-10	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2001	penny
1071	hisnameis@email.com	2021-01-21	0.010	900 Burnsville Pkwy	Burnsville	MN	55337	Holiday	f	2013	penny
1072	hisnameis@email.com	2021-01-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	1987	penny
1073	hisnameis@email.com	2021-02-01	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2011	penny
1074	hisnameis@email.com	2021-02-23	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	1986	penny
1075	hisnameis@email.com	2021-03-10	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	2020	penny
1076	hisnameis@email.com	2021-03-14	0.010	\N	Minneapolis 	MN	\N	44th ave s	f	1985	penny
1077	hisnameis@email.com	2021-03-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	northrop/nolte tunnel	f	1996	penny
1078	hisnameis@email.com	2021-03-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S	f	2019	penny
1079	hisnameis@email.com	2021-03-27	0.010	113 E 2nd St E	Hastings	MN	55033	Muse2320	f	2021	penny
1080	hisnameis@email.com	2021-04-04	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	penny
1081	hisnameis@email.com	2021-05-02	0.010	1578 WI-65	New Richland	WI	54017	Casey's	f	1983	penny
1082	hisnameis@email.com	2021-05-03	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S alley	f	2020	penny
1083	hisnameis@email.com	2021-05-04	0.010	3425 E Lake St	Minneapolis 	MN	55406	Subway	f	\N	penny
1084	hisnameis@email.com	2021-05-11	0.010	302 15th Ave SE	Minneapolis 	MN	55414	Raising Canes	f	1964	penny
1085	hisnameis@email.com	2021-05-13	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	\N	penny
1086	hisnameis@email.com	2021-05-26	0.010	20710 Keokuk Ave	Lakeville	MN	55044	Walmart	f	2010	penny
1087	hisnameis@email.com	2021-05-30	0.010	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2016	penny
1088	hisnameis@email.com	2021-06-05	0.010	5050 Independence St	Maple Plain	MN	55359	Veterans Park	f	\N	penny
1089	hisnameis@email.com	2021-06-15	0.010	601 SE Main St	Minneapolis 	MN	55414	Stone Arch Apartments	f	2015	penny
1090	hisnameis@email.com	2021-06-16	0.010	\N	Saint Paul	MN	\N	Frank Ave	f	\N	penny
1091	hisnameis@email.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1995	penny
1092	hisnameis@email.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	2006	penny
1093	hisnameis@email.com	2021-09-25	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	penny
1094	hisnameis@email.com	2021-09-25	0.020	2277 Ford Pkwy	Saint Paul	MN	55116	PetCo	f	1964	penny
1095	hisnameis@email.com	2021-09-26	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1977	penny
1096	hisnameis@email.com	2021-10-12	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1981	penny
1097	hisnameis@email.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1968	penny
1098	hisnameis@email.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1981	penny
1099	hisnameis@email.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	1998	penny
1100	hisnameis@email.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	2021	penny
1101	hisnameis@email.com	2021-10-26	0.010	3815 E Lake St	Minneapolis	MN	55406	Longfellow Market	f	1971	penny
1102	hisnameis@email.com	2021-10-26	0.010	36th Ave s and 29th st	Minneapolis	MN	55406	\N	f	2003	penny
1103	hisnameis@email.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	f	1976	penny
1104	hisnameis@email.com	2018-05-26	0.250	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	quarter
1105	hisnameis@email.com	2018-07-22	0.250	\N	\N	MN	\N	\N	f	2008	quarter
1106	hisnameis@email.com	2018-07-30	0.250	\N	\N	MN	\N	Found by Louisa 	f	\N	quarter
1107	hisnameis@email.com	2018-08-25	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1996	quarter
1108	hisnameis@email.com	2019-02-17	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1998	quarter
1109	hisnameis@email.com	2019-08-28	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1980	quarter
1110	hisnameis@email.com	2019-08-30	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1995	quarter
1111	hisnameis@email.com	2019-09-29	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	quarter
1112	hisnameis@email.com	2019-09-29	0.250	16854 Javelin	Lakeville	MN	55044	16854 Javelin	f	1996	quarter
1113	hisnameis@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1988	quarter
1114	hisnameis@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1995	quarter
1115	hisnameis@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	2008	quarter
1116	hisnameis@email.com	2019-11-08	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	quarter
1117	hisnameis@email.com	2020-01-22	0.250	\N	New York	NY	\N	Manhattan	f	1972	quarter
1118	hisnameis@email.com	2020-03-14	0.250	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2008	quarter
1119	hisnameis@email.com	2020-05-17	0.250	\N	Minneapolis 	MN	\N	29th and 32nd St	f	1974	quarter
1120	hisnameis@email.com	2021-06-18	0.250	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1981	quarter
1121	hisnameis@email.com	2021-07-10	0.250	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2009	quarter
676	t3@email.com	2021-11-04	0.250	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2015	quarter
679	t3@email.com	2021-11-04	0.050	350 Canal Park Dr	Duluth	MN	55802	Inn On Lake Superior	f	2020	nickle
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mak
--

COPY public.users (email, fname, lname, password) FROM stdin;
hisnameis@email.com	Robert	Paulson	Bloonicorn2@
t3@email.com	Marla	Singer	Bloonicorn3#
tdurden@email.com	Tyler	Durden	Bloonicorn4$
\.


--
-- Name: monies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mak
--

SELECT pg_catalog.setval('public.monies_id_seq', 1121, true);


--
-- Name: monies monies_pkey; Type: CONSTRAINT; Schema: public; Owner: mak
--

ALTER TABLE ONLY public.monies
    ADD CONSTRAINT monies_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: mak
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (email);


--
-- Name: monies monies_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mak
--

ALTER TABLE ONLY public.monies
    ADD CONSTRAINT monies_email_fkey FOREIGN KEY (email) REFERENCES public.users(email);


--
-- PostgreSQL database dump complete
--

