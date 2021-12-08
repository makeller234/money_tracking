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
687	marla@email.com	2020-12-15	0.100	199 W Kellogg Blvd	Saint Paul	MN	\N	Xcel Energy Center	f	1923	Dime
685	marla@email.com	2021-11-06	0.050	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2016	Nickel
686	marla@email.com	2020-10-06	0.100	84 Church Street Southeast	Minneapolis	MN	\N	Northrop	t	1988	Dime
684	marla@email.com	2021-11-06	0.250	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2018	Quarter
51	makeller234	2019-01-12	1.000	99-500 Salt Lake Blvd	Honolulu	HI	96818	Aloha Stadium	f	2013	$1
165	makeller234	2021-09-24	1.000	501 30th Ave SE	Minneapolis 	MN	55414	The Market at Malcolm yards	f	2009	$1
431	makeller234	2021-06-19	1.000	15277 Barton Ave NW	Monticello	MN	55362	15277 Barton Ave NW	f	2013	$1
42	makeller234	2020-06-27	0.100	60684 MN-23	Finlayson	MN	55735	Cenex	t	\N	Dime
56	makeller234	2021-07-24	1.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$1
57	makeller234	2021-07-24	5.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$5
75	makeller234	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
161	makeller234	2018-05-22	0.100	\N	Minneapolis 	MN	\N	\N	f	\N	Dime
676	marla@email.com	2021-11-04	0.250	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2015	Quarter
660	makeller234	2020-11-21	0.100	7235 MN-61	Tofte	MN	55615	Holiday	f	1992	Dime
439	makeller234	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Dime
440	makeller234	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Dime
572	makeller234	2019-08-11	0.100	\N	saint paul	MN	\N	Marshall and hamline	t	\N	Dime
13	makeller234	2021-05-30	0.100	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2004	Dime
18	makeller234	2019-03-22	0.100	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1990	Dime
29	makeller234	2018-05-19	0.100	\N	Duluth 	MN	55802	\N	f	\N	Dime
573	makeller234	2018-06-03	0.050	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Nickel
675	marla@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	t	2012	Penny
1123	marla@email.com	2021-11-28	0.250	199 W Kellogg Blvd	Saint Paul	MN	\N	Xcel Energy Center	f	2016	Quarter
1122	marla@email.com	2021-10-22	0.250	199 W Kellogg Blvd	Saint Paul	MN	\N	Xcel Energy Center	f	2016	Quarter
1131	marla@email.com	2021-11-30	0.100	510 Main St	Wall	SD	\N	Wall Drug	t	\N	Dime
38	makeller234	2019-02-16	0.100	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2010	Dime
58	makeller234	2021-07-24	0.100	Cedar Street	Houston	MN	55943	Hoedown	f	2008	Dime
60	makeller234	2019-07-19	0.100	141 Carmichael Rd	Hudson	WI	54016	Walgreens	f	2015	Dime
61	makeller234	2019-01-15	0.100	108 Hekili St	Kailu	HI	96734	Foodland	f	2007	Dime
66	makeller234	2018-12-20	0.100	5339 MN-61	Lutsen	MN	55612	Lutsen Liquors	f	1996	Dime
67	makeller234	2018-12-20	0.100	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort	f	2011	Dime
78	makeller234	2021-10-15	0.100	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1984	Dime
79	makeller234	2021-06-22	0.100	2513 Central Ave NE	Minneapolis	MN	55418	HolyLand	f	2003	Dime
109	makeller234	2019-11-04	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1999	Dime
110	makeller234	2019-08-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2015	Dime
111	makeller234	2020-08-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1966	Dime
1132	marla@email.com	2021-12-02	0.010	510 Main St	Wall	SD	\N	Wall Drug	f	2015	Penny
120	makeller234	2019-05-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1994	Dime
121	makeller234	2018-06-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	Dime
122	makeller234	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	Dime
123	makeller234	2019-01-29	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1999	Dime
124	makeller234	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	1999	Dime
125	makeller234	2020-03-16	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	Dime
126	makeller234	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	Dime
127	makeller234	2019-12-12	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2000	Dime
128	makeller234	2019-10-22	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2001	Dime
129	makeller234	2019-03-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2002	Dime
130	makeller234	2019-09-23	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2002	Dime
131	makeller234	2019-07-15	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2003	Dime
132	makeller234	2020-08-10	0.100	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2003	Dime
133	makeller234	2021-02-13	0.100	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	Dime
134	makeller234	2018-11-12	0.100	\N	Minneapolis 	MN	55455	17th Ave SE	f	2005	Dime
166	makeller234	2019-10-04	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	Dollar Coin
167	makeller234	2019-09-17	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Dollar Coin
168	makeller234	2019-03-15	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2008	Dollar Coin
169	makeller234	2019-06-06	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2010	Dollar Coin
170	makeller234	2019-05-14	0.005	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Half Penny
76	makeller234	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
598	makeller234	2019-10-07	0.100	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	t	\N	Dime
163	makeller234	2019-10-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Dime
135	makeller234	2019-04-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2005	Dime
136	makeller234	2021-05-25	0.100	110 Penn Ave N	Minneapolis 	MN	55405	Bassett Park	f	2005	Dime
137	makeller234	2018-10-31	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2006	Dime
138	makeller234	2018-12-17	0.100	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	2006	Dime
139	makeller234	2019-02-15	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2006	Dime
140	makeller234	2019-06-25	0.100	2858 26th Ave S	Minneapolis 	MN	55406	Dollar Store Parking Lot	f	2006	Dime
141	makeller234	2019-09-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2006	Dime
142	makeller234	2019-10-19	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2007	Dime
143	makeller234	2018-10-02	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2008	Dime
144	makeller234	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2008	Dime
145	makeller234	2019-05-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2008	Dime
146	makeller234	2019-10-25	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2010	Dime
147	makeller234	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2011	Dime
148	makeller234	2019-05-20	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	Dime
149	makeller234	2019-09-08	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	2012	Dime
150	makeller234	2018-12-31	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2014	Dime
151	makeller234	2020-03-19	0.100	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	2014	Dime
152	makeller234	2019-09-27	0.100	\N	Minneapolis 	MN	\N	14th Ave SE	f	2015	Dime
77	makeller234	2019-06-07	20.000	1504 7th St S	Minneapolis	MN	55454	House of Balls	t	\N	$20
153	makeller234	2020-03-21	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2015	Dime
154	makeller234	2018-12-06	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	Dime
155	makeller234	2020-03-12	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2016	Dime
156	makeller234	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2017	Dime
157	makeller234	2019-02-17	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Dime
158	makeller234	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2018	Dime
159	makeller234	2021-07-31	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2019	Dime
160	makeller234	2021-09-09	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2021	Dime
162	makeller234	2019-05-05	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Dime
164	makeller234	2019-11-24	0.100	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	\N	Dime
80	makeller234	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Nickel
81	makeller234	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Nickel
190	makeller234	2021-04-05	0.050	824 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	t	\N	Nickel
37	makeller234	2021-04-12	0.010	16396 Wagner Way	Eden Prairie	MN	55344	Tavern 4&5	t	\N	Penny
590	makeller234	2020-06-06	0.250	\N	Saint paul	MN	55102	Marshall Ave and Dale Ave	t	\N	Quarter
102	makeller234	2021-02-12	0.250	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Quarter
434	makeller234	2020-01-22	0.250	1335 6th Ave	New York	NY	10019	NY Hilton Midtown	f	1972	Quarter
673	makeller234	2021-10-30	0.250	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2018	Quarter
22	makeller234	2019-01-11	0.250	\N	Bloomington	MN	\N	Minneapolis−Saint Paul International Airport	f	2015	Quarter
484	makeller234	2019-01-08	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	Nickel
674	makeller234	2021-10-30	0.050	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2021	Nickel
19	makeller234	2019-03-22	0.050	60 E Broadway	Bloomington	MN	55425	Mall of America	f	2000	Nickel
112	makeller234	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1972	Dime
113	makeller234	2021-10-02	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1972	Dime
114	makeller234	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1974	Dime
115	makeller234	2019-09-23	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1976	Dime
116	makeller234	2019-12-13	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1978	Dime
117	makeller234	2020-03-19	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	1980	Dime
118	makeller234	2018-11-17	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1986	Dime
119	makeller234	2019-06-17	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	Dime
41	makeller234	2019-02-16	0.250	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	1999	Quarter
46	makeller234	2019-08-10	0.250	101 2nd St E,	Hastings	MN	55033	Lock and Dam Eatery	f	1974	Quarter
33	makeller234	2019-08-16	0.250	350 Harbor Dr	Duluth 	MN	55802	Bayfront Festival Park	f	2015	Quarter
65	makeller234	2019-09-29	0.250	16854 Javelin	Lakeville	MN	55044	16854 Javelin	f	1996	Quarter
101	makeller234	2019-01-24	0.250	\N	Minneapolis	MN	\N	14th Ave SE	f	2018	Quarter
1129	makeller234	2021-11-30	0.100	510 Main St	Wall	SD	\N	Wall Drug	f	2016	Dime
106	makeller234	2019-09-03	5.000	\N	Minneapolis 	MN	\N	38th and lake st	f	2009	$5
107	makeller234	2019-05-08	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1970	Canadian penny
108	makeller234	2021-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	\N	Canadian penny
39	makeller234	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2005	Nickel
40	makeller234	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2017	Nickel
47	makeller234	2019-01-14	0.050	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2014	Nickel
187	makeller234	2021-09-12	0.050	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2021	Nickel
178	makeller234	2021-08-29	0.050	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2000	Nickel
69	makeller234	2020-11-02	0.010	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort parking lot	f	1981	Penny
188	makeller234	2018-05-22	0.050	\N	Minneapolis 	MN	\N	\N	f	\N	Nickel
189	makeller234	2018-09-07	0.050	\N	Minneapolis 	MN	55414	17th Ave SE	f	\N	Nickel
472	makeller234	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	Dime
310	makeller234	2020-12-12	0.010	\N	Minneapolis 	MN	\N	\N	f	2007	Penny
419	makeller234	2019-03-02	0.250	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2001	Quarter
420	makeller234	2019-07-30	0.250	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2007	Quarter
421	makeller234	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	2008	Quarter
422	makeller234	2020-03-14	0.250	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2008	Quarter
423	makeller234	2021-07-10	0.250	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2009	Quarter
435	makeller234	2019-06-13	0.250	16825 County Rd 24	Plymouth	MN	55447	Holiday	f	1999	Quarter
453	makeller234	2021-06-18	0.250	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1981	Quarter
455	makeller234	2019-03-16	1.000	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	$1
382	makeller234	2019-03-15	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	Penny
659	makeller234	2019-09-29	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	Quarter
668	makeller234	2018-07-30	0.250	\N	\N	MN	\N	Found by Louisa 	f	\N	Quarter
665	makeller234	2017-04-01	7.020	\N	\N	MN	\N	\N	f	\N	lump_sum
664	makeller234	2020-06-27	0.010	\N	\N	MN	\N	\N	f	1979	Penny
633	makeller234	2018-09-02	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1987	Nickel
634	makeller234	2018-09-15	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2006	Nickel
635	makeller234	2018-07-28	0.050	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Nickel
99	makeller234	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
105	makeller234	2019-07-21	0.010	\N	Minneapolis	MN	\N	Lake and River Road	t	\N	Penny
191	makeller234	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Penny
192	makeller234	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1988	Penny
651	makeller234	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
652	makeller234	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
653	makeller234	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
654	makeller234	2018-09-02	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
655	makeller234	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
388	makeller234	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	Penny
389	makeller234	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Penny
390	makeller234	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
391	makeller234	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
392	makeller234	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
393	makeller234	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
394	makeller234	2020-07-11	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
395	makeller234	2021-03-02	0.010	2513 Central Ave NE	Minneapolis 	MN	55418	HolyLand	t	\N	Penny
442	makeller234	2020-12-28	0.010	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Penny
452	makeller234	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshalls	t	\N	Penny
557	makeller234	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
558	makeller234	2019-01-02	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub foods	t	\N	Penny
559	makeller234	2019-01-07	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	Penny
560	makeller234	2019-01-08	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	Penny
561	makeller234	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
562	makeller234	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
563	makeller234	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	t	\N	Penny
663	makeller234	2019-05-24	0.010	100 Jefferson Dr 	Zumbrota	MN	55992	Kwik Trip	t	\N	Penny
1	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1978	Penny
2	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	Penny
3	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	Penny
4	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1990	Penny
5	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1997	Penny
6	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1999	Penny
7	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2011	Penny
8	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2015	Penny
9	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
10	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
11	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
12	makeller234	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
14	makeller234	2021-05-30	0.010	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2016	Penny
15	makeller234	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	1992	Penny
16	makeller234	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	2019	Penny
17	makeller234	2018-06-10	0.010	7835 150th St W	Apple Valley	MN	55124	Walmart	f	\N	Penny
20	makeller234	2019-01-06	0.010	324 W Marketplace	Bloomington	MN	55425	Nordstrom's Rack	f	1981	Penny
21	makeller234	2019-03-22	0.010	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1981	Penny
319	makeller234	2020-03-25	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2012	Penny
23	makeller234	2018-07-15	0.010	8089 Brooklyn Blvd	Brooklyn Park	MN	55445	Panda Garden Buffet	f	\N	Penny
24	makeller234	2018-12-02	0.010	15400 Buck Hill Rd	Burnsville	MN	55306	Buck Hill	f	1973	Penny
25	makeller234	2019-07-09	0.010	14050 Burnhaven Dr	Burnsville	MN	55337	Costco	f	1996	Penny
26	makeller234	2021-01-21	0.010	900 Burnsville Pkwy	Burnsville	MN	55337	Holiday	f	2013	Penny
27	makeller234	2019-06-12	0.010	2000 Hwy 13 E	Burnsville	MN	55337	Dollar Tree parking lot	f	2018	Penny
28	makeller234	2019-08-10	0.010	7210 E Point Douglas Rd S	Cottage Grove	MN	55016	TJMaxx	f	1970	Penny
30	makeller234	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	1975	Penny
31	makeller234	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	2013	Penny
32	makeller234	2018-05-19	0.010	\N	Duluth 	MN	55802	\N	f	\N	Penny
34	makeller234	2019-06-01	0.010	2000 Cliff Lake Rd	Eagan	MN	55122	Target	f	2017	Penny
35	makeller234	2019-04-01	0.010	1298 Promenade Pl	Eagan	MN	55121	Qdoba	f	2018	Penny
36	makeller234	2019-06-01	0.010	1250 Town Centre Dr	Eagan	MN	55123	Koyoto	f	\N	Penny
43	makeller234	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik Trip	f	2014	Penny
44	makeller234	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik trip	f	2017	Penny
45	makeller234	2021-03-27	0.010	113 E 2nd St E	Hastings	MN	55033	Muse2320	f	2021	Penny
48	makeller234	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	1982	Penny
49	makeller234	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2013	Penny
50	makeller234	2019-01-15	0.010	53-660 Kamehameha Hwy	Hauula	HI	96717	53-660 Kamehameha Hwy	f	2018	Penny
52	makeller234	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1969	Penny
54	makeller234	2019-01-16	0.010	2330 Kalakaua Ave	Honolulu	HI	69815	International Marketplace	f	1992	Penny
59	makeller234	2020-09-05	0.010	103 E Cedar St	Houston	MN	55943	Cenex	f	2005	Penny
62	makeller234	2018-07-29	0.010	9242 Hudson Blvd N	Lake Elmo	MN	55042	Bride to Be Consignment	f	\N	Penny
63	makeller234	2020-11-19	0.010	18275 Kenrick Ave	Lakeville	MN	55044	Target	f	1991	Penny
64	makeller234	2021-05-26	0.010	20710 Keokuk Ave	Lakeville	MN	55044	Walmart	f	2010	Penny
68	makeller234	2018-12-22	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1978	Penny
70	makeller234	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1990	Penny
71	makeller234	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1999	Penny
72	makeller234	2020-01-21	0.010	51 W 51st St	Manhattan	NY	10019	Duane reade	f	1980	Penny
73	makeller234	2020-01-21	0.010	\N	Manhattan	NY	10036	Times Square	f	2018	Penny
74	makeller234	2021-06-05	0.010	5050 Independence St	Maple Plain	MN	55359	Veterans Park	f	\N	Penny
82	makeller234	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1968	Penny
83	makeller234	2021-10-26	0.010	3815 E Lake St	Minneapolis	MN	55406	Longfellow Market	f	1971	Penny
84	makeller234	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	f	1976	Penny
85	makeller234	2018-08-28	0.010	\N	Minneapolis	MN	55414	14th Ave SE	f	1980	Penny
86	makeller234	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1981	Penny
87	makeller234	2020-09-19	0.010	1931 Minnehaha Ave	Minneapolis	MN	55405	Taco Bell	f	1996	Penny
88	makeller234	2021-10-26	0.010	36th Ave s and 29th st	Minneapolis	MN	55406	\N	f	2003	Penny
89	makeller234	2018-06-15	0.010	84 Church Street SE	Minneapolis	MN	55455	Surdyks at Northrop	f	\N	Penny
103	makeller234	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	1998	Penny
104	makeller234	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	2021	Penny
193	makeller234	2019-08-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1959	Penny
194	makeller234	2019-07-15	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1960	Penny
195	makeller234	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1961	Penny
196	makeller234	2020-01-07	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1962	Penny
197	makeller234	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1963	Penny
198	makeller234	2019-07-21	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1964	Penny
199	makeller234	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	Penny
200	makeller234	2020-05-23	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th St s alley	f	1964	Penny
201	makeller234	2021-05-11	0.010	302 15th Ave SE	Minneapolis 	MN	55414	Raising Canes	f	1964	Penny
202	makeller234	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1968	Penny
203	makeller234	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1969	Penny
204	makeller234	2019-03-14	0.010	\N	Minneapolis 	MN	\N	Scholars Walk	f	1971	Penny
205	makeller234	2019-10-09	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1971	Penny
206	makeller234	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1972	Penny
207	makeller234	2019-08-28	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1972	Penny
208	makeller234	2018-11-08	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1973	Penny
209	makeller234	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1973	Penny
210	makeller234	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop locker room	f	1973	Penny
211	makeller234	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1974	Penny
212	makeller234	2018-07-31	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	Penny
213	makeller234	2019-01-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	Penny
214	makeller234	2019-07-14	0.010	4400 E Lake St	Minneapolis 	MN	55406	Dairy Queen	f	1975	Penny
215	makeller234	2019-10-20	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1975	Penny
216	makeller234	2018-09-25	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	1976	Penny
217	makeller234	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1976	Penny
218	makeller234	2021-09-26	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1977	Penny
219	makeller234	2018-08-17	0.010	\N	Minneapolis 	MN	55414	Dinky town	f	1978	Penny
424	makeller234	2020-01-12	0.100	\N	Minneapolis 	MN	\N	E 42nd St	f	1984	Dime
436	makeller234	2020-01-23	0.100	\N	Queens	NY	11371	LaGuardia Airport	f	2019	Dime
456	makeller234	2020-07-17	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1967	Dime
457	makeller234	2018-09-15	0.100	755 Prior Ave N	Saint Paul	MN	55104	Can Can Wonderland	f	1976	Dime
458	makeller234	2019-07-17	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	Dime
459	makeller234	2019-04-10	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1981	Dime
460	makeller234	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1984	Dime
409	makeller234	2020-05-17	0.250	\N	Minneapolis 	MN	\N	29th and 32nd St	f	1974	Quarter
410	makeller234	2019-03-15	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Quarter
411	makeller234	2019-11-08	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	Quarter
412	makeller234	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1988	Quarter
413	makeller234	2018-12-08	0.250	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	Quarter
414	makeller234	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1995	Quarter
415	makeller234	2019-02-17	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1998	Quarter
416	makeller234	2019-03-22	0.250	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave Alley	f	1998	Quarter
417	makeller234	2019-04-29	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	Quarter
418	makeller234	2019-02-25	0.250	\N	Minneapolis 	MN	\N	University Ave	f	2000	Quarter
461	makeller234	2019-01-20	0.100	1225 Estabrook Dr	Saint Paul	MN	55103	Como conservatory 	f	1987	Dime
462	makeller234	2019-05-20	0.100	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1989	Dime
463	makeller234	2018-08-04	0.100	1300 Midway Pkwy	Saint Paul	MN	55103	Como Mini Golf	f	1990	Dime
464	makeller234	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1990	Dime
465	makeller234	2019-03-18	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	Dime
466	makeller234	2019-04-01	0.100	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1993	Dime
467	makeller234	2019-06-15	0.100	216 Arundel Street	Saint Paul	MN	55102	216 arundel	f	1998	Dime
468	makeller234	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	Dime
469	makeller234	2019-07-01	0.100	211 7th St W	Saint Paul	MN	55102	Bar Louis	f	1999	Dime
470	makeller234	2018-10-26	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	2005	Dime
471	makeller234	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	Dime
473	makeller234	2019-06-20	0.100	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	2016	Dime
474	makeller234	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2018	Dime
475	makeller234	2019-09-01	0.100	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2019	Dime
476	makeller234	2018-10-20	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Dime
477	makeller234	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1958	Nickel
478	makeller234	2019-02-05	0.050	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	Nickel
479	makeller234	2019-04-01	0.050	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1997	Nickel
480	makeller234	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	Nickel
481	makeller234	2019-04-01	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	Nickel
482	makeller234	2019-04-22	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2001	Nickel
483	makeller234	2019-06-14	0.050	275 White Bear Ave	Saint Paul	MN	55106	mgm liquors	f	2018	Nickel
220	makeller234	2020-01-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1978	Penny
221	makeller234	2021-09-10	0.010	231 Pillsbury Dr SE	Minneapolis 	MN	55455	Williamson Hall	f	1978	Penny
222	makeller234	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1979	Penny
223	makeller234	2019-09-09	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1979	Penny
224	makeller234	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	Penny
225	makeller234	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1980	Penny
226	makeller234	2019-02-22	0.010	275 Market St	Minneapolis 	MN	55405	International Market Square	f	1980	Penny
591	makeller234	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1981	Dime
592	makeller234	2019-06-09	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1999	Dime
593	makeller234	2019-11-11	0.100	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2002	Dime
594	makeller234	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2014	Dime
595	makeller234	2018-05-30	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Dime
596	makeller234	2018-06-23	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Dime
597	makeller234	2018-07-19	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Dime
565	makeller234	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	Quarter
566	makeller234	2019-08-28	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1980	Quarter
567	makeller234	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1991	Quarter
568	makeller234	2019-08-30	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1995	Quarter
569	makeller234	2019-03-16	0.250	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	Quarter
570	makeller234	2019-01-20	0.250	991 Lexington Pkwy N	Saint Paul	MN	55103	Gabes By The Park	f	2015	Quarter
571	makeller234	2018-05-26	0.250	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Quarter
589	makeller234	2019-06-02	0.250	\N	Saint Paul	MN	\N	Grand Ave	f	2004	Quarter
599	makeller234	2019-01-10	0.050	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	Nickel
227	makeller234	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1980	Penny
228	makeller234	2020-01-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1981	Penny
229	makeller234	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1981	Penny
230	makeller234	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1981	Penny
231	makeller234	2021-10-12	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1981	Penny
232	makeller234	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1982	Penny
233	makeller234	2019-01-09	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1982	Penny
234	makeller234	2019-07-30	0.010	14 Church St SE 	Minneapolis 	MN	55455	Nolte Garage	f	1982	Penny
235	makeller234	2019-04-07	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1983	Penny
236	makeller234	2019-12-06	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	Penny
237	makeller234	2020-06-14	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	1983	Penny
238	makeller234	2021-04-04	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	Penny
239	makeller234	2019-02-24	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1984	Penny
240	makeller234	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	1984	Penny
241	makeller234	2019-04-13	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	Penny
242	makeller234	2019-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	Penny
243	makeller234	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1985	Penny
244	makeller234	2021-03-14	0.010	\N	Minneapolis 	MN	\N	44th ave s	f	1985	Penny
245	makeller234	2018-11-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1986	Penny
246	makeller234	2019-03-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1986	Penny
623	makeller234	2019-09-29	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	Dime
624	makeller234	2018-09-15	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1998	Dime
625	makeller234	2019-09-22	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	Dime
626	makeller234	2018-09-02	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2011	Dime
627	makeller234	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	Dime
628	makeller234	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2017	Dime
629	makeller234	2021-09-11	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2021	Dime
630	makeller234	2018-06-19	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Dime
631	makeller234	2018-07-28	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Dime
632	makeller234	2018-09-23	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Dime
661	makeller234	2019-06-21	0.100	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	2001	Dime
658	makeller234	2018-08-25	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1996	Quarter
667	makeller234	2018-07-22	0.250	\N	\N	MN	\N	\N	f	2008	Quarter
247	makeller234	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	Penny
248	makeller234	2019-10-21	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	Penny
249	makeller234	2021-02-23	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	1986	Penny
250	makeller234	2018-11-25	0.010	\N	Minneapolis 	MN	\N	37th Ave s	f	1987	Penny
251	makeller234	2018-12-31	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1987	Penny
252	makeller234	2021-01-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	1987	Penny
253	makeller234	2019-07-05	0.010	4320 E Lake St 	Minneapolis 	MN	55406	Speedway	f	1988	Penny
254	makeller234	2019-08-24	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1988	Penny
255	makeller234	2021-09-08	0.010	3916 E Lake St	Minneapolis 	MN	55406	East Lake Liquor	f	1988	Penny
256	makeller234	2019-05-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1990	Penny
258	makeller234	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1990	Penny
259	makeller234	2020-10-22	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	1990	Penny
260	makeller234	2019-03-16	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1991	Penny
261	makeller234	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	1991	Penny
262	makeller234	2019-10-09	0.010	\N	Minneapolis 	MN	55455	17th Ave SE	f	1991	Penny
263	makeller234	2020-08-20	0.010	\N	Minneapolis 	MN	\N	Washington Ave SE	f	1991	Penny
264	makeller234	2019-02-27	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1992	Penny
265	makeller234	2020-10-24	0.010	3915 E Lake St	Minneapolis 	MN	55406	Ace Hardware	f	1992	Penny
266	makeller234	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1994	Penny
267	makeller234	2021-07-22	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1994	Penny
268	makeller234	2018-12-01	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1995	Penny
269	makeller234	2019-06-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1995	Penny
270	makeller234	2019-09-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	Penny
271	makeller234	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	Penny
272	makeller234	2019-12-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	Penny
273	makeller234	2020-07-18	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1996	Penny
274	makeller234	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1996	Penny
275	makeller234	2021-03-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	northrop/nolte tunnel	f	1996	Penny
276	makeller234	2019-10-22	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1997	Penny
277	makeller234	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1997	Penny
278	makeller234	2018-11-19	0.010	\N	Minneapolis 	MN	55414	17th Ave SE	f	1998	Penny
279	makeller234	2019-02-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1998	Penny
280	makeller234	2019-05-08	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1998	Penny
281	makeller234	2019-07-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1998	Penny
282	makeller234	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	Penny
283	makeller234	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	Penny
284	makeller234	2019-06-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	Penny
285	makeller234	2019-06-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1999	Penny
286	makeller234	2018-09-04	0.010	\N	Minneapolis 	MN	55455	16th Ave SE	f	2000	Penny
287	makeller234	2018-11-20	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2000	Penny
288	makeller234	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop box office	f	2000	Penny
289	makeller234	2021-09-03	0.010	5001 S 34th Ave	Minneapolis 	MN	55417	Casa Maria	f	2000	Penny
290	makeller234	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Penny
291	makeller234	2019-01-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	Penny
292	makeller234	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Penny
293	makeller234	2019-04-04	0.010	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	2001	Penny
294	makeller234	2019-09-26	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	Penny
295	makeller234	2019-10-06	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2001	Penny
296	makeller234	2020-04-07	0.010	\N	Minneapolis 	MN	\N	Mississippi River	f	2001	Penny
298	makeller234	2018-12-10	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2002	Penny
299	makeller234	2019-05-28	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2002	Penny
300	makeller234	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2004	Penny
301	makeller234	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2004	Penny
302	makeller234	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2004	Penny
303	makeller234	2020-03-14	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	Penny
304	makeller234	2019-10-23	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	Penny
305	makeller234	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	2005	Penny
306	makeller234	2019-12-13	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2006	Penny
307	makeller234	2019-04-06	0.010	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2007	Penny
308	makeller234	2019-04-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2007	Penny
309	makeller234	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2007	Penny
311	makeller234	2018-09-20	0.010	\N	Minneapolis 	MN	55414	14th Ave SE	f	2008	Penny
312	makeller234	2019-09-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2008	Penny
313	makeller234	2018-11-27	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	2010	Penny
314	makeller234	2019-12-05	0.010	400 21st Ave S	Minneapolis 	MN	55455	21st Ave Ramp	f	2011	Penny
315	makeller234	2020-03-21	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2011	Penny
316	makeller234	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2011	Penny
317	makeller234	2021-02-01	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2011	Penny
318	makeller234	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	Penny
320	makeller234	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	Penny
321	makeller234	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2013	Penny
322	makeller234	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	Penny
323	makeller234	2018-10-03	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2014	Penny
324	makeller234	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2014	Penny
325	makeller234	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	2014	Penny
326	makeller234	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	2014	Penny
327	makeller234	2020-10-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2014	Penny
328	makeller234	2019-05-28	0.010	324 14th Ave SE	Minneapolis 	MN	55414	Qdoba	f	2015	Penny
329	makeller234	2021-06-15	0.010	601 SE Main St	Minneapolis 	MN	55414	Stone Arch Apartments	f	2015	Penny
330	makeller234	2018-09-30	0.010	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	2016	Penny
331	makeller234	2019-02-12	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	Penny
332	makeller234	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2016	Penny
333	makeller234	2019-04-03	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2016	Penny
334	makeller234	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2016	Penny
335	makeller234	2018-11-20	0.010	\N	Minneapolis 	MN	\N	University Ave 	f	2017	Penny
336	makeller234	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2017	Penny
337	makeller234	2018-12-26	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	Penny
338	makeller234	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	Penny
339	makeller234	2019-02-22	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2017	Penny
340	makeller234	2019-03-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2017	Penny
341	makeller234	2019-07-20	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	2017	Penny
342	makeller234	2020-05-06	0.010	\N	Minneapolis 	MN	\N	29th and 36th St s	f	2017	Penny
343	makeller234	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2017	Penny
344	makeller234	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Penny
345	makeller234	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2018	Penny
346	makeller234	2019-04-15	0.010	417 14th Ave SE	Minneapolis 	MN	55414	Kafe421	f	2018	Penny
347	makeller234	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Penny
348	makeller234	2019-06-11	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2019	Penny
349	makeller234	2019-09-04	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2019	Penny
350	makeller234	2019-09-12	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	Penny
351	makeller234	2019-09-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2019	Penny
352	makeller234	2019-12-16	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	Penny
353	makeller234	2021-03-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S	f	2019	Penny
354	makeller234	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	Penny
355	makeller234	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2019	Penny
356	makeller234	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2020	Penny
357	makeller234	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2020	Penny
358	makeller234	2021-03-10	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	2020	Penny
359	makeller234	2021-05-03	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S alley	f	2020	Penny
360	makeller234	2021-07-08	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2021	Penny
361	makeller234	2021-07-20	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	2021	Penny
362	makeller234	2021-07-27	0.010	326 14th Ave SE	Minneapolis 	MN	55414	Pot Bellys	f	2021	Penny
363	makeller234	2019-04-11	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
364	makeller234	2018-09-18	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
365	makeller234	2018-05-29	0.010	\N	Minneapolis 	MN	\N	U Campus	f	\N	Penny
366	makeller234	2018-06-08	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	Penny
367	makeller234	2018-06-15	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
368	makeller234	2018-07-02	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	Penny
369	makeller234	2018-07-06	0.010	\N	Minneapolis 	MN	55455	Washington Ave SE	f	\N	Penny
370	makeller234	2018-07-27	0.010	1 Twins Way	Minneapolis 	MN	55403	Target Field	f	\N	Penny
371	makeller234	2018-10-23	0.010	309 19th Ave S	Minneapolis 	MN	55455	Wilson library	f	\N	Penny
372	makeller234	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	Penny
373	makeller234	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	Penny
374	makeller234	2018-11-16	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	Penny
375	makeller234	2018-11-16	0.010	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	\N	Penny
376	makeller234	2018-12-10	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	Penny
377	makeller234	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
378	makeller234	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
379	makeller234	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
380	makeller234	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
381	makeller234	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
383	makeller234	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Penny
384	makeller234	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Penny
385	makeller234	2019-06-08	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	\N	Penny
386	makeller234	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	\N	Penny
396	makeller234	2021-05-04	0.010	3425 E Lake St	Minneapolis 	MN	55406	Subway	f	\N	Penny
397	makeller234	2021-05-13	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	\N	Penny
398	makeller234	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1968	Penny
399	makeller234	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1975	Penny
400	makeller234	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Penny
401	makeller234	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Penny
402	makeller234	2021-08-31	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	Penny
403	makeller234	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2004	Penny
404	makeller234	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	Penny
405	makeller234	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2009	Penny
406	makeller234	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2014	Penny
407	makeller234	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2018	Penny
408	makeller234	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	Penny
425	makeller234	2019-07-04	0.010	\N	Minneapolis 	MN	\N	Lake Stret	f	1987	Penny
426	makeller234	2020-05-24	0.010	\N	Minneapolis 	MN	\N	rental car	f	2012	Penny
427	makeller234	2018-08-20	0.010	\N	Minneapolis 	MN	55455	Church St	f	2014	Penny
428	makeller234	2018-08-31	0.010	\N	Minneapolis 	MN	55455	Church St	f	2018	Penny
429	makeller234	2020-10-09	0.010	\N	Minneapolis 	MN	\N	Central Ave NE	f	2020	Penny
430	makeller234	2021-09-01	0.010	\N	Minneapolis 	MN	\N	Lake Street	f	2021	Penny
432	makeller234	2021-05-02	0.010	1578 WI-65	New Richland	WI	54017	Casey's	f	1983	Penny
433	makeller234	2020-01-21	0.010	1500 Broadway	New York	NY	10036	AudienceView	f	2006	Penny
437	makeller234	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	1999	Penny
438	makeller234	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	2016	Penny
441	makeller234	2021-08-28	0.010	6445 Richfield Pkwy	Richfield	MN	55423	Target	f	2021	Penny
443	makeller234	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	1976	Penny
444	makeller234	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	\N	Penny
445	makeller234	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1967	Penny
446	makeller234	2020-07-24	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1982	Penny
447	makeller234	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Cub Foods	f	1990	Penny
448	makeller234	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1995	Penny
449	makeller234	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	2006	Penny
450	makeller234	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	2012	Penny
451	makeller234	2020-07-24	0.010	2100 N Snelling Dr	Roseville	MN	55113	Staples	f	2013	Penny
454	makeller234	2019-09-11	0.010	5801 W 16th St	Saint Louis Parl	MN	55416	Costco	f	2001	Penny
485	makeller234	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1961	Penny
486	makeller234	2018-08-03	0.010	649 Grand Ave	Saint Paul	MN	55105	650 Alley	f	1968	Penny
487	makeller234	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1969	Penny
488	makeller234	2021-09-06	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1969	Penny
489	makeller234	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1974	Penny
490	makeller234	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1974	Penny
491	makeller234	2019-06-20	0.010	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	1974	Penny
492	makeller234	2018-08-23	0.010	275 White Bear Ave	Saint Paul	MN	55106	MGM liquor	f	1975	Penny
493	makeller234	2018-12-30	0.010	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1975	Penny
494	makeller234	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1976	Penny
495	makeller234	2019-04-22	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1978	Penny
496	makeller234	2019-05-21	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1981	Penny
497	makeller234	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1982	Penny
498	makeller234	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	Penny
499	makeller234	2019-07-10	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	Penny
500	makeller234	2020-11-15	0.010	33 County Rd B E	Saint Paul	MN	55117	Joe's sporting goods	f	1983	Penny
501	makeller234	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1984	Penny
502	makeller234	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1987	Penny
503	makeller234	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1988	Penny
504	makeller234	2019-06-02	0.010	\N	Saint Paul	MN	\N	Oxford St	f	1988	Penny
505	makeller234	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1989	Penny
506	makeller234	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1990	Penny
507	makeller234	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1992	Penny
508	makeller234	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1993	Penny
509	makeller234	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1995	Penny
510	makeller234	2019-05-04	0.010	400 Snelling Ave N	Saint Paul	MN	55104	Allianz field	f	1995	Penny
511	makeller234	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1997	Penny
512	makeller234	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1997	Penny
513	makeller234	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1998	Penny
514	makeller234	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	Penny
515	makeller234	2019-06-02	0.010	\N	Saint Paul	MN	\N	Milton St	f	2001	Penny
516	makeller234	2021-08-16	0.010	2530 Kasota Ave	Saint Paul	MN	55108	Napa Auto Parts	f	2002	Penny
517	makeller234	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2005	Penny
518	makeller234	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	Penny
519	makeller234	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	Penny
520	makeller234	2019-08-30	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2005	Penny
521	makeller234	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2007	Penny
522	makeller234	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2008	Penny
523	makeller234	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2010	Penny
524	makeller234	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2011	Penny
525	makeller234	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2012	Penny
526	makeller234	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2013	Penny
527	makeller234	2019-09-11	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2013	Penny
528	makeller234	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2015	Penny
529	makeller234	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	Penny
530	makeller234	2018-10-08	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2016	Penny
531	makeller234	2019-10-04	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2016	Penny
532	makeller234	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	Penny
533	makeller234	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	Penny
534	makeller234	2019-02-16	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	Penny
535	makeller234	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	Penny
536	makeller234	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	Penny
537	makeller234	2020-03-09	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	Penny
538	makeller234	2020-06-13	0.010	975 Grand Ave	Saint Paul	MN	55105	Jimmy johns	f	2017	Penny
539	makeller234	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	f	2017	Penny
540	makeller234	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2018	Penny
541	makeller234	2019-02-14	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	2018	Penny
542	makeller234	2020-02-01	0.010	6 West 6th Street	Saint Paul	MN	55102	Amsterdam bar and grill	f	2019	Penny
543	makeller234	2021-06-30	0.010	498 Selby Ave	Saint Paul	MN	55102	The Gnome	f	2021	Penny
544	makeller234	2018-08-04	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	Penny
545	makeller234	2018-09-08	0.010	649 Grand Ave	Saint Paul	MN	55105	653 Alley	f	\N	Penny
546	makeller234	2018-05-26	0.010	652 Grand Ave	Saint Paul	MN	55105	652 Alley	f	\N	Penny
547	makeller234	2018-05-27	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	Penny
548	makeller234	2018-06-07	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	Penny
549	makeller234	2018-06-15	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Alley	f	\N	Penny
550	makeller234	2018-07-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	Penny
551	makeller234	2018-07-16	0.010	651 Grand Ave	Saint Paul	MN	55105	651 Alley	f	\N	Penny
552	makeller234	2018-08-01	0.010	857 Grand Ave	Saint Paul	MN	55105	Billys	f	\N	Penny
553	makeller234	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Penny
554	makeller234	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Penny
555	makeller234	2018-10-22	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	Penny
556	makeller234	2018-10-29	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	\N	Penny
564	makeller234	2021-09-25	0.020	2277 Ford Pkwy	Saint Paul	MN	55116	PetCo	f	1964	Penny
574	makeller234	2018-11-03	0.010	\N	Saint Paul	MN	55104	Marshall ave	f	1964	Penny
575	makeller234	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1981	Penny
576	makeller234	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1982	Penny
577	makeller234	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1984	Penny
578	makeller234	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1986	Penny
579	makeller234	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	2001	Penny
580	makeller234	2019-07-21	0.010	\N	Saint Paul	MN	\N	Marshall and Fairview	f	2019	Penny
581	makeller234	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
583	makeller234	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
584	makeller234	2018-10-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	Penny
585	makeller234	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	\N	Penny
588	makeller234	2021-06-16	0.010	\N	Saint Paul	MN	\N	Frank Ave	f	\N	Penny
600	makeller234	2019-02-02	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1972	Penny
601	makeller234	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1974	Penny
602	makeller234	2018-07-31	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	Penny
603	makeller234	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	1978	Penny
604	makeller234	2019-01-10	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1981	Penny
605	makeller234	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	Penny
606	makeller234	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	Penny
607	makeller234	2019-06-17	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1996	Penny
608	makeller234	2018-08-07	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2004	Penny
609	makeller234	2019-04-29	0.010	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2015	Penny
610	makeller234	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2015	Penny
611	makeller234	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	2017	Penny
612	makeller234	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	Penny
613	makeller234	2021-09-25	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	Penny
614	makeller234	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
615	makeller234	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
616	makeller234	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
617	makeller234	2018-07-14	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
618	makeller234	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
619	makeller234	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
636	makeller234	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1961	Penny
637	makeller234	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1973	Penny
638	makeller234	2019-09-21	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1976	Penny
639	makeller234	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1978	Penny
640	makeller234	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1981	Penny
641	makeller234	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	Penny
642	makeller234	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1990	Penny
643	makeller234	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	Penny
644	makeller234	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2007	Penny
645	makeller234	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	Penny
646	makeller234	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	Penny
647	makeller234	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
648	makeller234	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
649	makeller234	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
656	makeller234	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
657	makeller234	2018-08-19	0.030	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1997	Penny
662	makeller234	2019-06-21	0.010	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	1995	Penny
666	makeller234	2019-08-22	0.010	\N	\N	MN	\N	\N	f	1982	Penny
688	makeller234	2021-11-18	0.010	1960 Twin Lakes Parkway	Roseville	MN	\N	Walmart	f	2021	Penny
678	marla@email.com	2020-11-04	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2014	Penny
677	marla@email.com	2021-11-04	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2020	Penny
681	marla@email.com	2021-11-06	0.010	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2021	Penny
682	marla@email.com	2021-11-06	0.010	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2006	Penny
679	marla@email.com	2021-11-04	0.050	350 Canal Park Dr	Duluth	MN	55802	Inn On Lake Superior	f	2020	Nickel
680	marla@email.com	2021-11-04	0.010	350 Canal Park Dr	Duluth	MN	55802	Inn On Lake Superior	t	2013	Penny
100	makeller234	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	t	\N	Penny
586	makeller234	2019-07-21	0.010	\N	saint Paul	MN	\N	Marshall and snelling	t	\N	Penny
587	makeller234	2019-08-11	0.010	\N	saint paul	MN	\N	Marshall and snelling	t	\N	Penny
620	makeller234	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	Penny
621	makeller234	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	Penny
622	makeller234	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	Penny
257	makeller234	2019-06-25	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1990	Penny
582	makeller234	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
90	makeller234	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	Penny
91	makeller234	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	Penny
92	makeller234	2019-05-23	0.010	3425 E Lake St 	Minneapolis	MN	55406	Subway	t	\N	Penny
93	makeller234	2019-10-19	0.010	301 19th Ave S	Minneapolis	MN	55455	Humphrey School	t	\N	Penny
94	makeller234	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	Penny
95	makeller234	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	Penny
96	makeller234	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
97	makeller234	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
98	makeller234	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
669	marla@email.com	2020-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2015	Penny
387	makeller234	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	Penny
650	makeller234	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
53	makeller234	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1971	Penny
55	makeller234	2019-01-18	0.010	300 Rodgers Blvd	Honolulu	HI	96819	Airport	f	2012	Penny
297	makeller234	2021-01-10	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2001	Penny
171	makeller234	2018-10-30	0.050	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	Nickel
172	makeller234	2021-03-19	0.050	1501 University Ave SE	Minneapolis 	MN	55414	DP Dough	f	1980	Nickel
173	makeller234	2021-06-07	0.050	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1983	Nickel
174	makeller234	2020-03-19	0.050	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	1994	Nickel
175	makeller234	2018-12-10	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	1995	Nickel
176	makeller234	2019-02-14	0.050	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	1999	Nickel
177	makeller234	2019-04-07	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	2000	Nickel
179	makeller234	2018-08-27	0.050	2929 36th Ave S	Minneapolis 	MN	55406	Karl's porch	f	2001	Nickel
180	makeller234	2020-03-14	0.050	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2001	Nickel
181	makeller234	2020-10-01	0.050	\N	Minneapolis 	MN	\N	Washington Ave SE	f	2007	Nickel
182	makeller234	2018-10-31	0.050	2929 36th Ave S	Minneapolis 	MN	55406	2929 26th Ave s	f	2012	Nickel
183	makeller234	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2015	Nickel
184	makeller234	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2016	Nickel
185	makeller234	2019-08-05	0.050	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Nickel
186	makeller234	2021-06-01	0.050	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2020	Nickel
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mak
--

COPY public.users (email, fname, lname, password) FROM stdin;
makeller234	Melissa	Keller	$pbkdf2-sha256$29000$5ZwzRqj1fg9hbM3Zey.l1A$bmF88t9XI9h2oGVEhzOLjxZ5Obbb1nuGUccxWhhFYUs
marla@email.com	Marla	Singer	$pbkdf2-sha256$29000$DwGA8L435rwXQihFqBViLA$fY27LgKOlArgUmKFvvwSZr/AKZQCwYfRYwoVwR8wcvI
\.


--
-- Name: monies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mak
--

SELECT pg_catalog.setval('public.monies_id_seq', 1132, true);


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

