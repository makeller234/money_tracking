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
676	t3@email.com	2021-11-04	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	1234	est
37	melissa.keller23@gmail.com	2021-04-12	0.010	16396 Wagner Way	Eden Prairie	MN	55344	Tavern 4&5	t	\N	penny
42	melissa.keller23@gmail.com	2020-06-27	0.100	60684 MN-23	Finlayson	MN	55735	Cenex	t	\N	dime
56	melissa.keller23@gmail.com	2021-07-24	1.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$1
57	melissa.keller23@gmail.com	2021-07-24	5.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$5
75	melissa.keller23@gmail.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
76	melissa.keller23@gmail.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
77	melissa.keller23@gmail.com	2019-06-07	20.000	1504 7th St S	Minneapolis	MN	55454	House of Balls	t	\N	$20
80	melissa.keller23@gmail.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	nickel
81	melissa.keller23@gmail.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	nickel
90	melissa.keller23@gmail.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	penny
91	melissa.keller23@gmail.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	penny
92	melissa.keller23@gmail.com	2019-05-23	0.010	3425 E Lake St 	Minneapolis	MN	55406	Subway	t	\N	penny
93	melissa.keller23@gmail.com	2019-10-19	0.010	301 19th Ave S	Minneapolis	MN	55455	Humphrey School	t	\N	penny
94	melissa.keller23@gmail.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	penny
95	melissa.keller23@gmail.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	penny
96	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
97	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
98	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
99	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny
100	melissa.keller23@gmail.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	t	\N	penny
102	melissa.keller23@gmail.com	2021-02-12	0.250	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	quarter
105	melissa.keller23@gmail.com	2019-07-21	0.010	\N	Minneapolis	MN	\N	Lake and River Road	t	\N	penny
163	melissa.keller23@gmail.com	2019-10-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	dime
190	melissa.keller23@gmail.com	2021-04-05	0.050	824 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	t	\N	nickel
191	melissa.keller23@gmail.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	pemmy
387	melissa.keller23@gmail.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	penny
388	melissa.keller23@gmail.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	penny
389	melissa.keller23@gmail.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	penny
390	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
391	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
392	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
393	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
394	melissa.keller23@gmail.com	2020-07-11	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny
395	melissa.keller23@gmail.com	2021-03-02	0.010	2513 Central Ave NE	Minneapolis 	MN	55418	HolyLand	t	\N	penny
439	melissa.keller23@gmail.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	dime
440	melissa.keller23@gmail.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	dime
442	melissa.keller23@gmail.com	2020-12-28	0.010	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	penny
452	melissa.keller23@gmail.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshalls	t	\N	penny
484	melissa.keller23@gmail.com	2019-01-08	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	nickel
557	melissa.keller23@gmail.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny
558	melissa.keller23@gmail.com	2019-01-02	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub foods	t	\N	penny
559	melissa.keller23@gmail.com	2019-01-07	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	penny
560	melissa.keller23@gmail.com	2019-01-08	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	penny
561	melissa.keller23@gmail.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny
562	melissa.keller23@gmail.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny
563	melissa.keller23@gmail.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	t	\N	penny
572	melissa.keller23@gmail.com	2019-08-11	0.100	\N	saint paul	MN	\N	Marshall and hamline	t	\N	dime
586	melissa.keller23@gmail.com	2019-07-21	0.010	\N	saint Paul	MN	\N	Marshall and snelling	t	\N	penny
587	melissa.keller23@gmail.com	2019-08-11	0.010	\N	saint paul	MN	\N	Marshall and snelling	t	\N	penny
590	melissa.keller23@gmail.com	2020-06-06	0.250	\N	Saint paul	MN	55102	Marshall Ave and Dale Ave	t	\N	quarter
598	melissa.keller23@gmail.com	2019-10-07	0.100	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	t	\N	dime
620	melissa.keller23@gmail.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny
621	melissa.keller23@gmail.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny
622	melissa.keller23@gmail.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny
669	t3@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	t	1234	test
670	t3@email.com	2021-11-01	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	t	1234	test
671	t3@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	t	1234	test
672	t3@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	t	123	afdaffg
675	t3@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	t	123	est
663	melissa.keller23@gmail.com	2019-05-24	0.010	100 Jefferson Dr 	Zumbrota	MN	55992	Kwik Trip	t	\N	penny
673	melissa.keller23@gmail.com	2021-10-30	0.250	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2018	quarter
674	melissa.keller23@gmail.com	2021-10-30	0.050	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2021	nickel
1	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1978	penny
2	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	penny
3	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	penny
4	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1990	penny
5	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1997	penny
6	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1999	penny
7	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2011	penny
8	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2015	penny
9	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny
10	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny
11	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny
12	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny
13	melissa.keller23@gmail.com	2021-05-30	0.100	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2004	dime
14	melissa.keller23@gmail.com	2021-05-30	0.010	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2016	penny
15	melissa.keller23@gmail.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	1992	penny
16	melissa.keller23@gmail.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	2019	penny
17	melissa.keller23@gmail.com	2018-06-10	0.010	7835 150th St W	Apple Valley	MN	55124	Walmart	f	\N	penny
18	melissa.keller23@gmail.com	2019-03-22	0.100	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1990	dime
19	melissa.keller23@gmail.com	2019-03-22	0.050	60 E Broadway	Bloomington	MN	55425	Mall of America	f	2000	nickel
20	melissa.keller23@gmail.com	2019-01-06	0.010	324 W Marketplace	Bloomington	MN	55425	Nordstrom's Rack	f	1981	penny
21	melissa.keller23@gmail.com	2019-03-22	0.010	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1981	penny
22	melissa.keller23@gmail.com	2019-01-11	0.250	\N	Bloomington	MN	\N	Minneapolis−Saint Paul International Airport	f	2015	quarter
23	melissa.keller23@gmail.com	2018-07-15	0.010	8089 Brooklyn Blvd	Brooklyn Park	MN	55445	Panda Garden Buffet	f	\N	penny
24	melissa.keller23@gmail.com	2018-12-02	0.010	15400 Buck Hill Rd	Burnsville	MN	55306	Buck Hill	f	1973	penny
25	melissa.keller23@gmail.com	2019-07-09	0.010	14050 Burnhaven Dr	Burnsville	MN	55337	Costco	f	1996	penny
26	melissa.keller23@gmail.com	2021-01-21	0.010	900 Burnsville Pkwy	Burnsville	MN	55337	Holiday	f	2013	penny
27	melissa.keller23@gmail.com	2019-06-12	0.010	2000 Hwy 13 E	Burnsville	MN	55337	Dollar Tree parking lot	f	2018	penny
28	melissa.keller23@gmail.com	2019-08-10	0.010	7210 E Point Douglas Rd S	Cottage Grove	MN	55016	TJMaxx	f	1970	penny
29	melissa.keller23@gmail.com	2018-05-19	0.100	\N	Duluth 	MN	55802	\N	f	\N	dime
30	melissa.keller23@gmail.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	1975	penny
31	melissa.keller23@gmail.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	2013	penny
32	melissa.keller23@gmail.com	2018-05-19	0.010	\N	Duluth 	MN	55802	\N	f	\N	penny
33	melissa.keller23@gmail.com	2019-08-16	0.250	350 Harbor Dr	Duluth 	MN	55802	Bayfront Festival Parl	f	2015	quarter
34	melissa.keller23@gmail.com	2019-06-01	0.010	2000 Cliff Lake Rd	Eagan	MN	55122	Target	f	2017	penny
35	melissa.keller23@gmail.com	2019-04-01	0.010	1298 Promenade Pl	Eagan	MN	55121	Qdoba	f	2018	penny
36	melissa.keller23@gmail.com	2019-06-01	0.010	1250 Town Centre Dr	Eagan	MN	55123	Koyoto	f	\N	penny
38	melissa.keller23@gmail.com	2019-02-16	0.100	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2010	dime
39	melissa.keller23@gmail.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2005	nickel
40	melissa.keller23@gmail.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2017	nickel
41	melissa.keller23@gmail.com	2019-02-16	0.250	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	1999	quarter
43	melissa.keller23@gmail.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik Trip	f	2014	penny
44	melissa.keller23@gmail.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik trip	f	2017	penny
45	melissa.keller23@gmail.com	2021-03-27	0.010	113 E 2nd St E	Hastings	MN	55033	Muse2320	f	2021	penny
46	melissa.keller23@gmail.com	2019-08-10	0.250	101 2nd St E,	Hastings	MN	55033	Lock and Dam Eatery	f	1974	quarter
47	melissa.keller23@gmail.com	2019-01-14	0.050	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2014	nickel
48	melissa.keller23@gmail.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	1982	penny
49	melissa.keller23@gmail.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2013	penny
50	melissa.keller23@gmail.com	2019-01-15	0.010	53-660 Kamehameha Hwy	Hauula	HI	96717	53-660 Kamehameha Hwy	f	2018	penny
51	melissa.keller23@gmail.com	2019-01-12	1.000	99-500 Salt Lake Blvd	Honolulu	HI	96818	Aloha Stadium	f	2013	bill
52	melissa.keller23@gmail.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1969	penny
53	melissa.keller23@gmail.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1971	penny
54	melissa.keller23@gmail.com	2019-01-16	0.010	2330 Kalakaua Ave	Honolulu	HI	69815	International Marketplace	f	1992	penny
55	melissa.keller23@gmail.com	2019-01-18	0.010	300 Rodgers Blvd	Honolulu	HI	96819	Airport	f	2012	penny
58	melissa.keller23@gmail.com	2021-07-24	0.100	Cedar Street	Houston	MN	55943	Hoedown	f	2008	dime
59	melissa.keller23@gmail.com	2020-09-05	0.010	103 E Cedar St	Houston	MN	55943	Cenex	f	2005	penny
60	melissa.keller23@gmail.com	2019-07-19	0.100	141 Carmichael Rd	Hudson	WI	54016	Walgreens	f	2015	dime
61	melissa.keller23@gmail.com	2019-01-15	0.100	108 Hekili St	Kailu	HI	96734	Foodland	f	2007	dime
62	melissa.keller23@gmail.com	2018-07-29	0.010	9242 Hudson Blvd N	Lake Elmo	MN	55042	Bride to Be Consignment	f	\N	penny
63	melissa.keller23@gmail.com	2020-11-19	0.010	18275 Kenrick Ave	Lakeville	MN	55044	Target	f	1991	penny
64	melissa.keller23@gmail.com	2021-05-26	0.010	20710 Keokuk Ave	Lakeville	MN	55044	Walmart	f	2010	penny
65	melissa.keller23@gmail.com	2019-09-29	0.250	16854 Javelin	Lakeville	MN	55044	16854 Javelin	f	1996	quarter
66	melissa.keller23@gmail.com	2018-12-20	0.100	5339 MN-61	Lutsen	MN	55612	Lutsen Liquors	f	1996	dime
67	melissa.keller23@gmail.com	2018-12-20	0.100	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort	f	2011	dime
68	melissa.keller23@gmail.com	2018-12-22	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1978	penny
69	melissa.keller23@gmail.com	2018-12-20	0.010	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort parking lot	f	1981	penny
70	melissa.keller23@gmail.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1990	penny
71	melissa.keller23@gmail.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1999	penny
72	melissa.keller23@gmail.com	2020-01-21	0.010	51 W 51st St	Manhattan	NY	10019	Duane reade	f	1980	penny
73	melissa.keller23@gmail.com	2020-01-21	0.010	\N	Manhattan	NY	10036	Times Square	f	2018	penny
74	melissa.keller23@gmail.com	2021-06-05	0.010	5050 Independence St	Maple Plain	MN	55359	Veterans Park	f	\N	penny
78	melissa.keller23@gmail.com	2021-10-15	0.100	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1984	dime
79	melissa.keller23@gmail.com	2021-06-22	0.100	2513 Central Ave NE	Minneapolis	MN	55418	HolyLand	f	2003	dime
82	melissa.keller23@gmail.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1968	penny
83	melissa.keller23@gmail.com	2021-10-26	0.010	3815 E Lake St	Minneapolis	MN	55406	Longfellow Market	f	1971	penny
84	melissa.keller23@gmail.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	f	1976	penny
85	melissa.keller23@gmail.com	2018-08-28	0.010	\N	Minneapolis	MN	55414	14th Ave SE	f	1980	penny
86	melissa.keller23@gmail.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1981	penny
87	melissa.keller23@gmail.com	2020-09-19	0.010	1931 Minnehaha Ave	Minneapolis	MN	55405	Taco Bell	f	1996	penny
88	melissa.keller23@gmail.com	2021-10-26	0.010	36th Ave s and 29th st	Minneapolis	MN	55406	\N	f	2003	penny
89	melissa.keller23@gmail.com	2018-06-15	0.010	84 Church Street SE	Minneapolis	MN	55455	Surdyks at Northrop	f	\N	penny
101	melissa.keller23@gmail.com	2019-01-24	0.250	\N	Minneapolis	MN	\N	14th Ave SE	f	2018	quarter
103	melissa.keller23@gmail.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	1998	penny
104	melissa.keller23@gmail.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	2021	penny
106	melissa.keller23@gmail.com	2019-09-03	5.000	\N	Minneapolis 	MN	\N	38th and lake st	f	2009	$5
107	melissa.keller23@gmail.com	2019-05-08	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1970	Canadian penny
108	melissa.keller23@gmail.com	2021-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	\N	Canadian penny
109	melissa.keller23@gmail.com	2019-11-04	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1999	dime
110	melissa.keller23@gmail.com	2019-08-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2015	dime
111	melissa.keller23@gmail.com	2020-08-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1966	dime
112	melissa.keller23@gmail.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1972	dime
113	melissa.keller23@gmail.com	2021-10-02	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1972	dime
114	melissa.keller23@gmail.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1974	dime
115	melissa.keller23@gmail.com	2019-09-23	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1976	dime
116	melissa.keller23@gmail.com	2019-12-13	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1978	dime
117	melissa.keller23@gmail.com	2020-03-19	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	1980	dime
118	melissa.keller23@gmail.com	2018-11-17	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1986	dime
119	melissa.keller23@gmail.com	2019-06-17	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	dime
178	melissa.keller23@gmail.com	2021-08-29	0.050	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2000	nickel
120	melissa.keller23@gmail.com	2019-05-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1994	dime
121	melissa.keller23@gmail.com	2018-06-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	dime
122	melissa.keller23@gmail.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	dime
123	melissa.keller23@gmail.com	2019-01-29	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1999	dime
124	melissa.keller23@gmail.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	1999	dime
125	melissa.keller23@gmail.com	2020-03-16	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	dime
126	melissa.keller23@gmail.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	dime
127	melissa.keller23@gmail.com	2019-12-12	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2000	dime
128	melissa.keller23@gmail.com	2019-10-22	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2001	dime
129	melissa.keller23@gmail.com	2019-03-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2002	dime
130	melissa.keller23@gmail.com	2019-09-23	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2002	dime
131	melissa.keller23@gmail.com	2019-07-15	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2003	dime
132	melissa.keller23@gmail.com	2020-08-10	0.100	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2003	dime
133	melissa.keller23@gmail.com	2021-02-13	0.100	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	dime
134	melissa.keller23@gmail.com	2018-11-12	0.100	\N	Minneapolis 	MN	55455	17th Ave SE	f	2005	dime
135	melissa.keller23@gmail.com	2019-04-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2005	dime
136	melissa.keller23@gmail.com	2021-05-25	0.100	110 Penn Ave N	Minneapolis 	MN	55405	Bassett Park	f	2005	dime
137	melissa.keller23@gmail.com	2018-10-31	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2006	dime
138	melissa.keller23@gmail.com	2018-12-17	0.100	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	2006	dime
139	melissa.keller23@gmail.com	2019-02-15	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2006	dime
140	melissa.keller23@gmail.com	2019-06-25	0.100	2858 26th Ave S	Minneapolis 	MN	55406	Dollar Store Parking Lot	f	2006	dime
141	melissa.keller23@gmail.com	2019-09-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2006	dime
142	melissa.keller23@gmail.com	2019-10-19	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2007	dime
143	melissa.keller23@gmail.com	2018-10-02	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2008	dime
144	melissa.keller23@gmail.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2008	dime
145	melissa.keller23@gmail.com	2019-05-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2008	dime
146	melissa.keller23@gmail.com	2019-10-25	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2010	dime
147	melissa.keller23@gmail.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2011	dime
148	melissa.keller23@gmail.com	2019-05-20	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	dime
149	melissa.keller23@gmail.com	2019-09-08	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	2012	dime
150	melissa.keller23@gmail.com	2018-12-31	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2014	dime
151	melissa.keller23@gmail.com	2020-03-19	0.100	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	2014	dime
152	melissa.keller23@gmail.com	2019-09-27	0.100	\N	Minneapolis 	MN	\N	14th Ave SE	f	2015	dime
153	melissa.keller23@gmail.com	2020-03-21	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2015	dime
154	melissa.keller23@gmail.com	2018-12-06	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	dime
155	melissa.keller23@gmail.com	2020-03-12	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2016	dime
156	melissa.keller23@gmail.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2017	dime
157	melissa.keller23@gmail.com	2019-02-17	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	dime
158	melissa.keller23@gmail.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2018	dime
159	melissa.keller23@gmail.com	2021-07-31	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2019	dime
160	melissa.keller23@gmail.com	2021-09-09	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2021	dime
161	melissa.keller23@gmail.com	2018-05-22	0.100	\N	Minneapolis 	MN	\N	\N	f	\N	Dime
162	melissa.keller23@gmail.com	2019-05-05	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	dime
164	melissa.keller23@gmail.com	2019-11-24	0.100	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	\N	dime
165	melissa.keller23@gmail.com	2021-09-24	1.000	501 30th Ave SE	Minneapolis 	MN	55414	The Market at Malcolm yards	f	2009	dollar
166	melissa.keller23@gmail.com	2019-10-04	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	dollar coin
167	melissa.keller23@gmail.com	2019-09-17	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	dollar coin
168	melissa.keller23@gmail.com	2019-03-15	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2008	dollar coin
169	melissa.keller23@gmail.com	2019-06-06	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2010	dollar coin
170	melissa.keller23@gmail.com	2019-05-14	0.005	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	half penny
171	melissa.keller23@gmail.com	2018-10-30	0.050	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	nickel
172	melissa.keller23@gmail.com	2021-03-19	0.050	1501 University Ave SE	Minneapolis 	MN	55414	DP Dough	f	1980	nickel
173	melissa.keller23@gmail.com	2021-06-07	0.050	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1983	nickel
174	melissa.keller23@gmail.com	2020-03-19	0.050	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	1994	nickel
175	melissa.keller23@gmail.com	2018-12-10	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	1995	nickel
176	melissa.keller23@gmail.com	2019-02-14	0.050	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	1999	nickel
177	melissa.keller23@gmail.com	2019-04-07	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	2000	nickel
179	melissa.keller23@gmail.com	2018-08-27	0.050	2929 36th Ave S	Minneapolis 	MN	55406	Karl's porch	f	2001	nickel
180	melissa.keller23@gmail.com	2020-03-14	0.050	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2001	nickel
181	melissa.keller23@gmail.com	2020-10-01	0.050	\N	Minneapolis 	MN	\N	Washington Ave SE	f	2007	nickel
182	melissa.keller23@gmail.com	2018-10-31	0.050	2929 36th Ave S	Minneapolis 	MN	55406	2929 26th Ave s	f	2012	nickel
183	melissa.keller23@gmail.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2015	nickel
184	melissa.keller23@gmail.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2016	nickel
185	melissa.keller23@gmail.com	2019-08-05	0.050	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	nickel
186	melissa.keller23@gmail.com	2021-06-01	0.050	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2020	nickel
187	melissa.keller23@gmail.com	2021-09-12	0.050	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2021	nickel
188	melissa.keller23@gmail.com	2018-05-22	0.050	\N	Minneapolis 	MN	\N	\N	f	\N	nickel
189	melissa.keller23@gmail.com	2018-09-07	0.050	\N	Minneapolis 	MN	55414	17th Ave SE	f	\N	nickel
192	melissa.keller23@gmail.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1988	pemny
193	melissa.keller23@gmail.com	2019-08-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1959	penny
194	melissa.keller23@gmail.com	2019-07-15	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1960	penny
195	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1961	penny
196	melissa.keller23@gmail.com	2020-01-07	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1962	penny
197	melissa.keller23@gmail.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1963	penny
198	melissa.keller23@gmail.com	2019-07-21	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1964	penny
199	melissa.keller23@gmail.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	penny
200	melissa.keller23@gmail.com	2020-05-23	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th St s alley	f	1964	penny
201	melissa.keller23@gmail.com	2021-05-11	0.010	302 15th Ave SE	Minneapolis 	MN	55414	Raising Canes	f	1964	penny
202	melissa.keller23@gmail.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1968	penny
203	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1969	penny
204	melissa.keller23@gmail.com	2019-03-14	0.010	\N	Minneapolis 	MN	\N	Scholars Walk	f	1971	penny
205	melissa.keller23@gmail.com	2019-10-09	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1971	penny
206	melissa.keller23@gmail.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1972	penny
207	melissa.keller23@gmail.com	2019-08-28	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1972	penny
208	melissa.keller23@gmail.com	2018-11-08	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1973	penny
209	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1973	penny
210	melissa.keller23@gmail.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop locker room	f	1973	penny
211	melissa.keller23@gmail.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1974	penny
212	melissa.keller23@gmail.com	2018-07-31	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	penny
213	melissa.keller23@gmail.com	2019-01-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	penny
214	melissa.keller23@gmail.com	2019-07-14	0.010	4400 E Lake St	Minneapolis 	MN	55406	Dairy Queen	f	1975	penny
215	melissa.keller23@gmail.com	2019-10-20	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1975	penny
216	melissa.keller23@gmail.com	2018-09-25	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	1976	penny
217	melissa.keller23@gmail.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1976	penny
218	melissa.keller23@gmail.com	2021-09-26	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1977	penny
219	melissa.keller23@gmail.com	2018-08-17	0.010	\N	Minneapolis 	MN	55414	Dinky town	f	1978	penny
220	melissa.keller23@gmail.com	2020-01-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1978	penny
221	melissa.keller23@gmail.com	2021-09-10	0.010	231 Pillsbury Dr SE	Minneapolis 	MN	55455	Williamson Hall	f	1978	penny
222	melissa.keller23@gmail.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1979	penny
223	melissa.keller23@gmail.com	2019-09-09	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1979	penny
224	melissa.keller23@gmail.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	penny
225	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1980	penny
226	melissa.keller23@gmail.com	2019-02-22	0.010	275 Market St	Minneapolis 	MN	55405	International Market Square	f	1980	penny
227	melissa.keller23@gmail.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1980	penny
228	melissa.keller23@gmail.com	2020-01-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1981	penny
229	melissa.keller23@gmail.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1981	penny
230	melissa.keller23@gmail.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1981	penny
231	melissa.keller23@gmail.com	2021-10-12	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1981	penny
232	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1982	penny
233	melissa.keller23@gmail.com	2019-01-09	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1982	penny
234	melissa.keller23@gmail.com	2019-07-30	0.010	14 Church St SE 	Minneapolis 	MN	55455	Nolte Garage	f	1982	penny
235	melissa.keller23@gmail.com	2019-04-07	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1983	penny
236	melissa.keller23@gmail.com	2019-12-06	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	penny
237	melissa.keller23@gmail.com	2020-06-14	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	1983	penny
238	melissa.keller23@gmail.com	2021-04-04	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	penny
239	melissa.keller23@gmail.com	2019-02-24	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1984	penny
240	melissa.keller23@gmail.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	1984	penny
241	melissa.keller23@gmail.com	2019-04-13	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	penny
242	melissa.keller23@gmail.com	2019-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	penny
243	melissa.keller23@gmail.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1985	penny
244	melissa.keller23@gmail.com	2021-03-14	0.010	\N	Minneapolis 	MN	\N	44th ave s	f	1985	penny
245	melissa.keller23@gmail.com	2018-11-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1986	penny
246	melissa.keller23@gmail.com	2019-03-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1986	penny
247	melissa.keller23@gmail.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	penny
248	melissa.keller23@gmail.com	2019-10-21	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	penny
249	melissa.keller23@gmail.com	2021-02-23	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	1986	penny
250	melissa.keller23@gmail.com	2018-11-25	0.010	\N	Minneapolis 	MN	\N	37th Ave s	f	1987	penny
251	melissa.keller23@gmail.com	2018-12-31	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1987	penny
252	melissa.keller23@gmail.com	2021-01-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	1987	penny
253	melissa.keller23@gmail.com	2019-07-05	0.010	4320 E Lake St 	Minneapolis 	MN	55406	Speedway	f	1988	penny
254	melissa.keller23@gmail.com	2019-08-24	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1988	penny
255	melissa.keller23@gmail.com	2021-09-08	0.010	3916 E Lake St	Minneapolis 	MN	55406	East Lake Liquor	f	1988	penny
256	melissa.keller23@gmail.com	2019-05-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1990	penny
257	melissa.keller23@gmail.com	2019-06-25	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1990	penny
258	melissa.keller23@gmail.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1990	penny
259	melissa.keller23@gmail.com	2020-10-22	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	1990	penny
260	melissa.keller23@gmail.com	2019-03-16	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1991	penny
261	melissa.keller23@gmail.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	1991	penny
262	melissa.keller23@gmail.com	2019-10-09	0.010	\N	Minneapolis 	MN	55455	17th Ave SE	f	1991	penny
263	melissa.keller23@gmail.com	2020-08-20	0.010	\N	Minneapolis 	MN	\N	Washington Ave SE	f	1991	penny
264	melissa.keller23@gmail.com	2019-02-27	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1992	penny
265	melissa.keller23@gmail.com	2020-10-24	0.010	3915 E Lake St	Minneapolis 	MN	55406	Ace Hardware	f	1992	penny
266	melissa.keller23@gmail.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1994	penny
267	melissa.keller23@gmail.com	2021-07-22	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1994	penny
268	melissa.keller23@gmail.com	2018-12-01	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1995	penny
269	melissa.keller23@gmail.com	2019-06-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1995	penny
270	melissa.keller23@gmail.com	2019-09-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	penny
271	melissa.keller23@gmail.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	penny
272	melissa.keller23@gmail.com	2019-12-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	penny
273	melissa.keller23@gmail.com	2020-07-18	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1996	penny
274	melissa.keller23@gmail.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1996	penny
275	melissa.keller23@gmail.com	2021-03-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	northrop/nolte tunnel	f	1996	penny
276	melissa.keller23@gmail.com	2019-10-22	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1997	penny
277	melissa.keller23@gmail.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1997	penny
278	melissa.keller23@gmail.com	2018-11-19	0.010	\N	Minneapolis 	MN	55414	17th Ave SE	f	1998	penny
279	melissa.keller23@gmail.com	2019-02-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1998	penny
280	melissa.keller23@gmail.com	2019-05-08	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1998	penny
281	melissa.keller23@gmail.com	2019-07-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1998	penny
282	melissa.keller23@gmail.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	penny
283	melissa.keller23@gmail.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	penny
284	melissa.keller23@gmail.com	2019-06-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	penny
285	melissa.keller23@gmail.com	2019-06-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1999	penny
286	melissa.keller23@gmail.com	2018-09-04	0.010	\N	Minneapolis 	MN	55455	16th Ave SE	f	2000	penny
287	melissa.keller23@gmail.com	2018-11-20	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2000	penny
288	melissa.keller23@gmail.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop box office	f	2000	penny
289	melissa.keller23@gmail.com	2021-09-03	0.010	5001 S 34th Ave	Minneapolis 	MN	55417	Casa Maria	f	2000	penny
290	melissa.keller23@gmail.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	penny
291	melissa.keller23@gmail.com	2019-01-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	penny
292	melissa.keller23@gmail.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	penny
293	melissa.keller23@gmail.com	2019-04-04	0.010	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	2001	penny
294	melissa.keller23@gmail.com	2019-09-26	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	penny
472	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	dime
295	melissa.keller23@gmail.com	2019-10-06	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2001	penny
296	melissa.keller23@gmail.com	2020-04-07	0.010	\N	Minneapolis 	MN	\N	Mississippi River	f	2001	penny
297	melissa.keller23@gmail.com	2021-01-10	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2001	penny
298	melissa.keller23@gmail.com	2018-12-10	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2002	penny
299	melissa.keller23@gmail.com	2019-05-28	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2002	penny
300	melissa.keller23@gmail.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2004	penny
301	melissa.keller23@gmail.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2004	penny
302	melissa.keller23@gmail.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2004	penny
303	melissa.keller23@gmail.com	2020-03-14	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	penny
304	melissa.keller23@gmail.com	2019-10-23	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	penny
305	melissa.keller23@gmail.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	2005	penny
306	melissa.keller23@gmail.com	2019-12-13	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2006	penny
307	melissa.keller23@gmail.com	2019-04-06	0.010	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2007	penny
308	melissa.keller23@gmail.com	2019-04-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2007	penny
309	melissa.keller23@gmail.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2007	penny
310	melissa.keller23@gmail.com	2020-12-12	0.010	\N	Minneapolis 	MN	\N	\N	f	2007	penny
311	melissa.keller23@gmail.com	2018-09-20	0.010	\N	Minneapolis 	MN	55414	14th Ave SE	f	2008	penny
312	melissa.keller23@gmail.com	2019-09-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2008	penny
313	melissa.keller23@gmail.com	2018-11-27	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	2010	penny
314	melissa.keller23@gmail.com	2019-12-05	0.010	400 21st Ave S	Minneapolis 	MN	55455	21st Ave Ramp	f	2011	penny
315	melissa.keller23@gmail.com	2020-03-21	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2011	penny
316	melissa.keller23@gmail.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2011	penny
317	melissa.keller23@gmail.com	2021-02-01	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2011	penny
318	melissa.keller23@gmail.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	penny
319	melissa.keller23@gmail.com	2020-03-25	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2012	penny
320	melissa.keller23@gmail.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	penny
321	melissa.keller23@gmail.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2013	penny
322	melissa.keller23@gmail.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	penny
323	melissa.keller23@gmail.com	2018-10-03	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2014	penny
324	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2014	penny
325	melissa.keller23@gmail.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	2014	penny
326	melissa.keller23@gmail.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	2014	penny
327	melissa.keller23@gmail.com	2020-10-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2014	penny
328	melissa.keller23@gmail.com	2019-05-28	0.010	324 14th Ave SE	Minneapolis 	MN	55414	Qdoba	f	2015	penny
329	melissa.keller23@gmail.com	2021-06-15	0.010	601 SE Main St	Minneapolis 	MN	55414	Stone Arch Apartments	f	2015	penny
330	melissa.keller23@gmail.com	2018-09-30	0.010	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	2016	penny
331	melissa.keller23@gmail.com	2019-02-12	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	penny
332	melissa.keller23@gmail.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2016	penny
333	melissa.keller23@gmail.com	2019-04-03	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2016	penny
334	melissa.keller23@gmail.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2016	penny
335	melissa.keller23@gmail.com	2018-11-20	0.010	\N	Minneapolis 	MN	\N	University Ave 	f	2017	penny
336	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2017	penny
337	melissa.keller23@gmail.com	2018-12-26	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	penny
338	melissa.keller23@gmail.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	penny
339	melissa.keller23@gmail.com	2019-02-22	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2017	penny
340	melissa.keller23@gmail.com	2019-03-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2017	penny
341	melissa.keller23@gmail.com	2019-07-20	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	2017	penny
342	melissa.keller23@gmail.com	2020-05-06	0.010	\N	Minneapolis 	MN	\N	29th and 36th St s	f	2017	penny
343	melissa.keller23@gmail.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2017	penny
344	melissa.keller23@gmail.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	penny
345	melissa.keller23@gmail.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2018	penny
346	melissa.keller23@gmail.com	2019-04-15	0.010	417 14th Ave SE	Minneapolis 	MN	55414	Kafe421	f	2018	penny
347	melissa.keller23@gmail.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	penny
348	melissa.keller23@gmail.com	2019-06-11	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2019	penny
349	melissa.keller23@gmail.com	2019-09-04	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2019	penny
350	melissa.keller23@gmail.com	2019-09-12	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	penny
351	melissa.keller23@gmail.com	2019-09-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2019	penny
352	melissa.keller23@gmail.com	2019-12-16	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	penny
353	melissa.keller23@gmail.com	2021-03-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S	f	2019	penny
354	melissa.keller23@gmail.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	penny
355	melissa.keller23@gmail.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2019	penny
356	melissa.keller23@gmail.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2020	penny
357	melissa.keller23@gmail.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2020	penny
358	melissa.keller23@gmail.com	2021-03-10	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	2020	penny
359	melissa.keller23@gmail.com	2021-05-03	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S alley	f	2020	penny
360	melissa.keller23@gmail.com	2021-07-08	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2021	penny
361	melissa.keller23@gmail.com	2021-07-20	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	2021	penny
362	melissa.keller23@gmail.com	2021-07-27	0.010	326 14th Ave SE	Minneapolis 	MN	55414	Pot Bellys	f	2021	penny
363	melissa.keller23@gmail.com	2019-04-11	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
364	melissa.keller23@gmail.com	2018-09-18	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
365	melissa.keller23@gmail.com	2018-05-29	0.010	\N	Minneapolis 	MN	\N	U Campus	f	\N	penny
366	melissa.keller23@gmail.com	2018-06-08	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	penny
367	melissa.keller23@gmail.com	2018-06-15	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
368	melissa.keller23@gmail.com	2018-07-02	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	penny
369	melissa.keller23@gmail.com	2018-07-06	0.010	\N	Minneapolis 	MN	55455	Washington Ave SE	f	\N	penny
370	melissa.keller23@gmail.com	2018-07-27	0.010	1 Twins Way	Minneapolis 	MN	55403	Target Field	f	\N	penny
371	melissa.keller23@gmail.com	2018-10-23	0.010	309 19th Ave S	Minneapolis 	MN	55455	Wilson library	f	\N	penny
372	melissa.keller23@gmail.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	penny
373	melissa.keller23@gmail.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	penny
374	melissa.keller23@gmail.com	2018-11-16	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	penny
375	melissa.keller23@gmail.com	2018-11-16	0.010	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	\N	penny
376	melissa.keller23@gmail.com	2018-12-10	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	penny
377	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
378	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
379	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
380	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
381	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny
382	melissa.keller23@gmail.com	2019-03-15	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	penny
383	melissa.keller23@gmail.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	penny
384	melissa.keller23@gmail.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	penny
385	melissa.keller23@gmail.com	2019-06-08	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	\N	penny
386	melissa.keller23@gmail.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	\N	penny
396	melissa.keller23@gmail.com	2021-05-04	0.010	3425 E Lake St	Minneapolis 	MN	55406	Subway	f	\N	penny
397	melissa.keller23@gmail.com	2021-05-13	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	\N	penny
398	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1968	penny
399	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1975	penny
400	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	penny
401	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	penny
402	melissa.keller23@gmail.com	2021-08-31	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	penny
403	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2004	penny
404	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	penny
405	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2009	penny
406	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2014	penny
407	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2018	penny
408	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	penny
409	melissa.keller23@gmail.com	2020-05-17	0.250	\N	Minneapolis 	MN	\N	29th and 32nd St	f	1974	quarter
410	melissa.keller23@gmail.com	2019-03-15	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	quarter
411	melissa.keller23@gmail.com	2019-11-08	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	quarter
412	melissa.keller23@gmail.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1988	quarter
413	melissa.keller23@gmail.com	2018-12-08	0.250	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	quarter
414	melissa.keller23@gmail.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1995	quarter
415	melissa.keller23@gmail.com	2019-02-17	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1998	quarter
416	melissa.keller23@gmail.com	2019-03-22	0.250	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave Alley	f	1998	quarter
417	melissa.keller23@gmail.com	2019-04-29	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	quarter
418	melissa.keller23@gmail.com	2019-02-25	0.250	\N	Minneapolis 	MN	\N	University Ave	f	2000	quarter
419	melissa.keller23@gmail.com	2019-03-02	0.250	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2001	quarter
420	melissa.keller23@gmail.com	2019-07-30	0.250	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2007	quarter
421	melissa.keller23@gmail.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	2008	quarter
422	melissa.keller23@gmail.com	2020-03-14	0.250	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2008	quarter
423	melissa.keller23@gmail.com	2021-07-10	0.250	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2009	quarter
424	melissa.keller23@gmail.com	2020-01-12	0.100	\N	Minneapolis 	MN	\N	E 42nd St	f	1984	dime
425	melissa.keller23@gmail.com	2019-07-04	0.010	\N	Minneapolis 	MN	\N	Lake Stret	f	1987	penny
426	melissa.keller23@gmail.com	2020-05-24	0.010	\N	Minneapolis 	MN	\N	rental car	f	2012	penny
427	melissa.keller23@gmail.com	2018-08-20	0.010	\N	Minneapolis 	MN	55455	Church St	f	2014	penny
428	melissa.keller23@gmail.com	2018-08-31	0.010	\N	Minneapolis 	MN	55455	Church St	f	2018	penny
429	melissa.keller23@gmail.com	2020-10-09	0.010	\N	Minneapolis 	MN	\N	Central Ave NE	f	2020	penny
430	melissa.keller23@gmail.com	2021-09-01	0.010	\N	Minneapolis 	MN	\N	Lake Street	f	2021	penny
431	melissa.keller23@gmail.com	2021-06-19	1.000	15277 Barton Ave NW	Monticello	MN	55362	15277 Barton Ave NW	f	2013	bill
432	melissa.keller23@gmail.com	2021-05-02	0.010	1578 WI-65	New Richland	WI	54017	Casey's	f	1983	penny
433	melissa.keller23@gmail.com	2020-01-21	0.010	1500 Broadway	New York	NY	10036	AudienceView	f	2006	penny
434	melissa.keller23@gmail.com	2020-01-22	0.250	\N	New York	NY	\N	Manhattan	f	1972	quarter
435	melissa.keller23@gmail.com	2019-06-13	0.250	16825 County Rd 24	Plymouth	MN	55447	Holiday	f	1999	quarter
436	melissa.keller23@gmail.com	2020-01-23	0.100	\N	Queens	NY	11371	LaGuardia Airport	f	2019	dime
437	melissa.keller23@gmail.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	1999	penny
438	melissa.keller23@gmail.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	2016	penny
441	melissa.keller23@gmail.com	2021-08-28	0.010	6445 Richfield Pkwy	Richfield	MN	55423	Target	f	2021	penny
443	melissa.keller23@gmail.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	1976	penny
444	melissa.keller23@gmail.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	\N	penny
445	melissa.keller23@gmail.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1967	penny
446	melissa.keller23@gmail.com	2020-07-24	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1982	penny
447	melissa.keller23@gmail.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Cub Foods	f	1990	penny
448	melissa.keller23@gmail.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1995	penny
449	melissa.keller23@gmail.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	2006	penny
450	melissa.keller23@gmail.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	2012	penny
451	melissa.keller23@gmail.com	2020-07-24	0.010	2100 N Snelling Dr	Roseville	MN	55113	Staples	f	2013	penny
453	melissa.keller23@gmail.com	2021-06-18	0.250	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1981	quarter
454	melissa.keller23@gmail.com	2019-09-11	0.010	5801 W 16th St	Saint Louis Parl	MN	55416	Costco	f	2001	penny
455	melissa.keller23@gmail.com	2019-03-16	1.000	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	$1
456	melissa.keller23@gmail.com	2020-07-17	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1967	dime
457	melissa.keller23@gmail.com	2018-09-15	0.100	755 Prior Ave N	Saint Paul	MN	55104	Can Can Wonderland	f	1976	dime
458	melissa.keller23@gmail.com	2019-07-17	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	dime
459	melissa.keller23@gmail.com	2019-04-10	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1981	dime
460	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1984	dime
461	melissa.keller23@gmail.com	2019-01-20	0.100	1225 Estabrook Dr	Saint Paul	MN	55103	Como conservatory 	f	1987	dime
462	melissa.keller23@gmail.com	2019-05-20	0.100	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1989	dime
463	melissa.keller23@gmail.com	2018-08-04	0.100	1300 Midway Pkwy	Saint Paul	MN	55103	Como Mini Golf	f	1990	dime
464	melissa.keller23@gmail.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1990	dime
465	melissa.keller23@gmail.com	2019-03-18	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	dime
466	melissa.keller23@gmail.com	2019-04-01	0.100	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1993	dime
467	melissa.keller23@gmail.com	2019-06-15	0.100	216 Arundel Street	Saint Paul	MN	55102	216 arundel	f	1998	dime
468	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	dime
469	melissa.keller23@gmail.com	2019-07-01	0.100	211 7th St W	Saint Paul	MN	55102	Bar Louis	f	1999	dime
470	melissa.keller23@gmail.com	2018-10-26	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	2005	dime
471	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	dime
473	melissa.keller23@gmail.com	2019-06-20	0.100	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	2016	dime
474	melissa.keller23@gmail.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2018	dime
475	melissa.keller23@gmail.com	2019-09-01	0.100	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2019	dime
476	melissa.keller23@gmail.com	2018-10-20	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	dime
477	melissa.keller23@gmail.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1958	nickel
478	melissa.keller23@gmail.com	2019-02-05	0.050	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	nickel
479	melissa.keller23@gmail.com	2019-04-01	0.050	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1997	nickel
480	melissa.keller23@gmail.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	nickel
481	melissa.keller23@gmail.com	2019-04-01	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	nickel
482	melissa.keller23@gmail.com	2019-04-22	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2001	nickel
483	melissa.keller23@gmail.com	2019-06-14	0.050	275 White Bear Ave	Saint Paul	MN	55106	mgm liquors	f	2018	nickel
485	melissa.keller23@gmail.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1961	penny
486	melissa.keller23@gmail.com	2018-08-03	0.010	649 Grand Ave	Saint Paul	MN	55105	650 Alley	f	1968	penny
487	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1969	penny
488	melissa.keller23@gmail.com	2021-09-06	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1969	penny
489	melissa.keller23@gmail.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1974	penny
490	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1974	penny
491	melissa.keller23@gmail.com	2019-06-20	0.010	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	1974	penny
492	melissa.keller23@gmail.com	2018-08-23	0.010	275 White Bear Ave	Saint Paul	MN	55106	MGM liquor	f	1975	penny
493	melissa.keller23@gmail.com	2018-12-30	0.010	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1975	penny
494	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1976	penny
495	melissa.keller23@gmail.com	2019-04-22	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1978	penny
496	melissa.keller23@gmail.com	2019-05-21	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1981	penny
497	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1982	penny
498	melissa.keller23@gmail.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	penny
499	melissa.keller23@gmail.com	2019-07-10	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	penny
500	melissa.keller23@gmail.com	2020-11-15	0.010	33 County Rd B E	Saint Paul	MN	55117	Joe's sporting goods	f	1983	penny
501	melissa.keller23@gmail.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1984	penny
502	melissa.keller23@gmail.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1987	penny
503	melissa.keller23@gmail.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1988	penny
504	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Oxford St	f	1988	penny
505	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1989	penny
506	melissa.keller23@gmail.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1990	penny
507	melissa.keller23@gmail.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1992	penny
508	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1993	penny
509	melissa.keller23@gmail.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1995	penny
510	melissa.keller23@gmail.com	2019-05-04	0.010	400 Snelling Ave N	Saint Paul	MN	55104	Allianz field	f	1995	penny
511	melissa.keller23@gmail.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1997	penny
512	melissa.keller23@gmail.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1997	penny
513	melissa.keller23@gmail.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1998	penny
514	melissa.keller23@gmail.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	penny
515	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Milton St	f	2001	penny
516	melissa.keller23@gmail.com	2021-08-16	0.010	2530 Kasota Ave	Saint Paul	MN	55108	Napa Auto Parts	f	2002	penny
517	melissa.keller23@gmail.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2005	penny
518	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	penny
519	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	penny
520	melissa.keller23@gmail.com	2019-08-30	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2005	penny
521	melissa.keller23@gmail.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2007	penny
522	melissa.keller23@gmail.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2008	penny
523	melissa.keller23@gmail.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2010	penny
524	melissa.keller23@gmail.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2011	penny
525	melissa.keller23@gmail.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2012	penny
526	melissa.keller23@gmail.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2013	penny
527	melissa.keller23@gmail.com	2019-09-11	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2013	penny
528	melissa.keller23@gmail.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2015	penny
529	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	penny
530	melissa.keller23@gmail.com	2018-10-08	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2016	penny
531	melissa.keller23@gmail.com	2019-10-04	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2016	penny
532	melissa.keller23@gmail.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	penny
533	melissa.keller23@gmail.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	penny
534	melissa.keller23@gmail.com	2019-02-16	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	penny
535	melissa.keller23@gmail.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	penny
536	melissa.keller23@gmail.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	penny
537	melissa.keller23@gmail.com	2020-03-09	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	penny
538	melissa.keller23@gmail.com	2020-06-13	0.010	975 Grand Ave	Saint Paul	MN	55105	Jimmy johns	f	2017	penny
539	melissa.keller23@gmail.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	f	2017	penny
540	melissa.keller23@gmail.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2018	penny
541	melissa.keller23@gmail.com	2019-02-14	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	2018	penny
542	melissa.keller23@gmail.com	2020-02-01	0.010	6 West 6th Street	Saint Paul	MN	55102	Amsterdam bar and grill	f	2019	penny
543	melissa.keller23@gmail.com	2021-06-30	0.010	498 Selby Ave	Saint Paul	MN	55102	The Gnome	f	2021	penny
544	melissa.keller23@gmail.com	2018-08-04	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	penny
545	melissa.keller23@gmail.com	2018-09-08	0.010	649 Grand Ave	Saint Paul	MN	55105	653 Alley	f	\N	penny
546	melissa.keller23@gmail.com	2018-05-26	0.010	652 Grand Ave	Saint Paul	MN	55105	652 Alley	f	\N	penny
547	melissa.keller23@gmail.com	2018-05-27	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	penny
548	melissa.keller23@gmail.com	2018-06-07	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	penny
549	melissa.keller23@gmail.com	2018-06-15	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Alley	f	\N	penny
550	melissa.keller23@gmail.com	2018-07-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	penny
551	melissa.keller23@gmail.com	2018-07-16	0.010	651 Grand Ave	Saint Paul	MN	55105	651 Alley	f	\N	penny
552	melissa.keller23@gmail.com	2018-08-01	0.010	857 Grand Ave	Saint Paul	MN	55105	Billys	f	\N	penny
553	melissa.keller23@gmail.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	penny
554	melissa.keller23@gmail.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	penny
555	melissa.keller23@gmail.com	2018-10-22	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	penny
556	melissa.keller23@gmail.com	2018-10-29	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	\N	penny
564	melissa.keller23@gmail.com	2021-09-25	0.020	2277 Ford Pkwy	Saint Paul	MN	55116	PetCo	f	1964	penny
565	melissa.keller23@gmail.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	quarter
566	melissa.keller23@gmail.com	2019-08-28	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1980	quarter
567	melissa.keller23@gmail.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1991	quarter
568	melissa.keller23@gmail.com	2019-08-30	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1995	quarter
569	melissa.keller23@gmail.com	2019-03-16	0.250	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	quarter
570	melissa.keller23@gmail.com	2019-01-20	0.250	991 Lexington Pkwy N	Saint Paul	MN	55103	Gabes By The Park	f	2015	quarter
571	melissa.keller23@gmail.com	2018-05-26	0.250	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	quarter
573	melissa.keller23@gmail.com	2018-06-03	0.050	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	nickel 
574	melissa.keller23@gmail.com	2018-11-03	0.010	\N	Saint Paul	MN	55104	Marshall ave	f	1964	penny
575	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1981	penny
576	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1982	penny
577	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1984	penny
578	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1986	penny
579	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	2001	penny
580	melissa.keller23@gmail.com	2019-07-21	0.010	\N	Saint Paul	MN	\N	Marshall and Fairview	f	2019	penny
581	melissa.keller23@gmail.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny
582	melissa.keller23@gmail.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny
583	melissa.keller23@gmail.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny
584	melissa.keller23@gmail.com	2018-10-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	penny
585	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	\N	penny
588	melissa.keller23@gmail.com	2021-06-16	0.010	\N	Saint Paul	MN	\N	Frank Ave	f	\N	penny
589	melissa.keller23@gmail.com	2019-06-02	0.250	\N	Saint Paul	MN	\N	Grand Ave	f	2004	quarter
591	melissa.keller23@gmail.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1981	dime
592	melissa.keller23@gmail.com	2019-06-09	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1999	dime
593	melissa.keller23@gmail.com	2019-11-11	0.100	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2002	dime
594	melissa.keller23@gmail.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2014	dime
595	melissa.keller23@gmail.com	2018-05-30	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	dime
596	melissa.keller23@gmail.com	2018-06-23	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	dime
597	melissa.keller23@gmail.com	2018-07-19	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	dime
599	melissa.keller23@gmail.com	2019-01-10	0.050	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	nickel
600	melissa.keller23@gmail.com	2019-02-02	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1972	penny
601	melissa.keller23@gmail.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1974	penny
602	melissa.keller23@gmail.com	2018-07-31	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	penny
603	melissa.keller23@gmail.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	1978	penny
604	melissa.keller23@gmail.com	2019-01-10	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1981	penny
605	melissa.keller23@gmail.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	penny
606	melissa.keller23@gmail.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	penny
607	melissa.keller23@gmail.com	2019-06-17	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1996	penny
608	melissa.keller23@gmail.com	2018-08-07	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2004	penny
609	melissa.keller23@gmail.com	2019-04-29	0.010	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2015	penny
610	melissa.keller23@gmail.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2015	penny
611	melissa.keller23@gmail.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	2017	penny
612	melissa.keller23@gmail.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	penny
613	melissa.keller23@gmail.com	2021-09-25	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	penny
614	melissa.keller23@gmail.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
615	melissa.keller23@gmail.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
616	melissa.keller23@gmail.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
617	melissa.keller23@gmail.com	2018-07-14	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
618	melissa.keller23@gmail.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
619	melissa.keller23@gmail.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny
623	melissa.keller23@gmail.com	2019-09-29	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	dime
624	melissa.keller23@gmail.com	2018-09-15	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1998	dime
625	melissa.keller23@gmail.com	2019-09-22	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	dime
626	melissa.keller23@gmail.com	2018-09-02	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2011	dime
627	melissa.keller23@gmail.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	dime
628	melissa.keller23@gmail.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2017	dime
629	melissa.keller23@gmail.com	2021-09-11	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2021	dime
630	melissa.keller23@gmail.com	2018-06-19	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	dime
631	melissa.keller23@gmail.com	2018-07-28	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	dime
632	melissa.keller23@gmail.com	2018-09-23	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	dime
633	melissa.keller23@gmail.com	2018-09-02	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1987	nickel
634	melissa.keller23@gmail.com	2018-09-15	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2006	nickel
635	melissa.keller23@gmail.com	2018-07-28	0.050	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	nickel
636	melissa.keller23@gmail.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1961	penny
637	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1973	penny
638	melissa.keller23@gmail.com	2019-09-21	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1976	penny
639	melissa.keller23@gmail.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1978	penny
640	melissa.keller23@gmail.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1981	penny
641	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	penny
642	melissa.keller23@gmail.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1990	penny
643	melissa.keller23@gmail.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	penny
644	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2007	penny
645	melissa.keller23@gmail.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	penny
646	melissa.keller23@gmail.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	penny
647	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
648	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
649	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
650	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
651	melissa.keller23@gmail.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
652	melissa.keller23@gmail.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
653	melissa.keller23@gmail.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny
654	melissa.keller23@gmail.com	2018-09-02	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny
655	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny
656	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny
657	melissa.keller23@gmail.com	2018-08-19	0.030	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1997	penny
658	melissa.keller23@gmail.com	2018-08-25	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1996	quarter
659	melissa.keller23@gmail.com	2019-09-29	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	quarter
660	melissa.keller23@gmail.com	2020-11-21	0.100	7235 MN-61	Tofte	MN	55615	Holiday	f	1992	dime
661	melissa.keller23@gmail.com	2019-06-21	0.100	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	2001	dime
662	melissa.keller23@gmail.com	2019-06-21	0.010	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	1995	penny
664	melissa.keller23@gmail.com	2020-06-27	0.010	\N	\N	MN	\N	\N	f	1979	penny
665	melissa.keller23@gmail.com	2017-04-01	7.020	\N	\N	MN	\N	\N	f	\N	lump_sum
666	melissa.keller23@gmail.com	2019-08-22	0.010	\N	\N	MN	\N	\N	f	1982	penny
667	melissa.keller23@gmail.com	2018-07-22	0.250	\N	\N	MN	\N	\N	f	2008	quarter
668	melissa.keller23@gmail.com	2018-07-30	0.250	\N	\N	MN	\N	Found by Louisa 	f	\N	quarter
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mak
--

COPY public.users (email, fname, lname, password) FROM stdin;
melissa.keller23@gmail.com	Melissa	Keller	testing
test@email.com	Meliss2.0	ShesBetter	testing
t3@email.com	Melissa3.0	ShesCooler	testing
\.


--
-- Name: monies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mak
--

SELECT pg_catalog.setval('public.monies_id_seq', 676, true);


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

