--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Ubuntu 15.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.2 (Ubuntu 15.2-1.pgdg20.04+1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: jakfamily
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO jakfamily;

--
-- Name: cities; Type: TABLE; Schema: public; Owner: jakfamily
--

CREATE TABLE public.cities (
    id bigint NOT NULL,
    name character varying,
    zip_code character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.cities OWNER TO jakfamily;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: jakfamily
--

CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO jakfamily;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jakfamily
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: jakfamily
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    content text,
    user_id bigint NOT NULL,
    gossip_id bigint NOT NULL,
    commentable_type character varying NOT NULL,
    commentable_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO jakfamily;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: jakfamily
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO jakfamily;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jakfamily
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: gossip_tags; Type: TABLE; Schema: public; Owner: jakfamily
--

CREATE TABLE public.gossip_tags (
    id bigint NOT NULL,
    gossip_id bigint NOT NULL,
    tag_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.gossip_tags OWNER TO jakfamily;

--
-- Name: gossip_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: jakfamily
--

CREATE SEQUENCE public.gossip_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gossip_tags_id_seq OWNER TO jakfamily;

--
-- Name: gossip_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jakfamily
--

ALTER SEQUENCE public.gossip_tags_id_seq OWNED BY public.gossip_tags.id;


--
-- Name: gossips; Type: TABLE; Schema: public; Owner: jakfamily
--

CREATE TABLE public.gossips (
    id bigint NOT NULL,
    title character varying,
    content text,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.gossips OWNER TO jakfamily;

--
-- Name: gossips_id_seq; Type: SEQUENCE; Schema: public; Owner: jakfamily
--

CREATE SEQUENCE public.gossips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gossips_id_seq OWNER TO jakfamily;

--
-- Name: gossips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jakfamily
--

ALTER SEQUENCE public.gossips_id_seq OWNED BY public.gossips.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: jakfamily
--

CREATE TABLE public.likes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    likeable_type character varying NOT NULL,
    likeable_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.likes OWNER TO jakfamily;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: jakfamily
--

CREATE SEQUENCE public.likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_id_seq OWNER TO jakfamily;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jakfamily
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: private_messages; Type: TABLE; Schema: public; Owner: jakfamily
--

CREATE TABLE public.private_messages (
    id bigint NOT NULL,
    content text,
    sender_id bigint,
    recipient_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.private_messages OWNER TO jakfamily;

--
-- Name: private_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: jakfamily
--

CREATE SEQUENCE public.private_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.private_messages_id_seq OWNER TO jakfamily;

--
-- Name: private_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jakfamily
--

ALTER SEQUENCE public.private_messages_id_seq OWNED BY public.private_messages.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: jakfamily
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO jakfamily;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: jakfamily
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    title character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO jakfamily;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: jakfamily
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO jakfamily;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jakfamily
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: jakfamily
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    description text,
    email character varying,
    age integer,
    city_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO jakfamily;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: jakfamily
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO jakfamily;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jakfamily
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: gossip_tags id; Type: DEFAULT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.gossip_tags ALTER COLUMN id SET DEFAULT nextval('public.gossip_tags_id_seq'::regclass);


--
-- Name: gossips id; Type: DEFAULT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.gossips ALTER COLUMN id SET DEFAULT nextval('public.gossips_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: private_messages id; Type: DEFAULT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.private_messages ALTER COLUMN id SET DEFAULT nextval('public.private_messages_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: jakfamily
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-05-06 12:29:05.90114	2023-05-06 12:29:05.90114
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: jakfamily
--

COPY public.cities (id, name, zip_code, created_at, updated_at) FROM stdin;
1	Vergiefurt	87552	2023-05-06 12:33:53.3236	2023-05-06 12:33:53.3236
2	Torriborough	98804	2023-05-06 12:33:53.353484	2023-05-06 12:33:53.353484
3	Kulasfort	96135	2023-05-06 12:33:53.388303	2023-05-06 12:33:53.388303
4	South Levi	49069	2023-05-06 12:33:53.405362	2023-05-06 12:33:53.405362
5	Deannabury	04904	2023-05-06 12:33:53.420523	2023-05-06 12:33:53.420523
6	Douglasbury	45509	2023-05-06 12:33:53.429653	2023-05-06 12:33:53.429653
7	Cyndyland	66661	2023-05-06 12:39:38.949697	2023-05-06 12:39:38.949697
8	Lake Mauroport	70926	2023-05-06 12:39:38.959365	2023-05-06 12:39:38.959365
9	Dickinsonfurt	18838	2023-05-06 12:39:38.965885	2023-05-06 12:39:38.965885
10	East Bruceport	43910	2023-05-06 12:39:38.976062	2023-05-06 12:39:38.976062
11	Franchescamouth	53639	2023-05-06 12:41:00.912472	2023-05-06 12:41:00.912472
12	East Simon	55565	2023-05-06 12:41:00.920719	2023-05-06 12:41:00.920719
13	Lavonneborough	59987	2023-05-06 12:41:00.929442	2023-05-06 12:41:00.929442
14	West Williammouth	26885	2023-05-06 12:41:00.937104	2023-05-06 12:41:00.937104
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: jakfamily
--

COPY public.comments (id, content, user_id, gossip_id, commentable_type, commentable_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: gossip_tags; Type: TABLE DATA; Schema: public; Owner: jakfamily
--

COPY public.gossip_tags (id, gossip_id, tag_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: gossips; Type: TABLE DATA; Schema: public; Owner: jakfamily
--

COPY public.gossips (id, title, content, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: jakfamily
--

COPY public.likes (id, user_id, likeable_type, likeable_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: private_messages; Type: TABLE DATA; Schema: public; Owner: jakfamily
--

COPY public.private_messages (id, content, sender_id, recipient_id, created_at, updated_at) FROM stdin;
1	Omnis sit quibusdam. Voluptatum aliquam voluptas.	30	17	2023-05-06 12:41:01.630975	2023-05-06 12:41:01.630975
2	Consequatur beatae error. Quia sed officia.	18	15	2023-05-06 12:41:01.648904	2023-05-06 12:41:01.648904
3	Perferendis sequi qui. Fugit molestiae quia.	21	12	2023-05-06 12:41:01.664188	2023-05-06 12:41:01.664188
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: jakfamily
--

COPY public.schema_migrations (version) FROM stdin;
20230506120001
20230506120021
20230506120031
20230506120055
20230506120105
20230506120133
20230506120218
20230506120242
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: jakfamily
--

COPY public.tags (id, title, created_at, updated_at) FROM stdin;
1	sed	2023-05-06 12:33:53.796343	2023-05-06 12:33:53.796343
2	ut	2023-05-06 12:33:53.806688	2023-05-06 12:33:53.806688
3	reiciendis	2023-05-06 12:33:53.81907	2023-05-06 12:33:53.81907
4	quos	2023-05-06 12:33:53.826794	2023-05-06 12:33:53.826794
5	suscipit	2023-05-06 12:33:53.833692	2023-05-06 12:33:53.833692
6	amet	2023-05-06 12:33:53.842193	2023-05-06 12:33:53.842193
7	impedit	2023-05-06 12:33:53.849743	2023-05-06 12:33:53.849743
8	voluptatem	2023-05-06 12:33:53.855823	2023-05-06 12:33:53.855823
9	maxime	2023-05-06 12:33:53.872843	2023-05-06 12:33:53.872843
10	et	2023-05-06 12:39:39.295286	2023-05-06 12:39:39.295286
11	similique	2023-05-06 12:39:39.304173	2023-05-06 12:39:39.304173
12	assumenda	2023-05-06 12:39:39.31188	2023-05-06 12:39:39.31188
13	tenetur	2023-05-06 12:39:39.32182	2023-05-06 12:39:39.32182
14	quia	2023-05-06 12:39:39.331383	2023-05-06 12:39:39.331383
15	totam	2023-05-06 12:39:39.340703	2023-05-06 12:39:39.340703
16	dolorem	2023-05-06 12:39:39.352564	2023-05-06 12:39:39.352564
17	nostrum	2023-05-06 12:39:39.36188	2023-05-06 12:39:39.36188
18	voluptas	2023-05-06 12:39:39.370564	2023-05-06 12:39:39.370564
19	eligendi	2023-05-06 12:39:39.379961	2023-05-06 12:39:39.379961
20	incidunt	2023-05-06 12:41:01.276698	2023-05-06 12:41:01.276698
21	expedita	2023-05-06 12:41:01.290406	2023-05-06 12:41:01.290406
22	earum	2023-05-06 12:41:01.311148	2023-05-06 12:41:01.311148
23	neque	2023-05-06 12:41:01.320292	2023-05-06 12:41:01.320292
24	architecto	2023-05-06 12:41:01.330124	2023-05-06 12:41:01.330124
25	ullam	2023-05-06 12:41:01.348027	2023-05-06 12:41:01.348027
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: jakfamily
--

COPY public.users (id, first_name, last_name, description, email, age, city_id, created_at, updated_at) FROM stdin;
1	Staci	Champlin	Magni hic quia. Possimus harum recusandae.	billie@russel-king.example	62	3	2023-05-06 12:33:53.56118	2023-05-06 12:33:53.56118
2	Todd	Hilpert	Officiis fugit cumque. Eligendi itaque nam.	genia.schowalter@lueilwitz-kuhn.test	68	6	2023-05-06 12:33:53.61231	2023-05-06 12:33:53.61231
3	Clement	Maggio	Repellat nihil sapiente. Necessitatibus voluptatem est.	roxane@kulas.example	46	4	2023-05-06 12:33:53.633591	2023-05-06 12:33:53.633591
4	Ayana	Mueller	Nihil et vitae. Possimus soluta maiores.	corey@ledner.test	50	4	2023-05-06 12:33:53.649746	2023-05-06 12:33:53.649746
5	Louise	Reynolds	Vero et harum. Sequi omnis ipsum.	terresa@johns-okon.test	67	1	2023-05-06 12:33:53.671316	2023-05-06 12:33:53.671316
6	Darlene	Bahringer	Magnam quia est. Quidem tempore fuga.	gerardo_crooks@mills-shields.example	22	5	2023-05-06 12:33:53.689173	2023-05-06 12:33:53.689173
7	Jenice	Cole	Et occaecati animi. Eos dolorum cumque.	lloyd.quigley@aufderhar.test	68	6	2023-05-06 12:33:53.705986	2023-05-06 12:33:53.705986
8	Woodrow	Hagenes	Ducimus adipisci voluptatem. Vel odio molestiae.	gale_ledner@anderson.test	46	5	2023-05-06 12:33:53.723311	2023-05-06 12:33:53.723311
9	Moises	Emard	Quas quos accusamus. Illum provident quaerat.	vanessa@kuhlman.test	70	6	2023-05-06 12:33:53.738694	2023-05-06 12:33:53.738694
10	Marlys	Weissnat	Rem provident nobis. Voluptates delectus dolor.	lisa_lemke@bernhard-vandervort.test	37	1	2023-05-06 12:33:53.758232	2023-05-06 12:33:53.758232
11	Patrick	Altenwerth	Aut autem consectetur. Aut temporibus in.	andrea_kuphal@treutel.test	43	7	2023-05-06 12:39:39.06059	2023-05-06 12:39:39.06059
12	Sam	Boyle	Magnam eum aut. Vitae omnis nesciunt.	tereasa.fay@mosciski-green.test	68	8	2023-05-06 12:39:39.076688	2023-05-06 12:39:39.076688
13	Kristofer	Wisozk	Tempora architecto sed. Eos facilis aperiam.	lorrine@west.test	60	5	2023-05-06 12:39:39.092909	2023-05-06 12:39:39.092909
14	Merrill	Stehr	Quod perspiciatis deleniti. Nam aut quam.	chae@nicolas.test	33	5	2023-05-06 12:39:39.11443	2023-05-06 12:39:39.11443
15	Kasie	Blanda	Ut in inventore. Consequatur suscipit sed.	antonia@farrell.test	62	7	2023-05-06 12:39:39.137409	2023-05-06 12:39:39.137409
16	Rocio	Mitchell	Repudiandae velit eligendi. Est aut quia.	ben.jerde@nolan.example	46	6	2023-05-06 12:39:39.157806	2023-05-06 12:39:39.157806
17	Logan	Stroman	Facilis officiis et. Quaerat occaecati a.	stevie@shanahan.test	53	8	2023-05-06 12:39:39.181447	2023-05-06 12:39:39.181447
18	Sherita	Kuphal	Temporibus repellat possimus. Consequatur dolorem quae.	alphonse@dietrich-johnson.example	39	7	2023-05-06 12:39:39.205935	2023-05-06 12:39:39.205935
19	Marin	Tromp	Soluta dicta commodi. Rem earum est.	henry.dickens@larson.test	65	9	2023-05-06 12:39:39.23244	2023-05-06 12:39:39.23244
20	Tad	Blick	Similique est harum. Maxime sit quae.	isaias.hahn@beatty.test	68	2	2023-05-06 12:39:39.260194	2023-05-06 12:39:39.260194
21	Jillian	Luettgen	Ducimus qui adipisci. Rerum maiores mollitia.	gracie@wolf.test	34	12	2023-05-06 12:41:01.042758	2023-05-06 12:41:01.042758
22	Caroll	Koss	Iste suscipit non. Incidunt sed et.	ranae@schultz.example	27	9	2023-05-06 12:41:01.064186	2023-05-06 12:41:01.064186
23	Ron	Smith	Delectus eos aut. Deleniti aut labore.	herb.kassulke@upton.example	29	14	2023-05-06 12:41:01.085549	2023-05-06 12:41:01.085549
24	Edmundo	Schowalter	Est sed nihil. Non ducimus corrupti.	jeanelle.connelly@hyatt.example	67	12	2023-05-06 12:41:01.110432	2023-05-06 12:41:01.110432
25	Latoya	Berge	Corrupti accusamus quas. Aut magni sed.	brandee_leffler@ferry.example	64	9	2023-05-06 12:41:01.133155	2023-05-06 12:41:01.133155
26	Colton	Lesch	Mollitia dolorem quo. Labore nesciunt possimus.	kris.schiller@schulist.test	67	8	2023-05-06 12:41:01.156597	2023-05-06 12:41:01.156597
27	Arlinda	Lehner	Vel voluptas qui. Quo molestias nostrum.	doloris_purdy@miller-bruen.test	36	7	2023-05-06 12:41:01.175855	2023-05-06 12:41:01.175855
28	Walter	Nikolaus	Qui et ut. Voluptatem maxime exercitationem.	juan@ebert.example	80	9	2023-05-06 12:41:01.195256	2023-05-06 12:41:01.195256
29	Britt	Dietrich	Voluptatem voluptas hic. Suscipit et est.	quentin_nicolas@marks.example	24	10	2023-05-06 12:41:01.214204	2023-05-06 12:41:01.214204
30	Mariette	O'Reilly	Omnis saepe quod. Magni possimus excepturi.	cecil_conn@brown-crist.example	32	6	2023-05-06 12:41:01.237961	2023-05-06 12:41:01.237961
\.


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jakfamily
--

SELECT pg_catalog.setval('public.cities_id_seq', 14, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jakfamily
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: gossip_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jakfamily
--

SELECT pg_catalog.setval('public.gossip_tags_id_seq', 1, false);


--
-- Name: gossips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jakfamily
--

SELECT pg_catalog.setval('public.gossips_id_seq', 1, false);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jakfamily
--

SELECT pg_catalog.setval('public.likes_id_seq', 1, false);


--
-- Name: private_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jakfamily
--

SELECT pg_catalog.setval('public.private_messages_id_seq', 3, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jakfamily
--

SELECT pg_catalog.setval('public.tags_id_seq', 25, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jakfamily
--

SELECT pg_catalog.setval('public.users_id_seq', 30, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: gossip_tags gossip_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.gossip_tags
    ADD CONSTRAINT gossip_tags_pkey PRIMARY KEY (id);


--
-- Name: gossips gossips_pkey; Type: CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.gossips
    ADD CONSTRAINT gossips_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: private_messages private_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.private_messages
    ADD CONSTRAINT private_messages_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_comments_on_commentable; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_comments_on_commentable ON public.comments USING btree (commentable_type, commentable_id);


--
-- Name: index_comments_on_gossip_id; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_comments_on_gossip_id ON public.comments USING btree (gossip_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_gossip_tags_on_gossip_id; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_gossip_tags_on_gossip_id ON public.gossip_tags USING btree (gossip_id);


--
-- Name: index_gossip_tags_on_tag_id; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_gossip_tags_on_tag_id ON public.gossip_tags USING btree (tag_id);


--
-- Name: index_gossips_on_user_id; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_gossips_on_user_id ON public.gossips USING btree (user_id);


--
-- Name: index_likes_on_likeable; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_likes_on_likeable ON public.likes USING btree (likeable_type, likeable_id);


--
-- Name: index_likes_on_user_id; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_likes_on_user_id ON public.likes USING btree (user_id);


--
-- Name: index_private_messages_on_recipient_id; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_private_messages_on_recipient_id ON public.private_messages USING btree (recipient_id);


--
-- Name: index_private_messages_on_sender_id; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_private_messages_on_sender_id ON public.private_messages USING btree (sender_id);


--
-- Name: index_users_on_city_id; Type: INDEX; Schema: public; Owner: jakfamily
--

CREATE INDEX index_users_on_city_id ON public.users USING btree (city_id);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: comments fk_rails_0a34ec365a; Type: FK CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_0a34ec365a FOREIGN KEY (gossip_id) REFERENCES public.gossips(id);


--
-- Name: likes fk_rails_1e09b5dabf; Type: FK CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT fk_rails_1e09b5dabf FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: gossip_tags fk_rails_506fcce6ed; Type: FK CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.gossip_tags
    ADD CONSTRAINT fk_rails_506fcce6ed FOREIGN KEY (gossip_id) REFERENCES public.gossips(id);


--
-- Name: gossips fk_rails_9e6296a836; Type: FK CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.gossips
    ADD CONSTRAINT fk_rails_9e6296a836 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: gossip_tags fk_rails_e4c524df6c; Type: FK CONSTRAINT; Schema: public; Owner: jakfamily
--

ALTER TABLE ONLY public.gossip_tags
    ADD CONSTRAINT fk_rails_e4c524df6c FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- PostgreSQL database dump complete
--

