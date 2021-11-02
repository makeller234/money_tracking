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
    money_type character varying(15) NOT NULL,
    dow integer
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

COPY public.monies (id, email, date, amount, address, city, state, zip, locname, missed, money_year, money_type, dow) FROM stdin;
37	melissa.keller23@gmail.com	2021-04-12	0.010	16396 Wagner Way	Eden Prairie	MN	55344	Tavern 4&5	t	\N	penny	\N
42	melissa.keller23@gmail.com	2020-06-27	0.100	60684 MN-23	Finlayson	MN	55735	Cenex	t	\N	dime	\N
56	melissa.keller23@gmail.com	2021-07-24	1.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$1	\N
57	melissa.keller23@gmail.com	2021-07-24	5.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$5	\N
75	melissa.keller23@gmail.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5	\N
76	melissa.keller23@gmail.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5	\N
77	melissa.keller23@gmail.com	2019-06-07	20.000	1504 7th St S	Minneapolis	MN	55454	House of Balls	t	\N	$20	\N
80	melissa.keller23@gmail.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	nickel	\N
81	melissa.keller23@gmail.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	nickel	\N
90	melissa.keller23@gmail.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	penny	\N
91	melissa.keller23@gmail.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	penny	\N
92	melissa.keller23@gmail.com	2019-05-23	0.010	3425 E Lake St 	Minneapolis	MN	55406	Subway	t	\N	penny	\N
93	melissa.keller23@gmail.com	2019-10-19	0.010	301 19th Ave S	Minneapolis	MN	55455	Humphrey School	t	\N	penny	\N
94	melissa.keller23@gmail.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	penny	\N
95	melissa.keller23@gmail.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	penny	\N
96	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny	\N
97	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny	\N
98	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny	\N
99	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny	\N
100	melissa.keller23@gmail.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	t	\N	penny	\N
102	melissa.keller23@gmail.com	2021-02-12	0.250	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	quarter	\N
105	melissa.keller23@gmail.com	2019-07-21	0.010	\N	Minneapolis	MN	\N	Lake and River Road	t	\N	penny	\N
163	melissa.keller23@gmail.com	2019-10-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	dime	\N
190	melissa.keller23@gmail.com	2021-04-05	0.050	824 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	t	\N	nickel	\N
191	melissa.keller23@gmail.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	pemmy	\N
387	melissa.keller23@gmail.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	penny	\N
388	melissa.keller23@gmail.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	penny	\N
389	melissa.keller23@gmail.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	penny	\N
390	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny	\N
391	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny	\N
392	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny	\N
393	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny	\N
394	melissa.keller23@gmail.com	2020-07-11	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny	\N
395	melissa.keller23@gmail.com	2021-03-02	0.010	2513 Central Ave NE	Minneapolis 	MN	55418	HolyLand	t	\N	penny	\N
439	melissa.keller23@gmail.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	dime	\N
440	melissa.keller23@gmail.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	dime	\N
442	melissa.keller23@gmail.com	2020-12-28	0.010	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	penny	\N
452	melissa.keller23@gmail.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshalls	t	\N	penny	\N
484	melissa.keller23@gmail.com	2019-01-08	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	nickel	\N
557	melissa.keller23@gmail.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny	\N
558	melissa.keller23@gmail.com	2019-01-02	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub foods	t	\N	penny	\N
559	melissa.keller23@gmail.com	2019-01-07	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	penny	\N
560	melissa.keller23@gmail.com	2019-01-08	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	penny	\N
561	melissa.keller23@gmail.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny	\N
562	melissa.keller23@gmail.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny	\N
563	melissa.keller23@gmail.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	t	\N	penny	\N
572	melissa.keller23@gmail.com	2019-08-11	0.100	\N	saint paul	MN	\N	Marshall and hamline	t	\N	dime	\N
586	melissa.keller23@gmail.com	2019-07-21	0.010	\N	saint Paul	MN	\N	Marshall and snelling	t	\N	penny	\N
587	melissa.keller23@gmail.com	2019-08-11	0.010	\N	saint paul	MN	\N	Marshall and snelling	t	\N	penny	\N
590	melissa.keller23@gmail.com	2020-06-06	0.250	\N	Saint paul	MN	55102	Marshall Ave and Dale Ave	t	\N	quarter	\N
598	melissa.keller23@gmail.com	2019-10-07	0.100	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	t	\N	dime	\N
620	melissa.keller23@gmail.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny	\N
621	melissa.keller23@gmail.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny	\N
622	melissa.keller23@gmail.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny	\N
663	melissa.keller23@gmail.com	2019-05-24	0.010	100 Jefferson Dr 	Zumbrota	MN	55992	Kwik Trip	t	\N	penny	\N
669	t3@email.com	2021-11-02	0.010	test	test	mn	12345	test	t	1234	test	1
670	t3@email.com	2021-11-01	0.010	test	test	te	12345	test	t	1234	test	0
671	t3@email.com	2021-11-02	0.010	test	test	te	12345	test	t	1234	test	1
672	t3@email.com	2021-11-02	0.010	test	test	sw	1234	asdg	t	123	afdaffg	1
673	melissa.keller23@gmail.com	2021-10-30	0.250	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2018	quarter	5
674	melissa.keller23@gmail.com	2021-10-30	0.050	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2021	nickel	5
675	t3@email.com	2021-11-02	0.010	test	test	te	123	test	t	123	est	1
1	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1978	penny	\N
2	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	penny	\N
3	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	penny	\N
4	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1990	penny	\N
5	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1997	penny	\N
6	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1999	penny	\N
7	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2011	penny	\N
8	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2015	penny	\N
9	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny	\N
10	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny	\N
11	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny	\N
12	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	penny	\N
13	melissa.keller23@gmail.com	2021-05-30	0.100	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2004	dime	\N
14	melissa.keller23@gmail.com	2021-05-30	0.010	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2016	penny	\N
15	melissa.keller23@gmail.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	1992	penny	\N
16	melissa.keller23@gmail.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	2019	penny	\N
17	melissa.keller23@gmail.com	2018-06-10	0.010	7835 150th St W	Apple Valley	MN	55124	Walmart	f	\N	penny	\N
18	melissa.keller23@gmail.com	2019-03-22	0.100	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1990	dime	\N
19	melissa.keller23@gmail.com	2019-03-22	0.050	60 E Broadway	Bloomington	MN	55425	Mall of America	f	2000	nickel	\N
20	melissa.keller23@gmail.com	2019-01-06	0.010	324 W Marketplace	Bloomington	MN	55425	Nordstrom's Rack	f	1981	penny	\N
21	melissa.keller23@gmail.com	2019-03-22	0.010	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1981	penny	\N
22	melissa.keller23@gmail.com	2019-01-11	0.250	\N	Bloomington	MN	\N	Minneapolis−Saint Paul International Airport	f	2015	quarter	\N
23	melissa.keller23@gmail.com	2018-07-15	0.010	8089 Brooklyn Blvd	Brooklyn Park	MN	55445	Panda Garden Buffet	f	\N	penny	\N
24	melissa.keller23@gmail.com	2018-12-02	0.010	15400 Buck Hill Rd	Burnsville	MN	55306	Buck Hill	f	1973	penny	\N
25	melissa.keller23@gmail.com	2019-07-09	0.010	14050 Burnhaven Dr	Burnsville	MN	55337	Costco	f	1996	penny	\N
26	melissa.keller23@gmail.com	2021-01-21	0.010	900 Burnsville Pkwy	Burnsville	MN	55337	Holiday	f	2013	penny	\N
27	melissa.keller23@gmail.com	2019-06-12	0.010	2000 Hwy 13 E	Burnsville	MN	55337	Dollar Tree parking lot	f	2018	penny	\N
28	melissa.keller23@gmail.com	2019-08-10	0.010	7210 E Point Douglas Rd S	Cottage Grove	MN	55016	TJMaxx	f	1970	penny	\N
29	melissa.keller23@gmail.com	2018-05-19	0.100	\N	Duluth 	MN	55802	\N	f	\N	dime	\N
30	melissa.keller23@gmail.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	1975	penny	\N
31	melissa.keller23@gmail.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	2013	penny	\N
32	melissa.keller23@gmail.com	2018-05-19	0.010	\N	Duluth 	MN	55802	\N	f	\N	penny	\N
33	melissa.keller23@gmail.com	2019-08-16	0.250	350 Harbor Dr	Duluth 	MN	55802	Bayfront Festival Parl	f	2015	quarter	\N
34	melissa.keller23@gmail.com	2019-06-01	0.010	2000 Cliff Lake Rd	Eagan	MN	55122	Target	f	2017	penny	\N
35	melissa.keller23@gmail.com	2019-04-01	0.010	1298 Promenade Pl	Eagan	MN	55121	Qdoba	f	2018	penny	\N
36	melissa.keller23@gmail.com	2019-06-01	0.010	1250 Town Centre Dr	Eagan	MN	55123	Koyoto	f	\N	penny	\N
38	melissa.keller23@gmail.com	2019-02-16	0.100	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2010	dime	\N
39	melissa.keller23@gmail.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2005	nickel	\N
40	melissa.keller23@gmail.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2017	nickel	\N
41	melissa.keller23@gmail.com	2019-02-16	0.250	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	1999	quarter	\N
43	melissa.keller23@gmail.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik Trip	f	2014	penny	\N
44	melissa.keller23@gmail.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik trip	f	2017	penny	\N
45	melissa.keller23@gmail.com	2021-03-27	0.010	113 E 2nd St E	Hastings	MN	55033	Muse2320	f	2021	penny	\N
46	melissa.keller23@gmail.com	2019-08-10	0.250	101 2nd St E,	Hastings	MN	55033	Lock and Dam Eatery	f	1974	quarter	\N
47	melissa.keller23@gmail.com	2019-01-14	0.050	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2014	nickel	\N
48	melissa.keller23@gmail.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	1982	penny	\N
49	melissa.keller23@gmail.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2013	penny	\N
50	melissa.keller23@gmail.com	2019-01-15	0.010	53-660 Kamehameha Hwy	Hauula	HI	96717	53-660 Kamehameha Hwy	f	2018	penny	\N
51	melissa.keller23@gmail.com	2019-01-12	1.000	99-500 Salt Lake Blvd	Honolulu	HI	96818	Aloha Stadium	f	2013	bill	\N
52	melissa.keller23@gmail.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1969	penny	\N
53	melissa.keller23@gmail.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1971	penny	\N
54	melissa.keller23@gmail.com	2019-01-16	0.010	2330 Kalakaua Ave	Honolulu	HI	69815	International Marketplace	f	1992	penny	\N
55	melissa.keller23@gmail.com	2019-01-18	0.010	300 Rodgers Blvd	Honolulu	HI	96819	Airport	f	2012	penny	\N
58	melissa.keller23@gmail.com	2021-07-24	0.100	Cedar Street	Houston	MN	55943	Hoedown	f	2008	dime	\N
59	melissa.keller23@gmail.com	2020-09-05	0.010	103 E Cedar St	Houston	MN	55943	Cenex	f	2005	penny	\N
60	melissa.keller23@gmail.com	2019-07-19	0.100	141 Carmichael Rd	Hudson	WI	54016	Walgreens	f	2015	dime	\N
61	melissa.keller23@gmail.com	2019-01-15	0.100	108 Hekili St	Kailu	HI	96734	Foodland	f	2007	dime	\N
62	melissa.keller23@gmail.com	2018-07-29	0.010	9242 Hudson Blvd N	Lake Elmo	MN	55042	Bride to Be Consignment	f	\N	penny	\N
63	melissa.keller23@gmail.com	2020-11-19	0.010	18275 Kenrick Ave	Lakeville	MN	55044	Target	f	1991	penny	\N
64	melissa.keller23@gmail.com	2021-05-26	0.010	20710 Keokuk Ave	Lakeville	MN	55044	Walmart	f	2010	penny	\N
65	melissa.keller23@gmail.com	2019-09-29	0.250	16854 Javelin	Lakeville	MN	55044	16854 Javelin	f	1996	quarter	\N
66	melissa.keller23@gmail.com	2018-12-20	0.100	5339 MN-61	Lutsen	MN	55612	Lutsen Liquors	f	1996	dime	\N
67	melissa.keller23@gmail.com	2018-12-20	0.100	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort	f	2011	dime	\N
68	melissa.keller23@gmail.com	2018-12-22	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1978	penny	\N
69	melissa.keller23@gmail.com	2018-12-20	0.010	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort parking lot	f	1981	penny	\N
70	melissa.keller23@gmail.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1990	penny	\N
71	melissa.keller23@gmail.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1999	penny	\N
72	melissa.keller23@gmail.com	2020-01-21	0.010	51 W 51st St	Manhattan	NY	10019	Duane reade	f	1980	penny	\N
73	melissa.keller23@gmail.com	2020-01-21	0.010	\N	Manhattan	NY	10036	Times Square	f	2018	penny	\N
74	melissa.keller23@gmail.com	2021-06-05	0.010	5050 Independence St	Maple Plain	MN	55359	Veterans Park	f	\N	penny	\N
78	melissa.keller23@gmail.com	2021-10-15	0.100	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1984	dime	\N
79	melissa.keller23@gmail.com	2021-06-22	0.100	2513 Central Ave NE	Minneapolis	MN	55418	HolyLand	f	2003	dime	\N
82	melissa.keller23@gmail.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1968	penny	\N
83	melissa.keller23@gmail.com	2021-10-26	0.010	3815 E Lake St	Minneapolis	MN	55406	Longfellow Market	f	1971	penny	\N
84	melissa.keller23@gmail.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	f	1976	penny	\N
85	melissa.keller23@gmail.com	2018-08-28	0.010	\N	Minneapolis	MN	55414	14th Ave SE	f	1980	penny	\N
86	melissa.keller23@gmail.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1981	penny	\N
87	melissa.keller23@gmail.com	2020-09-19	0.010	1931 Minnehaha Ave	Minneapolis	MN	55405	Taco Bell	f	1996	penny	\N
88	melissa.keller23@gmail.com	2021-10-26	0.010	36th Ave s and 29th st	Minneapolis	MN	55406	\N	f	2003	penny	\N
89	melissa.keller23@gmail.com	2018-06-15	0.010	84 Church Street SE	Minneapolis	MN	55455	Surdyks at Northrop	f	\N	penny	\N
101	melissa.keller23@gmail.com	2019-01-24	0.250	\N	Minneapolis	MN	\N	14th Ave SE	f	2018	quarter	\N
103	melissa.keller23@gmail.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	1998	penny	\N
104	melissa.keller23@gmail.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	2021	penny	\N
106	melissa.keller23@gmail.com	2019-09-03	5.000	\N	Minneapolis 	MN	\N	38th and lake st	f	2009	$5	\N
107	melissa.keller23@gmail.com	2019-05-08	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1970	Canadian penny	\N
108	melissa.keller23@gmail.com	2021-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	\N	Canadian penny	\N
109	melissa.keller23@gmail.com	2019-11-04	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1999	dime	\N
110	melissa.keller23@gmail.com	2019-08-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2015	dime	\N
111	melissa.keller23@gmail.com	2020-08-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1966	dime	\N
112	melissa.keller23@gmail.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1972	dime	\N
113	melissa.keller23@gmail.com	2021-10-02	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1972	dime	\N
114	melissa.keller23@gmail.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1974	dime	\N
115	melissa.keller23@gmail.com	2019-09-23	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1976	dime	\N
116	melissa.keller23@gmail.com	2019-12-13	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1978	dime	\N
117	melissa.keller23@gmail.com	2020-03-19	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	1980	dime	\N
118	melissa.keller23@gmail.com	2018-11-17	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1986	dime	\N
119	melissa.keller23@gmail.com	2019-06-17	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	dime	\N
178	melissa.keller23@gmail.com	2021-08-29	0.050	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2000	nickel	\N
120	melissa.keller23@gmail.com	2019-05-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1994	dime	\N
121	melissa.keller23@gmail.com	2018-06-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	dime	\N
122	melissa.keller23@gmail.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	dime	\N
123	melissa.keller23@gmail.com	2019-01-29	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1999	dime	\N
124	melissa.keller23@gmail.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	1999	dime	\N
125	melissa.keller23@gmail.com	2020-03-16	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	dime	\N
126	melissa.keller23@gmail.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	dime	\N
127	melissa.keller23@gmail.com	2019-12-12	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2000	dime	\N
128	melissa.keller23@gmail.com	2019-10-22	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2001	dime	\N
129	melissa.keller23@gmail.com	2019-03-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2002	dime	\N
130	melissa.keller23@gmail.com	2019-09-23	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2002	dime	\N
131	melissa.keller23@gmail.com	2019-07-15	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2003	dime	\N
132	melissa.keller23@gmail.com	2020-08-10	0.100	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2003	dime	\N
133	melissa.keller23@gmail.com	2021-02-13	0.100	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	dime	\N
134	melissa.keller23@gmail.com	2018-11-12	0.100	\N	Minneapolis 	MN	55455	17th Ave SE	f	2005	dime	\N
135	melissa.keller23@gmail.com	2019-04-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2005	dime	\N
136	melissa.keller23@gmail.com	2021-05-25	0.100	110 Penn Ave N	Minneapolis 	MN	55405	Bassett Park	f	2005	dime	\N
137	melissa.keller23@gmail.com	2018-10-31	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2006	dime	\N
138	melissa.keller23@gmail.com	2018-12-17	0.100	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	2006	dime	\N
139	melissa.keller23@gmail.com	2019-02-15	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2006	dime	\N
140	melissa.keller23@gmail.com	2019-06-25	0.100	2858 26th Ave S	Minneapolis 	MN	55406	Dollar Store Parking Lot	f	2006	dime	\N
141	melissa.keller23@gmail.com	2019-09-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2006	dime	\N
142	melissa.keller23@gmail.com	2019-10-19	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2007	dime	\N
143	melissa.keller23@gmail.com	2018-10-02	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2008	dime	\N
144	melissa.keller23@gmail.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2008	dime	\N
145	melissa.keller23@gmail.com	2019-05-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2008	dime	\N
146	melissa.keller23@gmail.com	2019-10-25	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2010	dime	\N
147	melissa.keller23@gmail.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2011	dime	\N
148	melissa.keller23@gmail.com	2019-05-20	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	dime	\N
149	melissa.keller23@gmail.com	2019-09-08	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	2012	dime	\N
150	melissa.keller23@gmail.com	2018-12-31	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2014	dime	\N
151	melissa.keller23@gmail.com	2020-03-19	0.100	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	2014	dime	\N
152	melissa.keller23@gmail.com	2019-09-27	0.100	\N	Minneapolis 	MN	\N	14th Ave SE	f	2015	dime	\N
153	melissa.keller23@gmail.com	2020-03-21	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2015	dime	\N
154	melissa.keller23@gmail.com	2018-12-06	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	dime	\N
155	melissa.keller23@gmail.com	2020-03-12	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2016	dime	\N
156	melissa.keller23@gmail.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2017	dime	\N
157	melissa.keller23@gmail.com	2019-02-17	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	dime	\N
158	melissa.keller23@gmail.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2018	dime	\N
159	melissa.keller23@gmail.com	2021-07-31	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2019	dime	\N
160	melissa.keller23@gmail.com	2021-09-09	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2021	dime	\N
161	melissa.keller23@gmail.com	2018-05-22	0.100	\N	Minneapolis 	MN	\N	\N	f	\N	Dime	\N
162	melissa.keller23@gmail.com	2019-05-05	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	dime	\N
164	melissa.keller23@gmail.com	2019-11-24	0.100	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	\N	dime	\N
165	melissa.keller23@gmail.com	2021-09-24	1.000	501 30th Ave SE	Minneapolis 	MN	55414	The Market at Malcolm yards	f	2009	dollar	\N
166	melissa.keller23@gmail.com	2019-10-04	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	dollar coin	\N
167	melissa.keller23@gmail.com	2019-09-17	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	dollar coin	\N
168	melissa.keller23@gmail.com	2019-03-15	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2008	dollar coin	\N
169	melissa.keller23@gmail.com	2019-06-06	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2010	dollar coin	\N
170	melissa.keller23@gmail.com	2019-05-14	0.005	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	half penny	\N
171	melissa.keller23@gmail.com	2018-10-30	0.050	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	nickel	\N
172	melissa.keller23@gmail.com	2021-03-19	0.050	1501 University Ave SE	Minneapolis 	MN	55414	DP Dough	f	1980	nickel	\N
173	melissa.keller23@gmail.com	2021-06-07	0.050	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1983	nickel	\N
174	melissa.keller23@gmail.com	2020-03-19	0.050	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	1994	nickel	\N
175	melissa.keller23@gmail.com	2018-12-10	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	1995	nickel	\N
176	melissa.keller23@gmail.com	2019-02-14	0.050	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	1999	nickel	\N
177	melissa.keller23@gmail.com	2019-04-07	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	2000	nickel	\N
179	melissa.keller23@gmail.com	2018-08-27	0.050	2929 36th Ave S	Minneapolis 	MN	55406	Karl's porch	f	2001	nickel	\N
180	melissa.keller23@gmail.com	2020-03-14	0.050	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2001	nickel	\N
181	melissa.keller23@gmail.com	2020-10-01	0.050	\N	Minneapolis 	MN	\N	Washington Ave SE	f	2007	nickel	\N
182	melissa.keller23@gmail.com	2018-10-31	0.050	2929 36th Ave S	Minneapolis 	MN	55406	2929 26th Ave s	f	2012	nickel	\N
183	melissa.keller23@gmail.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2015	nickel	\N
184	melissa.keller23@gmail.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2016	nickel	\N
185	melissa.keller23@gmail.com	2019-08-05	0.050	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	nickel	\N
186	melissa.keller23@gmail.com	2021-06-01	0.050	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2020	nickel	\N
187	melissa.keller23@gmail.com	2021-09-12	0.050	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2021	nickel	\N
188	melissa.keller23@gmail.com	2018-05-22	0.050	\N	Minneapolis 	MN	\N	\N	f	\N	nickel	\N
189	melissa.keller23@gmail.com	2018-09-07	0.050	\N	Minneapolis 	MN	55414	17th Ave SE	f	\N	nickel	\N
192	melissa.keller23@gmail.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1988	pemny	\N
193	melissa.keller23@gmail.com	2019-08-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1959	penny	\N
194	melissa.keller23@gmail.com	2019-07-15	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1960	penny	\N
195	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1961	penny	\N
196	melissa.keller23@gmail.com	2020-01-07	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1962	penny	\N
197	melissa.keller23@gmail.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1963	penny	\N
198	melissa.keller23@gmail.com	2019-07-21	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1964	penny	\N
199	melissa.keller23@gmail.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	penny	\N
200	melissa.keller23@gmail.com	2020-05-23	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th St s alley	f	1964	penny	\N
201	melissa.keller23@gmail.com	2021-05-11	0.010	302 15th Ave SE	Minneapolis 	MN	55414	Raising Canes	f	1964	penny	\N
202	melissa.keller23@gmail.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1968	penny	\N
203	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1969	penny	\N
204	melissa.keller23@gmail.com	2019-03-14	0.010	\N	Minneapolis 	MN	\N	Scholars Walk	f	1971	penny	\N
205	melissa.keller23@gmail.com	2019-10-09	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1971	penny	\N
206	melissa.keller23@gmail.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1972	penny	\N
207	melissa.keller23@gmail.com	2019-08-28	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1972	penny	\N
208	melissa.keller23@gmail.com	2018-11-08	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1973	penny	\N
209	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1973	penny	\N
210	melissa.keller23@gmail.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop locker room	f	1973	penny	\N
211	melissa.keller23@gmail.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1974	penny	\N
212	melissa.keller23@gmail.com	2018-07-31	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	penny	\N
213	melissa.keller23@gmail.com	2019-01-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	penny	\N
214	melissa.keller23@gmail.com	2019-07-14	0.010	4400 E Lake St	Minneapolis 	MN	55406	Dairy Queen	f	1975	penny	\N
215	melissa.keller23@gmail.com	2019-10-20	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1975	penny	\N
216	melissa.keller23@gmail.com	2018-09-25	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	1976	penny	\N
217	melissa.keller23@gmail.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1976	penny	\N
218	melissa.keller23@gmail.com	2021-09-26	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1977	penny	\N
219	melissa.keller23@gmail.com	2018-08-17	0.010	\N	Minneapolis 	MN	55414	Dinky town	f	1978	penny	\N
220	melissa.keller23@gmail.com	2020-01-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1978	penny	\N
221	melissa.keller23@gmail.com	2021-09-10	0.010	231 Pillsbury Dr SE	Minneapolis 	MN	55455	Williamson Hall	f	1978	penny	\N
222	melissa.keller23@gmail.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1979	penny	\N
223	melissa.keller23@gmail.com	2019-09-09	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1979	penny	\N
224	melissa.keller23@gmail.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	penny	\N
225	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1980	penny	\N
226	melissa.keller23@gmail.com	2019-02-22	0.010	275 Market St	Minneapolis 	MN	55405	International Market Square	f	1980	penny	\N
227	melissa.keller23@gmail.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1980	penny	\N
228	melissa.keller23@gmail.com	2020-01-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1981	penny	\N
229	melissa.keller23@gmail.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1981	penny	\N
230	melissa.keller23@gmail.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1981	penny	\N
231	melissa.keller23@gmail.com	2021-10-12	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1981	penny	\N
232	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1982	penny	\N
233	melissa.keller23@gmail.com	2019-01-09	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1982	penny	\N
234	melissa.keller23@gmail.com	2019-07-30	0.010	14 Church St SE 	Minneapolis 	MN	55455	Nolte Garage	f	1982	penny	\N
235	melissa.keller23@gmail.com	2019-04-07	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1983	penny	\N
236	melissa.keller23@gmail.com	2019-12-06	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	penny	\N
237	melissa.keller23@gmail.com	2020-06-14	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	1983	penny	\N
238	melissa.keller23@gmail.com	2021-04-04	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	penny	\N
239	melissa.keller23@gmail.com	2019-02-24	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1984	penny	\N
240	melissa.keller23@gmail.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	1984	penny	\N
241	melissa.keller23@gmail.com	2019-04-13	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	penny	\N
242	melissa.keller23@gmail.com	2019-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	penny	\N
243	melissa.keller23@gmail.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1985	penny	\N
244	melissa.keller23@gmail.com	2021-03-14	0.010	\N	Minneapolis 	MN	\N	44th ave s	f	1985	penny	\N
245	melissa.keller23@gmail.com	2018-11-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1986	penny	\N
246	melissa.keller23@gmail.com	2019-03-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1986	penny	\N
247	melissa.keller23@gmail.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	penny	\N
248	melissa.keller23@gmail.com	2019-10-21	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	penny	\N
249	melissa.keller23@gmail.com	2021-02-23	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	1986	penny	\N
250	melissa.keller23@gmail.com	2018-11-25	0.010	\N	Minneapolis 	MN	\N	37th Ave s	f	1987	penny	\N
251	melissa.keller23@gmail.com	2018-12-31	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1987	penny	\N
252	melissa.keller23@gmail.com	2021-01-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	1987	penny	\N
253	melissa.keller23@gmail.com	2019-07-05	0.010	4320 E Lake St 	Minneapolis 	MN	55406	Speedway	f	1988	penny	\N
254	melissa.keller23@gmail.com	2019-08-24	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1988	penny	\N
255	melissa.keller23@gmail.com	2021-09-08	0.010	3916 E Lake St	Minneapolis 	MN	55406	East Lake Liquor	f	1988	penny	\N
256	melissa.keller23@gmail.com	2019-05-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1990	penny	\N
257	melissa.keller23@gmail.com	2019-06-25	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1990	penny	\N
258	melissa.keller23@gmail.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1990	penny	\N
259	melissa.keller23@gmail.com	2020-10-22	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	1990	penny	\N
260	melissa.keller23@gmail.com	2019-03-16	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1991	penny	\N
261	melissa.keller23@gmail.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	1991	penny	\N
262	melissa.keller23@gmail.com	2019-10-09	0.010	\N	Minneapolis 	MN	55455	17th Ave SE	f	1991	penny	\N
263	melissa.keller23@gmail.com	2020-08-20	0.010	\N	Minneapolis 	MN	\N	Washington Ave SE	f	1991	penny	\N
264	melissa.keller23@gmail.com	2019-02-27	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1992	penny	\N
265	melissa.keller23@gmail.com	2020-10-24	0.010	3915 E Lake St	Minneapolis 	MN	55406	Ace Hardware	f	1992	penny	\N
266	melissa.keller23@gmail.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1994	penny	\N
267	melissa.keller23@gmail.com	2021-07-22	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1994	penny	\N
268	melissa.keller23@gmail.com	2018-12-01	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1995	penny	\N
269	melissa.keller23@gmail.com	2019-06-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1995	penny	\N
270	melissa.keller23@gmail.com	2019-09-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	penny	\N
271	melissa.keller23@gmail.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	penny	\N
272	melissa.keller23@gmail.com	2019-12-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	penny	\N
273	melissa.keller23@gmail.com	2020-07-18	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1996	penny	\N
274	melissa.keller23@gmail.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1996	penny	\N
275	melissa.keller23@gmail.com	2021-03-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	northrop/nolte tunnel	f	1996	penny	\N
276	melissa.keller23@gmail.com	2019-10-22	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1997	penny	\N
277	melissa.keller23@gmail.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1997	penny	\N
278	melissa.keller23@gmail.com	2018-11-19	0.010	\N	Minneapolis 	MN	55414	17th Ave SE	f	1998	penny	\N
279	melissa.keller23@gmail.com	2019-02-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1998	penny	\N
280	melissa.keller23@gmail.com	2019-05-08	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1998	penny	\N
281	melissa.keller23@gmail.com	2019-07-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1998	penny	\N
282	melissa.keller23@gmail.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	penny	\N
283	melissa.keller23@gmail.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	penny	\N
284	melissa.keller23@gmail.com	2019-06-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	penny	\N
285	melissa.keller23@gmail.com	2019-06-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1999	penny	\N
286	melissa.keller23@gmail.com	2018-09-04	0.010	\N	Minneapolis 	MN	55455	16th Ave SE	f	2000	penny	\N
287	melissa.keller23@gmail.com	2018-11-20	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2000	penny	\N
288	melissa.keller23@gmail.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop box office	f	2000	penny	\N
289	melissa.keller23@gmail.com	2021-09-03	0.010	5001 S 34th Ave	Minneapolis 	MN	55417	Casa Maria	f	2000	penny	\N
290	melissa.keller23@gmail.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	penny	\N
291	melissa.keller23@gmail.com	2019-01-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	penny	\N
292	melissa.keller23@gmail.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	penny	\N
293	melissa.keller23@gmail.com	2019-04-04	0.010	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	2001	penny	\N
294	melissa.keller23@gmail.com	2019-09-26	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	penny	\N
472	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	dime	\N
295	melissa.keller23@gmail.com	2019-10-06	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2001	penny	\N
296	melissa.keller23@gmail.com	2020-04-07	0.010	\N	Minneapolis 	MN	\N	Mississippi River	f	2001	penny	\N
297	melissa.keller23@gmail.com	2021-01-10	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2001	penny	\N
298	melissa.keller23@gmail.com	2018-12-10	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2002	penny	\N
299	melissa.keller23@gmail.com	2019-05-28	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2002	penny	\N
300	melissa.keller23@gmail.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2004	penny	\N
301	melissa.keller23@gmail.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2004	penny	\N
302	melissa.keller23@gmail.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2004	penny	\N
303	melissa.keller23@gmail.com	2020-03-14	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	penny	\N
304	melissa.keller23@gmail.com	2019-10-23	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	penny	\N
305	melissa.keller23@gmail.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	2005	penny	\N
306	melissa.keller23@gmail.com	2019-12-13	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2006	penny	\N
307	melissa.keller23@gmail.com	2019-04-06	0.010	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2007	penny	\N
308	melissa.keller23@gmail.com	2019-04-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2007	penny	\N
309	melissa.keller23@gmail.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2007	penny	\N
310	melissa.keller23@gmail.com	2020-12-12	0.010	\N	Minneapolis 	MN	\N	\N	f	2007	penny	\N
311	melissa.keller23@gmail.com	2018-09-20	0.010	\N	Minneapolis 	MN	55414	14th Ave SE	f	2008	penny	\N
312	melissa.keller23@gmail.com	2019-09-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2008	penny	\N
313	melissa.keller23@gmail.com	2018-11-27	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	2010	penny	\N
314	melissa.keller23@gmail.com	2019-12-05	0.010	400 21st Ave S	Minneapolis 	MN	55455	21st Ave Ramp	f	2011	penny	\N
315	melissa.keller23@gmail.com	2020-03-21	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2011	penny	\N
316	melissa.keller23@gmail.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2011	penny	\N
317	melissa.keller23@gmail.com	2021-02-01	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2011	penny	\N
318	melissa.keller23@gmail.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	penny	\N
319	melissa.keller23@gmail.com	2020-03-25	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2012	penny	\N
320	melissa.keller23@gmail.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	penny	\N
321	melissa.keller23@gmail.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2013	penny	\N
322	melissa.keller23@gmail.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	penny	\N
323	melissa.keller23@gmail.com	2018-10-03	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2014	penny	\N
324	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2014	penny	\N
325	melissa.keller23@gmail.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	2014	penny	\N
326	melissa.keller23@gmail.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	2014	penny	\N
327	melissa.keller23@gmail.com	2020-10-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2014	penny	\N
328	melissa.keller23@gmail.com	2019-05-28	0.010	324 14th Ave SE	Minneapolis 	MN	55414	Qdoba	f	2015	penny	\N
329	melissa.keller23@gmail.com	2021-06-15	0.010	601 SE Main St	Minneapolis 	MN	55414	Stone Arch Apartments	f	2015	penny	\N
330	melissa.keller23@gmail.com	2018-09-30	0.010	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	2016	penny	\N
331	melissa.keller23@gmail.com	2019-02-12	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	penny	\N
332	melissa.keller23@gmail.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2016	penny	\N
333	melissa.keller23@gmail.com	2019-04-03	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2016	penny	\N
334	melissa.keller23@gmail.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2016	penny	\N
335	melissa.keller23@gmail.com	2018-11-20	0.010	\N	Minneapolis 	MN	\N	University Ave 	f	2017	penny	\N
336	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2017	penny	\N
337	melissa.keller23@gmail.com	2018-12-26	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	penny	\N
338	melissa.keller23@gmail.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	penny	\N
339	melissa.keller23@gmail.com	2019-02-22	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2017	penny	\N
340	melissa.keller23@gmail.com	2019-03-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2017	penny	\N
341	melissa.keller23@gmail.com	2019-07-20	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	2017	penny	\N
342	melissa.keller23@gmail.com	2020-05-06	0.010	\N	Minneapolis 	MN	\N	29th and 36th St s	f	2017	penny	\N
343	melissa.keller23@gmail.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2017	penny	\N
344	melissa.keller23@gmail.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	penny	\N
345	melissa.keller23@gmail.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2018	penny	\N
346	melissa.keller23@gmail.com	2019-04-15	0.010	417 14th Ave SE	Minneapolis 	MN	55414	Kafe421	f	2018	penny	\N
347	melissa.keller23@gmail.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	penny	\N
348	melissa.keller23@gmail.com	2019-06-11	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2019	penny	\N
349	melissa.keller23@gmail.com	2019-09-04	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2019	penny	\N
350	melissa.keller23@gmail.com	2019-09-12	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	penny	\N
351	melissa.keller23@gmail.com	2019-09-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2019	penny	\N
352	melissa.keller23@gmail.com	2019-12-16	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	penny	\N
353	melissa.keller23@gmail.com	2021-03-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S	f	2019	penny	\N
354	melissa.keller23@gmail.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	penny	\N
355	melissa.keller23@gmail.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2019	penny	\N
356	melissa.keller23@gmail.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2020	penny	\N
357	melissa.keller23@gmail.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2020	penny	\N
358	melissa.keller23@gmail.com	2021-03-10	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	2020	penny	\N
359	melissa.keller23@gmail.com	2021-05-03	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S alley	f	2020	penny	\N
360	melissa.keller23@gmail.com	2021-07-08	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2021	penny	\N
361	melissa.keller23@gmail.com	2021-07-20	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	2021	penny	\N
362	melissa.keller23@gmail.com	2021-07-27	0.010	326 14th Ave SE	Minneapolis 	MN	55414	Pot Bellys	f	2021	penny	\N
363	melissa.keller23@gmail.com	2019-04-11	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny	\N
364	melissa.keller23@gmail.com	2018-09-18	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny	\N
365	melissa.keller23@gmail.com	2018-05-29	0.010	\N	Minneapolis 	MN	\N	U Campus	f	\N	penny	\N
366	melissa.keller23@gmail.com	2018-06-08	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	penny	\N
367	melissa.keller23@gmail.com	2018-06-15	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny	\N
368	melissa.keller23@gmail.com	2018-07-02	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	penny	\N
369	melissa.keller23@gmail.com	2018-07-06	0.010	\N	Minneapolis 	MN	55455	Washington Ave SE	f	\N	penny	\N
370	melissa.keller23@gmail.com	2018-07-27	0.010	1 Twins Way	Minneapolis 	MN	55403	Target Field	f	\N	penny	\N
371	melissa.keller23@gmail.com	2018-10-23	0.010	309 19th Ave S	Minneapolis 	MN	55455	Wilson library	f	\N	penny	\N
372	melissa.keller23@gmail.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	penny	\N
373	melissa.keller23@gmail.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	penny	\N
374	melissa.keller23@gmail.com	2018-11-16	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	penny	\N
375	melissa.keller23@gmail.com	2018-11-16	0.010	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	\N	penny	\N
376	melissa.keller23@gmail.com	2018-12-10	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	penny	\N
377	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny	\N
378	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny	\N
379	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny	\N
380	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny	\N
381	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	penny	\N
382	melissa.keller23@gmail.com	2019-03-15	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	penny	\N
383	melissa.keller23@gmail.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	penny	\N
384	melissa.keller23@gmail.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	penny	\N
385	melissa.keller23@gmail.com	2019-06-08	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	\N	penny	\N
386	melissa.keller23@gmail.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	\N	penny	\N
396	melissa.keller23@gmail.com	2021-05-04	0.010	3425 E Lake St	Minneapolis 	MN	55406	Subway	f	\N	penny	\N
397	melissa.keller23@gmail.com	2021-05-13	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	\N	penny	\N
398	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1968	penny	\N
399	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1975	penny	\N
400	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	penny	\N
401	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	penny	\N
402	melissa.keller23@gmail.com	2021-08-31	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	penny	\N
403	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2004	penny	\N
404	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	penny	\N
405	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2009	penny	\N
406	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2014	penny	\N
407	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2018	penny	\N
408	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	penny	\N
409	melissa.keller23@gmail.com	2020-05-17	0.250	\N	Minneapolis 	MN	\N	29th and 32nd St	f	1974	quarter	\N
410	melissa.keller23@gmail.com	2019-03-15	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	quarter	\N
411	melissa.keller23@gmail.com	2019-11-08	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	quarter	\N
412	melissa.keller23@gmail.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1988	quarter	\N
413	melissa.keller23@gmail.com	2018-12-08	0.250	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	quarter	\N
414	melissa.keller23@gmail.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1995	quarter	\N
415	melissa.keller23@gmail.com	2019-02-17	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1998	quarter	\N
416	melissa.keller23@gmail.com	2019-03-22	0.250	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave Alley	f	1998	quarter	\N
417	melissa.keller23@gmail.com	2019-04-29	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	quarter	\N
418	melissa.keller23@gmail.com	2019-02-25	0.250	\N	Minneapolis 	MN	\N	University Ave	f	2000	quarter	\N
419	melissa.keller23@gmail.com	2019-03-02	0.250	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2001	quarter	\N
420	melissa.keller23@gmail.com	2019-07-30	0.250	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2007	quarter	\N
421	melissa.keller23@gmail.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	2008	quarter	\N
422	melissa.keller23@gmail.com	2020-03-14	0.250	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2008	quarter	\N
423	melissa.keller23@gmail.com	2021-07-10	0.250	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2009	quarter	\N
424	melissa.keller23@gmail.com	2020-01-12	0.100	\N	Minneapolis 	MN	\N	E 42nd St	f	1984	dime	\N
425	melissa.keller23@gmail.com	2019-07-04	0.010	\N	Minneapolis 	MN	\N	Lake Stret	f	1987	penny	\N
426	melissa.keller23@gmail.com	2020-05-24	0.010	\N	Minneapolis 	MN	\N	rental car	f	2012	penny	\N
427	melissa.keller23@gmail.com	2018-08-20	0.010	\N	Minneapolis 	MN	55455	Church St	f	2014	penny	\N
428	melissa.keller23@gmail.com	2018-08-31	0.010	\N	Minneapolis 	MN	55455	Church St	f	2018	penny	\N
429	melissa.keller23@gmail.com	2020-10-09	0.010	\N	Minneapolis 	MN	\N	Central Ave NE	f	2020	penny	\N
430	melissa.keller23@gmail.com	2021-09-01	0.010	\N	Minneapolis 	MN	\N	Lake Street	f	2021	penny	\N
431	melissa.keller23@gmail.com	2021-06-19	1.000	15277 Barton Ave NW	Monticello	MN	55362	15277 Barton Ave NW	f	2013	bill	\N
432	melissa.keller23@gmail.com	2021-05-02	0.010	1578 WI-65	New Richland	WI	54017	Casey's	f	1983	penny	\N
433	melissa.keller23@gmail.com	2020-01-21	0.010	1500 Broadway	New York	NY	10036	AudienceView	f	2006	penny	\N
434	melissa.keller23@gmail.com	2020-01-22	0.250	\N	New York	NY	\N	Manhattan	f	1972	quarter	\N
435	melissa.keller23@gmail.com	2019-06-13	0.250	16825 County Rd 24	Plymouth	MN	55447	Holiday	f	1999	quarter	\N
436	melissa.keller23@gmail.com	2020-01-23	0.100	\N	Queens	NY	11371	LaGuardia Airport	f	2019	dime	\N
437	melissa.keller23@gmail.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	1999	penny	\N
438	melissa.keller23@gmail.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	2016	penny	\N
441	melissa.keller23@gmail.com	2021-08-28	0.010	6445 Richfield Pkwy	Richfield	MN	55423	Target	f	2021	penny	\N
443	melissa.keller23@gmail.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	1976	penny	\N
444	melissa.keller23@gmail.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	\N	penny	\N
445	melissa.keller23@gmail.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1967	penny	\N
446	melissa.keller23@gmail.com	2020-07-24	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1982	penny	\N
447	melissa.keller23@gmail.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Cub Foods	f	1990	penny	\N
448	melissa.keller23@gmail.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1995	penny	\N
449	melissa.keller23@gmail.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	2006	penny	\N
450	melissa.keller23@gmail.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	2012	penny	\N
451	melissa.keller23@gmail.com	2020-07-24	0.010	2100 N Snelling Dr	Roseville	MN	55113	Staples	f	2013	penny	\N
453	melissa.keller23@gmail.com	2021-06-18	0.250	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1981	quarter	\N
454	melissa.keller23@gmail.com	2019-09-11	0.010	5801 W 16th St	Saint Louis Parl	MN	55416	Costco	f	2001	penny	\N
455	melissa.keller23@gmail.com	2019-03-16	1.000	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	$1	\N
456	melissa.keller23@gmail.com	2020-07-17	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1967	dime	\N
457	melissa.keller23@gmail.com	2018-09-15	0.100	755 Prior Ave N	Saint Paul	MN	55104	Can Can Wonderland	f	1976	dime	\N
458	melissa.keller23@gmail.com	2019-07-17	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	dime	\N
459	melissa.keller23@gmail.com	2019-04-10	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1981	dime	\N
460	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1984	dime	\N
461	melissa.keller23@gmail.com	2019-01-20	0.100	1225 Estabrook Dr	Saint Paul	MN	55103	Como conservatory 	f	1987	dime	\N
462	melissa.keller23@gmail.com	2019-05-20	0.100	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1989	dime	\N
463	melissa.keller23@gmail.com	2018-08-04	0.100	1300 Midway Pkwy	Saint Paul	MN	55103	Como Mini Golf	f	1990	dime	\N
464	melissa.keller23@gmail.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1990	dime	\N
465	melissa.keller23@gmail.com	2019-03-18	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	dime	\N
466	melissa.keller23@gmail.com	2019-04-01	0.100	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1993	dime	\N
467	melissa.keller23@gmail.com	2019-06-15	0.100	216 Arundel Street	Saint Paul	MN	55102	216 arundel	f	1998	dime	\N
468	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	dime	\N
469	melissa.keller23@gmail.com	2019-07-01	0.100	211 7th St W	Saint Paul	MN	55102	Bar Louis	f	1999	dime	\N
470	melissa.keller23@gmail.com	2018-10-26	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	2005	dime	\N
471	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	dime	\N
473	melissa.keller23@gmail.com	2019-06-20	0.100	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	2016	dime	\N
474	melissa.keller23@gmail.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2018	dime	\N
475	melissa.keller23@gmail.com	2019-09-01	0.100	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2019	dime	\N
476	melissa.keller23@gmail.com	2018-10-20	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	dime	\N
477	melissa.keller23@gmail.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1958	nickel	\N
478	melissa.keller23@gmail.com	2019-02-05	0.050	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	nickel	\N
479	melissa.keller23@gmail.com	2019-04-01	0.050	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1997	nickel	\N
480	melissa.keller23@gmail.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	nickel	\N
481	melissa.keller23@gmail.com	2019-04-01	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	nickel	\N
482	melissa.keller23@gmail.com	2019-04-22	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2001	nickel	\N
483	melissa.keller23@gmail.com	2019-06-14	0.050	275 White Bear Ave	Saint Paul	MN	55106	mgm liquors	f	2018	nickel	\N
485	melissa.keller23@gmail.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1961	penny	\N
486	melissa.keller23@gmail.com	2018-08-03	0.010	649 Grand Ave	Saint Paul	MN	55105	650 Alley	f	1968	penny	\N
487	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1969	penny	\N
488	melissa.keller23@gmail.com	2021-09-06	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1969	penny	\N
489	melissa.keller23@gmail.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1974	penny	\N
490	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1974	penny	\N
491	melissa.keller23@gmail.com	2019-06-20	0.010	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	1974	penny	\N
492	melissa.keller23@gmail.com	2018-08-23	0.010	275 White Bear Ave	Saint Paul	MN	55106	MGM liquor	f	1975	penny	\N
493	melissa.keller23@gmail.com	2018-12-30	0.010	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1975	penny	\N
494	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1976	penny	\N
495	melissa.keller23@gmail.com	2019-04-22	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1978	penny	\N
496	melissa.keller23@gmail.com	2019-05-21	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1981	penny	\N
497	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1982	penny	\N
498	melissa.keller23@gmail.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	penny	\N
499	melissa.keller23@gmail.com	2019-07-10	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	penny	\N
500	melissa.keller23@gmail.com	2020-11-15	0.010	33 County Rd B E	Saint Paul	MN	55117	Joe's sporting goods	f	1983	penny	\N
501	melissa.keller23@gmail.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1984	penny	\N
502	melissa.keller23@gmail.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1987	penny	\N
503	melissa.keller23@gmail.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1988	penny	\N
504	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Oxford St	f	1988	penny	\N
505	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1989	penny	\N
506	melissa.keller23@gmail.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1990	penny	\N
507	melissa.keller23@gmail.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1992	penny	\N
508	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1993	penny	\N
509	melissa.keller23@gmail.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1995	penny	\N
510	melissa.keller23@gmail.com	2019-05-04	0.010	400 Snelling Ave N	Saint Paul	MN	55104	Allianz field	f	1995	penny	\N
511	melissa.keller23@gmail.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1997	penny	\N
512	melissa.keller23@gmail.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1997	penny	\N
513	melissa.keller23@gmail.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1998	penny	\N
514	melissa.keller23@gmail.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	penny	\N
515	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Milton St	f	2001	penny	\N
516	melissa.keller23@gmail.com	2021-08-16	0.010	2530 Kasota Ave	Saint Paul	MN	55108	Napa Auto Parts	f	2002	penny	\N
517	melissa.keller23@gmail.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2005	penny	\N
518	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	penny	\N
519	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	penny	\N
520	melissa.keller23@gmail.com	2019-08-30	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2005	penny	\N
521	melissa.keller23@gmail.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2007	penny	\N
522	melissa.keller23@gmail.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2008	penny	\N
523	melissa.keller23@gmail.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2010	penny	\N
524	melissa.keller23@gmail.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2011	penny	\N
525	melissa.keller23@gmail.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2012	penny	\N
526	melissa.keller23@gmail.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2013	penny	\N
527	melissa.keller23@gmail.com	2019-09-11	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2013	penny	\N
528	melissa.keller23@gmail.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2015	penny	\N
529	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	penny	\N
530	melissa.keller23@gmail.com	2018-10-08	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2016	penny	\N
531	melissa.keller23@gmail.com	2019-10-04	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2016	penny	\N
532	melissa.keller23@gmail.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	penny	\N
533	melissa.keller23@gmail.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	penny	\N
534	melissa.keller23@gmail.com	2019-02-16	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	penny	\N
535	melissa.keller23@gmail.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	penny	\N
536	melissa.keller23@gmail.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	penny	\N
537	melissa.keller23@gmail.com	2020-03-09	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	penny	\N
538	melissa.keller23@gmail.com	2020-06-13	0.010	975 Grand Ave	Saint Paul	MN	55105	Jimmy johns	f	2017	penny	\N
539	melissa.keller23@gmail.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	f	2017	penny	\N
540	melissa.keller23@gmail.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2018	penny	\N
541	melissa.keller23@gmail.com	2019-02-14	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	2018	penny	\N
542	melissa.keller23@gmail.com	2020-02-01	0.010	6 West 6th Street	Saint Paul	MN	55102	Amsterdam bar and grill	f	2019	penny	\N
543	melissa.keller23@gmail.com	2021-06-30	0.010	498 Selby Ave	Saint Paul	MN	55102	The Gnome	f	2021	penny	\N
544	melissa.keller23@gmail.com	2018-08-04	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	penny	\N
545	melissa.keller23@gmail.com	2018-09-08	0.010	649 Grand Ave	Saint Paul	MN	55105	653 Alley	f	\N	penny	\N
546	melissa.keller23@gmail.com	2018-05-26	0.010	652 Grand Ave	Saint Paul	MN	55105	652 Alley	f	\N	penny	\N
547	melissa.keller23@gmail.com	2018-05-27	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	penny	\N
548	melissa.keller23@gmail.com	2018-06-07	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	penny	\N
549	melissa.keller23@gmail.com	2018-06-15	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Alley	f	\N	penny	\N
550	melissa.keller23@gmail.com	2018-07-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	penny	\N
551	melissa.keller23@gmail.com	2018-07-16	0.010	651 Grand Ave	Saint Paul	MN	55105	651 Alley	f	\N	penny	\N
552	melissa.keller23@gmail.com	2018-08-01	0.010	857 Grand Ave	Saint Paul	MN	55105	Billys	f	\N	penny	\N
553	melissa.keller23@gmail.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	penny	\N
554	melissa.keller23@gmail.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	penny	\N
555	melissa.keller23@gmail.com	2018-10-22	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	penny	\N
556	melissa.keller23@gmail.com	2018-10-29	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	\N	penny	\N
564	melissa.keller23@gmail.com	2021-09-25	0.020	2277 Ford Pkwy	Saint Paul	MN	55116	PetCo	f	1964	penny	\N
565	melissa.keller23@gmail.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	quarter	\N
566	melissa.keller23@gmail.com	2019-08-28	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1980	quarter	\N
567	melissa.keller23@gmail.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1991	quarter	\N
568	melissa.keller23@gmail.com	2019-08-30	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1995	quarter	\N
569	melissa.keller23@gmail.com	2019-03-16	0.250	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	quarter	\N
570	melissa.keller23@gmail.com	2019-01-20	0.250	991 Lexington Pkwy N	Saint Paul	MN	55103	Gabes By The Park	f	2015	quarter	\N
571	melissa.keller23@gmail.com	2018-05-26	0.250	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	quarter	\N
573	melissa.keller23@gmail.com	2018-06-03	0.050	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	nickel 	\N
574	melissa.keller23@gmail.com	2018-11-03	0.010	\N	Saint Paul	MN	55104	Marshall ave	f	1964	penny	\N
575	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1981	penny	\N
576	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1982	penny	\N
577	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1984	penny	\N
578	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1986	penny	\N
579	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	2001	penny	\N
580	melissa.keller23@gmail.com	2019-07-21	0.010	\N	Saint Paul	MN	\N	Marshall and Fairview	f	2019	penny	\N
581	melissa.keller23@gmail.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny	\N
582	melissa.keller23@gmail.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny	\N
583	melissa.keller23@gmail.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	penny	\N
584	melissa.keller23@gmail.com	2018-10-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	penny	\N
585	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	\N	penny	\N
588	melissa.keller23@gmail.com	2021-06-16	0.010	\N	Saint Paul	MN	\N	Frank Ave	f	\N	penny	\N
589	melissa.keller23@gmail.com	2019-06-02	0.250	\N	Saint Paul	MN	\N	Grand Ave	f	2004	quarter	\N
591	melissa.keller23@gmail.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1981	dime	\N
592	melissa.keller23@gmail.com	2019-06-09	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1999	dime	\N
593	melissa.keller23@gmail.com	2019-11-11	0.100	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2002	dime	\N
594	melissa.keller23@gmail.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2014	dime	\N
595	melissa.keller23@gmail.com	2018-05-30	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	dime	\N
596	melissa.keller23@gmail.com	2018-06-23	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	dime	\N
597	melissa.keller23@gmail.com	2018-07-19	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	dime	\N
599	melissa.keller23@gmail.com	2019-01-10	0.050	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	nickel	\N
600	melissa.keller23@gmail.com	2019-02-02	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1972	penny	\N
601	melissa.keller23@gmail.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1974	penny	\N
602	melissa.keller23@gmail.com	2018-07-31	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	penny	\N
603	melissa.keller23@gmail.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	1978	penny	\N
604	melissa.keller23@gmail.com	2019-01-10	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1981	penny	\N
605	melissa.keller23@gmail.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	penny	\N
606	melissa.keller23@gmail.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	penny	\N
607	melissa.keller23@gmail.com	2019-06-17	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1996	penny	\N
608	melissa.keller23@gmail.com	2018-08-07	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2004	penny	\N
609	melissa.keller23@gmail.com	2019-04-29	0.010	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2015	penny	\N
610	melissa.keller23@gmail.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2015	penny	\N
611	melissa.keller23@gmail.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	2017	penny	\N
612	melissa.keller23@gmail.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	penny	\N
613	melissa.keller23@gmail.com	2021-09-25	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	penny	\N
614	melissa.keller23@gmail.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny	\N
615	melissa.keller23@gmail.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny	\N
616	melissa.keller23@gmail.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny	\N
617	melissa.keller23@gmail.com	2018-07-14	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny	\N
618	melissa.keller23@gmail.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny	\N
619	melissa.keller23@gmail.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	penny	\N
623	melissa.keller23@gmail.com	2019-09-29	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	dime	\N
624	melissa.keller23@gmail.com	2018-09-15	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1998	dime	\N
625	melissa.keller23@gmail.com	2019-09-22	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	dime	\N
626	melissa.keller23@gmail.com	2018-09-02	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2011	dime	\N
627	melissa.keller23@gmail.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	dime	\N
628	melissa.keller23@gmail.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2017	dime	\N
629	melissa.keller23@gmail.com	2021-09-11	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2021	dime	\N
630	melissa.keller23@gmail.com	2018-06-19	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	dime	\N
631	melissa.keller23@gmail.com	2018-07-28	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	dime	\N
632	melissa.keller23@gmail.com	2018-09-23	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	dime	\N
633	melissa.keller23@gmail.com	2018-09-02	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1987	nickel	\N
634	melissa.keller23@gmail.com	2018-09-15	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2006	nickel	\N
635	melissa.keller23@gmail.com	2018-07-28	0.050	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	nickel	\N
636	melissa.keller23@gmail.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1961	penny	\N
637	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1973	penny	\N
638	melissa.keller23@gmail.com	2019-09-21	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1976	penny	\N
639	melissa.keller23@gmail.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1978	penny	\N
640	melissa.keller23@gmail.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1981	penny	\N
641	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	penny	\N
642	melissa.keller23@gmail.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1990	penny	\N
643	melissa.keller23@gmail.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	penny	\N
644	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2007	penny	\N
645	melissa.keller23@gmail.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	penny	\N
646	melissa.keller23@gmail.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	penny	\N
647	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny	\N
648	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny	\N
649	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny	\N
650	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny	\N
651	melissa.keller23@gmail.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny	\N
652	melissa.keller23@gmail.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny	\N
653	melissa.keller23@gmail.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	penny	\N
654	melissa.keller23@gmail.com	2018-09-02	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny	\N
655	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny	\N
656	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	penny	\N
657	melissa.keller23@gmail.com	2018-08-19	0.030	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1997	penny	\N
658	melissa.keller23@gmail.com	2018-08-25	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1996	quarter	\N
659	melissa.keller23@gmail.com	2019-09-29	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	quarter	\N
660	melissa.keller23@gmail.com	2020-11-21	0.100	7235 MN-61	Tofte	MN	55615	Holiday	f	1992	dime	\N
661	melissa.keller23@gmail.com	2019-06-21	0.100	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	2001	dime	\N
662	melissa.keller23@gmail.com	2019-06-21	0.010	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	1995	penny	\N
664	melissa.keller23@gmail.com	2020-06-27	0.010	\N	\N	MN	\N	\N	f	1979	penny	\N
665	melissa.keller23@gmail.com	2017-04-01	7.020	\N	\N	MN	\N	\N	f	\N	lump_sum	\N
666	melissa.keller23@gmail.com	2019-08-22	0.010	\N	\N	MN	\N	\N	f	1982	penny	\N
667	melissa.keller23@gmail.com	2018-07-22	0.250	\N	\N	MN	\N	\N	f	2008	quarter	\N
668	melissa.keller23@gmail.com	2018-07-30	0.250	\N	\N	MN	\N	Found by Louisa 	f	\N	quarter	\N
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

SELECT pg_catalog.setval('public.monies_id_seq', 675, true);


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

