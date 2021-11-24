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
42	tdurden@email.com	2020-06-27	0.100	60684 MN-23	Finlayson	MN	55735	Cenex	t	\N	Dime
56	tdurden@email.com	2021-07-24	1.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$1
57	tdurden@email.com	2021-07-24	5.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$5
75	tdurden@email.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
76	tdurden@email.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
598	tdurden@email.com	2019-10-07	0.100	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	t	\N	Dime
686	t3@email.com	2020-10-06	0.100	84 Church Street Southeast	Minneapolis	MN	\N	Northrop	f	1988	Dime
687	t3@email.com	2020-10-07	0.100	199 W Kellogg Blvd	Saint Paul	MN	\N	Xcel Energy Center	f	1923	Dime
163	tdurden@email.com	2019-10-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Dime
161	tdurden@email.com	2018-05-22	0.100	\N	Minneapolis 	MN	\N	\N	f	\N	Dime
135	tdurden@email.com	2019-04-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2005	Dime
136	tdurden@email.com	2021-05-25	0.100	110 Penn Ave N	Minneapolis 	MN	55405	Bassett Park	f	2005	Dime
137	tdurden@email.com	2018-10-31	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2006	Dime
138	tdurden@email.com	2018-12-17	0.100	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	2006	Dime
139	tdurden@email.com	2019-02-15	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2006	Dime
140	tdurden@email.com	2019-06-25	0.100	2858 26th Ave S	Minneapolis 	MN	55406	Dollar Store Parking Lot	f	2006	Dime
141	tdurden@email.com	2019-09-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2006	Dime
142	tdurden@email.com	2019-10-19	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2007	Dime
143	tdurden@email.com	2018-10-02	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	f	2008	Dime
144	tdurden@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2008	Dime
145	tdurden@email.com	2019-05-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2008	Dime
146	tdurden@email.com	2019-10-25	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2010	Dime
147	tdurden@email.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2011	Dime
148	tdurden@email.com	2019-05-20	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	Dime
149	tdurden@email.com	2019-09-08	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	2012	Dime
150	tdurden@email.com	2018-12-31	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2014	Dime
151	tdurden@email.com	2020-03-19	0.100	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	2014	Dime
152	tdurden@email.com	2019-09-27	0.100	\N	Minneapolis 	MN	\N	14th Ave SE	f	2015	Dime
77	tdurden@email.com	2019-06-07	20.000	1504 7th St S	Minneapolis	MN	55454	House of Balls	t	\N	$20
153	tdurden@email.com	2020-03-21	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2015	Dime
154	tdurden@email.com	2018-12-06	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	Dime
155	tdurden@email.com	2020-03-12	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2016	Dime
156	tdurden@email.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2017	Dime
157	tdurden@email.com	2019-02-17	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Dime
158	tdurden@email.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2018	Dime
159	tdurden@email.com	2021-07-31	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2019	Dime
160	tdurden@email.com	2021-09-09	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2021	Dime
162	tdurden@email.com	2019-05-05	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Dime
164	tdurden@email.com	2019-11-24	0.100	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	\N	Dime
789	hisnameis@email.com	2019-10-25	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2010	Dime
790	hisnameis@email.com	2019-11-04	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1999	Dime
689	hisnameis@email.com	2018-06-19	0.250	1 Valley Fair Drive	Shakopee	MN	\N	Valleyfair	f	2018	Quarter
690	hisnameis@email.com	2018-07-02	0.050	84 Church Street SE	Minneapolis	MN	55455	Northrop	f	2017	Nickel
696	hisnameis@email.com	2018-03-04	0.050	3800 42nd Ave S	Minneapolis	MN	\N	Riverview Theatre	f	2018	Nickel
80	tdurden@email.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Nickel
81	tdurden@email.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Nickel
190	tdurden@email.com	2021-04-05	0.050	824 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	t	\N	Nickel
37	tdurden@email.com	2021-04-12	0.010	16396 Wagner Way	Eden Prairie	MN	55344	Tavern 4&5	t	\N	Penny
683	t3@email.com	2021-11-06	0.050	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2014	Nickel
685	t3@email.com	2021-11-06	0.050	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2016	Nickel
590	tdurden@email.com	2020-06-06	0.250	\N	Saint paul	MN	55102	Marshall Ave and Dale Ave	t	\N	Quarter
102	tdurden@email.com	2021-02-12	0.250	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Quarter
434	tdurden@email.com	2020-01-22	0.250	1335 6th Ave	New York	NY	10019	NY Hilton Midtown	f	1972	Quarter
684	t3@email.com	2021-11-06	0.250	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2018	Quarter
672	t3@email.com	2021-11-02	0.250	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2015	Quarter
660	tdurden@email.com	2020-11-21	0.100	7235 MN-61	Tofte	MN	55615	Holiday	f	1992	Dime
439	tdurden@email.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Dime
440	tdurden@email.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Dime
572	tdurden@email.com	2019-08-11	0.100	\N	saint paul	MN	\N	Marshall and hamline	t	\N	Dime
13	tdurden@email.com	2021-05-30	0.100	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2004	Dime
18	tdurden@email.com	2019-03-22	0.100	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1990	Dime
29	tdurden@email.com	2018-05-19	0.100	\N	Duluth 	MN	55802	\N	f	\N	Dime
791	hisnameis@email.com	2019-11-11	0.100	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2002	Dime
792	hisnameis@email.com	2019-11-24	0.100	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	\N	Dime
793	hisnameis@email.com	2019-12-12	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2000	Dime
794	hisnameis@email.com	2019-12-13	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1978	Dime
795	hisnameis@email.com	2020-01-12	0.100	\N	Minneapolis 	MN	\N	E 42nd St	f	1984	Dime
796	hisnameis@email.com	2020-01-23	0.100	\N	Queens	NY	11371	LaGuardia Airport	f	2019	Dime
797	hisnameis@email.com	2020-03-12	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2016	Dime
798	hisnameis@email.com	2020-03-16	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	Dime
799	hisnameis@email.com	2020-03-19	0.100	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	2014	Dime
800	hisnameis@email.com	2020-03-19	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	1980	Dime
801	hisnameis@email.com	2020-03-21	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2015	Dime
802	hisnameis@email.com	2020-07-17	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1967	Dime
803	hisnameis@email.com	2020-08-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1966	Dime
804	hisnameis@email.com	2020-08-10	0.100	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2003	Dime
805	hisnameis@email.com	2020-11-21	0.100	7235 MN-61	Tofte	MN	55615	Holiday	f	1992	Dime
806	hisnameis@email.com	2021-02-13	0.100	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	Dime
807	hisnameis@email.com	2021-05-25	0.100	110 Penn Ave N	Minneapolis 	MN	55405	Bassett Park	f	2005	Dime
808	hisnameis@email.com	2021-05-30	0.100	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2004	Dime
809	hisnameis@email.com	2021-06-22	0.100	2513 Central Ave NE	Minneapolis	MN	55418	HolyLand	f	2003	Dime
810	hisnameis@email.com	2021-07-24	0.100	Cedar Street	Houston	MN	55943	Hoedown	f	2008	Dime
811	hisnameis@email.com	2021-07-31	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2019	Dime
812	hisnameis@email.com	2021-09-09	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2021	Dime
813	hisnameis@email.com	2021-09-11	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2021	Dime
814	hisnameis@email.com	2021-10-02	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1972	Dime
815	hisnameis@email.com	2021-10-15	0.100	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1984	Dime
673	tdurden@email.com	2021-10-30	0.250	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2018	Quarter
22	tdurden@email.com	2019-01-11	0.250	\N	Bloomington	MN	\N	Minneapolis−Saint Paul International Airport	f	2015	Quarter
1113	hisnameis@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1988	Quarter
1114	hisnameis@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1995	Quarter
1115	hisnameis@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	2008	Quarter
1116	hisnameis@email.com	2019-11-08	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	Quarter
1117	hisnameis@email.com	2020-01-22	0.250	\N	New York	NY	\N	Manhattan	f	1972	Quarter
1118	hisnameis@email.com	2020-03-14	0.250	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2008	Quarter
1119	hisnameis@email.com	2020-05-17	0.250	\N	Minneapolis 	MN	\N	29th and 32nd St	f	1974	Quarter
1120	hisnameis@email.com	2021-06-18	0.250	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1981	Quarter
1121	hisnameis@email.com	2021-07-10	0.250	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2009	Quarter
676	t3@email.com	2021-11-04	0.250	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2015	Quarter
573	tdurden@email.com	2018-06-03	0.050	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Nickel
484	tdurden@email.com	2019-01-08	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	Nickel
674	tdurden@email.com	2021-10-30	0.050	2199 MN 36 E	North Saint Paul	MN	55109	Target	f	2021	Nickel
19	tdurden@email.com	2019-03-22	0.050	60 E Broadway	Bloomington	MN	55425	Mall of America	f	2000	Nickel
38	tdurden@email.com	2019-02-16	0.100	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2010	Dime
58	tdurden@email.com	2021-07-24	0.100	Cedar Street	Houston	MN	55943	Hoedown	f	2008	Dime
60	tdurden@email.com	2019-07-19	0.100	141 Carmichael Rd	Hudson	WI	54016	Walgreens	f	2015	Dime
61	tdurden@email.com	2019-01-15	0.100	108 Hekili St	Kailu	HI	96734	Foodland	f	2007	Dime
66	tdurden@email.com	2018-12-20	0.100	5339 MN-61	Lutsen	MN	55612	Lutsen Liquors	f	1996	Dime
67	tdurden@email.com	2018-12-20	0.100	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort	f	2011	Dime
78	tdurden@email.com	2021-10-15	0.100	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1984	Dime
79	tdurden@email.com	2021-06-22	0.100	2513 Central Ave NE	Minneapolis	MN	55418	HolyLand	f	2003	Dime
109	tdurden@email.com	2019-11-04	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1999	Dime
110	tdurden@email.com	2019-08-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2015	Dime
111	tdurden@email.com	2020-08-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1966	Dime
112	tdurden@email.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1972	Dime
113	tdurden@email.com	2021-10-02	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1972	Dime
114	tdurden@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1974	Dime
115	tdurden@email.com	2019-09-23	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1976	Dime
116	tdurden@email.com	2019-12-13	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1978	Dime
117	tdurden@email.com	2020-03-19	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	f	1980	Dime
118	tdurden@email.com	2018-11-17	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	f	1986	Dime
119	tdurden@email.com	2019-06-17	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	Dime
41	tdurden@email.com	2019-02-16	0.250	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	1999	Quarter
46	tdurden@email.com	2019-08-10	0.250	101 2nd St E,	Hastings	MN	55033	Lock and Dam Eatery	f	1974	Quarter
33	tdurden@email.com	2019-08-16	0.250	350 Harbor Dr	Duluth 	MN	55802	Bayfront Festival Park	f	2015	Quarter
65	tdurden@email.com	2019-09-29	0.250	16854 Javelin	Lakeville	MN	55044	16854 Javelin	f	1996	Quarter
101	tdurden@email.com	2019-01-24	0.250	\N	Minneapolis	MN	\N	14th Ave SE	f	2018	Quarter
106	tdurden@email.com	2019-09-03	5.000	\N	Minneapolis 	MN	\N	38th and lake st	f	2009	$5
107	tdurden@email.com	2019-05-08	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1970	Canadian penny
108	tdurden@email.com	2021-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	\N	Canadian penny
39	tdurden@email.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2005	Nickel
40	tdurden@email.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2017	Nickel
47	tdurden@email.com	2019-01-14	0.050	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2014	Nickel
178	tdurden@email.com	2021-08-29	0.050	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2000	Nickel
120	tdurden@email.com	2019-05-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1994	Dime
121	tdurden@email.com	2018-06-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	Dime
122	tdurden@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	Dime
123	tdurden@email.com	2019-01-29	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1999	Dime
124	tdurden@email.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	1999	Dime
125	tdurden@email.com	2020-03-16	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	Dime
126	tdurden@email.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	Dime
127	tdurden@email.com	2019-12-12	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2000	Dime
128	tdurden@email.com	2019-10-22	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2001	Dime
129	tdurden@email.com	2019-03-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2002	Dime
130	tdurden@email.com	2019-09-23	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2002	Dime
131	tdurden@email.com	2019-07-15	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2003	Dime
132	tdurden@email.com	2020-08-10	0.100	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2003	Dime
133	tdurden@email.com	2021-02-13	0.100	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	Dime
134	tdurden@email.com	2018-11-12	0.100	\N	Minneapolis 	MN	55455	17th Ave SE	f	2005	Dime
166	tdurden@email.com	2019-10-04	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	Dollar Coin
167	tdurden@email.com	2019-09-17	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Dollar Coin
168	tdurden@email.com	2019-03-15	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2008	Dollar Coin
169	tdurden@email.com	2019-06-06	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2010	Dollar Coin
170	tdurden@email.com	2019-05-14	0.005	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Half Penny
187	tdurden@email.com	2021-09-12	0.050	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2021	Nickel
188	tdurden@email.com	2018-05-22	0.050	\N	Minneapolis 	MN	\N	\N	f	\N	Nickel
189	tdurden@email.com	2018-09-07	0.050	\N	Minneapolis 	MN	55414	17th Ave SE	f	\N	Nickel
472	tdurden@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	Dime
310	tdurden@email.com	2020-12-12	0.010	\N	Minneapolis 	MN	\N	\N	f	2007	Penny
319	tdurden@email.com	2020-03-25	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2012	Penny
424	tdurden@email.com	2020-01-12	0.100	\N	Minneapolis 	MN	\N	E 42nd St	f	1984	Dime
436	tdurden@email.com	2020-01-23	0.100	\N	Queens	NY	11371	LaGuardia Airport	f	2019	Dime
456	tdurden@email.com	2020-07-17	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1967	Dime
457	tdurden@email.com	2018-09-15	0.100	755 Prior Ave N	Saint Paul	MN	55104	Can Can Wonderland	f	1976	Dime
458	tdurden@email.com	2019-07-17	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	Dime
459	tdurden@email.com	2019-04-10	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1981	Dime
460	tdurden@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1984	Dime
409	tdurden@email.com	2020-05-17	0.250	\N	Minneapolis 	MN	\N	29th and 32nd St	f	1974	Quarter
410	tdurden@email.com	2019-03-15	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Quarter
411	tdurden@email.com	2019-11-08	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	Quarter
412	tdurden@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1988	Quarter
413	tdurden@email.com	2018-12-08	0.250	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	Quarter
414	tdurden@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	1995	Quarter
415	tdurden@email.com	2019-02-17	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1998	Quarter
416	tdurden@email.com	2019-03-22	0.250	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave Alley	f	1998	Quarter
417	tdurden@email.com	2019-04-29	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	Quarter
418	tdurden@email.com	2019-02-25	0.250	\N	Minneapolis 	MN	\N	University Ave	f	2000	Quarter
419	tdurden@email.com	2019-03-02	0.250	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2001	Quarter
420	tdurden@email.com	2019-07-30	0.250	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2007	Quarter
421	tdurden@email.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	f	2008	Quarter
422	tdurden@email.com	2020-03-14	0.250	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2008	Quarter
423	tdurden@email.com	2021-07-10	0.250	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2009	Quarter
435	tdurden@email.com	2019-06-13	0.250	16825 County Rd 24	Plymouth	MN	55447	Holiday	f	1999	Quarter
453	tdurden@email.com	2021-06-18	0.250	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1981	Quarter
455	tdurden@email.com	2019-03-16	1.000	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	$1
382	tdurden@email.com	2019-03-15	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	Penny
461	tdurden@email.com	2019-01-20	0.100	1225 Estabrook Dr	Saint Paul	MN	55103	Como conservatory 	f	1987	Dime
462	tdurden@email.com	2019-05-20	0.100	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1989	Dime
463	tdurden@email.com	2018-08-04	0.100	1300 Midway Pkwy	Saint Paul	MN	55103	Como Mini Golf	f	1990	Dime
464	tdurden@email.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1990	Dime
465	tdurden@email.com	2019-03-18	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	Dime
466	tdurden@email.com	2019-04-01	0.100	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1993	Dime
467	tdurden@email.com	2019-06-15	0.100	216 Arundel Street	Saint Paul	MN	55102	216 arundel	f	1998	Dime
468	tdurden@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	Dime
469	tdurden@email.com	2019-07-01	0.100	211 7th St W	Saint Paul	MN	55102	Bar Louis	f	1999	Dime
470	tdurden@email.com	2018-10-26	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	2005	Dime
471	tdurden@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	Dime
473	tdurden@email.com	2019-06-20	0.100	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	2016	Dime
474	tdurden@email.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2018	Dime
475	tdurden@email.com	2019-09-01	0.100	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2019	Dime
476	tdurden@email.com	2018-10-20	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Dime
477	tdurden@email.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1958	Nickel
478	tdurden@email.com	2019-02-05	0.050	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	Nickel
479	tdurden@email.com	2019-04-01	0.050	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1997	Nickel
480	tdurden@email.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	Nickel
481	tdurden@email.com	2019-04-01	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	Nickel
482	tdurden@email.com	2019-04-22	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2001	Nickel
483	tdurden@email.com	2019-06-14	0.050	275 White Bear Ave	Saint Paul	MN	55106	mgm liquors	f	2018	Nickel
591	tdurden@email.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1981	Dime
592	tdurden@email.com	2019-06-09	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1999	Dime
593	tdurden@email.com	2019-11-11	0.100	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2002	Dime
594	tdurden@email.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2014	Dime
595	tdurden@email.com	2018-05-30	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Dime
596	tdurden@email.com	2018-06-23	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Dime
597	tdurden@email.com	2018-07-19	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Dime
565	tdurden@email.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1980	Quarter
566	tdurden@email.com	2019-08-28	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1980	Quarter
567	tdurden@email.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1991	Quarter
568	tdurden@email.com	2019-08-30	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1995	Quarter
569	tdurden@email.com	2019-03-16	0.250	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	Quarter
570	tdurden@email.com	2019-01-20	0.250	991 Lexington Pkwy N	Saint Paul	MN	55103	Gabes By The Park	f	2015	Quarter
571	tdurden@email.com	2018-05-26	0.250	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Quarter
589	tdurden@email.com	2019-06-02	0.250	\N	Saint Paul	MN	\N	Grand Ave	f	2004	Quarter
599	tdurden@email.com	2019-01-10	0.050	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	Nickel
623	tdurden@email.com	2019-09-29	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	Dime
624	tdurden@email.com	2018-09-15	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1998	Dime
625	tdurden@email.com	2019-09-22	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	Dime
626	tdurden@email.com	2018-09-02	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2011	Dime
627	tdurden@email.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	Dime
628	tdurden@email.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2017	Dime
629	tdurden@email.com	2021-09-11	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2021	Dime
630	tdurden@email.com	2018-06-19	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Dime
631	tdurden@email.com	2018-07-28	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Dime
632	tdurden@email.com	2018-09-23	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Dime
661	tdurden@email.com	2019-06-21	0.100	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	2001	Dime
702	hisnameis@email.com	2019-08-11	0.100	\N	saint paul	MN	\N	Marshall and hamline	t	\N	Dime
703	hisnameis@email.com	2019-10-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Dime
704	hisnameis@email.com	2019-10-07	0.100	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	t	\N	Dime
705	hisnameis@email.com	2020-06-27	0.100	60684 MN-23	Finlayson	MN	55735	Cenex	t	\N	Dime
706	hisnameis@email.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Dime
707	hisnameis@email.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Dime
658	tdurden@email.com	2018-08-25	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1996	Quarter
659	tdurden@email.com	2019-09-29	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	Quarter
667	tdurden@email.com	2018-07-22	0.250	\N	\N	MN	\N	\N	f	2008	Quarter
668	tdurden@email.com	2018-07-30	0.250	\N	\N	MN	\N	Found by Louisa 	f	\N	Quarter
665	tdurden@email.com	2017-04-01	7.020	\N	\N	MN	\N	\N	f	\N	lump_sum
697	hisnameis@email.com	2021-07-24	1.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$1
698	hisnameis@email.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
699	hisnameis@email.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5
700	hisnameis@email.com	2021-07-24	5.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$5
701	hisnameis@email.com	2019-06-07	20.000	1504 7th St S	Minneapolis	MN	55454	House of Balls	t	\N	$20
664	tdurden@email.com	2020-06-27	0.010	\N	\N	MN	\N	\N	f	1979	Penny
633	tdurden@email.com	2018-09-02	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1987	Nickel
634	tdurden@email.com	2018-09-15	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2006	Nickel
635	tdurden@email.com	2018-07-28	0.050	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Nickel
708	hisnameis@email.com	2019-01-08	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	Nickel
746	hisnameis@email.com	2018-05-19	0.100	\N	Duluth 	MN	55802	\N	f	\N	Dime
747	hisnameis@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1995	Dime
748	hisnameis@email.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2008	Dime
749	hisnameis@email.com	2018-12-17	0.100	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	2006	Dime
750	hisnameis@email.com	2018-12-20	0.100	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort	f	2011	Dime
751	hisnameis@email.com	2018-12-20	0.100	5339 MN-61	Lutsen	MN	55612	Lutsen Liquors	f	1996	Dime
752	hisnameis@email.com	2018-12-31	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	2014	Dime
753	hisnameis@email.com	2019-01-15	0.100	108 Hekili St	Kailu	HI	96734	Foodland	f	2007	Dime
754	hisnameis@email.com	2019-01-20	0.100	1225 Estabrook Dr	Saint Paul	MN	55103	Como conservatory 	f	1987	Dime
755	hisnameis@email.com	2019-01-29	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1999	Dime
756	hisnameis@email.com	2019-02-15	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2006	Dime
757	hisnameis@email.com	2019-02-16	0.100	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2010	Dime
758	hisnameis@email.com	2019-02-17	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Dime
759	hisnameis@email.com	2019-03-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2002	Dime
760	hisnameis@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1984	Dime
761	hisnameis@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	Dime
762	hisnameis@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	Dime
763	hisnameis@email.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	Dime
764	hisnameis@email.com	2019-03-18	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	Dime
765	hisnameis@email.com	2019-03-22	0.100	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1990	Dime
766	hisnameis@email.com	2019-04-01	0.100	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1993	Dime
767	hisnameis@email.com	2019-04-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2005	Dime
768	hisnameis@email.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	1999	Dime
769	hisnameis@email.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2017	Dime
770	hisnameis@email.com	2019-04-10	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	f	1981	Dime
740	hisnameis@email.com	2019-03-16	1.000	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2013	$1
741	hisnameis@email.com	2019-09-03	5.000	\N	Minneapolis 	MN	\N	38th and lake st	f	2009	$5
771	hisnameis@email.com	2019-05-05	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Dime
772	hisnameis@email.com	2019-05-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1994	Dime
744	hisnameis@email.com	2019-05-08	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1970	Canadian penny
745	hisnameis@email.com	2021-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	\N	Canadian penny
711	hisnameis@email.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	Penny
712	hisnameis@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
737	hisnameis@email.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	t	\N	Penny
773	hisnameis@email.com	2019-05-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2008	Dime
738	hisnameis@email.com	2020-06-06	0.250	\N	Saint paul	MN	55102	Marshall Ave and Dale Ave	t	\N	Quarter
739	hisnameis@email.com	2021-02-12	0.250	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Quarter
774	hisnameis@email.com	2019-05-20	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	Dime
775	hisnameis@email.com	2019-05-20	0.100	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1989	Dime
776	hisnameis@email.com	2019-06-09	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1999	Dime
777	hisnameis@email.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1981	Dime
778	hisnameis@email.com	2019-08-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2015	Dime
779	hisnameis@email.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1990	Dime
780	hisnameis@email.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2018	Dime
781	hisnameis@email.com	2019-09-01	0.100	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2019	Dime
782	hisnameis@email.com	2019-09-22	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	Dime
783	hisnameis@email.com	2019-09-23	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2002	Dime
784	hisnameis@email.com	2019-09-23	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1976	Dime
785	hisnameis@email.com	2019-09-27	0.100	\N	Minneapolis 	MN	\N	14th Ave SE	f	2015	Dime
786	hisnameis@email.com	2019-09-29	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	Dime
787	hisnameis@email.com	2019-10-19	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2007	Dime
788	hisnameis@email.com	2019-10-22	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2001	Dime
822	hisnameis@email.com	2018-05-22	0.050	\N	Minneapolis 	MN	\N	\N	f	\N	Nickel
823	hisnameis@email.com	2018-07-28	0.050	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Nickel
817	hisnameis@email.com	2019-03-15	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2008	Dollar Coin
818	hisnameis@email.com	2019-06-06	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2010	Dollar Coin
819	hisnameis@email.com	2019-09-17	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Dollar Coin
820	hisnameis@email.com	2019-10-04	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2000	Dollar Coin
821	hisnameis@email.com	2019-05-14	0.005	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Half Penny
838	hisnameis@email.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1999	Nickel
1057	hisnameis@email.com	2020-06-27	0.010	\N	\N	MN	\N	\N	f	1979	Penny
1104	hisnameis@email.com	2018-05-26	0.250	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Quarter
1105	hisnameis@email.com	2018-07-22	0.250	\N	\N	MN	\N	\N	f	2008	Quarter
1106	hisnameis@email.com	2018-07-30	0.250	\N	\N	MN	\N	Found by Louisa 	f	\N	Quarter
1107	hisnameis@email.com	2018-08-25	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1996	Quarter
1108	hisnameis@email.com	2019-02-17	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1998	Quarter
1109	hisnameis@email.com	2019-08-28	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1980	Quarter
1110	hisnameis@email.com	2019-08-30	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1995	Quarter
1111	hisnameis@email.com	2019-09-29	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2014	Quarter
1112	hisnameis@email.com	2019-09-29	0.250	16854 Javelin	Lakeville	MN	55044	16854 Javelin	f	1996	Quarter
816	hisnameis@email.com	2021-09-24	1.000	501 30th Ave SE	Minneapolis 	MN	55414	The Market at Malcolm yards	f	2009	$1
742	hisnameis@email.com	2019-01-12	1.000	99-500 Salt Lake Blvd	Honolulu	HI	96818	Aloha Stadium	f	2013	$1
743	hisnameis@email.com	2021-06-19	1.000	15277 Barton Ave NW	Monticello	MN	55362	15277 Barton Ave NW	f	2013	$1
100	tdurden@email.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	t	\N	Penny
586	tdurden@email.com	2019-07-21	0.010	\N	saint Paul	MN	\N	Marshall and snelling	t	\N	Penny
587	tdurden@email.com	2019-08-11	0.010	\N	saint paul	MN	\N	Marshall and snelling	t	\N	Penny
620	tdurden@email.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	Penny
621	tdurden@email.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	Penny
622	tdurden@email.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	Penny
691	hisnameis@email.com	2019-02-01	0.010	734 Grand Avenue	Saint Paul	MN	\N	Walgreens	f	2019	Penny
692	hisnameis@email.com	2019-02-01	0.010	734 Grand Avenue	Saint Paul	MN	\N	Walgreens	f	2019	Penny
693	hisnameis@email.com	2019-02-01	0.010	734 Grand Avenue	Saint Paul	MN	\N	Walgreens	f	2019	Penny
694	hisnameis@email.com	2019-02-01	0.010	734 Grand Avenue	Saint Paul	MN	\N	Walgreens	f	2019	Penny
695	hisnameis@email.com	2019-02-01	0.010	734 Grand Avenue	Saint Paul	MN	\N	Walgreens	t	\N	Penny
257	tdurden@email.com	2019-06-25	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1990	Penny
582	tdurden@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
90	tdurden@email.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	Penny
91	tdurden@email.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	Penny
92	tdurden@email.com	2019-05-23	0.010	3425 E Lake St 	Minneapolis	MN	55406	Subway	t	\N	Penny
93	tdurden@email.com	2019-10-19	0.010	301 19th Ave S	Minneapolis	MN	55455	Humphrey School	t	\N	Penny
94	tdurden@email.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	Penny
95	tdurden@email.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	Penny
96	tdurden@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
97	tdurden@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
98	tdurden@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
99	tdurden@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
105	tdurden@email.com	2019-07-21	0.010	\N	Minneapolis	MN	\N	Lake and River Road	t	\N	Penny
191	tdurden@email.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Penny
192	tdurden@email.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1988	Penny
677	t3@email.com	2021-11-04	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2020	Penny
680	t3@email.com	2021-11-04	0.010	350 Canal Park Dr	Duluth	MN	55802	Inn On Lake Superior	f	2013	Penny
678	t3@email.com	2021-11-04	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2014	Penny
681	t3@email.com	2021-11-06	0.010	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2021	Penny
682	t3@email.com	2021-11-06	0.010	4320 E Lake St	Minneapolis	MN	55406	Speedway	f	2006	Penny
671	t3@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2005	Penny
1095	hisnameis@email.com	2021-09-26	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1977	Penny
679	t3@email.com	2021-11-04	0.050	350 Canal Park Dr	Duluth	MN	55802	Inn On Lake Superior	f	2020	Nickel
675	t3@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2012	Penny
669	t3@email.com	2021-11-02	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2015	Penny
670	t3@email.com	2021-11-01	0.010	2929 36th Ave S	Minneapolis	MN	55406	My House	f	2020	Penny
387	tdurden@email.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	Penny
650	tdurden@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
651	tdurden@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
652	tdurden@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
653	tdurden@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
654	tdurden@email.com	2018-09-02	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
655	tdurden@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
388	tdurden@email.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	Penny
389	tdurden@email.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Penny
390	tdurden@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
391	tdurden@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
392	tdurden@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
393	tdurden@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
394	tdurden@email.com	2020-07-11	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
395	tdurden@email.com	2021-03-02	0.010	2513 Central Ave NE	Minneapolis 	MN	55418	HolyLand	t	\N	Penny
442	tdurden@email.com	2020-12-28	0.010	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Penny
452	tdurden@email.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshalls	t	\N	Penny
557	tdurden@email.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
558	tdurden@email.com	2019-01-02	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub foods	t	\N	Penny
559	tdurden@email.com	2019-01-07	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	Penny
560	tdurden@email.com	2019-01-08	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	Penny
561	tdurden@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
562	tdurden@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
563	tdurden@email.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	t	\N	Penny
663	tdurden@email.com	2019-05-24	0.010	100 Jefferson Dr 	Zumbrota	MN	55992	Kwik Trip	t	\N	Penny
1	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1978	Penny
2	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	Penny
3	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1979	Penny
4	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1990	Penny
5	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1997	Penny
6	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	1999	Penny
7	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2011	Penny
8	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2015	Penny
9	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
10	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
11	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
12	tdurden@email.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	f	2020	Penny
14	tdurden@email.com	2021-05-30	0.010	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2016	Penny
15	tdurden@email.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	1992	Penny
16	tdurden@email.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	2019	Penny
17	tdurden@email.com	2018-06-10	0.010	7835 150th St W	Apple Valley	MN	55124	Walmart	f	\N	Penny
20	tdurden@email.com	2019-01-06	0.010	324 W Marketplace	Bloomington	MN	55425	Nordstrom's Rack	f	1981	Penny
21	tdurden@email.com	2019-03-22	0.010	60 E Broadway	Bloomington	MN	55425	Mall of America	f	1981	Penny
23	tdurden@email.com	2018-07-15	0.010	8089 Brooklyn Blvd	Brooklyn Park	MN	55445	Panda Garden Buffet	f	\N	Penny
24	tdurden@email.com	2018-12-02	0.010	15400 Buck Hill Rd	Burnsville	MN	55306	Buck Hill	f	1973	Penny
25	tdurden@email.com	2019-07-09	0.010	14050 Burnhaven Dr	Burnsville	MN	55337	Costco	f	1996	Penny
26	tdurden@email.com	2021-01-21	0.010	900 Burnsville Pkwy	Burnsville	MN	55337	Holiday	f	2013	Penny
27	tdurden@email.com	2019-06-12	0.010	2000 Hwy 13 E	Burnsville	MN	55337	Dollar Tree parking lot	f	2018	Penny
28	tdurden@email.com	2019-08-10	0.010	7210 E Point Douglas Rd S	Cottage Grove	MN	55016	TJMaxx	f	1970	Penny
30	tdurden@email.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	1975	Penny
31	tdurden@email.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	f	2013	Penny
32	tdurden@email.com	2018-05-19	0.010	\N	Duluth 	MN	55802	\N	f	\N	Penny
34	tdurden@email.com	2019-06-01	0.010	2000 Cliff Lake Rd	Eagan	MN	55122	Target	f	2017	Penny
35	tdurden@email.com	2019-04-01	0.010	1298 Promenade Pl	Eagan	MN	55121	Qdoba	f	2018	Penny
36	tdurden@email.com	2019-06-01	0.010	1250 Town Centre Dr	Eagan	MN	55123	Koyoto	f	\N	Penny
43	tdurden@email.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik Trip	f	2014	Penny
44	tdurden@email.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik trip	f	2017	Penny
45	tdurden@email.com	2021-03-27	0.010	113 E 2nd St E	Hastings	MN	55033	Muse2320	f	2021	Penny
48	tdurden@email.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	1982	Penny
49	tdurden@email.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2013	Penny
50	tdurden@email.com	2019-01-15	0.010	53-660 Kamehameha Hwy	Hauula	HI	96717	53-660 Kamehameha Hwy	f	2018	Penny
52	tdurden@email.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1969	Penny
53	tdurden@email.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	f	1971	Penny
54	tdurden@email.com	2019-01-16	0.010	2330 Kalakaua Ave	Honolulu	HI	69815	International Marketplace	f	1992	Penny
55	tdurden@email.com	2019-01-18	0.010	300 Rodgers Blvd	Honolulu	HI	96819	Airport	f	2012	Penny
59	tdurden@email.com	2020-09-05	0.010	103 E Cedar St	Houston	MN	55943	Cenex	f	2005	Penny
62	tdurden@email.com	2018-07-29	0.010	9242 Hudson Blvd N	Lake Elmo	MN	55042	Bride to Be Consignment	f	\N	Penny
63	tdurden@email.com	2020-11-19	0.010	18275 Kenrick Ave	Lakeville	MN	55044	Target	f	1991	Penny
64	tdurden@email.com	2021-05-26	0.010	20710 Keokuk Ave	Lakeville	MN	55044	Walmart	f	2010	Penny
68	tdurden@email.com	2018-12-22	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1978	Penny
69	tdurden@email.com	2018-12-20	0.010	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort parking lot	f	1981	Penny
70	tdurden@email.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1990	Penny
71	tdurden@email.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1999	Penny
72	tdurden@email.com	2020-01-21	0.010	51 W 51st St	Manhattan	NY	10019	Duane reade	f	1980	Penny
73	tdurden@email.com	2020-01-21	0.010	\N	Manhattan	NY	10036	Times Square	f	2018	Penny
74	tdurden@email.com	2021-06-05	0.010	5050 Independence St	Maple Plain	MN	55359	Veterans Park	f	\N	Penny
82	tdurden@email.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1968	Penny
83	tdurden@email.com	2021-10-26	0.010	3815 E Lake St	Minneapolis	MN	55406	Longfellow Market	f	1971	Penny
84	tdurden@email.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	f	1976	Penny
85	tdurden@email.com	2018-08-28	0.010	\N	Minneapolis	MN	55414	14th Ave SE	f	1980	Penny
86	tdurden@email.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1981	Penny
87	tdurden@email.com	2020-09-19	0.010	1931 Minnehaha Ave	Minneapolis	MN	55405	Taco Bell	f	1996	Penny
88	tdurden@email.com	2021-10-26	0.010	36th Ave s and 29th st	Minneapolis	MN	55406	\N	f	2003	Penny
89	tdurden@email.com	2018-06-15	0.010	84 Church Street SE	Minneapolis	MN	55455	Surdyks at Northrop	f	\N	Penny
103	tdurden@email.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	1998	Penny
104	tdurden@email.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	2021	Penny
193	tdurden@email.com	2019-08-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1959	Penny
194	tdurden@email.com	2019-07-15	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1960	Penny
195	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1961	Penny
196	tdurden@email.com	2020-01-07	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1962	Penny
197	tdurden@email.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1963	Penny
198	tdurden@email.com	2019-07-21	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1964	Penny
199	tdurden@email.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	Penny
200	tdurden@email.com	2020-05-23	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th St s alley	f	1964	Penny
201	tdurden@email.com	2021-05-11	0.010	302 15th Ave SE	Minneapolis 	MN	55414	Raising Canes	f	1964	Penny
202	tdurden@email.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1968	Penny
203	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1969	Penny
204	tdurden@email.com	2019-03-14	0.010	\N	Minneapolis 	MN	\N	Scholars Walk	f	1971	Penny
205	tdurden@email.com	2019-10-09	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1971	Penny
206	tdurden@email.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1972	Penny
207	tdurden@email.com	2019-08-28	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1972	Penny
208	tdurden@email.com	2018-11-08	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1973	Penny
209	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1973	Penny
210	tdurden@email.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop locker room	f	1973	Penny
211	tdurden@email.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1974	Penny
212	tdurden@email.com	2018-07-31	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	Penny
213	tdurden@email.com	2019-01-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	Penny
214	tdurden@email.com	2019-07-14	0.010	4400 E Lake St	Minneapolis 	MN	55406	Dairy Queen	f	1975	Penny
215	tdurden@email.com	2019-10-20	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1975	Penny
216	tdurden@email.com	2018-09-25	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	1976	Penny
217	tdurden@email.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1976	Penny
218	tdurden@email.com	2021-09-26	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1977	Penny
219	tdurden@email.com	2018-08-17	0.010	\N	Minneapolis 	MN	55414	Dinky town	f	1978	Penny
220	tdurden@email.com	2020-01-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1978	Penny
221	tdurden@email.com	2021-09-10	0.010	231 Pillsbury Dr SE	Minneapolis 	MN	55455	Williamson Hall	f	1978	Penny
222	tdurden@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1979	Penny
223	tdurden@email.com	2019-09-09	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1979	Penny
224	tdurden@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	Penny
225	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1980	Penny
226	tdurden@email.com	2019-02-22	0.010	275 Market St	Minneapolis 	MN	55405	International Market Square	f	1980	Penny
227	tdurden@email.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1980	Penny
228	tdurden@email.com	2020-01-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1981	Penny
229	tdurden@email.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1981	Penny
230	tdurden@email.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1981	Penny
231	tdurden@email.com	2021-10-12	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1981	Penny
232	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1982	Penny
233	tdurden@email.com	2019-01-09	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1982	Penny
234	tdurden@email.com	2019-07-30	0.010	14 Church St SE 	Minneapolis 	MN	55455	Nolte Garage	f	1982	Penny
235	tdurden@email.com	2019-04-07	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1983	Penny
236	tdurden@email.com	2019-12-06	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	Penny
237	tdurden@email.com	2020-06-14	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	1983	Penny
238	tdurden@email.com	2021-04-04	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	Penny
239	tdurden@email.com	2019-02-24	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1984	Penny
240	tdurden@email.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	1984	Penny
241	tdurden@email.com	2019-04-13	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	Penny
242	tdurden@email.com	2019-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	Penny
243	tdurden@email.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1985	Penny
244	tdurden@email.com	2021-03-14	0.010	\N	Minneapolis 	MN	\N	44th ave s	f	1985	Penny
245	tdurden@email.com	2018-11-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1986	Penny
246	tdurden@email.com	2019-03-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1986	Penny
247	tdurden@email.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	Penny
248	tdurden@email.com	2019-10-21	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	Penny
249	tdurden@email.com	2021-02-23	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	1986	Penny
250	tdurden@email.com	2018-11-25	0.010	\N	Minneapolis 	MN	\N	37th Ave s	f	1987	Penny
251	tdurden@email.com	2018-12-31	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1987	Penny
252	tdurden@email.com	2021-01-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	1987	Penny
253	tdurden@email.com	2019-07-05	0.010	4320 E Lake St 	Minneapolis 	MN	55406	Speedway	f	1988	Penny
254	tdurden@email.com	2019-08-24	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1988	Penny
255	tdurden@email.com	2021-09-08	0.010	3916 E Lake St	Minneapolis 	MN	55406	East Lake Liquor	f	1988	Penny
256	tdurden@email.com	2019-05-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1990	Penny
258	tdurden@email.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1990	Penny
259	tdurden@email.com	2020-10-22	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	1990	Penny
260	tdurden@email.com	2019-03-16	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	f	1991	Penny
261	tdurden@email.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	1991	Penny
262	tdurden@email.com	2019-10-09	0.010	\N	Minneapolis 	MN	55455	17th Ave SE	f	1991	Penny
263	tdurden@email.com	2020-08-20	0.010	\N	Minneapolis 	MN	\N	Washington Ave SE	f	1991	Penny
264	tdurden@email.com	2019-02-27	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1992	Penny
265	tdurden@email.com	2020-10-24	0.010	3915 E Lake St	Minneapolis 	MN	55406	Ace Hardware	f	1992	Penny
266	tdurden@email.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1994	Penny
267	tdurden@email.com	2021-07-22	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	1994	Penny
268	tdurden@email.com	2018-12-01	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1995	Penny
269	tdurden@email.com	2019-06-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1995	Penny
270	tdurden@email.com	2019-09-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	Penny
271	tdurden@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	Penny
272	tdurden@email.com	2019-12-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	Penny
273	tdurden@email.com	2020-07-18	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1996	Penny
274	tdurden@email.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1996	Penny
275	tdurden@email.com	2021-03-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	northrop/nolte tunnel	f	1996	Penny
276	tdurden@email.com	2019-10-22	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1997	Penny
277	tdurden@email.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1997	Penny
278	tdurden@email.com	2018-11-19	0.010	\N	Minneapolis 	MN	55414	17th Ave SE	f	1998	Penny
279	tdurden@email.com	2019-02-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1998	Penny
280	tdurden@email.com	2019-05-08	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1998	Penny
281	tdurden@email.com	2019-07-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1998	Penny
282	tdurden@email.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1999	Penny
283	tdurden@email.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	Penny
284	tdurden@email.com	2019-06-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1999	Penny
285	tdurden@email.com	2019-06-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1999	Penny
286	tdurden@email.com	2018-09-04	0.010	\N	Minneapolis 	MN	55455	16th Ave SE	f	2000	Penny
287	tdurden@email.com	2018-11-20	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2000	Penny
288	tdurden@email.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop box office	f	2000	Penny
289	tdurden@email.com	2021-09-03	0.010	5001 S 34th Ave	Minneapolis 	MN	55417	Casa Maria	f	2000	Penny
290	tdurden@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Penny
291	tdurden@email.com	2019-01-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	Penny
292	tdurden@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Penny
293	tdurden@email.com	2019-04-04	0.010	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	2001	Penny
294	tdurden@email.com	2019-09-26	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	Penny
295	tdurden@email.com	2019-10-06	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2001	Penny
296	tdurden@email.com	2020-04-07	0.010	\N	Minneapolis 	MN	\N	Mississippi River	f	2001	Penny
297	tdurden@email.com	2021-01-10	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2001	Penny
298	tdurden@email.com	2018-12-10	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2002	Penny
299	tdurden@email.com	2019-05-28	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2002	Penny
300	tdurden@email.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2004	Penny
301	tdurden@email.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2004	Penny
302	tdurden@email.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2004	Penny
303	tdurden@email.com	2020-03-14	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	Penny
304	tdurden@email.com	2019-10-23	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	Penny
305	tdurden@email.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	2005	Penny
306	tdurden@email.com	2019-12-13	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2006	Penny
307	tdurden@email.com	2019-04-06	0.010	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2007	Penny
308	tdurden@email.com	2019-04-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2007	Penny
309	tdurden@email.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2007	Penny
311	tdurden@email.com	2018-09-20	0.010	\N	Minneapolis 	MN	55414	14th Ave SE	f	2008	Penny
312	tdurden@email.com	2019-09-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2008	Penny
313	tdurden@email.com	2018-11-27	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	2010	Penny
314	tdurden@email.com	2019-12-05	0.010	400 21st Ave S	Minneapolis 	MN	55455	21st Ave Ramp	f	2011	Penny
315	tdurden@email.com	2020-03-21	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2011	Penny
316	tdurden@email.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2011	Penny
317	tdurden@email.com	2021-02-01	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2011	Penny
318	tdurden@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	Penny
320	tdurden@email.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	Penny
321	tdurden@email.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2013	Penny
322	tdurden@email.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	Penny
323	tdurden@email.com	2018-10-03	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2014	Penny
324	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2014	Penny
325	tdurden@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	2014	Penny
326	tdurden@email.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	2014	Penny
327	tdurden@email.com	2020-10-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2014	Penny
328	tdurden@email.com	2019-05-28	0.010	324 14th Ave SE	Minneapolis 	MN	55414	Qdoba	f	2015	Penny
329	tdurden@email.com	2021-06-15	0.010	601 SE Main St	Minneapolis 	MN	55414	Stone Arch Apartments	f	2015	Penny
330	tdurden@email.com	2018-09-30	0.010	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	2016	Penny
331	tdurden@email.com	2019-02-12	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	Penny
332	tdurden@email.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	f	2016	Penny
333	tdurden@email.com	2019-04-03	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2016	Penny
334	tdurden@email.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2016	Penny
335	tdurden@email.com	2018-11-20	0.010	\N	Minneapolis 	MN	\N	University Ave 	f	2017	Penny
336	tdurden@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2017	Penny
337	tdurden@email.com	2018-12-26	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	Penny
338	tdurden@email.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	Penny
339	tdurden@email.com	2019-02-22	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2017	Penny
340	tdurden@email.com	2019-03-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2017	Penny
341	tdurden@email.com	2019-07-20	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	2017	Penny
342	tdurden@email.com	2020-05-06	0.010	\N	Minneapolis 	MN	\N	29th and 36th St s	f	2017	Penny
343	tdurden@email.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2017	Penny
344	tdurden@email.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Penny
345	tdurden@email.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2018	Penny
346	tdurden@email.com	2019-04-15	0.010	417 14th Ave SE	Minneapolis 	MN	55414	Kafe421	f	2018	Penny
347	tdurden@email.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Penny
348	tdurden@email.com	2019-06-11	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	f	2019	Penny
349	tdurden@email.com	2019-09-04	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2019	Penny
350	tdurden@email.com	2019-09-12	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	Penny
351	tdurden@email.com	2019-09-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2019	Penny
352	tdurden@email.com	2019-12-16	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	Penny
353	tdurden@email.com	2021-03-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S	f	2019	Penny
354	tdurden@email.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	Penny
355	tdurden@email.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	2019	Penny
356	tdurden@email.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2020	Penny
357	tdurden@email.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2020	Penny
358	tdurden@email.com	2021-03-10	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	2020	Penny
359	tdurden@email.com	2021-05-03	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S alley	f	2020	Penny
360	tdurden@email.com	2021-07-08	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2021	Penny
361	tdurden@email.com	2021-07-20	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	2021	Penny
362	tdurden@email.com	2021-07-27	0.010	326 14th Ave SE	Minneapolis 	MN	55414	Pot Bellys	f	2021	Penny
363	tdurden@email.com	2019-04-11	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
364	tdurden@email.com	2018-09-18	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
365	tdurden@email.com	2018-05-29	0.010	\N	Minneapolis 	MN	\N	U Campus	f	\N	Penny
366	tdurden@email.com	2018-06-08	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	Penny
367	tdurden@email.com	2018-06-15	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
368	tdurden@email.com	2018-07-02	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	Penny
369	tdurden@email.com	2018-07-06	0.010	\N	Minneapolis 	MN	55455	Washington Ave SE	f	\N	Penny
370	tdurden@email.com	2018-07-27	0.010	1 Twins Way	Minneapolis 	MN	55403	Target Field	f	\N	Penny
371	tdurden@email.com	2018-10-23	0.010	309 19th Ave S	Minneapolis 	MN	55455	Wilson library	f	\N	Penny
372	tdurden@email.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	Penny
373	tdurden@email.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	f	\N	Penny
374	tdurden@email.com	2018-11-16	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	Penny
375	tdurden@email.com	2018-11-16	0.010	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	f	\N	Penny
376	tdurden@email.com	2018-12-10	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	Penny
377	tdurden@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
378	tdurden@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
379	tdurden@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
380	tdurden@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
381	tdurden@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
383	tdurden@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Penny
384	tdurden@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Penny
385	tdurden@email.com	2019-06-08	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	\N	Penny
386	tdurden@email.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	f	\N	Penny
396	tdurden@email.com	2021-05-04	0.010	3425 E Lake St	Minneapolis 	MN	55406	Subway	f	\N	Penny
397	tdurden@email.com	2021-05-13	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	\N	Penny
398	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1968	Penny
399	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1975	Penny
400	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Penny
401	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Penny
402	tdurden@email.com	2021-08-31	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	Penny
403	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2004	Penny
404	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	Penny
405	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2009	Penny
406	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2014	Penny
407	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2018	Penny
408	tdurden@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2019	Penny
425	tdurden@email.com	2019-07-04	0.010	\N	Minneapolis 	MN	\N	Lake Stret	f	1987	Penny
426	tdurden@email.com	2020-05-24	0.010	\N	Minneapolis 	MN	\N	rental car	f	2012	Penny
427	tdurden@email.com	2018-08-20	0.010	\N	Minneapolis 	MN	55455	Church St	f	2014	Penny
428	tdurden@email.com	2018-08-31	0.010	\N	Minneapolis 	MN	55455	Church St	f	2018	Penny
429	tdurden@email.com	2020-10-09	0.010	\N	Minneapolis 	MN	\N	Central Ave NE	f	2020	Penny
430	tdurden@email.com	2021-09-01	0.010	\N	Minneapolis 	MN	\N	Lake Street	f	2021	Penny
432	tdurden@email.com	2021-05-02	0.010	1578 WI-65	New Richland	WI	54017	Casey's	f	1983	Penny
433	tdurden@email.com	2020-01-21	0.010	1500 Broadway	New York	NY	10036	AudienceView	f	2006	Penny
437	tdurden@email.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	1999	Penny
438	tdurden@email.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	2016	Penny
441	tdurden@email.com	2021-08-28	0.010	6445 Richfield Pkwy	Richfield	MN	55423	Target	f	2021	Penny
443	tdurden@email.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	1976	Penny
444	tdurden@email.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	\N	Penny
445	tdurden@email.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1967	Penny
446	tdurden@email.com	2020-07-24	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1982	Penny
447	tdurden@email.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Cub Foods	f	1990	Penny
448	tdurden@email.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1995	Penny
449	tdurden@email.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	2006	Penny
450	tdurden@email.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	2012	Penny
451	tdurden@email.com	2020-07-24	0.010	2100 N Snelling Dr	Roseville	MN	55113	Staples	f	2013	Penny
454	tdurden@email.com	2019-09-11	0.010	5801 W 16th St	Saint Louis Parl	MN	55416	Costco	f	2001	Penny
485	tdurden@email.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1961	Penny
486	tdurden@email.com	2018-08-03	0.010	649 Grand Ave	Saint Paul	MN	55105	650 Alley	f	1968	Penny
487	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1969	Penny
488	tdurden@email.com	2021-09-06	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	1969	Penny
489	tdurden@email.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1974	Penny
490	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1974	Penny
491	tdurden@email.com	2019-06-20	0.010	1040 Grand Ave	Saint Paul	MN	55105	CVS	f	1974	Penny
492	tdurden@email.com	2018-08-23	0.010	275 White Bear Ave	Saint Paul	MN	55106	MGM liquor	f	1975	Penny
493	tdurden@email.com	2018-12-30	0.010	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	f	1975	Penny
494	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1976	Penny
495	tdurden@email.com	2019-04-22	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1978	Penny
496	tdurden@email.com	2019-05-21	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1981	Penny
497	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1982	Penny
498	tdurden@email.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	Penny
499	tdurden@email.com	2019-07-10	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	Penny
500	tdurden@email.com	2020-11-15	0.010	33 County Rd B E	Saint Paul	MN	55117	Joe's sporting goods	f	1983	Penny
501	tdurden@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1984	Penny
502	tdurden@email.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1987	Penny
503	tdurden@email.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1988	Penny
504	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Oxford St	f	1988	Penny
505	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1989	Penny
506	tdurden@email.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1990	Penny
507	tdurden@email.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1992	Penny
508	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1993	Penny
509	tdurden@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1995	Penny
510	tdurden@email.com	2019-05-04	0.010	400 Snelling Ave N	Saint Paul	MN	55104	Allianz field	f	1995	Penny
511	tdurden@email.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1997	Penny
512	tdurden@email.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1997	Penny
513	tdurden@email.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1998	Penny
514	tdurden@email.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1999	Penny
515	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Milton St	f	2001	Penny
516	tdurden@email.com	2021-08-16	0.010	2530 Kasota Ave	Saint Paul	MN	55108	Napa Auto Parts	f	2002	Penny
517	tdurden@email.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2005	Penny
518	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	Penny
519	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2005	Penny
520	tdurden@email.com	2019-08-30	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2005	Penny
521	tdurden@email.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2007	Penny
522	tdurden@email.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2008	Penny
523	tdurden@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2010	Penny
524	tdurden@email.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2011	Penny
525	tdurden@email.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2012	Penny
526	tdurden@email.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2013	Penny
527	tdurden@email.com	2019-09-11	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2013	Penny
528	tdurden@email.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2015	Penny
529	tdurden@email.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	f	2015	Penny
530	tdurden@email.com	2018-10-08	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2016	Penny
531	tdurden@email.com	2019-10-04	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2016	Penny
532	tdurden@email.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	Penny
533	tdurden@email.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	Penny
534	tdurden@email.com	2019-02-16	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	Penny
535	tdurden@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	Penny
536	tdurden@email.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	Penny
537	tdurden@email.com	2020-03-09	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	Penny
538	tdurden@email.com	2020-06-13	0.010	975 Grand Ave	Saint Paul	MN	55105	Jimmy johns	f	2017	Penny
539	tdurden@email.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	f	2017	Penny
540	tdurden@email.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2018	Penny
541	tdurden@email.com	2019-02-14	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	2018	Penny
542	tdurden@email.com	2020-02-01	0.010	6 West 6th Street	Saint Paul	MN	55102	Amsterdam bar and grill	f	2019	Penny
543	tdurden@email.com	2021-06-30	0.010	498 Selby Ave	Saint Paul	MN	55102	The Gnome	f	2021	Penny
544	tdurden@email.com	2018-08-04	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	Penny
545	tdurden@email.com	2018-09-08	0.010	649 Grand Ave	Saint Paul	MN	55105	653 Alley	f	\N	Penny
546	tdurden@email.com	2018-05-26	0.010	652 Grand Ave	Saint Paul	MN	55105	652 Alley	f	\N	Penny
547	tdurden@email.com	2018-05-27	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	Penny
548	tdurden@email.com	2018-06-07	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	Penny
549	tdurden@email.com	2018-06-15	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Alley	f	\N	Penny
550	tdurden@email.com	2018-07-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	Penny
551	tdurden@email.com	2018-07-16	0.010	651 Grand Ave	Saint Paul	MN	55105	651 Alley	f	\N	Penny
552	tdurden@email.com	2018-08-01	0.010	857 Grand Ave	Saint Paul	MN	55105	Billys	f	\N	Penny
553	tdurden@email.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Penny
554	tdurden@email.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Penny
555	tdurden@email.com	2018-10-22	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	Penny
556	tdurden@email.com	2018-10-29	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	\N	Penny
564	tdurden@email.com	2021-09-25	0.020	2277 Ford Pkwy	Saint Paul	MN	55116	PetCo	f	1964	Penny
574	tdurden@email.com	2018-11-03	0.010	\N	Saint Paul	MN	55104	Marshall ave	f	1964	Penny
575	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1981	Penny
576	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1982	Penny
577	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1984	Penny
578	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1986	Penny
579	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	2001	Penny
580	tdurden@email.com	2019-07-21	0.010	\N	Saint Paul	MN	\N	Marshall and Fairview	f	2019	Penny
581	tdurden@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
583	tdurden@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
584	tdurden@email.com	2018-10-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	Penny
585	tdurden@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	\N	Penny
588	tdurden@email.com	2021-06-16	0.010	\N	Saint Paul	MN	\N	Frank Ave	f	\N	Penny
600	tdurden@email.com	2019-02-02	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1972	Penny
601	tdurden@email.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1974	Penny
602	tdurden@email.com	2018-07-31	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	Penny
603	tdurden@email.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	1978	Penny
604	tdurden@email.com	2019-01-10	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1981	Penny
605	tdurden@email.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	Penny
606	tdurden@email.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	1983	Penny
607	tdurden@email.com	2019-06-17	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1996	Penny
608	tdurden@email.com	2018-08-07	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2004	Penny
609	tdurden@email.com	2019-04-29	0.010	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2015	Penny
610	tdurden@email.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2015	Penny
611	tdurden@email.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	2017	Penny
612	tdurden@email.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	Penny
613	tdurden@email.com	2021-09-25	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	Penny
614	tdurden@email.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
615	tdurden@email.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
616	tdurden@email.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
617	tdurden@email.com	2018-07-14	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
618	tdurden@email.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
619	tdurden@email.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
636	tdurden@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1961	Penny
637	tdurden@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1973	Penny
638	tdurden@email.com	2019-09-21	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1976	Penny
639	tdurden@email.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1978	Penny
640	tdurden@email.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1981	Penny
641	tdurden@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	Penny
642	tdurden@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1990	Penny
643	tdurden@email.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2000	Penny
644	tdurden@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2007	Penny
645	tdurden@email.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	Penny
646	tdurden@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	Penny
647	tdurden@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
648	tdurden@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
649	tdurden@email.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
656	tdurden@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
657	tdurden@email.com	2018-08-19	0.030	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1997	Penny
662	tdurden@email.com	2019-06-21	0.010	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	f	1995	Penny
666	tdurden@email.com	2019-08-22	0.010	\N	\N	MN	\N	\N	f	1982	Penny
688	tdurden@email.com	2021-11-18	0.010	1960 Twin Lakes Parkway	Roseville	MN	\N	Walmart	f	2021	Penny
709	hisnameis@email.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	Penny
710	hisnameis@email.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
713	hisnameis@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	Penny
714	hisnameis@email.com	2019-05-23	0.010	3425 E Lake St 	Minneapolis	MN	55406	Subway	t	\N	Penny
715	hisnameis@email.com	2019-05-24	0.010	100 Jefferson Dr 	Zumbrota	MN	55992	Kwik Trip	t	\N	Penny
716	hisnameis@email.com	2019-07-21	0.010	\N	saint Paul	MN	\N	Marshall and snelling	t	\N	Penny
717	hisnameis@email.com	2019-07-21	0.010	\N	Minneapolis	MN	\N	Lake and River Road	t	\N	Penny
718	hisnameis@email.com	2019-08-11	0.010	\N	saint paul	MN	\N	Marshall and snelling	t	\N	Penny
719	hisnameis@email.com	2019-10-19	0.010	301 19th Ave S	Minneapolis	MN	55455	Humphrey School	t	\N	Penny
720	hisnameis@email.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Penny
721	hisnameis@email.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	Penny
722	hisnameis@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
723	hisnameis@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
724	hisnameis@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
725	hisnameis@email.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
726	hisnameis@email.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	Penny
727	hisnameis@email.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	Penny
728	hisnameis@email.com	2020-07-11	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	Penny
729	hisnameis@email.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshalls	t	\N	Penny
730	hisnameis@email.com	2020-12-28	0.010	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	Penny
731	hisnameis@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
732	hisnameis@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
733	hisnameis@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
734	hisnameis@email.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	Penny
735	hisnameis@email.com	2021-03-02	0.010	2513 Central Ave NE	Minneapolis 	MN	55418	HolyLand	t	\N	Penny
736	hisnameis@email.com	2021-04-12	0.010	16396 Wagner Way	Eden Prairie	MN	55344	Tavern 4&5	t	\N	Penny
839	hisnameis@email.com	2018-05-29	0.010	\N	Minneapolis 	MN	\N	U Campus	f	\N	Penny
840	hisnameis@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
841	hisnameis@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
842	hisnameis@email.com	2018-06-03	0.010	\N	Saint Paul	MN	\N	Grand Ole Day	f	\N	Penny
843	hisnameis@email.com	2018-06-07	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	Penny
844	hisnameis@email.com	2018-06-08	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	\N	Penny
845	hisnameis@email.com	2018-06-10	0.010	7835 150th St W	Apple Valley	MN	55124	Walmart	f	\N	Penny
846	hisnameis@email.com	2018-06-15	0.010	84 Church Street SE	Minneapolis	MN	55455	Surdyks at Northrop	f	\N	Penny
847	hisnameis@email.com	2018-06-15	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Alley	f	\N	Penny
848	hisnameis@email.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	\N	Penny
849	hisnameis@email.com	2018-07-15	0.010	8089 Brooklyn Blvd	Brooklyn Park	MN	55445	Panda Garden Buffet	f	\N	Penny
850	hisnameis@email.com	2018-07-16	0.010	651 Grand Ave	Saint Paul	MN	55105	651 Alley	f	\N	Penny
851	hisnameis@email.com	2018-07-27	0.010	1 Twins Way	Minneapolis 	MN	55403	Target Field	f	\N	Penny
852	hisnameis@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
853	hisnameis@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
854	hisnameis@email.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	\N	Penny
855	hisnameis@email.com	2018-07-29	0.010	9242 Hudson Blvd N	Lake Elmo	MN	55042	Bride to Be Consignment	f	\N	Penny
856	hisnameis@email.com	2018-07-31	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	Penny
857	hisnameis@email.com	2018-07-31	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1975	Penny
858	hisnameis@email.com	2018-08-01	0.010	857 Grand Ave	Saint Paul	MN	55105	Billys	f	\N	Penny
859	hisnameis@email.com	2018-08-03	0.010	649 Grand Ave	Saint Paul	MN	55105	extra_dta	f	1968	Penny
860	hisnameis@email.com	2018-08-04	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	f	\N	Penny
861	hisnameis@email.com	2018-08-07	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2004	Penny
862	hisnameis@email.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2013	Penny
863	hisnameis@email.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	Penny
864	hisnameis@email.com	2018-08-17	0.010	\N	Minneapolis 	MN	55414	Dinky town	f	1978	Penny
865	hisnameis@email.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1978	Penny
866	hisnameis@email.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1981	Penny
867	hisnameis@email.com	2018-08-19	0.030	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	f	1997	Penny
868	hisnameis@email.com	2018-08-20	0.010	\N	Minneapolis 	MN	55455	Church St	f	2014	Penny
869	hisnameis@email.com	2018-08-23	0.010	275 White Bear Ave	Saint Paul	MN	55106	MGM liquor	f	1975	Penny
870	hisnameis@email.com	2018-08-28	0.010	\N	Minneapolis	MN	55414	14th Ave SE	f	1980	Penny
871	hisnameis@email.com	2018-08-31	0.010	\N	Minneapolis 	MN	55455	Church St	f	2018	Penny
872	hisnameis@email.com	2018-09-02	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
873	hisnameis@email.com	2018-09-04	0.010	\N	Minneapolis 	MN	55455	16th Ave SE	f	2000	Penny
874	hisnameis@email.com	2018-09-08	0.010	649 Grand Ave	Saint Paul	MN	55105	653 Alley	f	\N	Penny
875	hisnameis@email.com	2018-09-18	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
876	hisnameis@email.com	2018-09-20	0.010	\N	Minneapolis 	MN	55414	14th Ave SE	f	2008	Penny
877	hisnameis@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1973	Penny
878	hisnameis@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1983	Penny
879	hisnameis@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2007	Penny
880	hisnameis@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
881	hisnameis@email.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	\N	Penny
882	hisnameis@email.com	2018-09-25	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	1976	Penny
883	hisnameis@email.com	2018-09-30	0.010	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	f	2016	Penny
884	hisnameis@email.com	2018-10-03	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2014	Penny
885	hisnameis@email.com	2018-10-08	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2016	Penny
886	hisnameis@email.com	2018-10-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	f	\N	Penny
887	hisnameis@email.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Penny
888	hisnameis@email.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	f	\N	Penny
889	hisnameis@email.com	2018-10-22	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	\N	Penny
890	hisnameis@email.com	2018-10-23	0.010	309 19th Ave S	Minneapolis 	MN	55455	Wilson library	f	\N	Penny
891	hisnameis@email.com	2018-10-29	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	\N	Penny
892	hisnameis@email.com	2018-11-03	0.010	\N	Saint Paul	MN	55104	Marshall ave	f	1964	Penny
893	hisnameis@email.com	2018-11-08	0.010	\N	Minneapolis 	MN	\N	5th Street SE	f	1973	Penny
894	hisnameis@email.com	2018-11-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1986	Penny
895	hisnameis@email.com	2018-11-25	0.010	\N	Minneapolis 	MN	\N	37th Ave s	f	1987	Penny
896	hisnameis@email.com	2018-11-27	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	f	2010	Penny
897	hisnameis@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1980	Penny
898	hisnameis@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Penny
899	hisnameis@email.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2012	Penny
900	hisnameis@email.com	2018-12-01	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	1995	Penny
901	hisnameis@email.com	2018-12-02	0.010	15400 Buck Hill Rd	Burnsville	MN	55306	Buck Hill	f	1973	Penny
902	hisnameis@email.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	1974	Penny
903	hisnameis@email.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	Penny
904	hisnameis@email.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1974	Penny
905	hisnameis@email.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Penny
906	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1961	Penny
907	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1969	Penny
908	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1973	Penny
909	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1980	Penny
910	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	1982	Penny
911	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2014	Penny
912	hisnameis@email.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	f	2017	Penny
913	hisnameis@email.com	2018-12-10	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2002	Penny
914	hisnameis@email.com	2018-12-10	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	\N	Penny
915	hisnameis@email.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2018	Penny
916	hisnameis@email.com	2018-12-20	0.010	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort parking lot	f	1981	Penny
917	hisnameis@email.com	2018-12-22	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1978	Penny
918	hisnameis@email.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1990	Penny
919	hisnameis@email.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	f	1999	Penny
920	hisnameis@email.com	2018-12-26	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2017	Penny
921	hisnameis@email.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	1978	Penny
922	hisnameis@email.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	f	2017	Penny
923	hisnameis@email.com	2019-02-02	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	f	1972	Penny
924	hisnameis@email.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1963	Penny
925	hisnameis@email.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	Penny
926	hisnameis@email.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2004	Penny
927	hisnameis@email.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	f	2018	Penny
928	hisnameis@email.com	2019-02-12	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2016	Penny
929	hisnameis@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1979	Penny
930	hisnameis@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1996	Penny
931	hisnameis@email.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2001	Penny
932	hisnameis@email.com	2019-02-14	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	2018	Penny
933	hisnameis@email.com	2019-02-16	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2017	Penny
934	hisnameis@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
935	hisnameis@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
936	hisnameis@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
937	hisnameis@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
938	hisnameis@email.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
939	hisnameis@email.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2010	Penny
940	hisnameis@email.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1990	Penny
941	hisnameis@email.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	2005	Penny
942	hisnameis@email.com	2019-02-22	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	f	2017	Penny
943	hisnameis@email.com	2019-02-22	0.010	275 Market St	Minneapolis 	MN	55405	International Market Square	f	1980	Penny
944	hisnameis@email.com	2019-04-06	0.010	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	f	2007	Penny
945	hisnameis@email.com	2019-04-07	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1983	Penny
946	hisnameis@email.com	2019-04-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2007	Penny
947	hisnameis@email.com	2019-04-11	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	\N	Penny
948	hisnameis@email.com	2019-04-13	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	Penny
949	hisnameis@email.com	2019-04-15	0.010	417 14th Ave SE	Minneapolis 	MN	55414	Kafe421	f	2018	Penny
950	hisnameis@email.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1988	Penny
951	hisnameis@email.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2011	Penny
952	hisnameis@email.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	1976	Penny
953	hisnameis@email.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	f	\N	Penny
954	hisnameis@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1984	Penny
955	hisnameis@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1995	Penny
956	hisnameis@email.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	Penny
957	hisnameis@email.com	2019-04-22	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1978	Penny
958	hisnameis@email.com	2019-04-29	0.010	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	f	2015	Penny
959	hisnameis@email.com	2019-05-04	0.010	400 Snelling Ave N	Saint Paul	MN	55104	Allianz field	f	1995	Penny
960	hisnameis@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	2014	Penny
961	hisnameis@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Penny
962	hisnameis@email.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	f	\N	Penny
963	hisnameis@email.com	2019-05-08	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1998	Penny
964	hisnameis@email.com	2019-05-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1990	Penny
965	hisnameis@email.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2007	Penny
966	hisnameis@email.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2017	Penny
967	hisnameis@email.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2013	Penny
968	hisnameis@email.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2016	Penny
969	hisnameis@email.com	2019-05-21	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	f	1981	Penny
970	hisnameis@email.com	2019-05-28	0.010	324 14th Ave SE	Minneapolis 	MN	55414	Qdoba	f	2015	Penny
971	hisnameis@email.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1987	Penny
972	hisnameis@email.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	2008	Penny
973	hisnameis@email.com	2019-05-28	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	f	2002	Penny
974	hisnameis@email.com	2019-06-01	0.010	2000 Cliff Lake Rd	Eagan	MN	55122	Target	f	2017	Penny
975	hisnameis@email.com	2019-06-01	0.010	1250 Town Centre Dr	Eagan	MN	55123	Koyoto	f	\N	Penny
976	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Oxford St	f	1988	Penny
977	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Milton St	f	2001	Penny
978	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1981	Penny
979	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1982	Penny
980	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1984	Penny
981	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	1986	Penny
982	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	2001	Penny
983	hisnameis@email.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Grand Ave	f	\N	Penny
984	hisnameis@email.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	1992	Penny
985	hisnameis@email.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	f	2019	Penny
986	hisnameis@email.com	2019-06-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	1999	Penny
987	hisnameis@email.com	2019-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1985	Penny
988	hisnameis@email.com	2019-07-04	0.010	\N	Minneapolis 	MN	\N	Lake Stret	f	1987	Penny
989	hisnameis@email.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	1991	Penny
990	hisnameis@email.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	f	2014	Penny
991	hisnameis@email.com	2019-07-05	0.010	4320 E Lake St 	Minneapolis 	MN	55406	Speedway	f	1988	Penny
992	hisnameis@email.com	2019-07-09	0.010	14050 Burnhaven Dr	Burnsville	MN	55337	Costco	f	1996	Penny
993	hisnameis@email.com	2019-07-10	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	f	1982	Penny
994	hisnameis@email.com	2019-07-14	0.010	4400 E Lake St	Minneapolis 	MN	55406	Dairy Queen	f	1975	Penny
995	hisnameis@email.com	2019-07-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1998	Penny
996	hisnameis@email.com	2019-07-15	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1960	Penny
997	hisnameis@email.com	2019-07-20	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	f	2017	Penny
998	hisnameis@email.com	2019-07-21	0.010	\N	Saint Paul	MN	\N	Marshall and Fairview	f	2019	Penny
999	hisnameis@email.com	2019-07-21	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	f	1964	Penny
1000	hisnameis@email.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop locker room	f	1973	Penny
1001	hisnameis@email.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop box office	f	2000	Penny
1002	hisnameis@email.com	2019-07-30	0.010	14 Church St SE 	Minneapolis 	MN	55455	Nolte Garage	f	1982	Penny
1003	hisnameis@email.com	2019-08-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1959	Penny
1004	hisnameis@email.com	2019-08-10	0.010	7210 E Point Douglas Rd S	Cottage Grove	MN	55016	TJMaxx	f	1970	Penny
1005	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1968	Penny
1006	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1975	Penny
1007	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Penny
1008	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	1980	Penny
1009	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2004	Penny
1010	hisnameis@email.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	Penny
1011	hisnameis@email.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	Penny
1012	hisnameis@email.com	2019-09-09	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	1979	Penny
1013	hisnameis@email.com	2019-09-11	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	f	2013	Penny
1014	hisnameis@email.com	2019-09-11	0.010	5801 W 16th St	Saint Louis Parl	MN	55416	Costco	f	2001	Penny
1015	hisnameis@email.com	2019-09-12	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	f	2019	Penny
1016	hisnameis@email.com	2019-09-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2019	Penny
1017	hisnameis@email.com	2019-09-21	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1976	Penny
1018	hisnameis@email.com	2019-09-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1995	Penny
1019	hisnameis@email.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	1986	Penny
1020	hisnameis@email.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2013	Penny
1021	hisnameis@email.com	2019-09-26	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	f	2001	Penny
1022	hisnameis@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1961	Penny
1023	hisnameis@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1990	Penny
1024	hisnameis@email.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2019	Penny
1025	hisnameis@email.com	2019-10-04	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	f	2016	Penny
1026	hisnameis@email.com	2019-10-06	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2001	Penny
1027	hisnameis@email.com	2019-10-09	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1971	Penny
1028	hisnameis@email.com	2019-10-09	0.010	\N	Minneapolis 	MN	55455	17th Ave SE	f	1991	Penny
1029	hisnameis@email.com	2019-10-20	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1975	Penny
1030	hisnameis@email.com	2019-10-21	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1986	Penny
1031	hisnameis@email.com	2019-10-22	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1997	Penny
1032	hisnameis@email.com	2019-10-23	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2005	Penny
1033	hisnameis@email.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2004	Penny
1034	hisnameis@email.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Penny
1035	hisnameis@email.com	2020-01-21	0.010	\N	Manhattan	NY	10036	Times Square	f	2018	Penny
1036	hisnameis@email.com	2020-01-21	0.010	51 W 51st St	Manhattan	NY	10019	Duane reade	f	1980	Penny
1037	hisnameis@email.com	2020-01-21	0.010	1500 Broadway	New York	NY	10036	AudienceView	f	2006	Penny
1038	hisnameis@email.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	1999	Penny
1039	hisnameis@email.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	f	2016	Penny
1040	hisnameis@email.com	2020-02-01	0.010	6 West 6th Street	Saint Paul	MN	55102	Amsterdam bar and grill	f	2019	Penny
1041	hisnameis@email.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	Penny
1042	hisnameis@email.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1997	Penny
1043	hisnameis@email.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1981	Penny
1044	hisnameis@email.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	2004	Penny
1045	hisnameis@email.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	1990	Penny
1046	hisnameis@email.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	f	2007	Penny
1047	hisnameis@email.com	2020-03-09	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	f	2017	Penny
1048	hisnameis@email.com	2020-03-14	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2004	Penny
1049	hisnameis@email.com	2020-03-21	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2011	Penny
1050	hisnameis@email.com	2020-03-25	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2012	Penny
1051	hisnameis@email.com	2020-04-07	0.010	\N	Minneapolis 	MN	\N	Mississippi River	f	2001	Penny
1052	hisnameis@email.com	2020-05-06	0.010	\N	Minneapolis 	MN	\N	29th and 36th St s	f	2017	Penny
1053	hisnameis@email.com	2020-05-23	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th St s alley	f	1964	Penny
1054	hisnameis@email.com	2020-05-24	0.010	\N	Minneapolis 	MN	\N	rental car	f	2012	Penny
1055	hisnameis@email.com	2020-06-13	0.010	975 Grand Ave	Saint Paul	MN	55105	Jimmy johns	f	2017	Penny
1056	hisnameis@email.com	2020-06-14	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	f	1983	Penny
1058	hisnameis@email.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1968	Penny
1059	hisnameis@email.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	1976	Penny
1060	hisnameis@email.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2011	Penny
1061	hisnameis@email.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2020	Penny
1062	hisnameis@email.com	2020-07-18	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	1996	Penny
1063	hisnameis@email.com	2020-07-24	0.010	2100 N Snelling Dr	Roseville	MN	55113	Staples	f	2013	Penny
1064	hisnameis@email.com	2020-07-24	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	f	1982	Penny
1065	hisnameis@email.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Cub Foods	f	1990	Penny
1066	hisnameis@email.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	1988	Penny
1067	hisnameis@email.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	f	2020	Penny
1068	hisnameis@email.com	2020-08-20	0.010	\N	Minneapolis 	MN	\N	Washington Ave SE	f	1991	Penny
1069	hisnameis@email.com	2020-09-05	0.010	103 E Cedar St	Houston	MN	55943	Cenex	f	2005	Penny
1070	hisnameis@email.com	2021-01-10	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	2001	Penny
1071	hisnameis@email.com	2021-01-21	0.010	900 Burnsville Pkwy	Burnsville	MN	55337	Holiday	f	2013	Penny
1072	hisnameis@email.com	2021-01-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	1987	Penny
1073	hisnameis@email.com	2021-02-01	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	f	2011	Penny
1074	hisnameis@email.com	2021-02-23	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	1986	Penny
1075	hisnameis@email.com	2021-03-10	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	f	2020	Penny
1076	hisnameis@email.com	2021-03-14	0.010	\N	Minneapolis 	MN	\N	44th ave s	f	1985	Penny
1077	hisnameis@email.com	2021-03-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	northrop/nolte tunnel	f	1996	Penny
1078	hisnameis@email.com	2021-03-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S	f	2019	Penny
1079	hisnameis@email.com	2021-03-27	0.010	113 E 2nd St E	Hastings	MN	55033	Muse2320	f	2021	Penny
1080	hisnameis@email.com	2021-04-04	0.010	\N	Minneapolis 	MN	\N	\N	f	1983	Penny
1081	hisnameis@email.com	2021-05-02	0.010	1578 WI-65	New Richland	WI	54017	Casey's	f	1983	Penny
1082	hisnameis@email.com	2021-05-03	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S alley	f	2020	Penny
1083	hisnameis@email.com	2021-05-04	0.010	3425 E Lake St	Minneapolis 	MN	55406	Subway	f	\N	Penny
1084	hisnameis@email.com	2021-05-11	0.010	302 15th Ave SE	Minneapolis 	MN	55414	Raising Canes	f	1964	Penny
1085	hisnameis@email.com	2021-05-13	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	f	\N	Penny
1086	hisnameis@email.com	2021-05-26	0.010	20710 Keokuk Ave	Lakeville	MN	55044	Walmart	f	2010	Penny
1087	hisnameis@email.com	2021-05-30	0.010	650 50th Ave W	Alexandria	MN	56308	Holiday	f	2016	Penny
1088	hisnameis@email.com	2021-06-05	0.010	5050 Independence St	Maple Plain	MN	55359	Veterans Park	f	\N	Penny
1089	hisnameis@email.com	2021-06-15	0.010	601 SE Main St	Minneapolis 	MN	55414	Stone Arch Apartments	f	2015	Penny
1090	hisnameis@email.com	2021-06-16	0.010	\N	Saint Paul	MN	\N	Frank Ave	f	\N	Penny
1091	hisnameis@email.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	1995	Penny
1092	hisnameis@email.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	f	2006	Penny
1093	hisnameis@email.com	2021-09-25	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	f	2018	Penny
1094	hisnameis@email.com	2021-09-25	0.020	2277 Ford Pkwy	Saint Paul	MN	55116	PetCo	f	1964	Penny
1096	hisnameis@email.com	2021-10-12	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1981	Penny
1097	hisnameis@email.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1968	Penny
1098	hisnameis@email.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	f	1981	Penny
1099	hisnameis@email.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	1998	Penny
1100	hisnameis@email.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	f	2021	Penny
1101	hisnameis@email.com	2021-10-26	0.010	3815 E Lake St	Minneapolis	MN	55406	Longfellow Market	f	1971	Penny
1102	hisnameis@email.com	2021-10-26	0.010	36th Ave s and 29th st	Minneapolis	MN	55406	\N	f	2003	Penny
1103	hisnameis@email.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	f	1976	Penny
171	tdurden@email.com	2018-10-30	0.050	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	Nickel
172	tdurden@email.com	2021-03-19	0.050	1501 University Ave SE	Minneapolis 	MN	55414	DP Dough	f	1980	Nickel
173	tdurden@email.com	2021-06-07	0.050	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	f	1983	Nickel
174	tdurden@email.com	2020-03-19	0.050	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	f	1994	Nickel
175	tdurden@email.com	2018-12-10	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	1995	Nickel
176	tdurden@email.com	2019-02-14	0.050	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	1999	Nickel
177	tdurden@email.com	2019-04-07	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	2000	Nickel
179	tdurden@email.com	2018-08-27	0.050	2929 36th Ave S	Minneapolis 	MN	55406	Karl's porch	f	2001	Nickel
180	tdurden@email.com	2020-03-14	0.050	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	f	2001	Nickel
181	tdurden@email.com	2020-10-01	0.050	\N	Minneapolis 	MN	\N	Washington Ave SE	f	2007	Nickel
182	tdurden@email.com	2018-10-31	0.050	2929 36th Ave S	Minneapolis 	MN	55406	2929 26th Ave s	f	2012	Nickel
183	tdurden@email.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2015	Nickel
184	tdurden@email.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	f	2016	Nickel
185	tdurden@email.com	2019-08-05	0.050	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	f	2018	Nickel
186	tdurden@email.com	2021-06-01	0.050	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	f	2020	Nickel
824	hisnameis@email.com	2018-08-27	0.050	2929 36th Ave S	Minneapolis 	MN	55406	Karl's porch	f	2001	Nickel
825	hisnameis@email.com	2018-09-02	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	1987	Nickel
826	hisnameis@email.com	2018-09-07	0.050	\N	Minneapolis 	MN	55414	17th Ave SE	f	\N	Nickel
827	hisnameis@email.com	2018-09-15	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	f	2006	Nickel
828	hisnameis@email.com	2018-10-30	0.050	84 Church Street SE	Minneapolis 	MN	55455	Northrop	f	1964	Nickel
829	hisnameis@email.com	2018-10-31	0.050	2929 36th Ave S	Minneapolis 	MN	55406	2929 26th Ave s	f	2012	Nickel
830	hisnameis@email.com	2018-12-10	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	f	1995	Nickel
831	hisnameis@email.com	2019-01-10	0.050	925 Grand Ave	Saint Paul 	MN	55105	SA	f	1976	Nickel
832	hisnameis@email.com	2019-01-14	0.050	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	f	2014	Nickel
833	hisnameis@email.com	2019-02-05	0.050	216 Arundel Street	Saint Paul	MN	55102	Arundel St	f	1992	Nickel
834	hisnameis@email.com	2019-02-14	0.050	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	f	1999	Nickel
835	hisnameis@email.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2005	Nickel
836	hisnameis@email.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	f	2017	Nickel
837	hisnameis@email.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	f	1958	Nickel
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

