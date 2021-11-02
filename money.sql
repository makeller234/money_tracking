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
    state character varying(3),
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
1925	melissa.keller23@gmail.com	2019-03-16	1.000	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	2013	$1	\N
1926	melissa.keller23@gmail.com	2021-07-24	1.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$1	\N
1927	melissa.keller23@gmail.com	2019-09-03	5.000	\N	Minneapolis 	MN	\N	38th and lake st	\N	2009	$5	\N
1928	melissa.keller23@gmail.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5	\N
1929	melissa.keller23@gmail.com	2019-04-13	5.000	2501 Marshall St NE	Minneapolis	MN	55418	Betty Dangers	t	\N	$5	\N
1930	melissa.keller23@gmail.com	2021-07-24	5.000	Cedar Street	Houston	MN	55943	Hoedown	t	\N	$5	\N
1931	melissa.keller23@gmail.com	2019-06-07	20.000	1504 7th St S	Minneapolis	MN	55454	House of Balls	t	\N	$20	\N
1932	melissa.keller23@gmail.com	2019-01-12	1.000	99-500 Salt Lake Blvd	Honolulu	HI	96818	Aloha Stadium	\N	2013	bill	\N
1933	melissa.keller23@gmail.com	2021-06-19	1.000	15277 Barton Ave NW	Monticello	MN	55362	15277 Barton Ave NW	\N	2013	bill	\N
1934	melissa.keller23@gmail.com	2019-05-08	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	\N	1970	Canadian penny	\N
1935	melissa.keller23@gmail.com	2021-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	\N	Canadian penny	\N
1936	melissa.keller23@gmail.com	2019-11-04	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	\N	1999	dime	\N
1937	melissa.keller23@gmail.com	2019-08-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	2015	dime	\N
1938	melissa.keller23@gmail.com	2020-08-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	1966	dime	\N
1939	melissa.keller23@gmail.com	2020-07-17	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	\N	1967	dime	\N
1940	melissa.keller23@gmail.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	\N	1972	dime	\N
1941	melissa.keller23@gmail.com	2021-10-02	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	\N	1972	dime	\N
1942	melissa.keller23@gmail.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	1974	dime	\N
1943	melissa.keller23@gmail.com	2018-09-15	0.100	755 Prior Ave N	Saint Paul	MN	55104	Can Can Wonderland	\N	1976	dime	\N
1944	melissa.keller23@gmail.com	2019-09-23	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1976	dime	\N
1945	melissa.keller23@gmail.com	2019-12-13	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	\N	1978	dime	\N
1946	melissa.keller23@gmail.com	2019-07-17	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	\N	1980	dime	\N
1947	melissa.keller23@gmail.com	2020-03-19	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	\N	1980	dime	\N
1948	melissa.keller23@gmail.com	2019-04-10	0.100	1300 University Ave W	Saint Paul	MN	55104	Target	\N	1981	dime	\N
1949	melissa.keller23@gmail.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	\N	1981	dime	\N
1950	melissa.keller23@gmail.com	2019-09-29	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	1983	dime	\N
1951	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	1984	dime	\N
1952	melissa.keller23@gmail.com	2020-01-12	0.100	\N	Minneapolis 	\N	\N	E 42nd St	\N	1984	dime	\N
1953	melissa.keller23@gmail.com	2021-10-15	0.100	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	\N	1984	dime	\N
1954	melissa.keller23@gmail.com	2018-11-17	0.100	2128 S 4th St	Minneapolis 	MN	55455	Ted Mann	\N	1986	dime	\N
1955	melissa.keller23@gmail.com	2019-06-17	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1986	dime	\N
1956	melissa.keller23@gmail.com	2019-01-20	0.100	1225 Estabrook Dr	Saint Paul	MN	55103	Como conservatory 	\N	1987	dime	\N
1957	melissa.keller23@gmail.com	2019-05-20	0.100	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	\N	1989	dime	\N
1958	melissa.keller23@gmail.com	2018-08-04	0.100	1300 Midway Pkwy	Saint Paul	MN	55103	Como Mini Golf	\N	1990	dime	\N
1959	melissa.keller23@gmail.com	2019-03-22	0.100	60 E Broadway	Bloomington	MN	55425	Mall of America	\N	1990	dime	\N
1960	melissa.keller23@gmail.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	\N	1990	dime	\N
1961	melissa.keller23@gmail.com	2019-03-18	0.100	216 Arundel Street	Saint Paul	MN	55102	Arundel St	\N	1992	dime	\N
1962	melissa.keller23@gmail.com	2020-11-21	0.100	7235 MN-61	Tofte	MN	55615	Holiday	\N	1992	dime	\N
1963	melissa.keller23@gmail.com	2019-04-01	0.100	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1993	dime	\N
1964	melissa.keller23@gmail.com	2019-05-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1994	dime	\N
1965	melissa.keller23@gmail.com	2018-06-04	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	1995	dime	\N
1966	melissa.keller23@gmail.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	1995	dime	\N
1967	melissa.keller23@gmail.com	2018-12-20	0.100	5339 MN-61	Lutsen	MN	55612	Lutsen Liquors	\N	1996	dime	\N
1968	melissa.keller23@gmail.com	2018-09-15	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	1998	dime	\N
1969	melissa.keller23@gmail.com	2019-06-15	0.100	216 Arundel Street	Saint Paul	MN	55102	216 arundel	\N	1998	dime	\N
1970	melissa.keller23@gmail.com	2019-01-29	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	\N	1999	dime	\N
1971	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	1999	dime	\N
1972	melissa.keller23@gmail.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	\N	1999	dime	\N
1973	melissa.keller23@gmail.com	2019-06-09	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	\N	1999	dime	\N
1974	melissa.keller23@gmail.com	2019-07-01	0.100	211 7th St W	Saint Paul	MN	55102	Bar Louis	\N	1999	dime	\N
1975	melissa.keller23@gmail.com	2020-03-16	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1999	dime	\N
1976	melissa.keller23@gmail.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2000	dime	\N
1977	melissa.keller23@gmail.com	2019-09-22	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2000	dime	\N
1978	melissa.keller23@gmail.com	2019-12-12	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	2000	dime	\N
1979	melissa.keller23@gmail.com	2019-06-21	0.100	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	\N	2001	dime	\N
1980	melissa.keller23@gmail.com	2019-10-22	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2001	dime	\N
1981	melissa.keller23@gmail.com	2019-03-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2002	dime	\N
1982	melissa.keller23@gmail.com	2019-09-23	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	2002	dime	\N
1983	melissa.keller23@gmail.com	2019-11-11	0.100	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	\N	2002	dime	\N
1984	melissa.keller23@gmail.com	2019-07-15	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	\N	2003	dime	\N
1985	melissa.keller23@gmail.com	2020-08-10	0.100	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	2003	dime	\N
1986	melissa.keller23@gmail.com	2021-06-22	0.100	2513 Central Ave NE	Minneapolis	MN	55418	HolyLand	\N	2003	dime	\N
1987	melissa.keller23@gmail.com	2021-02-13	0.100	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	\N	2004	dime	\N
1988	melissa.keller23@gmail.com	2021-05-30	0.100	650 50th Ave W	Alexandria	MN	56308	Holiday	\N	2004	dime	\N
1989	melissa.keller23@gmail.com	2018-10-26	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	\N	2005	dime	\N
1990	melissa.keller23@gmail.com	2018-11-12	0.100	\N	Minneapolis 	MN	55455	17th Ave SE	\N	2005	dime	\N
1991	melissa.keller23@gmail.com	2019-04-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2005	dime	\N
1992	melissa.keller23@gmail.com	2021-05-25	0.100	110 Penn Ave N	Minneapolis 	MN	55405	Bassett Park	\N	2005	dime	\N
1993	melissa.keller23@gmail.com	2018-10-31	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	\N	2006	dime	\N
1994	melissa.keller23@gmail.com	2018-12-17	0.100	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	\N	2006	dime	\N
1995	melissa.keller23@gmail.com	2019-02-15	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	\N	2006	dime	\N
1996	melissa.keller23@gmail.com	2019-06-25	0.100	2858 26th Ave S	Minneapolis 	MN	55406	Dollar Store Parking Lot	\N	2006	dime	\N
1997	melissa.keller23@gmail.com	2019-09-09	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2006	dime	\N
1998	melissa.keller23@gmail.com	2019-01-15	0.100	108 Hekili St	Kailu	HI	96734	Foodland	\N	2007	dime	\N
1999	melissa.keller23@gmail.com	2019-10-19	0.100	4320 E Lake St	Minneapolis 	MN	55406	Speedway	\N	2007	dime	\N
2000	melissa.keller23@gmail.com	2018-10-02	0.100	\N	Minneapolis 	MN	55414	17th Ave SE	\N	2008	dime	\N
2001	melissa.keller23@gmail.com	2018-12-08	0.100	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	2008	dime	\N
2002	melissa.keller23@gmail.com	2019-05-15	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2008	dime	\N
2003	melissa.keller23@gmail.com	2021-07-24	0.100	Cedar Street	Houston	MN	55943	Hoedown	\N	2008	dime	\N
2004	melissa.keller23@gmail.com	2019-02-16	0.100	7625 Cahill Rd	Edina	MN	55439	Sky Zone	\N	2010	dime	\N
2005	melissa.keller23@gmail.com	2019-10-25	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2010	dime	\N
2006	melissa.keller23@gmail.com	2018-09-02	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2011	dime	\N
2007	melissa.keller23@gmail.com	2018-12-20	0.100	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort	\N	2011	dime	\N
2008	melissa.keller23@gmail.com	2019-08-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2011	dime	\N
2009	melissa.keller23@gmail.com	2019-05-20	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2012	dime	\N
2010	melissa.keller23@gmail.com	2019-09-08	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s alley	\N	2012	dime	\N
2011	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	2013	dime	\N
2012	melissa.keller23@gmail.com	2018-12-31	0.100	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	\N	2014	dime	\N
2013	melissa.keller23@gmail.com	2019-06-14	0.100	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	\N	2014	dime	\N
2014	melissa.keller23@gmail.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2014	dime	\N
2015	melissa.keller23@gmail.com	2020-03-19	0.100	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	\N	2014	dime	\N
2016	melissa.keller23@gmail.com	2019-03-16	0.100	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	2015	dime	\N
2017	melissa.keller23@gmail.com	2019-07-19	0.100	141 Carmichael Rd	Hudson	WI	54016	Walgreens	\N	2015	dime	\N
2018	melissa.keller23@gmail.com	2019-09-27	0.100	\N	Minneapolis 	MN	\N	14th Ave SE	\N	2015	dime	\N
2019	melissa.keller23@gmail.com	2020-03-21	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	2015	dime	\N
2020	melissa.keller23@gmail.com	2018-12-06	0.100	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	2016	dime	\N
2021	melissa.keller23@gmail.com	2019-06-20	0.100	1040 Grand Ave	Saint Paul	MN	55105	CVS	\N	2016	dime	\N
2022	melissa.keller23@gmail.com	2020-03-12	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2016	dime	\N
2023	melissa.keller23@gmail.com	2019-04-06	0.100	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	\N	2017	dime	\N
2024	melissa.keller23@gmail.com	2019-09-08	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2017	dime	\N
2025	melissa.keller23@gmail.com	2019-02-17	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2018	dime	\N
2026	melissa.keller23@gmail.com	2019-08-28	0.100	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	\N	2018	dime	\N
2027	melissa.keller23@gmail.com	2019-09-20	0.100	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	\N	2018	dime	\N
2028	melissa.keller23@gmail.com	2019-09-01	0.100	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	\N	2019	dime	\N
2029	melissa.keller23@gmail.com	2020-01-23	0.100	\N	Queens	NY	11371	LaGuardia Airport	\N	2019	dime	\N
2030	melissa.keller23@gmail.com	2021-07-31	0.100	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	2019	dime	\N
2031	melissa.keller23@gmail.com	2021-09-09	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2021	dime	\N
2032	melissa.keller23@gmail.com	2021-09-11	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2021	dime	\N
2033	melissa.keller23@gmail.com	2018-05-19	0.100	\N	Duluth 	MN	55802	\N	\N	\N	dime	\N
2034	melissa.keller23@gmail.com	2018-05-22	0.100	\N	Minneapolis 	MN	\N	\N	\N	\N	Dime	\N
2035	melissa.keller23@gmail.com	2018-05-30	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	\N	dime	\N
2036	melissa.keller23@gmail.com	2018-06-19	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	\N	dime	\N
2037	melissa.keller23@gmail.com	2018-06-23	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	\N	dime	\N
2038	melissa.keller23@gmail.com	2018-07-19	0.100	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	\N	dime	\N
2039	melissa.keller23@gmail.com	2018-07-28	0.100	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	\N	dime	\N
2040	melissa.keller23@gmail.com	2018-09-23	0.100	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	\N	dime	\N
2041	melissa.keller23@gmail.com	2018-10-20	0.100	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	\N	\N	dime	\N
2042	melissa.keller23@gmail.com	2019-05-05	0.100	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	\N	\N	dime	\N
2043	melissa.keller23@gmail.com	2019-08-11	0.100	\N	saint paul	\N	\N	Marshall and hamline	t	\N	dime	\N
2044	melissa.keller23@gmail.com	2019-10-05	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	dime	\N
2045	melissa.keller23@gmail.com	2019-10-07	0.100	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	t	\N	dime	\N
2046	melissa.keller23@gmail.com	2019-11-24	0.100	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	\N	\N	dime	\N
2047	melissa.keller23@gmail.com	2020-06-27	0.100	60684 MN-23	Finlayson	MN	55735	Cenex	t	\N	dime	\N
2048	melissa.keller23@gmail.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	dime	\N
2049	melissa.keller23@gmail.com	2020-12-28	0.100	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	dime	\N
2050	melissa.keller23@gmail.com	2021-09-24	1.000	501 30th Ave SE	Minneapolis 	MN	55414	The Market at Malcolm yards	\N	2009	dollar	\N
2051	melissa.keller23@gmail.com	2019-10-04	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2000	dollar coin	\N
2052	melissa.keller23@gmail.com	2019-09-17	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2001	dollar coin	\N
2053	melissa.keller23@gmail.com	2019-03-15	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2008	dollar coin	\N
2054	melissa.keller23@gmail.com	2019-06-06	1.000	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2010	dollar coin	\N
2055	melissa.keller23@gmail.com	2019-05-14	0.005	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	\N	half penny	\N
2056	melissa.keller23@gmail.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	1958	nickel	\N
2057	melissa.keller23@gmail.com	2018-10-30	0.050	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	1964	nickel	\N
2058	melissa.keller23@gmail.com	2019-01-10	0.050	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	1976	nickel	\N
2059	melissa.keller23@gmail.com	2021-03-19	0.050	1501 University Ave SE	Minneapolis 	MN	55414	DP Dough	\N	1980	nickel	\N
2060	melissa.keller23@gmail.com	2021-06-07	0.050	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	\N	1983	nickel	\N
2061	melissa.keller23@gmail.com	2018-09-02	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	1987	nickel	\N
2062	melissa.keller23@gmail.com	2019-02-05	0.050	216 Arundel Street	Saint Paul	MN	55102	Arundel St	\N	1992	nickel	\N
2063	melissa.keller23@gmail.com	2020-03-19	0.050	\N	Minneapolis 	MN	55406	29th st & 40 Ave s	\N	1994	nickel	\N
2064	melissa.keller23@gmail.com	2018-12-10	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1995	nickel	\N
2065	melissa.keller23@gmail.com	2019-04-01	0.050	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	\N	1997	nickel	\N
2066	melissa.keller23@gmail.com	2019-02-14	0.050	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	\N	1999	nickel	\N
2067	melissa.keller23@gmail.com	2019-03-16	0.050	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	1999	nickel	\N
2068	melissa.keller23@gmail.com	2019-04-01	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1999	nickel	\N
2069	melissa.keller23@gmail.com	2019-03-22	0.050	60 E Broadway	Bloomington	MN	55425	Mall of America	\N	2000	nickel	\N
2070	melissa.keller23@gmail.com	2019-04-07	0.050	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2000	nickel	\N
2071	melissa.keller23@gmail.com	2021-08-29	0.050	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	2000	nickel	\N
2072	melissa.keller23@gmail.com	2018-08-27	0.050	2929 36th Ave S	Minneapolis 	MN	55406	Karl's porch	\N	2001	nickel	\N
2073	melissa.keller23@gmail.com	2019-04-22	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	2001	nickel	\N
2074	melissa.keller23@gmail.com	2020-03-14	0.050	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	\N	2001	nickel	\N
2075	melissa.keller23@gmail.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	\N	2005	nickel	\N
2076	melissa.keller23@gmail.com	2018-09-15	0.050	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2006	nickel	\N
2077	melissa.keller23@gmail.com	2020-10-01	0.050	\N	Minneapolis 	MN	\N	Washington Ave SE	\N	2007	nickel	\N
2078	melissa.keller23@gmail.com	2018-10-31	0.050	2929 36th Ave S	Minneapolis 	MN	55406	2929 26th Ave s	\N	2012	nickel	\N
2079	melissa.keller23@gmail.com	2019-01-14	0.050	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	\N	2014	nickel	\N
2080	melissa.keller23@gmail.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	\N	2015	nickel	\N
2081	melissa.keller23@gmail.com	2021-08-21	0.050	4020 E Lake St	Minneapolis 	MN	55406	HiLo Diner	\N	2016	nickel	\N
2082	melissa.keller23@gmail.com	2019-02-16	0.050	7625 Cahill Rd	Edina	MN	55439	Sky Zone	\N	2017	nickel	\N
2083	melissa.keller23@gmail.com	2019-06-14	0.050	275 White Bear Ave	Saint Paul	MN	55106	mgm liquors	\N	2018	nickel	\N
2084	melissa.keller23@gmail.com	2019-08-05	0.050	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2018	nickel	\N
2085	melissa.keller23@gmail.com	2021-06-01	0.050	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	\N	2020	nickel	\N
2086	melissa.keller23@gmail.com	2021-09-12	0.050	4320 E Lake St	Minneapolis 	MN	55406	Speedway	\N	2021	nickel	\N
2087	melissa.keller23@gmail.com	2018-05-22	0.050	\N	Minneapolis 	MN	\N	\N	\N	\N	nickel	\N
2088	melissa.keller23@gmail.com	2018-07-28	0.050	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	\N	nickel	\N
2089	melissa.keller23@gmail.com	2018-09-07	0.050	\N	Minneapolis 	MN	55414	17th Ave SE	\N	\N	nickel	\N
2090	melissa.keller23@gmail.com	2019-01-08	0.050	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	nickel	\N
2091	melissa.keller23@gmail.com	2021-04-05	0.050	824 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	t	\N	nickel	\N
2092	melissa.keller23@gmail.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	nickel	\N
2093	melissa.keller23@gmail.com	2021-06-01	0.050	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	nickel	\N
2094	melissa.keller23@gmail.com	2018-06-03	0.050	\N	Saint Paul	\N	\N	Grand Ole Day	\N	\N	nickel 	\N
2095	melissa.keller23@gmail.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	pemmy	\N
2096	melissa.keller23@gmail.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	\N	1988	pemny	\N
2097	melissa.keller23@gmail.com	2019-08-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1959	penny	\N
2098	melissa.keller23@gmail.com	2019-07-15	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	\N	1960	penny	\N
2099	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	1961	penny	\N
2100	melissa.keller23@gmail.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	\N	1961	penny	\N
2101	melissa.keller23@gmail.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	1961	penny	\N
2102	melissa.keller23@gmail.com	2020-01-07	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1962	penny	\N
2103	melissa.keller23@gmail.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1963	penny	\N
2104	melissa.keller23@gmail.com	2018-11-03	0.010	\N	Saint Paul	\N	55104	Marshall ave	\N	1964	penny	\N
2105	melissa.keller23@gmail.com	2019-07-21	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	\N	1964	penny	\N
2106	melissa.keller23@gmail.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	1964	penny	\N
2107	melissa.keller23@gmail.com	2020-05-23	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th St s alley	\N	1964	penny	\N
2108	melissa.keller23@gmail.com	2021-05-11	0.010	302 15th Ave SE	Minneapolis 	MN	55414	Raising Canes	\N	1964	penny	\N
2109	melissa.keller23@gmail.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	\N	1967	penny	\N
2110	melissa.keller23@gmail.com	2018-08-03	0.010	649 Grand Ave	Saint Paul	MN	55105	650 Alley	\N	1968	penny	\N
2111	melissa.keller23@gmail.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	1968	penny	\N
2112	melissa.keller23@gmail.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	\N	1968	penny	\N
2113	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	1969	penny	\N
2114	melissa.keller23@gmail.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	\N	1969	penny	\N
2115	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	1969	penny	\N
2116	melissa.keller23@gmail.com	2021-09-06	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	\N	1969	penny	\N
2117	melissa.keller23@gmail.com	2019-08-10	0.010	7210 E Point Douglas Rd S	Cottage Grove	MN	55016	TJMaxx	\N	1970	penny	\N
2118	melissa.keller23@gmail.com	2019-01-17	0.010	945 Kapahulu Ave	Honolulu	HI	96816	Konos	\N	1971	penny	\N
2119	melissa.keller23@gmail.com	2019-03-14	0.010	\N	Minneapolis 	MN	\N	Scholars Walk	\N	1971	penny	\N
2120	melissa.keller23@gmail.com	2019-10-09	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1971	penny	\N
2121	melissa.keller23@gmail.com	2021-10-26	0.010	3815 E Lake St	Minneapolis	MN	55406	Longfellow Market	\N	1971	penny	\N
2122	melissa.keller23@gmail.com	2019-02-02	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	\N	1972	penny	\N
2123	melissa.keller23@gmail.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	1972	penny	\N
2124	melissa.keller23@gmail.com	2019-08-28	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1972	penny	\N
2125	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	1973	penny	\N
2126	melissa.keller23@gmail.com	2018-11-08	0.010	\N	Minneapolis 	MN	\N	5th Street SE	\N	1973	penny	\N
2127	melissa.keller23@gmail.com	2018-12-02	0.010	15400 Buck Hill Rd	Burnsville	MN	55306	Buck Hill	\N	1973	penny	\N
2128	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	1973	penny	\N
2129	melissa.keller23@gmail.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop locker room	\N	1973	penny	\N
2130	melissa.keller23@gmail.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	\N	1974	penny	\N
2131	melissa.keller23@gmail.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1974	penny	\N
2132	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	1974	penny	\N
2133	melissa.keller23@gmail.com	2019-06-20	0.010	1040 Grand Ave	Saint Paul	MN	55105	CVS	\N	1974	penny	\N
2134	melissa.keller23@gmail.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	\N	1974	penny	\N
2135	melissa.keller23@gmail.com	2018-07-31	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1975	penny	\N
2136	melissa.keller23@gmail.com	2018-08-23	0.010	275 White Bear Ave	Saint Paul	MN	55106	MGM liquor	\N	1975	penny	\N
2137	melissa.keller23@gmail.com	2018-12-30	0.010	216 Arundel Street	Saint Paul	MN	55102	216 Arundel	\N	1975	penny	\N
2138	melissa.keller23@gmail.com	2019-01-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1975	penny	\N
2139	melissa.keller23@gmail.com	2019-07-14	0.010	4400 E Lake St	Minneapolis 	MN	55406	Dairy Queen	\N	1975	penny	\N
2140	melissa.keller23@gmail.com	2019-10-20	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	1975	penny	\N
2141	melissa.keller23@gmail.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	\N	1975	penny	\N
2142	melissa.keller23@gmail.com	2018-07-31	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	1976	penny	\N
2143	melissa.keller23@gmail.com	2018-09-25	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	\N	1976	penny	\N
2144	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	1976	penny	\N
2145	melissa.keller23@gmail.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	\N	1976	penny	\N
2146	melissa.keller23@gmail.com	2019-09-21	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	1976	penny	\N
2147	melissa.keller23@gmail.com	2020-07-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	1976	penny	\N
2148	melissa.keller23@gmail.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	\N	1976	penny	\N
2149	melissa.keller23@gmail.com	2021-09-26	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	1977	penny	\N
2150	melissa.keller23@gmail.com	2018-08-17	0.010	\N	Minneapolis 	MN	55414	Dinky town	\N	1978	penny	\N
2151	melissa.keller23@gmail.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	1978	penny	\N
2152	melissa.keller23@gmail.com	2018-12-22	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	\N	1978	penny	\N
2153	melissa.keller23@gmail.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	\N	1978	penny	\N
2154	melissa.keller23@gmail.com	2019-04-22	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	\N	1978	penny	\N
2155	melissa.keller23@gmail.com	2020-01-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	1978	penny	\N
2156	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	1978	penny	\N
2157	melissa.keller23@gmail.com	2021-09-10	0.010	231 Pillsbury Dr SE	Minneapolis 	MN	55455	Williamson Hall	\N	1978	penny	\N
2158	melissa.keller23@gmail.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1979	penny	\N
2159	melissa.keller23@gmail.com	2019-09-09	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	\N	1979	penny	\N
2160	melissa.keller23@gmail.com	2020-06-27	0.010	\N	\N	MN	\N	\N	\N	1979	penny	\N
2161	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	1979	penny	\N
2162	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	1979	penny	\N
2163	melissa.keller23@gmail.com	2018-08-28	0.010	\N	Minneapolis	MN	55414	14th Ave SE	\N	1980	penny	\N
2164	melissa.keller23@gmail.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1980	penny	\N
2165	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	1980	penny	\N
2166	melissa.keller23@gmail.com	2019-02-22	0.010	275 Market St	Minneapolis 	MN	55405	International Market Square	\N	1980	penny	\N
2167	melissa.keller23@gmail.com	2019-08-24	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	1980	penny	\N
2168	melissa.keller23@gmail.com	2020-01-21	0.010	51 W 51st St	Manhattan	NY	10019	Duane reade	\N	1980	penny	\N
2169	melissa.keller23@gmail.com	2018-08-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	1981	penny	\N
2170	melissa.keller23@gmail.com	2018-12-20	0.010	5700 West MN-61	Lutsen	MN	55612	Lutsen Resort parking lot	\N	1981	penny	\N
2171	melissa.keller23@gmail.com	2019-01-06	0.010	324 W Marketplace	Bloomington	MN	55425	Nordstrom's Rack	\N	1981	penny	\N
2172	melissa.keller23@gmail.com	2019-01-10	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	1981	penny	\N
2173	melissa.keller23@gmail.com	2019-03-22	0.010	60 E Broadway	Bloomington	MN	55425	Mall of America	\N	1981	penny	\N
2174	melissa.keller23@gmail.com	2019-05-21	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	\N	1981	penny	\N
2175	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	\N	\N	Grand Ave	\N	1981	penny	\N
2176	melissa.keller23@gmail.com	2020-01-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1981	penny	\N
2177	melissa.keller23@gmail.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	1981	penny	\N
2178	melissa.keller23@gmail.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	\N	1981	penny	\N
2179	melissa.keller23@gmail.com	2021-10-12	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	\N	1981	penny	\N
2180	melissa.keller23@gmail.com	2021-10-15	0.010	2618 E Franklin Ave	Minneapolis	MN	55406	Zipps	\N	1981	penny	\N
2181	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	1982	penny	\N
2182	melissa.keller23@gmail.com	2019-01-09	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1982	penny	\N
2183	melissa.keller23@gmail.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	\N	1982	penny	\N
2184	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	1982	penny	\N
2185	melissa.keller23@gmail.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1982	penny	\N
2186	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	\N	\N	Grand Ave	\N	1982	penny	\N
2187	melissa.keller23@gmail.com	2019-07-10	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1982	penny	\N
2188	melissa.keller23@gmail.com	2019-07-30	0.010	14 Church St SE 	Minneapolis 	MN	55455	Nolte Garage	\N	1982	penny	\N
2189	melissa.keller23@gmail.com	2020-07-24	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	\N	1982	penny	\N
2190	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	1983	penny	\N
2191	melissa.keller23@gmail.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	\N	1983	penny	\N
2192	melissa.keller23@gmail.com	2019-04-07	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	\N	1983	penny	\N
2193	melissa.keller23@gmail.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	\N	1983	penny	\N
2194	melissa.keller23@gmail.com	2019-12-06	0.010	\N	Minneapolis 	MN	\N	\N	\N	1983	penny	\N
2195	melissa.keller23@gmail.com	2020-06-14	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	\N	1983	penny	\N
2196	melissa.keller23@gmail.com	2020-11-15	0.010	33 County Rd B E	Saint Paul	MN	55117	Joe's sporting goods	\N	1983	penny	\N
2197	melissa.keller23@gmail.com	2021-04-04	0.010	\N	Minneapolis 	MN	\N	\N	\N	1983	penny	\N
2198	melissa.keller23@gmail.com	2021-05-02	0.010	1578 WI-65	New Richland	WI	54017	Casey's	\N	1983	penny	\N
2199	melissa.keller23@gmail.com	2019-02-24	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	\N	1984	penny	\N
2200	melissa.keller23@gmail.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	\N	1984	penny	\N
2201	melissa.keller23@gmail.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1984	penny	\N
2202	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	\N	\N	Grand Ave	\N	1984	penny	\N
2203	melissa.keller23@gmail.com	2019-04-13	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	1985	penny	\N
2204	melissa.keller23@gmail.com	2019-07-04	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	1985	penny	\N
2205	melissa.keller23@gmail.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	\N	1985	penny	\N
2206	melissa.keller23@gmail.com	2021-03-14	0.010	\N	Minneapolis 	MN	\N	44th ave s	\N	1985	penny	\N
2207	melissa.keller23@gmail.com	2018-11-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	\N	1986	penny	\N
2208	melissa.keller23@gmail.com	2019-03-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	1986	penny	\N
2209	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	\N	\N	Grand Ave	\N	1986	penny	\N
2210	melissa.keller23@gmail.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1986	penny	\N
2211	melissa.keller23@gmail.com	2019-10-21	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1986	penny	\N
2212	melissa.keller23@gmail.com	2021-02-23	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	\N	1986	penny	\N
2213	melissa.keller23@gmail.com	2018-11-25	0.010	\N	Minneapolis 	MN	\N	37th Ave s	\N	1987	penny	\N
2214	melissa.keller23@gmail.com	2018-12-31	0.010	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	\N	1987	penny	\N
2215	melissa.keller23@gmail.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1987	penny	\N
2216	melissa.keller23@gmail.com	2019-07-04	0.010	\N	Minneapolis 	\N	\N	Lake Stret	\N	1987	penny	\N
2217	melissa.keller23@gmail.com	2021-01-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	\N	1987	penny	\N
2218	melissa.keller23@gmail.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1988	penny	\N
2219	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Oxford St	\N	1988	penny	\N
2220	melissa.keller23@gmail.com	2019-07-05	0.010	4320 E Lake St 	Minneapolis 	MN	55406	Speedway	\N	1988	penny	\N
2221	melissa.keller23@gmail.com	2019-08-24	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	\N	1988	penny	\N
2222	melissa.keller23@gmail.com	2021-09-08	0.010	3916 E Lake St	Minneapolis 	MN	55406	East Lake Liquor	\N	1988	penny	\N
2223	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	1989	penny	\N
2224	melissa.keller23@gmail.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	\N	1990	penny	\N
2225	melissa.keller23@gmail.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	\N	1990	penny	\N
2226	melissa.keller23@gmail.com	2019-05-11	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	1990	penny	\N
2227	melissa.keller23@gmail.com	2019-06-25	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	1990	penny	\N
2228	melissa.keller23@gmail.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	1990	penny	\N
2229	melissa.keller23@gmail.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1990	penny	\N
2230	melissa.keller23@gmail.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Cub Foods	\N	1990	penny	\N
2231	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	1990	penny	\N
2232	melissa.keller23@gmail.com	2020-10-22	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	\N	1990	penny	\N
2233	melissa.keller23@gmail.com	2019-03-16	0.010	3600 E Lake St	Minneapolis 	MN	55406	Tim Hortons	\N	1991	penny	\N
2234	melissa.keller23@gmail.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	\N	1991	penny	\N
2235	melissa.keller23@gmail.com	2019-10-09	0.010	\N	Minneapolis 	MN	55455	17th Ave SE	\N	1991	penny	\N
2236	melissa.keller23@gmail.com	2020-08-20	0.010	\N	Minneapolis 	MN	\N	Washington Ave SE	\N	1991	penny	\N
2237	melissa.keller23@gmail.com	2020-11-19	0.010	18275 Kenrick Ave	Lakeville	MN	55044	Target	\N	1991	penny	\N
2238	melissa.keller23@gmail.com	2019-01-16	0.010	2330 Kalakaua Ave	Honolulu	HI	69815	International Marketplace	\N	1992	penny	\N
2239	melissa.keller23@gmail.com	2019-02-27	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1992	penny	\N
2240	melissa.keller23@gmail.com	2019-04-01	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1992	penny	\N
2241	melissa.keller23@gmail.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	\N	1992	penny	\N
2242	melissa.keller23@gmail.com	2020-10-24	0.010	3915 E Lake St	Minneapolis 	MN	55406	Ace Hardware	\N	1992	penny	\N
2243	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	1993	penny	\N
2244	melissa.keller23@gmail.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1994	penny	\N
2245	melissa.keller23@gmail.com	2021-07-22	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	\N	1994	penny	\N
2246	melissa.keller23@gmail.com	2018-12-01	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	\N	1995	penny	\N
2247	melissa.keller23@gmail.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1995	penny	\N
2248	melissa.keller23@gmail.com	2019-05-04	0.010	400 Snelling Ave N	Saint Paul	MN	55104	Allianz field	\N	1995	penny	\N
2249	melissa.keller23@gmail.com	2019-06-03	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	1995	penny	\N
2250	melissa.keller23@gmail.com	2019-06-21	0.010	4301 Windsor Rd	Windsor	WI	53598	Kwik trip	\N	1995	penny	\N
2251	melissa.keller23@gmail.com	2019-09-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	1995	penny	\N
2252	melissa.keller23@gmail.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	\N	1995	penny	\N
2253	melissa.keller23@gmail.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1996	penny	\N
2254	melissa.keller23@gmail.com	2019-06-17	0.010	925 Grand Ave	Saint Paul 	MN	55105	Speedway	\N	1996	penny	\N
2255	melissa.keller23@gmail.com	2019-07-09	0.010	14050 Burnhaven Dr	Burnsville	MN	55337	Costco	\N	1996	penny	\N
2256	melissa.keller23@gmail.com	2019-12-05	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1996	penny	\N
2257	melissa.keller23@gmail.com	2020-07-18	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	1996	penny	\N
2258	melissa.keller23@gmail.com	2020-09-19	0.010	1931 Minnehaha Ave	Minneapolis	MN	55405	Taco Bell	\N	1996	penny	\N
2259	melissa.keller23@gmail.com	2020-10-14	0.010	\N	Minneapolis 	MN	\N	5th Street SE	\N	1996	penny	\N
2260	melissa.keller23@gmail.com	2021-03-23	0.010	84 Church Street SE	Minneapolis 	MN	55455	northrop/nolte tunnel	\N	1996	penny	\N
2261	melissa.keller23@gmail.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1997	penny	\N
2262	melissa.keller23@gmail.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	\N	1997	penny	\N
2263	melissa.keller23@gmail.com	2019-10-22	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1997	penny	\N
2264	melissa.keller23@gmail.com	2020-02-04	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	1997	penny	\N
2265	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	1997	penny	\N
2266	melissa.keller23@gmail.com	2018-11-19	0.010	\N	Minneapolis 	MN	55414	17th Ave SE	\N	1998	penny	\N
2267	melissa.keller23@gmail.com	2019-02-24	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	\N	1998	penny	\N
2268	melissa.keller23@gmail.com	2019-05-08	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1998	penny	\N
2269	melissa.keller23@gmail.com	2019-06-08	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	\N	1998	penny	\N
2270	melissa.keller23@gmail.com	2019-07-15	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	1998	penny	\N
2271	melissa.keller23@gmail.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	\N	1998	penny	\N
2272	melissa.keller23@gmail.com	2018-11-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1999	penny	\N
2273	melissa.keller23@gmail.com	2018-12-23	0.010	467 Ski Hill Rd	Lutsen	MN	55612	Lutsen Mountains	\N	1999	penny	\N
2274	melissa.keller23@gmail.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1999	penny	\N
2275	melissa.keller23@gmail.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	1999	penny	\N
2276	melissa.keller23@gmail.com	2019-06-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1999	penny	\N
2277	melissa.keller23@gmail.com	2019-06-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	\N	1999	penny	\N
2278	melissa.keller23@gmail.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	\N	1999	penny	\N
2279	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	1999	penny	\N
2280	melissa.keller23@gmail.com	2018-09-04	0.010	\N	Minneapolis 	MN	55455	16th Ave SE	\N	2000	penny	\N
2281	melissa.keller23@gmail.com	2018-11-20	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	\N	2000	penny	\N
2282	melissa.keller23@gmail.com	2019-07-30	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop box office	\N	2000	penny	\N
2283	melissa.keller23@gmail.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2000	penny	\N
2284	melissa.keller23@gmail.com	2021-09-03	0.010	5001 S 34th Ave	Minneapolis 	MN	55417	Casa Maria	\N	2000	penny	\N
2285	melissa.keller23@gmail.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2001	penny	\N
2286	melissa.keller23@gmail.com	2019-01-28	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	\N	2001	penny	\N
2287	melissa.keller23@gmail.com	2019-02-13	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2001	penny	\N
2288	melissa.keller23@gmail.com	2019-04-04	0.010	200 Union St SE	Minneapolis 	MN	55455	Keller Hall	\N	2001	penny	\N
2289	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	\N	\N	Grand Ave	\N	2001	penny	\N
2290	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	MN	\N	Milton St	\N	2001	penny	\N
2291	melissa.keller23@gmail.com	2019-09-11	0.010	5801 W 16th St	Saint Louis Parl	MN	55416	Costco	\N	2001	penny	\N
2292	melissa.keller23@gmail.com	2019-09-26	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	\N	2001	penny	\N
2293	melissa.keller23@gmail.com	2019-10-06	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	2001	penny	\N
2294	melissa.keller23@gmail.com	2020-04-07	0.010	\N	Minneapolis 	MN	\N	Mississippi River	\N	2001	penny	\N
2295	melissa.keller23@gmail.com	2021-01-10	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	2001	penny	\N
2296	melissa.keller23@gmail.com	2018-12-10	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2002	penny	\N
2297	melissa.keller23@gmail.com	2019-05-28	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	\N	2002	penny	\N
2298	melissa.keller23@gmail.com	2021-08-16	0.010	2530 Kasota Ave	Saint Paul	MN	55108	Napa Auto Parts	\N	2002	penny	\N
2299	melissa.keller23@gmail.com	2021-10-26	0.010	36th Ave s and 29th st	Minneapolis	MN	55406	\N	\N	2003	penny	\N
2300	melissa.keller23@gmail.com	2018-08-07	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	\N	2004	penny	\N
2301	melissa.keller23@gmail.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	\N	2004	penny	\N
2302	melissa.keller23@gmail.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2004	penny	\N
2303	melissa.keller23@gmail.com	2020-02-10	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	2004	penny	\N
2304	melissa.keller23@gmail.com	2020-03-14	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	\N	2004	penny	\N
2305	melissa.keller23@gmail.com	2019-02-19	0.010	1345 Marshall Ave	Saint Paul	MN	55104	Holiday	\N	2005	penny	\N
2306	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	2005	penny	\N
2307	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	2005	penny	\N
2308	melissa.keller23@gmail.com	2019-08-30	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	\N	2005	penny	\N
2309	melissa.keller23@gmail.com	2019-10-23	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2005	penny	\N
2310	melissa.keller23@gmail.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	\N	2005	penny	\N
2311	melissa.keller23@gmail.com	2020-09-05	0.010	103 E Cedar St	Houston	MN	55943	Cenex	\N	2005	penny	\N
2312	melissa.keller23@gmail.com	2019-12-13	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	2006	penny	\N
2313	melissa.keller23@gmail.com	2020-01-21	0.010	1500 Broadway	New York	NY	10036	AudienceView	\N	2006	penny	\N
2314	melissa.keller23@gmail.com	2021-06-18	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	\N	2006	penny	\N
2315	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2007	penny	\N
2316	melissa.keller23@gmail.com	2019-04-06	0.010	408 Hennepin Ave	Minneapolis 	MN	55401	Gay 90s	\N	2007	penny	\N
2317	melissa.keller23@gmail.com	2019-04-11	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	2007	penny	\N
2318	melissa.keller23@gmail.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	2007	penny	\N
2319	melissa.keller23@gmail.com	2020-03-06	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2007	penny	\N
2320	melissa.keller23@gmail.com	2020-12-12	0.010	\N	Minneapolis 	MN	\N	\N	\N	2007	penny	\N
2321	melissa.keller23@gmail.com	2018-09-20	0.010	\N	Minneapolis 	MN	55414	14th Ave SE	\N	2008	penny	\N
2322	melissa.keller23@gmail.com	2019-05-28	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	2008	penny	\N
2323	melissa.keller23@gmail.com	2019-09-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	\N	2008	penny	\N
2324	melissa.keller23@gmail.com	2018-11-27	0.010	269 19th Ave S	Minneapolis 	MN	55455	Blegen hall	\N	2010	penny	\N
2325	melissa.keller23@gmail.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	\N	2010	penny	\N
2326	melissa.keller23@gmail.com	2021-05-26	0.010	20710 Keokuk Ave	Lakeville	MN	55044	Walmart	\N	2010	penny	\N
2327	melissa.keller23@gmail.com	2019-04-16	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	2011	penny	\N
2328	melissa.keller23@gmail.com	2019-12-05	0.010	400 21st Ave S	Minneapolis 	MN	55455	21st Ave Ramp	\N	2011	penny	\N
2329	melissa.keller23@gmail.com	2020-03-21	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	2011	penny	\N
2330	melissa.keller23@gmail.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	\N	2011	penny	\N
2331	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	2011	penny	\N
2332	melissa.keller23@gmail.com	2021-02-01	0.010	3815 E Lake St	Minneapolis 	MN	55406	Longfellow Market	\N	2011	penny	\N
2333	melissa.keller23@gmail.com	2018-11-30	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2012	penny	\N
2334	melissa.keller23@gmail.com	2019-01-18	0.010	300 Rodgers Blvd	Honolulu	HI	96819	Airport	\N	2012	penny	\N
2335	melissa.keller23@gmail.com	2019-06-03	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	2012	penny	\N
2336	melissa.keller23@gmail.com	2020-03-25	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	\N	2012	penny	\N
2337	melissa.keller23@gmail.com	2020-05-24	0.010	\N	Minneapolis 	\N	\N	rental car	\N	2012	penny	\N
2338	melissa.keller23@gmail.com	2020-11-15	0.010	2441 Fairview Ave N	Roseville	MN	55113	BP	\N	2012	penny	\N
2339	melissa.keller23@gmail.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	\N	2013	penny	\N
2340	melissa.keller23@gmail.com	2019-01-13	0.010	54 316 Kamehameha Hwy	Hauula	HI	96717	Long Drugs	\N	2013	penny	\N
2341	melissa.keller23@gmail.com	2019-02-06	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2013	penny	\N
2342	melissa.keller23@gmail.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	\N	2013	penny	\N
2343	melissa.keller23@gmail.com	2019-09-11	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	\N	2013	penny	\N
2344	melissa.keller23@gmail.com	2019-09-25	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2013	penny	\N
2345	melissa.keller23@gmail.com	2019-12-24	0.010	6516 Grand Ave	Duluth 	MN	55807	Kwik trip	\N	2013	penny	\N
2346	melissa.keller23@gmail.com	2020-07-24	0.010	2100 N Snelling Dr	Roseville	MN	55113	Staples	\N	2013	penny	\N
2347	melissa.keller23@gmail.com	2021-01-21	0.010	900 Burnsville Pkwy	Burnsville	MN	55337	Holiday	\N	2013	penny	\N
2348	melissa.keller23@gmail.com	2018-08-20	0.010	\N	Minneapolis 	\N	55455	Church St	\N	2014	penny	\N
2349	melissa.keller23@gmail.com	2018-10-03	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	2014	penny	\N
2350	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	2014	penny	\N
2351	melissa.keller23@gmail.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	\N	2014	penny	\N
2352	melissa.keller23@gmail.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik Trip	\N	2014	penny	\N
2353	melissa.keller23@gmail.com	2019-07-04	0.010	825 E Lake St	Minneapolis 	MN	55407	Chicago lake liquors	\N	2014	penny	\N
2354	melissa.keller23@gmail.com	2020-10-23	0.010	3223 E Lake St	Minneapolis 	MN	55406	Habanero Tacos Grill	\N	2014	penny	\N
2355	melissa.keller23@gmail.com	2019-01-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	2015	penny	\N
2356	melissa.keller23@gmail.com	2019-03-16	0.010	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	2015	penny	\N
2357	melissa.keller23@gmail.com	2019-04-29	0.010	1526 University Ave W	Saint Paul 	MN	55104	Sally's beauty supplies	\N	2015	penny	\N
2358	melissa.keller23@gmail.com	2019-05-28	0.010	324 14th Ave SE	Minneapolis 	MN	55414	Qdoba	\N	2015	penny	\N
2359	melissa.keller23@gmail.com	2019-06-09	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	\N	2015	penny	\N
2360	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	2015	penny	\N
2361	melissa.keller23@gmail.com	2021-06-15	0.010	601 SE Main St	Minneapolis 	MN	55414	Stone Arch Apartments	\N	2015	penny	\N
2362	melissa.keller23@gmail.com	2018-09-30	0.010	710 E Lake St 	Minneapolis 	MN	55407	O'Rielly Auto Parts	\N	2016	penny	\N
2363	melissa.keller23@gmail.com	2018-10-08	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	\N	2016	penny	\N
2364	melissa.keller23@gmail.com	2019-02-12	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	2016	penny	\N
2365	melissa.keller23@gmail.com	2019-03-02	0.010	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	\N	2016	penny	\N
2366	melissa.keller23@gmail.com	2019-04-03	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Wise Owl	\N	2016	penny	\N
2367	melissa.keller23@gmail.com	2019-05-17	0.010	\N	Minneapolis 	MN	\N	14th Ave SE	\N	2016	penny	\N
2368	melissa.keller23@gmail.com	2019-10-04	0.010	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	\N	2016	penny	\N
2369	melissa.keller23@gmail.com	2020-01-23	0.010	\N	Queens	NY	11371	LaGuardia Airport	\N	2016	penny	\N
2370	melissa.keller23@gmail.com	2021-05-30	0.010	650 50th Ave W	Alexandria	MN	56308	Holiday	\N	2016	penny	\N
2371	melissa.keller23@gmail.com	2018-08-15	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	\N	2017	penny	\N
2372	melissa.keller23@gmail.com	2018-11-20	0.010	\N	Minneapolis 	MN	\N	University Ave 	\N	2017	penny	\N
2373	melissa.keller23@gmail.com	2018-12-03	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	\N	2017	penny	\N
2374	melissa.keller23@gmail.com	2018-12-08	0.010	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	2017	penny	\N
2375	melissa.keller23@gmail.com	2018-12-26	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2017	penny	\N
2376	melissa.keller23@gmail.com	2018-12-29	0.010	199 W Kellogg Blvd	Saint Paul 	MN	55102	Xcel Energy Center	\N	2017	penny	\N
2377	melissa.keller23@gmail.com	2019-01-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2017	penny	\N
2378	melissa.keller23@gmail.com	2019-02-16	0.010	1410 University Ave W	Saint Paul	MN	55104	TJMaxx	\N	2017	penny	\N
2379	melissa.keller23@gmail.com	2019-02-22	0.010	3121 E Lake St	Minneapolis 	MN	55406	Walgreens	\N	2017	penny	\N
2380	melissa.keller23@gmail.com	2019-03-13	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2017	penny	\N
2381	melissa.keller23@gmail.com	2019-04-22	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	2017	penny	\N
2382	melissa.keller23@gmail.com	2019-05-13	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	2017	penny	\N
2383	melissa.keller23@gmail.com	2019-06-01	0.010	2000 Cliff Lake Rd	Eagan	MN	55122	Target	\N	2017	penny	\N
2384	melissa.keller23@gmail.com	2019-06-23	0.010	1712 E Mason St	Green Bay	WI	54302	Kwik trip	\N	2017	penny	\N
2385	melissa.keller23@gmail.com	2019-07-20	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	\N	2017	penny	\N
2386	melissa.keller23@gmail.com	2020-03-09	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	\N	2017	penny	\N
2387	melissa.keller23@gmail.com	2020-05-06	0.010	\N	Minneapolis 	MN	\N	29th and 36th St s	\N	2017	penny	\N
2388	melissa.keller23@gmail.com	2020-06-13	0.010	975 Grand Ave	Saint Paul	MN	55105	Jimmy johns	\N	2017	penny	\N
2389	melissa.keller23@gmail.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	\N	2017	penny	\N
2390	melissa.keller23@gmail.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	\N	2017	penny	\N
2391	melissa.keller23@gmail.com	2018-08-31	0.010	\N	Minneapolis 	\N	55455	Church St	\N	2018	penny	\N
2392	melissa.keller23@gmail.com	2018-12-04	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2018	penny	\N
2393	melissa.keller23@gmail.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	\N	2018	penny	\N
2394	melissa.keller23@gmail.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	\N	2018	penny	\N
2395	melissa.keller23@gmail.com	2019-01-15	0.010	53-660 Kamehameha Hwy	Hauula	HI	96717	53-660 Kamehameha Hwy	\N	2018	penny	\N
2396	melissa.keller23@gmail.com	2019-02-09	0.010	3800 42nd Ave S	Minneapolis 	MN	55406	Riverview Theatre	\N	2018	penny	\N
2397	melissa.keller23@gmail.com	2019-02-14	0.010	216 Arundel Street	Saint Paul	MN	55102	Arundel St	\N	2018	penny	\N
2398	melissa.keller23@gmail.com	2019-04-01	0.010	1298 Promenade Pl	Eagan	MN	55121	Qdoba	\N	2018	penny	\N
2399	melissa.keller23@gmail.com	2019-04-15	0.010	417 14th Ave SE	Minneapolis 	MN	55414	Kafe421	\N	2018	penny	\N
2400	melissa.keller23@gmail.com	2019-06-12	0.010	2000 Hwy 13 E	Burnsville	MN	55337	Dollar Tree parking lot	\N	2018	penny	\N
2401	melissa.keller23@gmail.com	2019-11-08	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2018	penny	\N
2402	melissa.keller23@gmail.com	2020-01-21	0.010	\N	Manhattan	NY	10036	Times Square	\N	2018	penny	\N
2403	melissa.keller23@gmail.com	2021-09-25	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	\N	2018	penny	\N
2404	melissa.keller23@gmail.com	2019-06-11	0.010	117 Pleasant St SE	Minneapolis 	MN	55455	Walter Library	\N	2019	penny	\N
2405	melissa.keller23@gmail.com	2019-06-27	0.010	7350 153rd St W	Apple Valley	MN	55124	Dollar Tree	\N	2019	penny	\N
2406	melissa.keller23@gmail.com	2019-07-21	0.010	\N	Saint Paul	\N	\N	Marshall and Fairview	\N	2019	penny	\N
2407	melissa.keller23@gmail.com	2019-09-04	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	\N	2019	penny	\N
2408	melissa.keller23@gmail.com	2019-09-08	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2019	penny	\N
2409	melissa.keller23@gmail.com	2019-09-12	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	\N	2019	penny	\N
2410	melissa.keller23@gmail.com	2019-09-19	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	2019	penny	\N
2411	melissa.keller23@gmail.com	2019-09-29	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2019	penny	\N
2412	melissa.keller23@gmail.com	2019-12-16	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2019	penny	\N
2413	melissa.keller23@gmail.com	2020-02-01	0.010	6 West 6th Street	Saint Paul	MN	55102	Amsterdam bar and grill	\N	2019	penny	\N
2414	melissa.keller23@gmail.com	2021-03-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S	\N	2019	penny	\N
2415	melissa.keller23@gmail.com	2021-06-24	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	\N	2019	penny	\N
2416	melissa.keller23@gmail.com	2021-09-12	0.010	2823 E Franklin Ave	Minneapolis 	MN	55406	Seward co-op	\N	2019	penny	\N
2417	melissa.keller23@gmail.com	2020-07-11	0.010	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	\N	2020	penny	\N
2418	melissa.keller23@gmail.com	2020-08-08	0.010	4320 E Lake St	Minneapolis 	MN	55406	Speedway	\N	2020	penny	\N
2419	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	2020	penny	\N
2420	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	2020	penny	\N
2421	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	2020	penny	\N
2422	melissa.keller23@gmail.com	2020-10-03	0.010	105 N Star Rd	Alden	MN	56009	Cenex	\N	2020	penny	\N
2423	melissa.keller23@gmail.com	2020-10-09	0.010	\N	Minneapolis 	\N	\N	Central Ave NE	\N	2020	penny	\N
2424	melissa.keller23@gmail.com	2021-03-10	0.010	80 Church St SE	Minneapolis 	MN	55455	Church Street Parking Garage	\N	2020	penny	\N
2425	melissa.keller23@gmail.com	2021-05-03	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave S alley	\N	2020	penny	\N
2426	melissa.keller23@gmail.com	2021-03-27	0.010	113 E 2nd St E	Hastings	MN	55033	Muse2320	\N	2021	penny	\N
2427	melissa.keller23@gmail.com	2021-06-30	0.010	498 Selby Ave	Saint Paul	MN	55102	The Gnome	\N	2021	penny	\N
2428	melissa.keller23@gmail.com	2021-07-08	0.010	4601 Hiawatha Ave	Minneapolis 	MN	55406	Holiday	\N	2021	penny	\N
2429	melissa.keller23@gmail.com	2021-07-20	0.010	2618 E Franklin Ave	Minneapolis 	MN	55406	Zipps	\N	2021	penny	\N
2430	melissa.keller23@gmail.com	2021-07-27	0.010	326 14th Ave SE	Minneapolis 	MN	55414	Pot Bellys	\N	2021	penny	\N
2431	melissa.keller23@gmail.com	2021-08-28	0.010	6445 Richfield Pkwy	Richfield	MN	55423	Target	\N	2021	penny	\N
2432	melissa.keller23@gmail.com	2021-09-01	0.010	\N	Minneapolis 	\N	\N	Lake Street	\N	2021	penny	\N
2433	melissa.keller23@gmail.com	2021-10-19	0.010	3916 E Lake St	Minneapolis	NN	55406	East Lake Liquors	\N	2021	penny	\N
2434	melissa.keller23@gmail.com	2019-04-11	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	\N	penny	\N
2435	melissa.keller23@gmail.com	2018-08-04	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	\N	\N	penny	\N
2436	melissa.keller23@gmail.com	2018-09-08	0.010	649 Grand Ave	Saint Paul	MN	55105	653 Alley	\N	\N	penny	\N
2437	melissa.keller23@gmail.com	2018-09-18	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	\N	penny	\N
2438	melissa.keller23@gmail.com	2018-05-19	0.010	\N	Duluth 	MN	55802	\N	\N	\N	penny	\N
2439	melissa.keller23@gmail.com	2018-05-26	0.010	652 Grand Ave	Saint Paul	MN	55105	652 Alley	\N	\N	penny	\N
2440	melissa.keller23@gmail.com	2018-05-27	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	\N	\N	penny	\N
2441	melissa.keller23@gmail.com	2018-05-29	0.010	\N	Minneapolis 	MN	\N	U Campus	\N	\N	penny	\N
2442	melissa.keller23@gmail.com	2018-06-03	0.010	\N	Saint Paul	\N	\N	Grand Ole Day	\N	\N	penny	\N
2443	melissa.keller23@gmail.com	2018-06-03	0.010	\N	Saint Paul	\N	\N	Grand Ole Day	\N	\N	penny	\N
2444	melissa.keller23@gmail.com	2018-06-03	0.010	\N	Saint Paul	\N	\N	Grand Ole Day	\N	\N	penny	\N
2445	melissa.keller23@gmail.com	2018-06-07	0.010	734 Grand Ave	Saint Paul	MN	55105	Walgreens	\N	\N	penny	\N
2446	melissa.keller23@gmail.com	2018-06-08	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	\N	penny	\N
2447	melissa.keller23@gmail.com	2018-06-10	0.010	7835 150th St W	Apple Valley	MN	55124	Walmart	\N	\N	penny	\N
2448	melissa.keller23@gmail.com	2018-06-15	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	\N	penny	\N
2449	melissa.keller23@gmail.com	2018-06-15	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Alley	\N	\N	penny	\N
2450	melissa.keller23@gmail.com	2018-06-15	0.010	84 Church Street SE	Minneapolis	MN	55455	Surdyks at Northrop	\N	\N	penny	\N
2451	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	\N	penny	\N
2452	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	\N	penny	\N
2453	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	\N	penny	\N
2454	melissa.keller23@gmail.com	2018-06-19	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	\N	penny	\N
2455	melissa.keller23@gmail.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	\N	penny	\N
2456	melissa.keller23@gmail.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	\N	penny	\N
2457	melissa.keller23@gmail.com	2018-06-23	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	\N	penny	\N
2458	melissa.keller23@gmail.com	2018-07-02	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	\N	penny	\N
2459	melissa.keller23@gmail.com	2018-07-06	0.010	\N	Minneapolis 	MN	55455	Washington Ave SE	\N	\N	penny	\N
2460	melissa.keller23@gmail.com	2018-07-13	0.010	\N	Saint Paul	MN	55105	Grand Ave	\N	\N	penny	\N
2461	melissa.keller23@gmail.com	2018-07-14	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	\N	penny	\N
2462	melissa.keller23@gmail.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	\N	penny	\N
2463	melissa.keller23@gmail.com	2018-07-15	0.010	925 Grand Ave	Saint Paul 	MN	55105	SA	\N	\N	penny	\N
2464	melissa.keller23@gmail.com	2018-07-15	0.010	8089 Brooklyn Blvd	Brooklyn Park	MN	55445	Panda Garden Buffet	\N	\N	penny	\N
2465	melissa.keller23@gmail.com	2018-07-16	0.010	651 Grand Ave	Saint Paul	MN	55105	651 Alley	\N	\N	penny	\N
2466	melissa.keller23@gmail.com	2018-07-27	0.010	1 Twins Way	Minneapolis 	MN	55403	Target Field	\N	\N	penny	\N
2467	melissa.keller23@gmail.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	\N	penny	\N
2468	melissa.keller23@gmail.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	\N	penny	\N
2469	melissa.keller23@gmail.com	2018-07-28	0.010	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	\N	penny	\N
2470	melissa.keller23@gmail.com	2018-07-29	0.010	9242 Hudson Blvd N	Lake Elmo	MN	55042	Bride to Be Consignment	\N	\N	penny	\N
2471	melissa.keller23@gmail.com	2018-08-01	0.010	857 Grand Ave	Saint Paul	MN	55105	Billys	\N	\N	penny	\N
2472	melissa.keller23@gmail.com	2018-09-02	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	\N	penny	\N
2473	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	\N	penny	\N
2474	melissa.keller23@gmail.com	2018-09-23	0.010	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	\N	penny	\N
2475	melissa.keller23@gmail.com	2018-10-13	0.010	\N	Saint Paul	\N	55105	Grand Ave	\N	\N	penny	\N
2476	melissa.keller23@gmail.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	\N	\N	penny	\N
2477	melissa.keller23@gmail.com	2018-10-20	0.010	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	\N	\N	penny	\N
2478	melissa.keller23@gmail.com	2018-10-22	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	\N	\N	penny	\N
2479	melissa.keller23@gmail.com	2018-10-23	0.010	309 19th Ave S	Minneapolis 	MN	55455	Wilson library	\N	\N	penny	\N
2480	melissa.keller23@gmail.com	2018-10-29	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	\N	\N	penny	\N
2481	melissa.keller23@gmail.com	2018-11-13	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny	\N
2482	melissa.keller23@gmail.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	\N	\N	penny	\N
2483	melissa.keller23@gmail.com	2018-11-16	0.010	1221 S Washington Ave	Minneapolis 	MN	55415	Bobby & Steves	\N	\N	penny	\N
2484	melissa.keller23@gmail.com	2018-11-16	0.010	84 Church Street SE	Minneapolis 	MN	55455	Northrop	\N	\N	penny	\N
2485	melissa.keller23@gmail.com	2018-11-16	0.010	117 Pleasant St SE 	Minneapolis 	MN	55455	Wise Owl	\N	\N	penny	\N
2486	melissa.keller23@gmail.com	2018-12-10	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	\N	penny	\N
2487	melissa.keller23@gmail.com	2018-12-17	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny	\N
2488	melissa.keller23@gmail.com	2019-01-02	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub foods	t	\N	penny	\N
2489	melissa.keller23@gmail.com	2019-01-02	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny	\N
2490	melissa.keller23@gmail.com	2019-01-07	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	penny	\N
2491	melissa.keller23@gmail.com	2019-01-08	0.010	1440 University Ave W	Saint Paul	MN	55104	Cub Foods	t	\N	penny	\N
2492	melissa.keller23@gmail.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	penny	\N
2493	melissa.keller23@gmail.com	2019-01-29	0.010	4601 Snelling Ave	Minneapolis	MN	55406	Cub Foods	t	\N	penny	\N
2494	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	\N	penny	\N
2495	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	\N	penny	\N
2496	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	\N	penny	\N
2497	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	\N	penny	\N
2498	melissa.keller23@gmail.com	2019-02-17	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	\N	penny	\N
2499	melissa.keller23@gmail.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny	\N
2500	melissa.keller23@gmail.com	2019-02-18	0.010	1300 University Ave W	Saint Paul	MN	55104	Target	t	\N	penny	\N
2501	melissa.keller23@gmail.com	2019-03-15	0.010	\N	Minneapolis 	MN	\N	17th Ave SE	\N	\N	penny	\N
2502	melissa.keller23@gmail.com	2019-04-18	0.010	919 37th St NW	Rochester	MN	55901	Holiday	\N	\N	penny	\N
2503	melissa.keller23@gmail.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	\N	\N	penny	\N
2504	melissa.keller23@gmail.com	2019-05-05	0.010	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave s	\N	\N	penny	\N
2505	melissa.keller23@gmail.com	2019-05-23	0.010	3425 E Lake St 	Minneapolis	MN	55406	Subway	t	\N	penny	\N
2506	melissa.keller23@gmail.com	2019-05-24	0.010	100 Jefferson Dr 	Zumbrota	MN	55992	Kwik Trip	t	\N	penny	\N
2507	melissa.keller23@gmail.com	2019-06-01	0.010	1250 Town Centre Dr	Eagan	MN	55123	Koyoto	\N	\N	penny	\N
2508	melissa.keller23@gmail.com	2019-06-02	0.010	\N	Saint Paul	\N	\N	Grand Ave	\N	\N	penny	\N
2509	melissa.keller23@gmail.com	2019-06-08	0.010	3333 E Lake St	Minneapolis 	MN	55406	Napa Auto Parts	\N	\N	penny	\N
2510	melissa.keller23@gmail.com	2019-07-21	0.010	\N	Minneapolis	\N	\N	Lake and River Road	t	\N	penny	\N
2511	melissa.keller23@gmail.com	2019-07-21	0.010	\N	saint Paul	\N	\N	Marshall and snelling	t	\N	penny	\N
2512	melissa.keller23@gmail.com	2019-08-11	0.010	\N	saint paul	\N	\N	Marshall and snelling	t	\N	penny	\N
2513	melissa.keller23@gmail.com	2019-10-19	0.010	301 19th Ave S	Minneapolis	MN	55455	Humphrey School	t	\N	penny	\N
2514	melissa.keller23@gmail.com	2019-11-24	0.010	2929 36th Ave S	Minneapolis 	MN	55406	36th Ave s	\N	\N	penny	\N
2515	melissa.keller23@gmail.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	penny	\N
2516	melissa.keller23@gmail.com	2020-01-14	0.010	2136 E Lake St	Minneapolis 	MN	55407	Dollar General	t	\N	penny	\N
2517	melissa.keller23@gmail.com	2020-03-03	0.010	1625 4th St SE	Minneapolis 	MN	55455	4th Street ramp	t	\N	penny	\N
2518	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny	\N
2519	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny	\N
2520	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny	\N
2521	melissa.keller23@gmail.com	2020-04-18	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny	\N
2522	melissa.keller23@gmail.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	penny	\N
2523	melissa.keller23@gmail.com	2020-06-07	0.010	2730 E 31st St	Minneapolis	MN	55406	Holy Trinity Lutheran church	t	\N	penny	\N
2524	melissa.keller23@gmail.com	2020-07-11	0.010	4135 Hiawatha Ave	Minneapolis 	MN	55406	Elevated Beer Wine & Spirits	t	\N	penny	\N
2525	melissa.keller23@gmail.com	2020-08-02	0.010	2100 E Snelling Dr	Roseville	MN	55113	Marshalls	t	\N	penny	\N
2526	melissa.keller23@gmail.com	2020-12-28	0.010	1830 E 66th St 	Richfield	MN	55423	Chipotle	t	\N	penny	\N
2527	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny	\N
2528	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny	\N
2529	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny	\N
2530	melissa.keller23@gmail.com	2021-02-12	0.010	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	penny	\N
2531	melissa.keller23@gmail.com	2021-03-02	0.010	2513 Central Ave NE	Minneapolis 	MN	55418	HolyLand	t	\N	penny	\N
2532	melissa.keller23@gmail.com	2021-04-12	0.010	16396 Wagner Way	Eden Prairie	MN	55344	Tavern 4&5	t	\N	penny	\N
2533	melissa.keller23@gmail.com	2021-05-04	0.010	3425 E Lake St	Minneapolis 	MN	55406	Subway	\N	\N	penny	\N
2534	melissa.keller23@gmail.com	2021-05-13	0.010	2500 E Lake St	Minneapolis 	MN	55406	Target	\N	\N	penny	\N
2535	melissa.keller23@gmail.com	2021-06-05	0.010	5050 Independence St	Maple Plain	MN	55359	Veterans Park	\N	\N	penny	\N
2536	melissa.keller23@gmail.com	2021-06-16	0.010	\N	Saint Paul	\N	\N	Frank Ave	\N	\N	penny	\N
2537	melissa.keller23@gmail.com	2021-08-12	0.010	734 Grand Ave	Saint Paul 	MN	55105	Walgreens	t	\N	penny	\N
2538	melissa.keller23@gmail.com	2021-08-27	0.010	858 Payne Ave	Saint Paul	MN	55130	East Side Bar	t	\N	penny	\N
2539	melissa.keller23@gmail.com	2021-10-28	0.010	\N	Minneapolis	MN	55406	Target	t	\N	penny	\N
2540	melissa.keller23@gmail.com	2021-09-25	0.020	2277 Ford Pkwy	Saint Paul	MN	55116	PetCo	\N	1964	penny	\N
2541	melissa.keller23@gmail.com	2018-08-19	0.030	1 Valley Fair Dr	Shakopee	MN	55379	Valleyfair	\N	1997	penny	\N
2542	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1968	penny	\N
2543	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1975	penny	\N
2544	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1980	penny	\N
2545	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1980	penny	\N
2546	melissa.keller23@gmail.com	2021-08-31	0.100	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1980	penny	\N
2547	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2004	penny	\N
2548	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2005	penny	\N
2549	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2009	penny	\N
2550	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2014	penny	\N
2551	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2018	penny	\N
2552	melissa.keller23@gmail.com	2019-08-14	0.100	\N	Minneapolis 	MN	\N	17th Ave SE	\N	2019	penny	\N
2553	melissa.keller23@gmail.com	2019-08-22	0.010	\N	\N	\N	\N	\N	\N	1982	penny	\N
2554	melissa.keller23@gmail.com	2020-01-22	0.250	\N	New York	NY	\N	Manhattan	\N	1972	quarter	\N
2555	melissa.keller23@gmail.com	2019-08-10	0.250	101 2nd St E,	Hastings	MN	55033	Lock and Dam Eatery	\N	1974	quarter	\N
2556	melissa.keller23@gmail.com	2020-05-17	0.250	\N	Minneapolis 	MN	\N	29th and 32nd St	\N	1974	quarter	\N
2557	melissa.keller23@gmail.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	\N	1980	quarter	\N
2558	melissa.keller23@gmail.com	2019-03-15	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1980	quarter	\N
2559	melissa.keller23@gmail.com	2019-08-28	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	\N	1980	quarter	\N
2560	melissa.keller23@gmail.com	2021-06-18	0.250	2100 E Snelling Dr	Roseville	MN	55113	Marshall's	\N	1981	quarter	\N
2561	melissa.keller23@gmail.com	2019-11-08	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1986	quarter	\N
2562	melissa.keller23@gmail.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	\N	1988	quarter	\N
2563	melissa.keller23@gmail.com	2019-02-05	0.250	216 Arundel Street	Saint Paul	MN	55102	Arundel St	\N	1991	quarter	\N
2564	melissa.keller23@gmail.com	2018-12-08	0.250	500 South 6th St	Minneapolis 	MN	55415	The Armory	\N	1995	quarter	\N
2565	melissa.keller23@gmail.com	2019-08-30	0.250	1265 Snelling Ave N	Saint Paul	MN	55108	Minnesota State Fair	\N	1995	quarter	\N
2566	melissa.keller23@gmail.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	\N	1995	quarter	\N
2567	melissa.keller23@gmail.com	2018-08-25	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	1996	quarter	\N
2568	melissa.keller23@gmail.com	2019-09-29	0.250	16854 Javelin	Lakeville	MN	55044	16854 Javelin	\N	1996	quarter	\N
2569	melissa.keller23@gmail.com	2019-02-17	0.250	1625 4th St SE	Minneapolis 	MN	55455	4th Street Parking Ramp	\N	1998	quarter	\N
2570	melissa.keller23@gmail.com	2019-03-22	0.250	2929 36th Ave S	Minneapolis 	MN	55406	2929 36th Ave Alley	\N	1998	quarter	\N
2571	melissa.keller23@gmail.com	2019-02-16	0.250	7625 Cahill Rd	Edina	MN	55439	Sky Zone	\N	1999	quarter	\N
2572	melissa.keller23@gmail.com	2019-04-29	0.250	\N	Minneapolis 	MN	\N	17th Ave SE	\N	1999	quarter	\N
2573	melissa.keller23@gmail.com	2019-06-13	0.250	16825 County Rd 24	Plymouth	MN	55447	Holiday	\N	1999	quarter	\N
2574	melissa.keller23@gmail.com	2019-02-25	0.250	\N	Minneapolis 	MN	\N	University Ave	\N	2000	quarter	\N
2575	melissa.keller23@gmail.com	2019-03-02	0.250	711 Hennepin Ave	Minneapolis 	MN	55403	Skyway	\N	2001	quarter	\N
2576	melissa.keller23@gmail.com	2019-06-02	0.250	\N	Saint Paul	\N	\N	Grand Ave	\N	2004	quarter	\N
2577	melissa.keller23@gmail.com	2019-07-30	0.250	2850 26th Ave S	Minneapolis 	MN	55406	Cub Foods	\N	2007	quarter	\N
2578	melissa.keller23@gmail.com	2018-07-22	0.250	\N	\N	\N	\N	\N	\N	2008	quarter	\N
2579	melissa.keller23@gmail.com	2019-10-26	0.250	3012 Lyndale Ave S	Minneapolis 	MN	55408	Updown	\N	2008	quarter	\N
2580	melissa.keller23@gmail.com	2020-03-14	0.250	4601 Snelling Ave	Minneapolis 	MN	55406	Cub Foods	\N	2008	quarter	\N
2581	melissa.keller23@gmail.com	2021-07-10	0.250	4320 E Lake St	Minneapolis 	MN	55406	Speedway	\N	2009	quarter	\N
2582	melissa.keller23@gmail.com	2019-03-16	0.250	211 7th St W	Saint Paul	MN	55102	Cosettas	\N	2013	quarter	\N
2583	melissa.keller23@gmail.com	2019-09-29	0.250	3525 145th St W	Shakopee	MN	55379	Renaissance Festival	\N	2014	quarter	\N
2584	melissa.keller23@gmail.com	2019-01-11	0.250	\N	Bloomington	MN	\N	Minneapolis−Saint Paul International Airport	\N	2015	quarter	\N
2585	melissa.keller23@gmail.com	2019-01-20	0.250	991 Lexington Pkwy N	Saint Paul	MN	55103	Gabes By The Park	\N	2015	quarter	\N
2586	melissa.keller23@gmail.com	2019-08-16	0.250	350 Harbor Dr	Duluth 	MN	55802	Bayfront Festival Parl	\N	2015	quarter	\N
2587	melissa.keller23@gmail.com	2019-01-24	0.250	\N	Minneapolis	MN	\N	14th Ave SE	\N	2018	quarter	\N
2588	melissa.keller23@gmail.com	2018-05-26	0.250	649 Grand Ave	Saint Paul	MN	55105	649 Grand Ave	\N	\N	quarter	\N
2589	melissa.keller23@gmail.com	2018-07-30	0.250	\N	\N	\N	\N	Found by Louisa 	\N	\N	quarter	\N
2590	melissa.keller23@gmail.com	2020-06-06	0.250	\N	Saint paul	\N	55102	Marshall Ave and Dale Ave	t	\N	quarter	\N
2591	melissa.keller23@gmail.com	2021-02-12	0.250	3223 E Lake St	Minneapolis	MN	55406	Habanero Tacos Grill	t	\N	quarter	\N
2592	melissa.keller23@gmail.com	2017-04-01	7.020	\N	\N	MN	\N	\N	\N	\N	lump_sum	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mak
--

COPY public.users (email, fname, lname, password) FROM stdin;
melissa.keller23@gmail.com	Melissa	Keller	testing
\.


--
-- Name: monies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mak
--

SELECT pg_catalog.setval('public.monies_id_seq', 2592, true);


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

