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
    password character varying(130) NOT NULL
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
687	tdurden@email.com	2020-12-15	0.100	199 W Kellogg Blvd	Saint Paul	MN	\N	Xcel Energy Center	f	1923	Dime
685	tdurden@email.com	2021-11-06	0.050	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2016	Nickel
51	mak@email.com	2019-01-12	1.000	99-500 Salt Lake Blvd	Honolulu	HI	96818	Aloha Stadium	f	2013	$1
686	tdurden@email.com	2020-10-06	0.100	84 Church Street Southeast	Minneapolis	MN	\N	Northrop	t	1988	Dime
165	mak@email.com	2021-09-24	1.000	501 30th Ave SE	Minneapolis 	MN	55414	The Market at Malcolm yards	f	2009	$1
431	mak@email.com	2021-06-19	1.000	15277 Barton Ave NW	Monticello	MN	55362	15277 Barton Ave NW	f	2013	$1
42	mak@email.com	2020-06-27	0.100	60684 MN-23	Finlayson	MN	55735	Cenex	t	\N	Dime
56	mak@email.com	2021-07-24	1.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$1
57	mak@email.com	2021-07-24	5.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$5
75	mak@email.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
161	mak@email.com	2018-05-22	0.100	\N	Minneapolis 	MN	\N	\N	f	\N	Dime
684	tdurden@email.com	2021-11-06	0.250	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2018	Quarter
676	tdurden@email.com	2021-11-04	0.250	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2015	Quarter
660	mak@email.com	2020-11-21	0.100	7235 MN-61	Tofte	MN	55615	Holiday	f	1992	Dime
439	mak@email.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Dime
440	mak@email.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Dime
572	mak@email.com	2019-08-11	0.100	\N	saint paul	MN	\N	Marshall and hamline	t	\N	Dime
13	mak@email.com	2021-05-30	0.100	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2004	Dime
18	mak@email.com	2019-03-22	0.100	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1990	Dime
29	mak@email.com	2018-05-19	0.100	\N	Duluth 	MN	55802	\N	f	\N	Dime
573	mak@email.com	2018-06-03	0.050	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Nickel
38	mak@email.com	2019-02-16	0.100	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2010	Dime
58	mak@email.com	2021-07-24	0.100	Cedar Street	Houston	MN	55943	Hoedown	f	2008	Dime
60	mak@email.com	2019-07-19	0.100	141 Carmichael Rd	Hudson	WI	54016	Walgreens	f	2015	Dime
61	mak@email.com	2019-01-15	0.100	108 Hekili St	Kailu	HI	96734	Foodland	f	2007	Dime
66	mak@email.com	2018-12-20	0.100	5339 MN-61	Lutsen	MN	55612	Lutsen Liquors	f	1996	Dime
67	mak@email.com	2018-12-20	0.100	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort	f	2011	Dime
78	mak@email.com	2021-10-15	0.100	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1984	Dime
79	mak@email.com	2021-06-22	0.100	2513 Central Ave NE	Minneapolis	MN	55418	HolyLand	f	2003	Dime
109	mak@email.com	2019-11-04	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1999	Dime
110	mak@email.com	2019-08-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2015	Dime
111	mak@email.com	2020-08-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1966	Dime
135	mak@email.com	2019-04-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2005	Dime
136	mak@email.com	2021-05-25	0.100	110 Penn Ave N	Minneapolis 	MN	55405	Bassett Park	f	2005	Dime
137	mak@email.com	2018-10-31	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2006	Dime
138	mak@email.com	2018-12-17	0.100	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	2006	Dime
139	mak@email.com	2019-02-15	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2006	Dime
140	mak@email.com	2019-06-25	0.100	2858 26th Ave S	Minneapolis 	MN	55406	Dollar Store Parking Lot	f	2006	Dime
141	mak@email.com	2019-09-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2006	Dime
142	mak@email.com	2019-10-19	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2007	Dime
143	mak@email.com	2018-10-02	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2008	Dime
144	mak@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2008	Dime
146	mak@email.com	2019-10-25	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2010	Dime
147	mak@email.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2011	Dime
148	mak@email.com	2019-05-20	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	Dime
149	mak@email.com	2019-09-08	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	2012	Dime
150	mak@email.com	2018-12-31	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2014	Dime
151	mak@email.com	2020-03-19	0.100	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	2014	Dime
152	mak@email.com	2019-09-27	0.100	\N	Minneapolis 	MN	\N	14th Ave SE	f	2015	Dime
77	mak@email.com	2019-06-07	20.000	1504 7th St S	Minneapolis	MN	55454	House of Balls	t	\N	$20
153	mak@email.com	2020-03-21	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2015	Dime
154	mak@email.com	2018-12-06	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	Dime
155	mak@email.com	2020-03-12	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2016	Dime
156	mak@email.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2017	Dime
157	mak@email.com	2019-02-17	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Dime
158	mak@email.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2018	Dime
159	mak@email.com	2021-07-31	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2019	Dime
160	mak@email.com	2021-09-09	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2021	Dime
162	mak@email.com	2019-05-05	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Dime
164	mak@email.com	2019-11-24	0.100	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	\N	Dime
80	mak@email.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Nickel
81	mak@email.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Nickel
190	mak@email.com	2021-04-05	0.050	824 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	t	\N	Nickel
37	mak@email.com	2021-04-12	0.010	16396 Wagner Way	Eden Prairie	MN	55344	Tavern 4&5	t	\N	Penny
590	mak@email.com	2020-06-06	0.250	\N	Saint paul	MN	55102	Marshall Ave and Dale Ave	t	\N	Quarter
102	mak@email.com	2021-02-12	0.250	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Quarter
434	mak@email.com	2020-01-22	0.250	1335 6th Ave	New York	NY	10019	NY Hilton Midtown	f	1972	Quarter
673	mak@email.com	2021-10-30	0.250	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2018	Quarter
22	mak@email.com	2019-01-11	0.250	\N	Bloomington	MN	\N	Minneapolis−Saint Paul International Airport	f	2015	Quarter
484	mak@email.com	2019-01-08	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	Nickel
674	mak@email.com	2021-10-30	0.050	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2021	Nickel
19	mak@email.com	2019-03-22	0.050	60 E Broadway	Bloomington	MN	55425	Mall of America	f	2000	Nickel
675	tdurden@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	t	2012	Penny
1123	tdurden@email.com	2021-11-28	0.250	199 W Kellogg Blvd	Saint Paul	MN	\N	Xcel Energy Center	f	2016	Quarter
1122	tdurden@email.com	2021-10-22	0.250	199 W Kellogg Blvd	Saint Paul	MN	\N	Xcel Energy Center	f	2016	Quarter
1131	tdurden@email.com	2021-11-30	0.100	510 Main St	Wall	SD	\N	Wall Drug	t	\N	Dime
120	mak@email.com	2019-05-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1994	Dime
121	mak@email.com	2018-06-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	Dime
122	mak@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	Dime
123	mak@email.com	2019-01-29	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1999	Dime
124	mak@email.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	1999	Dime
125	mak@email.com	2020-03-16	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	Dime
126	mak@email.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	Dime
127	mak@email.com	2019-12-12	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2000	Dime
128	mak@email.com	2019-10-22	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2001	Dime
129	mak@email.com	2019-03-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2002	Dime
130	mak@email.com	2019-09-23	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2002	Dime
131	mak@email.com	2019-07-15	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2003	Dime
132	mak@email.com	2020-08-10	0.100	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2003	Dime
133	mak@email.com	2021-02-13	0.100	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	Dime
134	mak@email.com	2018-11-12	0.100	\N	Minneapolis 	MN	55455	17th Ave SE	f	2005	Dime
166	mak@email.com	2019-10-04	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	Dollar Coin
167	mak@email.com	2019-09-17	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Dollar Coin
168	mak@email.com	2019-03-15	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2008	Dollar Coin
169	mak@email.com	2019-06-06	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2010	Dollar Coin
170	mak@email.com	2019-05-14	0.005	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Half Penny
112	mak@email.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1972	Dime
113	mak@email.com	2021-10-02	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1972	Dime
114	mak@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1974	Dime
115	mak@email.com	2019-09-23	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1976	Dime
116	mak@email.com	2019-12-13	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1978	Dime
117	mak@email.com	2020-03-19	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	1980	Dime
118	mak@email.com	2018-11-17	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1986	Dime
119	mak@email.com	2019-06-17	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	Dime
41	mak@email.com	2019-02-16	0.250	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	1999	Quarter
46	mak@email.com	2019-08-10	0.250	101 2nd St E,	Hastings	MN	55033	Lock and Dam Eatery	f	1974	Quarter
33	mak@email.com	2019-08-16	0.250	350 Harbor Dr	Duluth 	MN	55802	Bayfront Festival Park	f	2015	Quarter
65	mak@email.com	2019-09-29	0.250	16854 Javelin	Lakeville	MN	55044	16854 Javelin	f	1996	Quarter
101	mak@email.com	2019-01-24	0.250	\N	Minneapolis	MN	\N	14th Ave SE	f	2018	Quarter
106	mak@email.com	2019-09-03	5.000	\N	Minneapolis 	MN	\N	38th and lake st	f	2009	$5
107	mak@email.com	2019-05-08	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1970	Canadian penny
108	mak@email.com	2021-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	\N	Canadian penny
39	mak@email.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2005	Nickel
40	mak@email.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2017	Nickel
47	mak@email.com	2019-01-14	0.050	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2014	Nickel
187	mak@email.com	2021-09-12	0.050	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2021	Nickel
472	mak@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	Dime
310	mak@email.com	2020-12-12	0.010	\N	Minneapolis 	MN	\N	\N	f	2007	Penny
419	mak@email.com	2019-03-02	0.250	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2001	Quarter
420	mak@email.com	2019-07-30	0.250	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2007	Quarter
421	mak@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	2008	Quarter
1132	tdurden@email.com	2021-12-02	0.010	510 Main St	Wall	SD	\N	Wall Drug	f	2015	Penny
76	mak@email.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
598	mak@email.com	2019-10-07	0.100	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	t	\N	Dime
163	mak@email.com	2019-10-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Dime
145	mak@email.com	2019-05-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2008	Dime
178	mak@email.com	2021-08-29	0.050	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2000	Nickel
69	mak@email.com	2020-11-02	0.010	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort parking lot	f	1981	Penny
188	mak@email.com	2018-05-22	0.050	\N	Minneapolis 	MN	\N	\N	f	\N	Nickel
189	mak@email.com	2018-09-07	0.050	\N	Minneapolis 	MN	55414	17th Ave SE	f	\N	Nickel
422	mak@email.com	2020-03-14	0.250	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2008	Quarter
423	mak@email.com	2021-07-10	0.250	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2009	Quarter
435	mak@email.com	2019-06-13	0.250	16825 County Rd 24	Plymouth	MN	55447	Holiday	f	1999	Quarter
453	mak@email.com	2021-06-18	0.250	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1981	Quarter
455	mak@email.com	2019-03-16	1.000	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	$1
382	mak@email.com	2019-03-15	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	Penny
659	mak@email.com	2019-09-29	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	Quarter
668	mak@email.com	2018-07-30	0.250	\N	\N	MN	\N	Found by Louisa 	f	\N	Quarter
665	mak@email.com	2017-04-01	7.020	\N	\N	MN	\N	\N	f	\N	lump_sum
664	mak@email.com	2020-06-27	0.010	\N	\N	MN	\N	\N	f	1979	Penny
633	mak@email.com	2018-09-02	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1987	Nickel
634	mak@email.com	2018-09-15	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2006	Nickel
635	mak@email.com	2018-07-28	0.050	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Nickel
99	mak@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
105	mak@email.com	2019-07-21	0.010	\N	Minneapolis	MN	\N	Lake and River Road	t	\N	Penny
191	mak@email.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Penny
192	mak@email.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1988	Penny
651	mak@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
652	mak@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
653	mak@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
654	mak@email.com	2018-09-02	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
655	mak@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
388	mak@email.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	Penny
389	mak@email.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Penny
390	mak@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
391	mak@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
392	mak@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
393	mak@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
394	mak@email.com	2020-07-11	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
395	mak@email.com	2021-03-02	0.010	2513 Central Ave NE	Minneapolis 	MN	55418	HolyLand	t	\N	Penny
442	mak@email.com	2020-12-28	0.010	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Penny
452	mak@email.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshalls	t	\N	Penny
557	mak@email.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
558	mak@email.com	2019-01-02	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub foods	t	\N	Penny
559	mak@email.com	2019-01-07	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	Penny
560	mak@email.com	2019-01-08	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	Penny
561	mak@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
562	mak@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
563	mak@email.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	t	\N	Penny
663	mak@email.com	2019-05-24	0.010	100 Jefferson Dr 	Zumbrota	MN	55992	Kwik Trip	t	\N	Penny
1	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1978	Penny
2	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	Penny
3	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	Penny
4	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1990	Penny
5	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1997	Penny
6	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1999	Penny
7	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2011	Penny
8	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2015	Penny
9	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
10	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
11	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
12	mak@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
14	mak@email.com	2021-05-30	0.010	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2016	Penny
15	mak@email.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	1992	Penny
16	mak@email.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	2019	Penny
17	mak@email.com	2018-06-10	0.010	7835 150th St W	Apple Valley	MN	55124	Walmart	f	\N	Penny
20	mak@email.com	2019-01-06	0.010	324 W Marketplace	Bloomington	MN	55425	Nordstrom's Rack	f	1981	Penny
21	mak@email.com	2019-03-22	0.010	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1981	Penny
319	mak@email.com	2020-03-25	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2012	Penny
23	mak@email.com	2018-07-15	0.010	8089 Brooklyn Blvd	Brooklyn Park	MN	55445	Panda Garden Buffet	f	\N	Penny
24	mak@email.com	2018-12-02	0.010	15400 Buck Hill Rd	Burnsville	MN	55306	Buck Hill	f	1973	Penny
25	mak@email.com	2019-07-09	0.010	14050 Burnhaven Dr	Burnsville	MN	55337	Costco	f	1996	Penny
26	mak@email.com	2021-01-21	0.010	900 Burnsville Pkwy	Burnsville	MN	55337	Holiday	f	2013	Penny
27	mak@email.com	2019-06-12	0.010	2000 Hwy 13 E	Burnsville	MN	55337	Dollar Tree parking lot	f	2018	Penny
28	mak@email.com	2019-08-10	0.010	7210 E Point Douglas Rd S	Cottage Grove	MN	55016	TJMaxx	f	1970	Penny
30	mak@email.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	1975	Penny
31	mak@email.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	2013	Penny
32	mak@email.com	2018-05-19	0.010	\N	Duluth 	MN	55802	\N	f	\N	Penny
34	mak@email.com	2019-06-01	0.010	2000 Cliff Lake Rd	Eagan	MN	55122	Target	f	2017	Penny
35	mak@email.com	2019-04-01	0.010	1298 Promenade Pl	Eagan	MN	55121	Qdoba	f	2018	Penny
36	mak@email.com	2019-06-01	0.010	1250 Town Centre Dr	Eagan	MN	55123	Koyoto	f	\N	Penny
43	mak@email.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik Trip	f	2014	Penny
44	mak@email.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik trip	f	2017	Penny
45	mak@email.com	2021-03-27	0.010	113 E 2nd St E	Hastings	MN	55033	Muse2320	f	2021	Penny
48	mak@email.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	1982	Penny
49	mak@email.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2013	Penny
50	mak@email.com	2019-01-15	0.010	53-660 Kamehameha Hwy	Hauula	HI	96717	53-660 Kamehameha Hwy	f	2018	Penny
52	mak@email.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1969	Penny
54	mak@email.com	2019-01-16	0.010	2330 Kalakaua Ave	Honolulu	HI	69815	International Marketplace	f	1992	Penny
59	mak@email.com	2020-09-05	0.010	103 E Cedar St	Houston	MN	55943	Cenex	f	2005	Penny
62	mak@email.com	2018-07-29	0.010	9242 Hudson Blvd N	Lake Elmo	MN	55042	Bride to Be Consignment	f	\N	Penny
63	mak@email.com	2020-11-19	0.010	18275 Kenrick Ave	Lakeville	MN	55044	Target	f	1991	Penny
64	mak@email.com	2021-05-26	0.010	20710 Keokuk Ave	Lakeville	MN	55044	Walmart	f	2010	Penny
68	mak@email.com	2018-12-22	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1978	Penny
70	mak@email.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1990	Penny
71	mak@email.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1999	Penny
72	mak@email.com	2020-01-21	0.010	51 W 51st St	Manhattan	NY	10019	Duane reade	f	1980	Penny
73	mak@email.com	2020-01-21	0.010	\N	Manhattan	NY	10036	Times Square	f	2018	Penny
74	mak@email.com	2021-06-05	0.010	5050 Independence St	Maple Plain	MN	55359	Veterans Park	f	\N	Penny
82	mak@email.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1968	Penny
83	mak@email.com	2021-10-26	0.010	3815 E Lake St	Minneapolis	MN	55406	Longfellow Market	f	1971	Penny
84	mak@email.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	f	1976	Penny
85	mak@email.com	2018-08-28	0.010	\N	Minneapolis	MN	55414	14th Ave SE	f	1980	Penny
86	mak@email.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1981	Penny
87	mak@email.com	2020-09-19	0.010	1931 Minnehaha Ave	Minneapolis	MN	55405	Taco Bell	f	1996	Penny
88	mak@email.com	2021-10-26	0.010	36th Ave s and 29th st	Minneapolis	MN	55406	\N	f	2003	Penny
89	mak@email.com	2018-06-15	0.010	84 Church Street SE	Minneapolis	MN	55455	Surdyks at Northrop	f	\N	Penny
103	mak@email.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	1998	Penny
104	mak@email.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	2021	Penny
193	mak@email.com	2019-08-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1959	Penny
194	mak@email.com	2019-07-15	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1960	Penny
195	mak@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1961	Penny
196	mak@email.com	2020-01-07	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1962	Penny
197	mak@email.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1963	Penny
198	mak@email.com	2019-07-21	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1964	Penny
199	mak@email.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	Penny
200	mak@email.com	2020-05-23	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th St s alley	f	1964	Penny
201	mak@email.com	2021-05-11	0.010	302 15th Ave SE	Minneapolis 	MN	55414	Raising Canes	f	1964	Penny
202	mak@email.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1968	Penny
203	mak@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1969	Penny
204	mak@email.com	2019-03-14	0.010	\N	Minneapolis 	MN	\N	Scholars Walk	f	1971	Penny
205	mak@email.com	2019-10-09	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1971	Penny
206	mak@email.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1972	Penny
207	mak@email.com	2019-08-28	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1972	Penny
208	mak@email.com	2018-11-08	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1973	Penny
209	mak@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1973	Penny
210	mak@email.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop locker room	f	1973	Penny
211	mak@email.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1974	Penny
212	mak@email.com	2018-07-31	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	Penny
213	mak@email.com	2019-01-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	Penny
214	mak@email.com	2019-07-14	0.010	4400 E Lake St	Minneapolis 	MN	55406	Dairy Queen	f	1975	Penny
215	mak@email.com	2019-10-20	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1975	Penny
216	mak@email.com	2018-09-25	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	1976	Penny
217	mak@email.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1976	Penny
218	mak@email.com	2021-09-26	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1977	Penny
219	mak@email.com	2018-08-17	0.010	\N	Minneapolis 	MN	55414	Dinky town	f	1978	Penny
424	mak@email.com	2020-01-12	0.100	\N	Minneapolis 	MN	\N	E 42nd St	f	1984	Dime
436	mak@email.com	2020-01-23	0.100	\N	Queens	NY	11371	LaGuardia Airport	f	2019	Dime
456	mak@email.com	2020-07-17	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1967	Dime
457	mak@email.com	2018-09-15	0.100	755 Prior Ave N	Saint Paul	MN	55104	Can Can Wonderland	f	1976	Dime
458	mak@email.com	2019-07-17	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	Dime
459	mak@email.com	2019-04-10	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1981	Dime
460	mak@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1984	Dime
409	mak@email.com	2020-05-17	0.250	\N	Minneapolis 	MN	\N	29th and 32nd St	f	1974	Quarter
410	mak@email.com	2019-03-15	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Quarter
411	mak@email.com	2019-11-08	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	Quarter
412	mak@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1988	Quarter
413	mak@email.com	2018-12-08	0.250	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	Quarter
414	mak@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1995	Quarter
415	mak@email.com	2019-02-17	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1998	Quarter
416	mak@email.com	2019-03-22	0.250	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave Alley	f	1998	Quarter
417	mak@email.com	2019-04-29	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	Quarter
418	mak@email.com	2019-02-25	0.250	\N	Minneapolis 	MN	\N	University Ave	f	2000	Quarter
461	mak@email.com	2019-01-20	0.100	1225 Estabrook Dr	Saint Paul	MN	55103	Como conservatory 	f	1987	Dime
462	mak@email.com	2019-05-20	0.100	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1989	Dime
463	mak@email.com	2018-08-04	0.100	1300 Midway Pkwy	Saint Paul	MN	55103	Como Mini Golf	f	1990	Dime
464	mak@email.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1990	Dime
465	mak@email.com	2019-03-18	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	Dime
466	mak@email.com	2019-04-01	0.100	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1993	Dime
467	mak@email.com	2019-06-15	0.100	216 Arundel Street	Saint Paul	MN	55102	216 arundel	f	1998	Dime
468	mak@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	Dime
469	mak@email.com	2019-07-01	0.100	211 7th St W	Saint Paul	MN	55102	Bar Louis	f	1999	Dime
470	mak@email.com	2018-10-26	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	2005	Dime
471	mak@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	Dime
473	mak@email.com	2019-06-20	0.100	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	2016	Dime
474	mak@email.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2018	Dime
475	mak@email.com	2019-09-01	0.100	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2019	Dime
476	mak@email.com	2018-10-20	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Dime
477	mak@email.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1958	Nickel
478	mak@email.com	2019-02-05	0.050	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	Nickel
479	mak@email.com	2019-04-01	0.050	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1997	Nickel
480	mak@email.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	Nickel
481	mak@email.com	2019-04-01	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	Nickel
482	mak@email.com	2019-04-22	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2001	Nickel
483	mak@email.com	2019-06-14	0.050	275 White Bear Ave	Saint Paul	MN	55106	mgm liquors	f	2018	Nickel
220	mak@email.com	2020-01-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1978	Penny
221	mak@email.com	2021-09-10	0.010	231 Pillsbury Dr SE	Minneapolis 	MN	55455	Williamson Hall	f	1978	Penny
222	mak@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1979	Penny
223	mak@email.com	2019-09-09	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1979	Penny
224	mak@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	Penny
225	mak@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1980	Penny
226	mak@email.com	2019-02-22	0.010	275 Market St	Minneapolis 	MN	55405	International Market Square	f	1980	Penny
591	mak@email.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1981	Dime
592	mak@email.com	2019-06-09	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1999	Dime
667	mak@email.com	2018-07-22	0.250	\N	\N	MN	\N	\N	f	2008	Quarter
593	mak@email.com	2019-11-11	0.100	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2002	Dime
594	mak@email.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2014	Dime
595	mak@email.com	2018-05-30	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Dime
596	mak@email.com	2018-06-23	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Dime
597	mak@email.com	2018-07-19	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Dime
565	mak@email.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	Quarter
566	mak@email.com	2019-08-28	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1980	Quarter
567	mak@email.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1991	Quarter
568	mak@email.com	2019-08-30	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1995	Quarter
569	mak@email.com	2019-03-16	0.250	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	Quarter
570	mak@email.com	2019-01-20	0.250	991 Lexington Pkwy N	Saint Paul	MN	55103	Gabes By The Park	f	2015	Quarter
571	mak@email.com	2018-05-26	0.250	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Quarter
589	mak@email.com	2019-06-02	0.250	\N	Saint Paul	MN	\N	Grand Ave	f	2004	Quarter
599	mak@email.com	2019-01-10	0.050	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	Nickel
227	mak@email.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1980	Penny
228	mak@email.com	2020-01-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1981	Penny
229	mak@email.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1981	Penny
230	mak@email.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1981	Penny
231	mak@email.com	2021-10-12	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1981	Penny
232	mak@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1982	Penny
233	mak@email.com	2019-01-09	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1982	Penny
234	mak@email.com	2019-07-30	0.010	14 Church St SE 	Minneapolis 	MN	55455	Nolte Garage	f	1982	Penny
235	mak@email.com	2019-04-07	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1983	Penny
236	mak@email.com	2019-12-06	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	Penny
237	mak@email.com	2020-06-14	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	1983	Penny
238	mak@email.com	2021-04-04	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	Penny
239	mak@email.com	2019-02-24	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1984	Penny
240	mak@email.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	1984	Penny
241	mak@email.com	2019-04-13	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	Penny
242	mak@email.com	2019-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	Penny
243	mak@email.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1985	Penny
244	mak@email.com	2021-03-14	0.010	\N	Minneapolis 	MN	\N	44th ave s	f	1985	Penny
245	mak@email.com	2018-11-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1986	Penny
246	mak@email.com	2019-03-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1986	Penny
623	mak@email.com	2019-09-29	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	Dime
624	mak@email.com	2018-09-15	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1998	Dime
625	mak@email.com	2019-09-22	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	Dime
626	mak@email.com	2018-09-02	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2011	Dime
627	mak@email.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	Dime
628	mak@email.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2017	Dime
629	mak@email.com	2021-09-11	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2021	Dime
630	mak@email.com	2018-06-19	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Dime
631	mak@email.com	2018-07-28	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Dime
632	mak@email.com	2018-09-23	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Dime
661	mak@email.com	2019-06-21	0.100	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	2001	Dime
658	mak@email.com	2018-08-25	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1996	Quarter
247	mak@email.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	Penny
248	mak@email.com	2019-10-21	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	Penny
249	mak@email.com	2021-02-23	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	1986	Penny
250	mak@email.com	2018-11-25	0.010	\N	Minneapolis 	MN	\N	37th Ave s	f	1987	Penny
251	mak@email.com	2018-12-31	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1987	Penny
252	mak@email.com	2021-01-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	1987	Penny
253	mak@email.com	2019-07-05	0.010	4320 E Lake St 	Minneapolis 	MN	55406	Speedway	f	1988	Penny
254	mak@email.com	2019-08-24	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1988	Penny
255	mak@email.com	2021-09-08	0.010	3916 E Lake St	Minneapolis 	MN	55406	East Lake Liquor	f	1988	Penny
256	mak@email.com	2019-05-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1990	Penny
258	mak@email.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1990	Penny
259	mak@email.com	2020-10-22	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	1990	Penny
260	mak@email.com	2019-03-16	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1991	Penny
261	mak@email.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	1991	Penny
262	mak@email.com	2019-10-09	0.010	\N	Minneapolis 	MN	55455	17th Ave SE	f	1991	Penny
263	mak@email.com	2020-08-20	0.010	\N	Minneapolis 	MN	\N	Washington Ave SE	f	1991	Penny
264	mak@email.com	2019-02-27	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1992	Penny
265	mak@email.com	2020-10-24	0.010	3915 E Lake St	Minneapolis 	MN	55406	Ace Hardware	f	1992	Penny
266	mak@email.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1994	Penny
267	mak@email.com	2021-07-22	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1994	Penny
268	mak@email.com	2018-12-01	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1995	Penny
269	mak@email.com	2019-06-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1995	Penny
270	mak@email.com	2019-09-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	Penny
271	mak@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	Penny
272	mak@email.com	2019-12-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	Penny
273	mak@email.com	2020-07-18	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1996	Penny
274	mak@email.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1996	Penny
275	mak@email.com	2021-03-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	northrop/nolte tunnel	f	1996	Penny
276	mak@email.com	2019-10-22	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1997	Penny
277	mak@email.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1997	Penny
278	mak@email.com	2018-11-19	0.010	\N	Minneapolis 	MN	55414	17th Ave SE	f	1998	Penny
279	mak@email.com	2019-02-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1998	Penny
280	mak@email.com	2019-05-08	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1998	Penny
281	mak@email.com	2019-07-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1998	Penny
282	mak@email.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	Penny
283	mak@email.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	Penny
284	mak@email.com	2019-06-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	Penny
285	mak@email.com	2019-06-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1999	Penny
286	mak@email.com	2018-09-04	0.010	\N	Minneapolis 	MN	55455	16th Ave SE	f	2000	Penny
287	mak@email.com	2018-11-20	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2000	Penny
288	mak@email.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop box office	f	2000	Penny
289	mak@email.com	2021-09-03	0.010	5001 S 34th Ave	Minneapolis 	MN	55417	Casa Maria	f	2000	Penny
290	mak@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Penny
291	mak@email.com	2019-01-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	Penny
292	mak@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Penny
293	mak@email.com	2019-04-04	0.010	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	2001	Penny
294	mak@email.com	2019-09-26	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	Penny
295	mak@email.com	2019-10-06	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2001	Penny
296	mak@email.com	2020-04-07	0.010	\N	Minneapolis 	MN	\N	Mississippi River	f	2001	Penny
298	mak@email.com	2018-12-10	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2002	Penny
299	mak@email.com	2019-05-28	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2002	Penny
300	mak@email.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2004	Penny
301	mak@email.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2004	Penny
302	mak@email.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2004	Penny
303	mak@email.com	2020-03-14	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	Penny
304	mak@email.com	2019-10-23	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	Penny
305	mak@email.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	2005	Penny
306	mak@email.com	2019-12-13	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2006	Penny
307	mak@email.com	2019-04-06	0.010	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2007	Penny
308	mak@email.com	2019-04-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2007	Penny
309	mak@email.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2007	Penny
311	mak@email.com	2018-09-20	0.010	\N	Minneapolis 	MN	55414	14th Ave SE	f	2008	Penny
312	mak@email.com	2019-09-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2008	Penny
313	mak@email.com	2018-11-27	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	2010	Penny
314	mak@email.com	2019-12-05	0.010	400 21st Ave S	Minneapolis 	MN	55455	21st Ave Ramp	f	2011	Penny
315	mak@email.com	2020-03-21	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2011	Penny
316	mak@email.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2011	Penny
317	mak@email.com	2021-02-01	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2011	Penny
318	mak@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	Penny
666	mak@email.com	2019-08-22	0.010	\N	\N	MN	\N	\N	f	1982	Penny
320	mak@email.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	Penny
321	mak@email.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2013	Penny
322	mak@email.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	Penny
323	mak@email.com	2018-10-03	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2014	Penny
324	mak@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2014	Penny
325	mak@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	2014	Penny
326	mak@email.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	2014	Penny
327	mak@email.com	2020-10-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2014	Penny
328	mak@email.com	2019-05-28	0.010	324 14th Ave SE	Minneapolis 	MN	55414	Qdoba	f	2015	Penny
329	mak@email.com	2021-06-15	0.010	601 SE Main St	Minneapolis 	MN	55414	Stone Arch Apartments	f	2015	Penny
330	mak@email.com	2018-09-30	0.010	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	2016	Penny
331	mak@email.com	2019-02-12	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	Penny
332	mak@email.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2016	Penny
333	mak@email.com	2019-04-03	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2016	Penny
334	mak@email.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2016	Penny
335	mak@email.com	2018-11-20	0.010	\N	Minneapolis 	MN	\N	University Ave 	f	2017	Penny
336	mak@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2017	Penny
337	mak@email.com	2018-12-26	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	Penny
338	mak@email.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	Penny
339	mak@email.com	2019-02-22	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2017	Penny
340	mak@email.com	2019-03-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2017	Penny
341	mak@email.com	2019-07-20	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	2017	Penny
342	mak@email.com	2020-05-06	0.010	\N	Minneapolis 	MN	\N	29th and 36th St s	f	2017	Penny
343	mak@email.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2017	Penny
344	mak@email.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Penny
345	mak@email.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2018	Penny
678	tdurden@email.com	2020-11-04	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2014	Penny
677	tdurden@email.com	2021-11-04	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2020	Penny
681	tdurden@email.com	2021-11-06	0.010	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2021	Penny
682	tdurden@email.com	2021-11-06	0.010	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2006	Penny
679	tdurden@email.com	2021-11-04	0.050	350 Canal Park Dr	Duluth	MN	55802	Inn On Lake Superior	f	2020	Nickel
346	mak@email.com	2019-04-15	0.010	417 14th Ave SE	Minneapolis 	MN	55414	Kafe421	f	2018	Penny
347	mak@email.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Penny
348	mak@email.com	2019-06-11	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2019	Penny
349	mak@email.com	2019-09-04	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2019	Penny
350	mak@email.com	2019-09-12	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	Penny
680	tdurden@email.com	2021-11-04	0.010	350 Canal Park Dr	Duluth	MN	55802	Inn On Lake Superior	t	2013	Penny
351	mak@email.com	2019-09-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2019	Penny
352	mak@email.com	2019-12-16	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	Penny
353	mak@email.com	2021-03-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S	f	2019	Penny
354	mak@email.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	Penny
355	mak@email.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2019	Penny
356	mak@email.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2020	Penny
357	mak@email.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2020	Penny
358	mak@email.com	2021-03-10	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	2020	Penny
359	mak@email.com	2021-05-03	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S alley	f	2020	Penny
360	mak@email.com	2021-07-08	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2021	Penny
361	mak@email.com	2021-07-20	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	2021	Penny
100	mak@email.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	t	\N	Penny
362	mak@email.com	2021-07-27	0.010	326 14th Ave SE	Minneapolis 	MN	55414	Pot Bellys	f	2021	Penny
669	tdurden@email.com	2020-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2015	Penny
363	mak@email.com	2019-04-11	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
364	mak@email.com	2018-09-18	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
365	mak@email.com	2018-05-29	0.010	\N	Minneapolis 	MN	\N	U Campus	f	\N	Penny
366	mak@email.com	2018-06-08	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	Penny
367	mak@email.com	2018-06-15	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
368	mak@email.com	2018-07-02	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	Penny
369	mak@email.com	2018-07-06	0.010	\N	Minneapolis 	MN	55455	Washington Ave SE	f	\N	Penny
370	mak@email.com	2018-07-27	0.010	1 Twins Way	Minneapolis 	MN	55403	Target Field	f	\N	Penny
371	mak@email.com	2018-10-23	0.010	309 19th Ave S	Minneapolis 	MN	55455	Wilson library	f	\N	Penny
372	mak@email.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	Penny
373	mak@email.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	Penny
374	mak@email.com	2018-11-16	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	Penny
375	mak@email.com	2018-11-16	0.010	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	\N	Penny
376	mak@email.com	2018-12-10	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	Penny
377	mak@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
378	mak@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
379	mak@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
380	mak@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
381	mak@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
383	mak@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Penny
384	mak@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Penny
385	mak@email.com	2019-06-08	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	\N	Penny
386	mak@email.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	\N	Penny
396	mak@email.com	2021-05-04	0.010	3425 E Lake St	Minneapolis 	MN	55406	Subway	f	\N	Penny
397	mak@email.com	2021-05-13	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	\N	Penny
398	mak@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1968	Penny
399	mak@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1975	Penny
400	mak@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Penny
401	mak@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Penny
402	mak@email.com	2021-08-31	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	Penny
403	mak@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2004	Penny
404	mak@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	Penny
405	mak@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2009	Penny
406	mak@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2014	Penny
407	mak@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2018	Penny
408	mak@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	Penny
425	mak@email.com	2019-07-04	0.010	\N	Minneapolis 	MN	\N	Lake Stret	f	1987	Penny
426	mak@email.com	2020-05-24	0.010	\N	Minneapolis 	MN	\N	rental car	f	2012	Penny
427	mak@email.com	2018-08-20	0.010	\N	Minneapolis 	MN	55455	Church St	f	2014	Penny
428	mak@email.com	2018-08-31	0.010	\N	Minneapolis 	MN	55455	Church St	f	2018	Penny
429	mak@email.com	2020-10-09	0.010	\N	Minneapolis 	MN	\N	Central Ave NE	f	2020	Penny
430	mak@email.com	2021-09-01	0.010	\N	Minneapolis 	MN	\N	Lake Street	f	2021	Penny
432	mak@email.com	2021-05-02	0.010	1578 WI-65	New Richland	WI	54017	Casey's	f	1983	Penny
433	mak@email.com	2020-01-21	0.010	1500 Broadway	New York	NY	10036	AudienceView	f	2006	Penny
437	mak@email.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	1999	Penny
438	mak@email.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	2016	Penny
441	mak@email.com	2021-08-28	0.010	6445 Richfield Pkwy	Richfield	MN	55423	Target	f	2021	Penny
443	mak@email.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	1976	Penny
444	mak@email.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	\N	Penny
445	mak@email.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1967	Penny
446	mak@email.com	2020-07-24	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1982	Penny
447	mak@email.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Cub Foods	f	1990	Penny
448	mak@email.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1995	Penny
449	mak@email.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	2006	Penny
450	mak@email.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	2012	Penny
451	mak@email.com	2020-07-24	0.010	2100 N Snelling Dr	Roseville	MN	55113	Staples	f	2013	Penny
454	mak@email.com	2019-09-11	0.010	5801 W 16th St	Saint Louis Parl	MN	55416	Costco	f	2001	Penny
485	mak@email.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1961	Penny
486	mak@email.com	2018-08-03	0.010	649 Grand Ave	Saint Paul	MN	55105	650 Alley	f	1968	Penny
487	mak@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1969	Penny
488	mak@email.com	2021-09-06	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1969	Penny
489	mak@email.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1974	Penny
490	mak@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1974	Penny
491	mak@email.com	2019-06-20	0.010	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	1974	Penny
492	mak@email.com	2018-08-23	0.010	275 White Bear Ave	Saint Paul	MN	55106	MGM liquor	f	1975	Penny
493	mak@email.com	2018-12-30	0.010	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1975	Penny
494	mak@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1976	Penny
495	mak@email.com	2019-04-22	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1978	Penny
496	mak@email.com	2019-05-21	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1981	Penny
497	mak@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1982	Penny
498	mak@email.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	Penny
499	mak@email.com	2019-07-10	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	Penny
500	mak@email.com	2020-11-15	0.010	33 County Rd B E	Saint Paul	MN	55117	Joe's sporting goods	f	1983	Penny
501	mak@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1984	Penny
502	mak@email.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1987	Penny
503	mak@email.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1988	Penny
504	mak@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Oxford St	f	1988	Penny
505	mak@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1989	Penny
506	mak@email.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1990	Penny
507	mak@email.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1992	Penny
508	mak@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1993	Penny
509	mak@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1995	Penny
510	mak@email.com	2019-05-04	0.010	400 Snelling Ave N	Saint Paul	MN	55104	Allianz field	f	1995	Penny
511	mak@email.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1997	Penny
512	mak@email.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1997	Penny
513	mak@email.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1998	Penny
514	mak@email.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	Penny
515	mak@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Milton St	f	2001	Penny
516	mak@email.com	2021-08-16	0.010	2530 Kasota Ave	Saint Paul	MN	55108	Napa Auto Parts	f	2002	Penny
517	mak@email.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2005	Penny
518	mak@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	Penny
519	mak@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	Penny
520	mak@email.com	2019-08-30	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2005	Penny
521	mak@email.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2007	Penny
522	mak@email.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2008	Penny
523	mak@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2010	Penny
524	mak@email.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2011	Penny
525	mak@email.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2012	Penny
526	mak@email.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2013	Penny
527	mak@email.com	2019-09-11	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2013	Penny
528	mak@email.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2015	Penny
529	mak@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	Penny
530	mak@email.com	2018-10-08	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2016	Penny
531	mak@email.com	2019-10-04	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2016	Penny
532	mak@email.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	Penny
533	mak@email.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	Penny
534	mak@email.com	2019-02-16	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	Penny
535	mak@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	Penny
536	mak@email.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	Penny
537	mak@email.com	2020-03-09	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	Penny
538	mak@email.com	2020-06-13	0.010	975 Grand Ave	Saint Paul	MN	55105	Jimmy johns	f	2017	Penny
539	mak@email.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	f	2017	Penny
540	mak@email.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2018	Penny
541	mak@email.com	2019-02-14	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	2018	Penny
542	mak@email.com	2020-02-01	0.010	6 West 6th Street	Saint Paul	MN	55102	Amsterdam bar and grill	f	2019	Penny
543	mak@email.com	2021-06-30	0.010	498 Selby Ave	Saint Paul	MN	55102	The Gnome	f	2021	Penny
544	mak@email.com	2018-08-04	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	Penny
545	mak@email.com	2018-09-08	0.010	649 Grand Ave	Saint Paul	MN	55105	653 Alley	f	\N	Penny
546	mak@email.com	2018-05-26	0.010	652 Grand Ave	Saint Paul	MN	55105	652 Alley	f	\N	Penny
547	mak@email.com	2018-05-27	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	Penny
548	mak@email.com	2018-06-07	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	Penny
549	mak@email.com	2018-06-15	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Alley	f	\N	Penny
550	mak@email.com	2018-07-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	Penny
551	mak@email.com	2018-07-16	0.010	651 Grand Ave	Saint Paul	MN	55105	651 Alley	f	\N	Penny
552	mak@email.com	2018-08-01	0.010	857 Grand Ave	Saint Paul	MN	55105	Billys	f	\N	Penny
553	mak@email.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Penny
554	mak@email.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Penny
555	mak@email.com	2018-10-22	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	Penny
556	mak@email.com	2018-10-29	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	\N	Penny
564	mak@email.com	2021-09-25	0.020	2277 Ford Pkwy	Saint Paul	MN	55116	PetCo	f	1964	Penny
574	mak@email.com	2018-11-03	0.010	\N	Saint Paul	MN	55104	Marshall ave	f	1964	Penny
575	mak@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1981	Penny
576	mak@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1982	Penny
577	mak@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1984	Penny
578	mak@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1986	Penny
579	mak@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	2001	Penny
580	mak@email.com	2019-07-21	0.010	\N	Saint Paul	MN	\N	Marshall and Fairview	f	2019	Penny
581	mak@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
583	mak@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
584	mak@email.com	2018-10-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	Penny
585	mak@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	\N	Penny
588	mak@email.com	2021-06-16	0.010	\N	Saint Paul	MN	\N	Frank Ave	f	\N	Penny
600	mak@email.com	2019-02-02	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1972	Penny
601	mak@email.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1974	Penny
602	mak@email.com	2018-07-31	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	Penny
603	mak@email.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	1978	Penny
604	mak@email.com	2019-01-10	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1981	Penny
605	mak@email.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	Penny
606	mak@email.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	Penny
607	mak@email.com	2019-06-17	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1996	Penny
608	mak@email.com	2018-08-07	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2004	Penny
609	mak@email.com	2019-04-29	0.010	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2015	Penny
610	mak@email.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2015	Penny
611	mak@email.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	2017	Penny
612	mak@email.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	Penny
613	mak@email.com	2021-09-25	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	Penny
614	mak@email.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
615	mak@email.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
616	mak@email.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
617	mak@email.com	2018-07-14	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
618	mak@email.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
619	mak@email.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
636	mak@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1961	Penny
637	mak@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1973	Penny
638	mak@email.com	2019-09-21	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1976	Penny
639	mak@email.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1978	Penny
640	mak@email.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1981	Penny
641	mak@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	Penny
642	mak@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1990	Penny
643	mak@email.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	Penny
644	mak@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2007	Penny
645	mak@email.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	Penny
646	mak@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	Penny
647	mak@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
648	mak@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
649	mak@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
656	mak@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
657	mak@email.com	2018-08-19	0.030	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1997	Penny
662	mak@email.com	2019-06-21	0.010	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	1995	Penny
688	mak@email.com	2021-11-18	0.010	1960 Twin Lakes Parkway	Roseville	MN	\N	Walmart	f	2021	Penny
586	mak@email.com	2019-07-21	0.010	\N	saint Paul	MN	\N	Marshall and snelling	t	\N	Penny
587	mak@email.com	2019-08-11	0.010	\N	saint paul	MN	\N	Marshall and snelling	t	\N	Penny
620	mak@email.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	Penny
621	mak@email.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	Penny
622	mak@email.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	Penny
257	mak@email.com	2019-06-25	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1990	Penny
582	mak@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
90	mak@email.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	Penny
91	mak@email.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	Penny
92	mak@email.com	2019-05-23	0.010	3425 E Lake St 	Minneapolis	MN	55406	Subway	t	\N	Penny
93	mak@email.com	2019-10-19	0.010	301 19th Ave S	Minneapolis	MN	55455	Humphrey School	t	\N	Penny
94	mak@email.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	Penny
95	mak@email.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	Penny
96	mak@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
97	mak@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
98	mak@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
387	mak@email.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	Penny
650	mak@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
53	mak@email.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1971	Penny
55	mak@email.com	2019-01-18	0.010	300 Rodgers Blvd	Honolulu	HI	96819	Airport	f	2012	Penny
297	mak@email.com	2021-01-10	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2001	Penny
171	mak@email.com	2018-10-30	0.050	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	Nickel
172	mak@email.com	2021-03-19	0.050	1501 University Ave SE	Minneapolis 	MN	55414	DP Dough	f	1980	Nickel
173	mak@email.com	2021-06-07	0.050	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1983	Nickel
174	mak@email.com	2020-03-19	0.050	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	1994	Nickel
175	mak@email.com	2018-12-10	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	1995	Nickel
176	mak@email.com	2019-02-14	0.050	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	1999	Nickel
177	mak@email.com	2019-04-07	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	2000	Nickel
179	mak@email.com	2018-08-27	0.050	2929 36th Ave S	Minneapolis 	MN	55406	Karl's porch	f	2001	Nickel
180	mak@email.com	2020-03-14	0.050	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2001	Nickel
181	mak@email.com	2020-10-01	0.050	\N	Minneapolis 	MN	\N	Washington Ave SE	f	2007	Nickel
182	mak@email.com	2018-10-31	0.050	2929 36th Ave S	Minneapolis 	MN	55406	2929 26th Ave s	f	2012	Nickel
183	mak@email.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2015	Nickel
184	mak@email.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2016	Nickel
185	mak@email.com	2019-08-05	0.050	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Nickel
186	mak@email.com	2021-06-01	0.050	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2020	Nickel
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mak
--

COPY public.users (email, fname, lname, password) FROM stdin;
mak@email.com	Melissa	Keller	$argon2id$v=19$m=65536,t=3,p=4$5Nz7/793TukdY0ypNebcmw$O+4UrGXR5n8Jk8sSMcCRI2t66z6BQ9AITBLvCPVAxqg
tdurden@email.com	Tyler	Durden	$argon2id$v=19$m=65536,t=3,p=4$rnXuvRcixJgTwljL2dv7/w$HyojlBMIboTPUlEIEczg624DffsPXvgLht2VrK3TFy0
\.


--
-- Name: monies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mak
--

SELECT pg_catalog.setval('public.monies_id_seq', 1135, true);


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

