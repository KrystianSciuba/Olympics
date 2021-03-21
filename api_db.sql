--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2021-03-21 13:12:09

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3236 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 33404)
-- Name: api_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_country (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.api_country OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 33402)
-- Name: api_country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_country_id_seq OWNER TO postgres;

--
-- TOC entry 3237 (class 0 OID 0)
-- Dependencies: 218
-- Name: api_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_country_id_seq OWNED BY public.api_country.id;


--
-- TOC entry 221 (class 1259 OID 33415)
-- Name: api_event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_event (
    id integer NOT NULL,
    name text NOT NULL,
    sport_id integer
);


ALTER TABLE public.api_event OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 33413)
-- Name: api_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_event_id_seq OWNER TO postgres;

--
-- TOC entry 3238 (class 0 OID 0)
-- Dependencies: 220
-- Name: api_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_event_id_seq OWNED BY public.api_event.id;


--
-- TOC entry 223 (class 1259 OID 33426)
-- Name: api_game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_game (
    id integer NOT NULL,
    city text NOT NULL,
    year integer NOT NULL,
    season text NOT NULL
);


ALTER TABLE public.api_game OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 33424)
-- Name: api_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_game_id_seq OWNER TO postgres;

--
-- TOC entry 3239 (class 0 OID 0)
-- Dependencies: 222
-- Name: api_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_game_id_seq OWNED BY public.api_game.id;


--
-- TOC entry 233 (class 1259 OID 33483)
-- Name: api_gameevent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_gameevent (
    id integer NOT NULL,
    event_id integer,
    game_id integer
);


ALTER TABLE public.api_gameevent OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 33481)
-- Name: api_gameevent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_gameevent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_gameevent_id_seq OWNER TO postgres;

--
-- TOC entry 3240 (class 0 OID 0)
-- Dependencies: 232
-- Name: api_gameevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_gameevent_id_seq OWNED BY public.api_gameevent.id;


--
-- TOC entry 225 (class 1259 OID 33437)
-- Name: api_medal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_medal (
    id integer NOT NULL,
    color text NOT NULL,
    event_id integer,
    game_id integer
);


ALTER TABLE public.api_medal OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 33435)
-- Name: api_medal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_medal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_medal_id_seq OWNER TO postgres;

--
-- TOC entry 3241 (class 0 OID 0)
-- Dependencies: 224
-- Name: api_medal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_medal_id_seq OWNED BY public.api_medal.id;


--
-- TOC entry 227 (class 1259 OID 33448)
-- Name: api_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_person (
    id integer NOT NULL,
    name text NOT NULL,
    sex text NOT NULL,
    year_of_birth integer NOT NULL,
    nationality_id integer
);


ALTER TABLE public.api_person OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 33446)
-- Name: api_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_person_id_seq OWNER TO postgres;

--
-- TOC entry 3242 (class 0 OID 0)
-- Dependencies: 226
-- Name: api_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_person_id_seq OWNED BY public.api_person.id;


--
-- TOC entry 231 (class 1259 OID 33470)
-- Name: api_personmedal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_personmedal (
    id integer NOT NULL,
    medal_id integer,
    person_id integer
);


ALTER TABLE public.api_personmedal OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 33468)
-- Name: api_personmedal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_personmedal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_personmedal_id_seq OWNER TO postgres;

--
-- TOC entry 3243 (class 0 OID 0)
-- Dependencies: 230
-- Name: api_personmedal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_personmedal_id_seq OWNED BY public.api_personmedal.id;


--
-- TOC entry 229 (class 1259 OID 33459)
-- Name: api_sport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.api_sport (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.api_sport OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 33457)
-- Name: api_sport_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.api_sport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_sport_id_seq OWNER TO postgres;

--
-- TOC entry 3244 (class 0 OID 0)
-- Dependencies: 228
-- Name: api_sport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.api_sport_id_seq OWNED BY public.api_sport.id;


--
-- TOC entry 207 (class 1259 OID 33284)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 33282)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3245 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 209 (class 1259 OID 33294)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 33292)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3246 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 205 (class 1259 OID 33276)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 33274)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3247 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 211 (class 1259 OID 33302)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 33312)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 33310)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3248 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 210 (class 1259 OID 33300)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3249 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 215 (class 1259 OID 33320)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 33318)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3250 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 217 (class 1259 OID 33380)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 33378)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3251 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 203 (class 1259 OID 33266)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 33264)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3252 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 201 (class 1259 OID 33255)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 33253)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3253 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 234 (class 1259 OID 33541)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 2970 (class 2604 OID 33407)
-- Name: api_country id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_country ALTER COLUMN id SET DEFAULT nextval('public.api_country_id_seq'::regclass);


--
-- TOC entry 2971 (class 2604 OID 33418)
-- Name: api_event id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_event ALTER COLUMN id SET DEFAULT nextval('public.api_event_id_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 33429)
-- Name: api_game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_game ALTER COLUMN id SET DEFAULT nextval('public.api_game_id_seq'::regclass);


--
-- TOC entry 2977 (class 2604 OID 33486)
-- Name: api_gameevent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_gameevent ALTER COLUMN id SET DEFAULT nextval('public.api_gameevent_id_seq'::regclass);


--
-- TOC entry 2973 (class 2604 OID 33440)
-- Name: api_medal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_medal ALTER COLUMN id SET DEFAULT nextval('public.api_medal_id_seq'::regclass);


--
-- TOC entry 2974 (class 2604 OID 33451)
-- Name: api_person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_person ALTER COLUMN id SET DEFAULT nextval('public.api_person_id_seq'::regclass);


--
-- TOC entry 2976 (class 2604 OID 33473)
-- Name: api_personmedal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_personmedal ALTER COLUMN id SET DEFAULT nextval('public.api_personmedal_id_seq'::regclass);


--
-- TOC entry 2975 (class 2604 OID 33462)
-- Name: api_sport id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_sport ALTER COLUMN id SET DEFAULT nextval('public.api_sport_id_seq'::regclass);


--
-- TOC entry 2963 (class 2604 OID 33287)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2964 (class 2604 OID 33297)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2962 (class 2604 OID 33279)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2965 (class 2604 OID 33305)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2966 (class 2604 OID 33315)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2967 (class 2604 OID 33323)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2968 (class 2604 OID 33383)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2961 (class 2604 OID 33269)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2960 (class 2604 OID 33258)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3215 (class 0 OID 33404)
-- Dependencies: 219
-- Data for Name: api_country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.api_country VALUES (1, 'AFG');
INSERT INTO public.api_country VALUES (2, 'AHO');
INSERT INTO public.api_country VALUES (3, 'ALG');
INSERT INTO public.api_country VALUES (4, 'ANZ');
INSERT INTO public.api_country VALUES (5, 'ARG');
INSERT INTO public.api_country VALUES (6, 'ARM');
INSERT INTO public.api_country VALUES (7, 'AUS');
INSERT INTO public.api_country VALUES (8, 'AUT');
INSERT INTO public.api_country VALUES (9, 'AZE');
INSERT INTO public.api_country VALUES (10, 'BAH');
INSERT INTO public.api_country VALUES (11, 'BAR');
INSERT INTO public.api_country VALUES (12, 'BDI');
INSERT INTO public.api_country VALUES (13, 'BEL');
INSERT INTO public.api_country VALUES (14, 'BER');
INSERT INTO public.api_country VALUES (15, 'BLR');
INSERT INTO public.api_country VALUES (16, 'BOH');
INSERT INTO public.api_country VALUES (17, 'BOT');
INSERT INTO public.api_country VALUES (18, 'BRA');
INSERT INTO public.api_country VALUES (19, 'BRN');
INSERT INTO public.api_country VALUES (20, 'BUL');
INSERT INTO public.api_country VALUES (21, 'CAN');
INSERT INTO public.api_country VALUES (22, 'CHI');
INSERT INTO public.api_country VALUES (23, 'CHN');
INSERT INTO public.api_country VALUES (24, 'CIV');
INSERT INTO public.api_country VALUES (25, 'CMR');
INSERT INTO public.api_country VALUES (26, 'COL');
INSERT INTO public.api_country VALUES (27, 'CRC');
INSERT INTO public.api_country VALUES (28, 'CRO');
INSERT INTO public.api_country VALUES (29, 'CUB');
INSERT INTO public.api_country VALUES (30, 'CYP');
INSERT INTO public.api_country VALUES (31, 'CZE');
INSERT INTO public.api_country VALUES (32, 'DEN');
INSERT INTO public.api_country VALUES (33, 'DJI');
INSERT INTO public.api_country VALUES (34, 'DOM');
INSERT INTO public.api_country VALUES (35, 'ECU');
INSERT INTO public.api_country VALUES (36, 'EGY');
INSERT INTO public.api_country VALUES (37, 'ERI');
INSERT INTO public.api_country VALUES (38, 'ESP');
INSERT INTO public.api_country VALUES (39, 'EST');
INSERT INTO public.api_country VALUES (40, 'ETH');
INSERT INTO public.api_country VALUES (41, 'EUN');
INSERT INTO public.api_country VALUES (42, 'FIJ');
INSERT INTO public.api_country VALUES (43, 'FIN');
INSERT INTO public.api_country VALUES (44, 'FRA');
INSERT INTO public.api_country VALUES (45, 'FRG');
INSERT INTO public.api_country VALUES (46, 'GAB');
INSERT INTO public.api_country VALUES (47, 'GBR');
INSERT INTO public.api_country VALUES (48, 'GDR');
INSERT INTO public.api_country VALUES (49, 'GEO');
INSERT INTO public.api_country VALUES (50, 'GER');
INSERT INTO public.api_country VALUES (51, 'GHA');
INSERT INTO public.api_country VALUES (52, 'GRE');
INSERT INTO public.api_country VALUES (53, 'GRN');
INSERT INTO public.api_country VALUES (54, 'GUA');
INSERT INTO public.api_country VALUES (55, 'GUY');
INSERT INTO public.api_country VALUES (56, 'HAI');
INSERT INTO public.api_country VALUES (57, 'HKG');
INSERT INTO public.api_country VALUES (58, 'HUN');
INSERT INTO public.api_country VALUES (59, 'INA');
INSERT INTO public.api_country VALUES (60, 'IND');
INSERT INTO public.api_country VALUES (61, 'IOA');
INSERT INTO public.api_country VALUES (62, 'IRI');
INSERT INTO public.api_country VALUES (63, 'IRL');
INSERT INTO public.api_country VALUES (64, 'IRQ');
INSERT INTO public.api_country VALUES (65, 'ISL');
INSERT INTO public.api_country VALUES (66, 'ISR');
INSERT INTO public.api_country VALUES (67, 'ISV');
INSERT INTO public.api_country VALUES (68, 'ITA');
INSERT INTO public.api_country VALUES (69, 'JAM');
INSERT INTO public.api_country VALUES (70, 'JOR');
INSERT INTO public.api_country VALUES (71, 'JPN');
INSERT INTO public.api_country VALUES (72, 'KAZ');
INSERT INTO public.api_country VALUES (73, 'KEN');
INSERT INTO public.api_country VALUES (74, 'KGZ');
INSERT INTO public.api_country VALUES (75, 'KOR');
INSERT INTO public.api_country VALUES (76, 'KOS');
INSERT INTO public.api_country VALUES (77, 'KSA');
INSERT INTO public.api_country VALUES (78, 'LAT');
INSERT INTO public.api_country VALUES (79, 'LIB');
INSERT INTO public.api_country VALUES (80, 'LIE');
INSERT INTO public.api_country VALUES (81, 'LTU');
INSERT INTO public.api_country VALUES (82, 'LUX');
INSERT INTO public.api_country VALUES (83, 'MAR');
INSERT INTO public.api_country VALUES (84, 'MAS');
INSERT INTO public.api_country VALUES (85, 'MDA');
INSERT INTO public.api_country VALUES (86, 'MEX');
INSERT INTO public.api_country VALUES (87, 'MGL');
INSERT INTO public.api_country VALUES (88, 'MKD');
INSERT INTO public.api_country VALUES (89, 'MNE');
INSERT INTO public.api_country VALUES (90, 'MON');
INSERT INTO public.api_country VALUES (91, 'MOZ');
INSERT INTO public.api_country VALUES (92, 'MRI');
INSERT INTO public.api_country VALUES (93, 'NAM');
INSERT INTO public.api_country VALUES (94, 'NED');
INSERT INTO public.api_country VALUES (95, 'NEP');
INSERT INTO public.api_country VALUES (96, 'NGR');
INSERT INTO public.api_country VALUES (97, 'NIG');
INSERT INTO public.api_country VALUES (98, 'NOR');
INSERT INTO public.api_country VALUES (99, 'NZL');
INSERT INTO public.api_country VALUES (100, 'PAK');
INSERT INTO public.api_country VALUES (101, 'PAN');
INSERT INTO public.api_country VALUES (102, 'PAR');
INSERT INTO public.api_country VALUES (103, 'PER');
INSERT INTO public.api_country VALUES (104, 'PHI');
INSERT INTO public.api_country VALUES (105, 'POL');
INSERT INTO public.api_country VALUES (106, 'POR');
INSERT INTO public.api_country VALUES (107, 'PRK');
INSERT INTO public.api_country VALUES (108, 'PUR');
INSERT INTO public.api_country VALUES (109, 'QAT');
INSERT INTO public.api_country VALUES (110, 'ROU');
INSERT INTO public.api_country VALUES (111, 'RSA');
INSERT INTO public.api_country VALUES (112, 'RUS');
INSERT INTO public.api_country VALUES (113, 'SCG');
INSERT INTO public.api_country VALUES (114, 'SEN');
INSERT INTO public.api_country VALUES (115, 'SGP');
INSERT INTO public.api_country VALUES (116, 'SLO');
INSERT INTO public.api_country VALUES (117, 'SRB');
INSERT INTO public.api_country VALUES (118, 'SRI');
INSERT INTO public.api_country VALUES (119, 'SUD');
INSERT INTO public.api_country VALUES (120, 'SUI');
INSERT INTO public.api_country VALUES (121, 'SUR');
INSERT INTO public.api_country VALUES (122, 'SVK');
INSERT INTO public.api_country VALUES (123, 'SWE');
INSERT INTO public.api_country VALUES (124, 'SYR');
INSERT INTO public.api_country VALUES (125, 'TAN');
INSERT INTO public.api_country VALUES (126, 'TCH');
INSERT INTO public.api_country VALUES (127, 'TGA');
INSERT INTO public.api_country VALUES (128, 'THA');
INSERT INTO public.api_country VALUES (129, 'TJK');
INSERT INTO public.api_country VALUES (130, 'TOG');
INSERT INTO public.api_country VALUES (131, 'TPE');
INSERT INTO public.api_country VALUES (132, 'TTO');
INSERT INTO public.api_country VALUES (133, 'TUN');
INSERT INTO public.api_country VALUES (134, 'TUR');
INSERT INTO public.api_country VALUES (135, 'UAE');
INSERT INTO public.api_country VALUES (136, 'UAR');
INSERT INTO public.api_country VALUES (137, 'UGA');
INSERT INTO public.api_country VALUES (138, 'UKR');
INSERT INTO public.api_country VALUES (139, 'URS');
INSERT INTO public.api_country VALUES (140, 'URU');
INSERT INTO public.api_country VALUES (141, 'USA');
INSERT INTO public.api_country VALUES (142, 'UZB');
INSERT INTO public.api_country VALUES (143, 'VEN');
INSERT INTO public.api_country VALUES (144, 'VIE');
INSERT INTO public.api_country VALUES (145, 'WIF');
INSERT INTO public.api_country VALUES (146, 'YUG');
INSERT INTO public.api_country VALUES (147, 'ZAM');
INSERT INTO public.api_country VALUES (148, 'ZIM');


--
-- TOC entry 3217 (class 0 OID 33415)
-- Dependencies: 221
-- Data for Name: api_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.api_event VALUES (1, 'Aeronautics Mixed Aeronautics', 1);
INSERT INTO public.api_event VALUES (2, 'Alpine Skiing Men''s Combined', 2);
INSERT INTO public.api_event VALUES (3, 'Alpine Skiing Men''s Downhill', 2);
INSERT INTO public.api_event VALUES (4, 'Alpine Skiing Men''s Giant Slalom', 2);
INSERT INTO public.api_event VALUES (5, 'Alpine Skiing Men''s Slalom', 2);
INSERT INTO public.api_event VALUES (6, 'Alpine Skiing Men''s Super G', 2);
INSERT INTO public.api_event VALUES (7, 'Alpine Skiing Women''s Combined', 2);
INSERT INTO public.api_event VALUES (8, 'Alpine Skiing Women''s Downhill', 2);
INSERT INTO public.api_event VALUES (9, 'Alpine Skiing Women''s Giant Slalom', 2);
INSERT INTO public.api_event VALUES (10, 'Alpine Skiing Women''s Slalom', 2);
INSERT INTO public.api_event VALUES (11, 'Alpine Skiing Women''s Super G', 2);
INSERT INTO public.api_event VALUES (12, 'Alpinism Mixed Alpinism', 3);
INSERT INTO public.api_event VALUES (13, 'Archery Men''s Au Chapelet, 33 metres', 4);
INSERT INTO public.api_event VALUES (14, 'Archery Men''s Au Chapelet, 50 metres', 4);
INSERT INTO public.api_event VALUES (15, 'Archery Men''s Au Cordon Dore, 33 metres', 4);
INSERT INTO public.api_event VALUES (16, 'Archery Men''s Au Cordon Dore, 50 metres', 4);
INSERT INTO public.api_event VALUES (17, 'Archery Men''s Championnat Du Monde', 4);
INSERT INTO public.api_event VALUES (18, 'Archery Men''s Continental Style', 4);
INSERT INTO public.api_event VALUES (19, 'Archery Men''s Double American Round', 4);
INSERT INTO public.api_event VALUES (20, 'Archery Men''s Double York Round', 4);
INSERT INTO public.api_event VALUES (21, 'Archery Men''s Individual', 4);
INSERT INTO public.api_event VALUES (22, 'Archery Men''s Pole Archery, Large Birds, Individual', 4);
INSERT INTO public.api_event VALUES (23, 'Archery Men''s Pole Archery, Large Birds, Team', 4);
INSERT INTO public.api_event VALUES (24, 'Archery Men''s Pole Archery, Small Birds, Individual', 4);
INSERT INTO public.api_event VALUES (25, 'Archery Men''s Pole Archery, Small Birds, Team', 4);
INSERT INTO public.api_event VALUES (26, 'Archery Men''s Sur La Perche a La Herse', 4);
INSERT INTO public.api_event VALUES (27, 'Archery Men''s Sur La Perche a La Pyramide', 4);
INSERT INTO public.api_event VALUES (28, 'Archery Men''s Target Archery, 28 metres, Individual', 4);
INSERT INTO public.api_event VALUES (29, 'Archery Men''s Target Archery, 28 metres, Team', 4);
INSERT INTO public.api_event VALUES (30, 'Archery Men''s Target Archery, 33 metres, Individual', 4);
INSERT INTO public.api_event VALUES (31, 'Archery Men''s Target Archery, 33 metres, Team', 4);
INSERT INTO public.api_event VALUES (32, 'Archery Men''s Target Archery, 50 metres, Individual', 4);
INSERT INTO public.api_event VALUES (33, 'Archery Men''s Target Archery, 50 metres, Team', 4);
INSERT INTO public.api_event VALUES (34, 'Archery Men''s Team', 4);
INSERT INTO public.api_event VALUES (35, 'Archery Men''s Team Round', 4);
INSERT INTO public.api_event VALUES (36, 'Archery Women''s Double Columbia Round', 4);
INSERT INTO public.api_event VALUES (37, 'Archery Women''s Double National Round', 4);
INSERT INTO public.api_event VALUES (38, 'Archery Women''s Individual', 4);
INSERT INTO public.api_event VALUES (39, 'Archery Women''s Team', 4);
INSERT INTO public.api_event VALUES (40, 'Archery Women''s Team Round', 4);
INSERT INTO public.api_event VALUES (41, 'Art Competitions Mixed Architecture', 5);
INSERT INTO public.api_event VALUES (42, 'Art Competitions Mixed Architecture, Architectural Designs', 5);
INSERT INTO public.api_event VALUES (43, 'Art Competitions Mixed Architecture, Designs For Town Planning', 5);
INSERT INTO public.api_event VALUES (44, 'Art Competitions Mixed Literature', 5);
INSERT INTO public.api_event VALUES (45, 'Art Competitions Mixed Literature, Dramatic Works', 5);
INSERT INTO public.api_event VALUES (46, 'Art Competitions Mixed Literature, Epic Works', 5);
INSERT INTO public.api_event VALUES (47, 'Art Competitions Mixed Literature, Lyric Works', 5);
INSERT INTO public.api_event VALUES (48, 'Art Competitions Mixed Music', 5);
INSERT INTO public.api_event VALUES (49, 'Art Competitions Mixed Music, Compositions For Orchestra', 5);
INSERT INTO public.api_event VALUES (50, 'Art Competitions Mixed Music, Compositions For Solo Or Chorus', 5);
INSERT INTO public.api_event VALUES (51, 'Art Competitions Mixed Music, Instrumental And Chamber', 5);
INSERT INTO public.api_event VALUES (52, 'Art Competitions Mixed Music, Vocals', 5);
INSERT INTO public.api_event VALUES (53, 'Art Competitions Mixed Painting', 5);
INSERT INTO public.api_event VALUES (54, 'Art Competitions Mixed Painting, Applied Arts', 5);
INSERT INTO public.api_event VALUES (55, 'Art Competitions Mixed Painting, Drawings And Water Colors', 5);
INSERT INTO public.api_event VALUES (56, 'Art Competitions Mixed Painting, Graphic Arts', 5);
INSERT INTO public.api_event VALUES (57, 'Art Competitions Mixed Painting, Paintings', 5);
INSERT INTO public.api_event VALUES (58, 'Art Competitions Mixed Sculpturing', 5);
INSERT INTO public.api_event VALUES (59, 'Art Competitions Mixed Sculpturing, Medals', 5);
INSERT INTO public.api_event VALUES (60, 'Art Competitions Mixed Sculpturing, Medals And Plaques', 5);
INSERT INTO public.api_event VALUES (61, 'Art Competitions Mixed Sculpturing, Medals And Reliefs', 5);
INSERT INTO public.api_event VALUES (62, 'Art Competitions Mixed Sculpturing, Reliefs', 5);
INSERT INTO public.api_event VALUES (63, 'Art Competitions Mixed Sculpturing, Statues', 5);
INSERT INTO public.api_event VALUES (64, 'Athletics Men''s 1,500 metres', 6);
INSERT INTO public.api_event VALUES (65, 'Athletics Men''s 1,500 metres Walk', 6);
INSERT INTO public.api_event VALUES (66, 'Athletics Men''s 1,600 metres Medley Relay', 6);
INSERT INTO public.api_event VALUES (67, 'Athletics Men''s 10 kilometres Walk', 6);
INSERT INTO public.api_event VALUES (68, 'Athletics Men''s 10 mile Walk', 6);
INSERT INTO public.api_event VALUES (69, 'Athletics Men''s 10,000 metres', 6);
INSERT INTO public.api_event VALUES (70, 'Athletics Men''s 100 metres', 6);
INSERT INTO public.api_event VALUES (71, 'Athletics Men''s 110 metres Hurdles', 6);
INSERT INTO public.api_event VALUES (72, 'Athletics Men''s 2,500 metres Steeplechase', 6);
INSERT INTO public.api_event VALUES (73, 'Athletics Men''s 2,590 metres Steeplechase', 6);
INSERT INTO public.api_event VALUES (74, 'Athletics Men''s 20 kilometres Walk', 6);
INSERT INTO public.api_event VALUES (75, 'Athletics Men''s 200 metres', 6);
INSERT INTO public.api_event VALUES (76, 'Athletics Men''s 200 metres Hurdles', 6);
INSERT INTO public.api_event VALUES (77, 'Athletics Men''s 3 mile, Team', 6);
INSERT INTO public.api_event VALUES (78, 'Athletics Men''s 3,000 metres Steeplechase', 6);
INSERT INTO public.api_event VALUES (79, 'Athletics Men''s 3,000 metres Walk', 6);
INSERT INTO public.api_event VALUES (80, 'Athletics Men''s 3,000 metres, Team', 6);
INSERT INTO public.api_event VALUES (81, 'Athletics Men''s 3,200 metres Steeplechase', 6);
INSERT INTO public.api_event VALUES (82, 'Athletics Men''s 3,500 metres Walk', 6);
INSERT INTO public.api_event VALUES (83, 'Athletics Men''s 4 mile, Team', 6);
INSERT INTO public.api_event VALUES (84, 'Athletics Men''s 4 x 100 metres Relay', 6);
INSERT INTO public.api_event VALUES (85, 'Athletics Men''s 4 x 400 metres Relay', 6);
INSERT INTO public.api_event VALUES (86, 'Athletics Men''s 4,000 metres Steeplechase', 6);
INSERT INTO public.api_event VALUES (87, 'Athletics Men''s 400 metres', 6);
INSERT INTO public.api_event VALUES (88, 'Athletics Men''s 400 metres Hurdles', 6);
INSERT INTO public.api_event VALUES (89, 'Athletics Men''s 5 mile', 6);
INSERT INTO public.api_event VALUES (90, 'Athletics Men''s 5,000 metres', 6);
INSERT INTO public.api_event VALUES (91, 'Athletics Men''s 5,000 metres, Team', 6);
INSERT INTO public.api_event VALUES (92, 'Athletics Men''s 50 kilometres Walk', 6);
INSERT INTO public.api_event VALUES (93, 'Athletics Men''s 56-pound Weight Throw', 6);
INSERT INTO public.api_event VALUES (94, 'Athletics Men''s 60 metres', 6);
INSERT INTO public.api_event VALUES (95, 'Athletics Men''s 800 metres', 6);
INSERT INTO public.api_event VALUES (96, 'Athletics Men''s All-Around Championship', 6);
INSERT INTO public.api_event VALUES (97, 'Athletics Men''s Cross-Country, Individual', 6);
INSERT INTO public.api_event VALUES (98, 'Athletics Men''s Cross-Country, Team', 6);
INSERT INTO public.api_event VALUES (99, 'Athletics Men''s Decathlon', 6);
INSERT INTO public.api_event VALUES (100, 'Athletics Men''s Discus Throw', 6);
INSERT INTO public.api_event VALUES (101, 'Athletics Men''s Discus Throw, Both Hands', 6);
INSERT INTO public.api_event VALUES (102, 'Athletics Men''s Discus Throw, Greek Style', 6);
INSERT INTO public.api_event VALUES (103, 'Athletics Men''s Hammer Throw', 6);
INSERT INTO public.api_event VALUES (104, 'Athletics Men''s High Jump', 6);
INSERT INTO public.api_event VALUES (105, 'Athletics Men''s Javelin Throw', 6);
INSERT INTO public.api_event VALUES (440, 'Rowing Men''s Double Sculls', 44);
INSERT INTO public.api_event VALUES (106, 'Athletics Men''s Javelin Throw, Both Hands', 6);
INSERT INTO public.api_event VALUES (107, 'Athletics Men''s Javelin Throw, Freestyle', 6);
INSERT INTO public.api_event VALUES (108, 'Athletics Men''s Long Jump', 6);
INSERT INTO public.api_event VALUES (109, 'Athletics Men''s Marathon', 6);
INSERT INTO public.api_event VALUES (110, 'Athletics Men''s Pentathlon', 6);
INSERT INTO public.api_event VALUES (111, 'Athletics Men''s Pentathlon (Ancient)', 6);
INSERT INTO public.api_event VALUES (112, 'Athletics Men''s Pole Vault', 6);
INSERT INTO public.api_event VALUES (113, 'Athletics Men''s Shot Put', 6);
INSERT INTO public.api_event VALUES (114, 'Athletics Men''s Shot Put, Both Hands', 6);
INSERT INTO public.api_event VALUES (115, 'Athletics Men''s Standing High Jump', 6);
INSERT INTO public.api_event VALUES (116, 'Athletics Men''s Standing Long Jump', 6);
INSERT INTO public.api_event VALUES (117, 'Athletics Men''s Standing Triple Jump', 6);
INSERT INTO public.api_event VALUES (118, 'Athletics Men''s Stone Throw', 6);
INSERT INTO public.api_event VALUES (119, 'Athletics Men''s Triple Jump', 6);
INSERT INTO public.api_event VALUES (120, 'Athletics Women''s 1,500 metres', 6);
INSERT INTO public.api_event VALUES (121, 'Athletics Women''s 10 kilometres Walk', 6);
INSERT INTO public.api_event VALUES (122, 'Athletics Women''s 10,000 metres', 6);
INSERT INTO public.api_event VALUES (123, 'Athletics Women''s 100 metres', 6);
INSERT INTO public.api_event VALUES (124, 'Athletics Women''s 100 metres Hurdles', 6);
INSERT INTO public.api_event VALUES (125, 'Athletics Women''s 20 kilometres Walk', 6);
INSERT INTO public.api_event VALUES (126, 'Athletics Women''s 200 metres', 6);
INSERT INTO public.api_event VALUES (127, 'Athletics Women''s 3,000 metres', 6);
INSERT INTO public.api_event VALUES (128, 'Athletics Women''s 3,000 metres Steeplechase', 6);
INSERT INTO public.api_event VALUES (129, 'Athletics Women''s 4 x 100 metres Relay', 6);
INSERT INTO public.api_event VALUES (130, 'Athletics Women''s 4 x 400 metres Relay', 6);
INSERT INTO public.api_event VALUES (131, 'Athletics Women''s 400 metres', 6);
INSERT INTO public.api_event VALUES (132, 'Athletics Women''s 400 metres Hurdles', 6);
INSERT INTO public.api_event VALUES (133, 'Athletics Women''s 5,000 metres', 6);
INSERT INTO public.api_event VALUES (134, 'Athletics Women''s 80 metres Hurdles', 6);
INSERT INTO public.api_event VALUES (135, 'Athletics Women''s 800 metres', 6);
INSERT INTO public.api_event VALUES (136, 'Athletics Women''s Discus Throw', 6);
INSERT INTO public.api_event VALUES (137, 'Athletics Women''s Hammer Throw', 6);
INSERT INTO public.api_event VALUES (138, 'Athletics Women''s Heptathlon', 6);
INSERT INTO public.api_event VALUES (139, 'Athletics Women''s High Jump', 6);
INSERT INTO public.api_event VALUES (140, 'Athletics Women''s Javelin Throw', 6);
INSERT INTO public.api_event VALUES (141, 'Athletics Women''s Long Jump', 6);
INSERT INTO public.api_event VALUES (142, 'Athletics Women''s Marathon', 6);
INSERT INTO public.api_event VALUES (143, 'Athletics Women''s Pentathlon', 6);
INSERT INTO public.api_event VALUES (144, 'Athletics Women''s Pole Vault', 6);
INSERT INTO public.api_event VALUES (145, 'Athletics Women''s Shot Put', 6);
INSERT INTO public.api_event VALUES (146, 'Athletics Women''s Triple Jump', 6);
INSERT INTO public.api_event VALUES (147, 'Badminton Men''s Doubles', 7);
INSERT INTO public.api_event VALUES (148, 'Badminton Men''s Singles', 7);
INSERT INTO public.api_event VALUES (149, 'Badminton Mixed Doubles', 7);
INSERT INTO public.api_event VALUES (150, 'Badminton Women''s Doubles', 7);
INSERT INTO public.api_event VALUES (151, 'Badminton Women''s Singles', 7);
INSERT INTO public.api_event VALUES (152, 'Baseball Men''s Baseball', 8);
INSERT INTO public.api_event VALUES (153, 'Basketball Men''s Basketball', 9);
INSERT INTO public.api_event VALUES (154, 'Basketball Women''s Basketball', 9);
INSERT INTO public.api_event VALUES (155, 'Basque Pelota Men''s Two-Man Teams With Cesta', 10);
INSERT INTO public.api_event VALUES (156, 'Beach Volleyball Men''s Beach Volleyball', 11);
INSERT INTO public.api_event VALUES (157, 'Beach Volleyball Women''s Beach Volleyball', 11);
INSERT INTO public.api_event VALUES (158, 'Biathlon Men''s 10 kilometres Sprint', 12);
INSERT INTO public.api_event VALUES (159, 'Biathlon Men''s 12.5 kilometres Pursuit', 12);
INSERT INTO public.api_event VALUES (160, 'Biathlon Men''s 15 kilometres Mass Start', 12);
INSERT INTO public.api_event VALUES (161, 'Biathlon Men''s 20 kilometres', 12);
INSERT INTO public.api_event VALUES (162, 'Biathlon Men''s 4 x 7.5 kilometres Relay', 12);
INSERT INTO public.api_event VALUES (163, 'Biathlon Mixed 2 x 6 kilometres and 2 x 7.5 kilometres Relay', 12);
INSERT INTO public.api_event VALUES (164, 'Biathlon Women''s 10 kilometres Pursuit', 12);
INSERT INTO public.api_event VALUES (165, 'Biathlon Women''s 12.5 kilometres Mass Start', 12);
INSERT INTO public.api_event VALUES (166, 'Biathlon Women''s 15 kilometres', 12);
INSERT INTO public.api_event VALUES (167, 'Biathlon Women''s 3 x 7.5 kilometres Relay', 12);
INSERT INTO public.api_event VALUES (168, 'Biathlon Women''s 4 x 6 kilometres Relay', 12);
INSERT INTO public.api_event VALUES (169, 'Biathlon Women''s 4 x 7.5 kilometres Relay', 12);
INSERT INTO public.api_event VALUES (170, 'Biathlon Women''s 7.5 kilometres Sprint', 12);
INSERT INTO public.api_event VALUES (171, 'Bobsleigh Men''s Four', 13);
INSERT INTO public.api_event VALUES (172, 'Bobsleigh Men''s Four/Five', 13);
INSERT INTO public.api_event VALUES (173, 'Bobsleigh Men''s Two', 13);
INSERT INTO public.api_event VALUES (174, 'Bobsleigh Women''s Two', 13);
INSERT INTO public.api_event VALUES (175, 'Boxing Men''s Bantamweight', 14);
INSERT INTO public.api_event VALUES (176, 'Boxing Men''s Featherweight', 14);
INSERT INTO public.api_event VALUES (177, 'Boxing Men''s Flyweight', 14);
INSERT INTO public.api_event VALUES (178, 'Boxing Men''s Heavyweight', 14);
INSERT INTO public.api_event VALUES (179, 'Boxing Men''s Light-Flyweight', 14);
INSERT INTO public.api_event VALUES (180, 'Boxing Men''s Light-Heavyweight', 14);
INSERT INTO public.api_event VALUES (181, 'Boxing Men''s Light-Middleweight', 14);
INSERT INTO public.api_event VALUES (182, 'Boxing Men''s Lightweight', 14);
INSERT INTO public.api_event VALUES (183, 'Boxing Men''s Light-Welterweight', 14);
INSERT INTO public.api_event VALUES (184, 'Boxing Men''s Middleweight', 14);
INSERT INTO public.api_event VALUES (185, 'Boxing Men''s Super-Heavyweight', 14);
INSERT INTO public.api_event VALUES (186, 'Boxing Men''s Welterweight', 14);
INSERT INTO public.api_event VALUES (187, 'Boxing Women''s Flyweight', 14);
INSERT INTO public.api_event VALUES (188, 'Boxing Women''s Lightweight', 14);
INSERT INTO public.api_event VALUES (189, 'Boxing Women''s Middleweight', 14);
INSERT INTO public.api_event VALUES (190, 'Canoeing Men''s Canadian Doubles, 1,000 metres', 15);
INSERT INTO public.api_event VALUES (191, 'Canoeing Men''s Canadian Doubles, 10,000 metres', 15);
INSERT INTO public.api_event VALUES (192, 'Canoeing Men''s Canadian Doubles, 500 metres', 15);
INSERT INTO public.api_event VALUES (193, 'Canoeing Men''s Canadian Doubles, Slalom', 15);
INSERT INTO public.api_event VALUES (194, 'Canoeing Men''s Canadian Singles, 1,000 metres', 15);
INSERT INTO public.api_event VALUES (195, 'Canoeing Men''s Canadian Singles, 10,000 metres', 15);
INSERT INTO public.api_event VALUES (196, 'Canoeing Men''s Canadian Singles, 200 metres', 15);
INSERT INTO public.api_event VALUES (197, 'Canoeing Men''s Canadian Singles, 500 metres', 15);
INSERT INTO public.api_event VALUES (198, 'Canoeing Men''s Canadian Singles, Slalom', 15);
INSERT INTO public.api_event VALUES (199, 'Canoeing Men''s Folding Kayak Doubles, 10 kilometres', 15);
INSERT INTO public.api_event VALUES (200, 'Canoeing Men''s Folding Kayak Singles, 10 kilometres', 15);
INSERT INTO public.api_event VALUES (201, 'Canoeing Men''s Kayak Doubles, 1,000 metres', 15);
INSERT INTO public.api_event VALUES (202, 'Canoeing Men''s Kayak Doubles, 10,000 metres', 15);
INSERT INTO public.api_event VALUES (203, 'Canoeing Men''s Kayak Doubles, 200 metres', 15);
INSERT INTO public.api_event VALUES (204, 'Canoeing Men''s Kayak Doubles, 500 metres', 15);
INSERT INTO public.api_event VALUES (205, 'Canoeing Men''s Kayak Fours, 1,000 metres', 15);
INSERT INTO public.api_event VALUES (206, 'Canoeing Men''s Kayak Relay 4 x 500 metres', 15);
INSERT INTO public.api_event VALUES (207, 'Canoeing Men''s Kayak Singles, 1,000 metres', 15);
INSERT INTO public.api_event VALUES (208, 'Canoeing Men''s Kayak Singles, 10,000 metres', 15);
INSERT INTO public.api_event VALUES (209, 'Canoeing Men''s Kayak Singles, 200 metres', 15);
INSERT INTO public.api_event VALUES (210, 'Canoeing Men''s Kayak Singles, 500 metres', 15);
INSERT INTO public.api_event VALUES (211, 'Canoeing Men''s Kayak Singles, Slalom', 15);
INSERT INTO public.api_event VALUES (212, 'Canoeing Women''s Kayak Doubles, 500 metres', 15);
INSERT INTO public.api_event VALUES (213, 'Canoeing Women''s Kayak Fours, 500 metres', 15);
INSERT INTO public.api_event VALUES (214, 'Canoeing Women''s Kayak Singles, 200 metres', 15);
INSERT INTO public.api_event VALUES (215, 'Canoeing Women''s Kayak Singles, 500 metres', 15);
INSERT INTO public.api_event VALUES (216, 'Canoeing Women''s Kayak Singles, Slalom', 15);
INSERT INTO public.api_event VALUES (217, 'Cricket Men''s Cricket', 16);
INSERT INTO public.api_event VALUES (218, 'Croquet Mixed Doubles', 17);
INSERT INTO public.api_event VALUES (219, 'Croquet Mixed Singles, One Ball', 17);
INSERT INTO public.api_event VALUES (220, 'Croquet Mixed Singles, Two Balls', 17);
INSERT INTO public.api_event VALUES (221, 'Cross Country Skiing Men''s 10 kilometres', 18);
INSERT INTO public.api_event VALUES (222, 'Cross Country Skiing Men''s 10/10 kilometres Pursuit', 18);
INSERT INTO public.api_event VALUES (223, 'Cross Country Skiing Men''s 10/15 kilometres Pursuit', 18);
INSERT INTO public.api_event VALUES (224, 'Cross Country Skiing Men''s 15 kilometres', 18);
INSERT INTO public.api_event VALUES (225, 'Cross Country Skiing Men''s 18 kilometres', 18);
INSERT INTO public.api_event VALUES (226, 'Cross Country Skiing Men''s 30 kilometres', 18);
INSERT INTO public.api_event VALUES (227, 'Cross Country Skiing Men''s 30 km Skiathlon', 18);
INSERT INTO public.api_event VALUES (228, 'Cross Country Skiing Men''s 4 x 10 kilometres Relay', 18);
INSERT INTO public.api_event VALUES (229, 'Cross Country Skiing Men''s 50 kilometres', 18);
INSERT INTO public.api_event VALUES (230, 'Cross Country Skiing Men''s Sprint', 18);
INSERT INTO public.api_event VALUES (231, 'Cross Country Skiing Men''s Team Sprint', 18);
INSERT INTO public.api_event VALUES (232, 'Cross Country Skiing Women''s 10 kilometres', 18);
INSERT INTO public.api_event VALUES (233, 'Cross Country Skiing Women''s 15 kilometres', 18);
INSERT INTO public.api_event VALUES (234, 'Cross Country Skiing Women''s 15 km Skiathlon', 18);
INSERT INTO public.api_event VALUES (235, 'Cross Country Skiing Women''s 20 kilometres', 18);
INSERT INTO public.api_event VALUES (236, 'Cross Country Skiing Women''s 3 x 5 kilometres Relay', 18);
INSERT INTO public.api_event VALUES (237, 'Cross Country Skiing Women''s 30 kilometres', 18);
INSERT INTO public.api_event VALUES (238, 'Cross Country Skiing Women''s 4 x 5 kilometres Relay', 18);
INSERT INTO public.api_event VALUES (239, 'Cross Country Skiing Women''s 5 kilometres', 18);
INSERT INTO public.api_event VALUES (240, 'Cross Country Skiing Women''s 5/10 kilometres Pursuit', 18);
INSERT INTO public.api_event VALUES (241, 'Cross Country Skiing Women''s 5/5 kilometres Pursuit', 18);
INSERT INTO public.api_event VALUES (242, 'Cross Country Skiing Women''s Sprint', 18);
INSERT INTO public.api_event VALUES (243, 'Cross Country Skiing Women''s Team Sprint', 18);
INSERT INTO public.api_event VALUES (244, 'Curling Men''s Curling', 19);
INSERT INTO public.api_event VALUES (245, 'Curling Women''s Curling', 19);
INSERT INTO public.api_event VALUES (246, 'Cycling Men''s 1 mile', 20);
INSERT INTO public.api_event VALUES (247, 'Cycling Men''s 1,000 metres Time Trial', 20);
INSERT INTO public.api_event VALUES (248, 'Cycling Men''s 1/2 mile', 20);
INSERT INTO public.api_event VALUES (249, 'Cycling Men''s 1/3 mile', 20);
INSERT INTO public.api_event VALUES (250, 'Cycling Men''s 1/4 mile', 20);
INSERT INTO public.api_event VALUES (251, 'Cycling Men''s 10,000 metres', 20);
INSERT INTO public.api_event VALUES (252, 'Cycling Men''s 100 kilometres', 20);
INSERT INTO public.api_event VALUES (253, 'Cycling Men''s 100 kilometres Team Time Trial', 20);
INSERT INTO public.api_event VALUES (254, 'Cycling Men''s 12-Hours Race', 20);
INSERT INTO public.api_event VALUES (255, 'Cycling Men''s 2 mile', 20);
INSERT INTO public.api_event VALUES (256, 'Cycling Men''s 20 kilometres', 20);
INSERT INTO public.api_event VALUES (257, 'Cycling Men''s 25 kilometres', 20);
INSERT INTO public.api_event VALUES (258, 'Cycling Men''s 25 mile', 20);
INSERT INTO public.api_event VALUES (259, 'Cycling Men''s 333 metres Time Trial', 20);
INSERT INTO public.api_event VALUES (260, 'Cycling Men''s 5 mile', 20);
INSERT INTO public.api_event VALUES (261, 'Cycling Men''s 5,000 metres', 20);
INSERT INTO public.api_event VALUES (262, 'Cycling Men''s 50 kilometres', 20);
INSERT INTO public.api_event VALUES (263, 'Cycling Men''s BMX', 20);
INSERT INTO public.api_event VALUES (264, 'Cycling Men''s Individual Pursuit, 4,000 metres', 20);
INSERT INTO public.api_event VALUES (265, 'Cycling Men''s Individual Time Trial', 20);
INSERT INTO public.api_event VALUES (266, 'Cycling Men''s Keirin', 20);
INSERT INTO public.api_event VALUES (267, 'Cycling Men''s Madison', 20);
INSERT INTO public.api_event VALUES (268, 'Cycling Men''s Mountainbike, Cross-Country', 20);
INSERT INTO public.api_event VALUES (269, 'Cycling Men''s Omnium', 20);
INSERT INTO public.api_event VALUES (270, 'Cycling Men''s Points Race', 20);
INSERT INTO public.api_event VALUES (271, 'Cycling Men''s Road Race, Individual', 20);
INSERT INTO public.api_event VALUES (272, 'Cycling Men''s Road Race, Team', 20);
INSERT INTO public.api_event VALUES (273, 'Cycling Men''s Sprint', 20);
INSERT INTO public.api_event VALUES (274, 'Cycling Men''s Tandem Sprint, 2,000 metres', 20);
INSERT INTO public.api_event VALUES (275, 'Cycling Men''s Team Pursuit, 1,980 yards', 20);
INSERT INTO public.api_event VALUES (276, 'Cycling Men''s Team Pursuit, 4,000 metres', 20);
INSERT INTO public.api_event VALUES (277, 'Cycling Men''s Team Sprint', 20);
INSERT INTO public.api_event VALUES (278, 'Cycling Women''s 500 metres Time Trial', 20);
INSERT INTO public.api_event VALUES (279, 'Cycling Women''s BMX', 20);
INSERT INTO public.api_event VALUES (280, 'Cycling Women''s Individual Pursuit, 3,000 metres', 20);
INSERT INTO public.api_event VALUES (281, 'Cycling Women''s Individual Time Trial', 20);
INSERT INTO public.api_event VALUES (282, 'Cycling Women''s Keirin', 20);
INSERT INTO public.api_event VALUES (283, 'Cycling Women''s Mountainbike, Cross-Country', 20);
INSERT INTO public.api_event VALUES (284, 'Cycling Women''s Omnium', 20);
INSERT INTO public.api_event VALUES (285, 'Cycling Women''s Points Race', 20);
INSERT INTO public.api_event VALUES (286, 'Cycling Women''s Road Race, Individual', 20);
INSERT INTO public.api_event VALUES (287, 'Cycling Women''s Sprint', 20);
INSERT INTO public.api_event VALUES (288, 'Cycling Women''s Team Pursuit', 20);
INSERT INTO public.api_event VALUES (289, 'Cycling Women''s Team Sprint', 20);
INSERT INTO public.api_event VALUES (290, 'Diving Men''s Plain High', 21);
INSERT INTO public.api_event VALUES (291, 'Diving Men''s Platform', 21);
INSERT INTO public.api_event VALUES (292, 'Diving Men''s Springboard', 21);
INSERT INTO public.api_event VALUES (293, 'Diving Men''s Synchronized Platform', 21);
INSERT INTO public.api_event VALUES (294, 'Diving Men''s Synchronized Springboard', 21);
INSERT INTO public.api_event VALUES (295, 'Diving Women''s Plain High', 21);
INSERT INTO public.api_event VALUES (296, 'Diving Women''s Platform', 21);
INSERT INTO public.api_event VALUES (297, 'Diving Women''s Springboard', 21);
INSERT INTO public.api_event VALUES (298, 'Diving Women''s Synchronized Platform', 21);
INSERT INTO public.api_event VALUES (299, 'Diving Women''s Synchronized Springboard', 21);
INSERT INTO public.api_event VALUES (300, 'Equestrianism Men''s Dressage, Individual', 22);
INSERT INTO public.api_event VALUES (301, 'Equestrianism Men''s Dressage, Team', 22);
INSERT INTO public.api_event VALUES (302, 'Equestrianism Men''s Jumping, Individual', 22);
INSERT INTO public.api_event VALUES (303, 'Equestrianism Men''s Jumping, Team', 22);
INSERT INTO public.api_event VALUES (304, 'Equestrianism Men''s Three-Day Event, Individual', 22);
INSERT INTO public.api_event VALUES (305, 'Equestrianism Men''s Three-Day Event, Team', 22);
INSERT INTO public.api_event VALUES (306, 'Equestrianism Men''s Vaulting, Individual', 22);
INSERT INTO public.api_event VALUES (307, 'Equestrianism Men''s Vaulting, Team', 22);
INSERT INTO public.api_event VALUES (308, 'Equestrianism Mixed Dressage, Individual', 22);
INSERT INTO public.api_event VALUES (309, 'Equestrianism Mixed Dressage, Team', 22);
INSERT INTO public.api_event VALUES (310, 'Equestrianism Mixed Four-In-Hand Competition', 22);
INSERT INTO public.api_event VALUES (311, 'Equestrianism Mixed Hacks And Hunter Combined', 22);
INSERT INTO public.api_event VALUES (312, 'Equestrianism Mixed High Jump', 22);
INSERT INTO public.api_event VALUES (313, 'Equestrianism Mixed Jumping, Individual', 22);
INSERT INTO public.api_event VALUES (314, 'Equestrianism Mixed Jumping, Team', 22);
INSERT INTO public.api_event VALUES (315, 'Equestrianism Mixed Long Jump', 22);
INSERT INTO public.api_event VALUES (316, 'Equestrianism Mixed Three-Day Event, Individual', 22);
INSERT INTO public.api_event VALUES (317, 'Equestrianism Mixed Three-Day Event, Team', 22);
INSERT INTO public.api_event VALUES (318, 'Fencing Men''s epee, Individual', 23);
INSERT INTO public.api_event VALUES (319, 'Fencing Men''s epee, Masters and Amateurs, Individual', 23);
INSERT INTO public.api_event VALUES (320, 'Fencing Men''s epee, Masters, Individual', 23);
INSERT INTO public.api_event VALUES (321, 'Fencing Men''s epee, Team', 23);
INSERT INTO public.api_event VALUES (322, 'Fencing Men''s Foil, Individual', 23);
INSERT INTO public.api_event VALUES (323, 'Fencing Men''s Foil, Masters, Individual', 23);
INSERT INTO public.api_event VALUES (324, 'Fencing Men''s Foil, Team', 23);
INSERT INTO public.api_event VALUES (325, 'Fencing Men''s Sabre, Individual', 23);
INSERT INTO public.api_event VALUES (326, 'Fencing Men''s Sabre, Individual, Three Hits', 23);
INSERT INTO public.api_event VALUES (327, 'Fencing Men''s Sabre, Masters, Individual', 23);
INSERT INTO public.api_event VALUES (328, 'Fencing Men''s Sabre, Team', 23);
INSERT INTO public.api_event VALUES (329, 'Fencing Men''s Single Sticks, Individual', 23);
INSERT INTO public.api_event VALUES (330, 'Fencing Women''s epee, Individual', 23);
INSERT INTO public.api_event VALUES (331, 'Fencing Women''s epee, Team', 23);
INSERT INTO public.api_event VALUES (332, 'Fencing Women''s Foil, Individual', 23);
INSERT INTO public.api_event VALUES (333, 'Fencing Women''s Foil, Team', 23);
INSERT INTO public.api_event VALUES (334, 'Fencing Women''s Sabre, Individual', 23);
INSERT INTO public.api_event VALUES (335, 'Fencing Women''s Sabre, Team', 23);
INSERT INTO public.api_event VALUES (336, 'Figure Skating Men''s Singles', 24);
INSERT INTO public.api_event VALUES (337, 'Figure Skating Men''s Special Figures', 24);
INSERT INTO public.api_event VALUES (338, 'Figure Skating Mixed Ice Dancing', 24);
INSERT INTO public.api_event VALUES (339, 'Figure Skating Mixed Pairs', 24);
INSERT INTO public.api_event VALUES (340, 'Figure Skating Mixed Team', 24);
INSERT INTO public.api_event VALUES (341, 'Figure Skating Women''s Singles', 24);
INSERT INTO public.api_event VALUES (342, 'Football Men''s Football', 25);
INSERT INTO public.api_event VALUES (343, 'Football Women''s Football', 25);
INSERT INTO public.api_event VALUES (344, 'Freestyle Skiing Men''s Aerials', 26);
INSERT INTO public.api_event VALUES (345, 'Freestyle Skiing Men''s Halfpipe', 26);
INSERT INTO public.api_event VALUES (346, 'Freestyle Skiing Men''s Moguls', 26);
INSERT INTO public.api_event VALUES (347, 'Freestyle Skiing Men''s Ski Cross', 26);
INSERT INTO public.api_event VALUES (348, 'Freestyle Skiing Men''s Slopestyle', 26);
INSERT INTO public.api_event VALUES (349, 'Freestyle Skiing Women''s Aerials', 26);
INSERT INTO public.api_event VALUES (350, 'Freestyle Skiing Women''s Halfpipe', 26);
INSERT INTO public.api_event VALUES (351, 'Freestyle Skiing Women''s Moguls', 26);
INSERT INTO public.api_event VALUES (352, 'Freestyle Skiing Women''s Ski Cross', 26);
INSERT INTO public.api_event VALUES (353, 'Freestyle Skiing Women''s Slopestyle', 26);
INSERT INTO public.api_event VALUES (354, 'Golf Men''s Individual', 27);
INSERT INTO public.api_event VALUES (355, 'Golf Men''s Team', 27);
INSERT INTO public.api_event VALUES (356, 'Golf Women''s Individual', 27);
INSERT INTO public.api_event VALUES (357, 'Gymnastics Men''s Club Swinging', 28);
INSERT INTO public.api_event VALUES (358, 'Gymnastics Men''s Floor Exercise', 28);
INSERT INTO public.api_event VALUES (359, 'Gymnastics Men''s Horizontal Bar', 28);
INSERT INTO public.api_event VALUES (360, 'Gymnastics Men''s Horizontal Bar, Teams', 28);
INSERT INTO public.api_event VALUES (361, 'Gymnastics Men''s Horse Vault', 28);
INSERT INTO public.api_event VALUES (362, 'Gymnastics Men''s Individual All-Around', 28);
INSERT INTO public.api_event VALUES (363, 'Gymnastics Men''s Individual All-Around, 4 Events', 28);
INSERT INTO public.api_event VALUES (364, 'Gymnastics Men''s Individual All-Around, 5 Events', 28);
INSERT INTO public.api_event VALUES (365, 'Gymnastics Men''s Individual All-Around, Apparatus Work', 28);
INSERT INTO public.api_event VALUES (366, 'Gymnastics Men''s Individual All-Around, Field Sports', 28);
INSERT INTO public.api_event VALUES (367, 'Gymnastics Men''s Parallel Bars', 28);
INSERT INTO public.api_event VALUES (368, 'Gymnastics Men''s Parallel Bars, Teams', 28);
INSERT INTO public.api_event VALUES (369, 'Gymnastics Men''s Pommelled Horse', 28);
INSERT INTO public.api_event VALUES (370, 'Gymnastics Men''s Rings', 28);
INSERT INTO public.api_event VALUES (371, 'Gymnastics Men''s Rope Climbing', 28);
INSERT INTO public.api_event VALUES (372, 'Gymnastics Men''s Side Horse', 28);
INSERT INTO public.api_event VALUES (373, 'Gymnastics Men''s Team All-Around', 28);
INSERT INTO public.api_event VALUES (374, 'Gymnastics Men''s Team All-Around, Free System', 28);
INSERT INTO public.api_event VALUES (375, 'Gymnastics Men''s Team All-Around, Swedish System', 28);
INSERT INTO public.api_event VALUES (376, 'Gymnastics Men''s Tumbling', 28);
INSERT INTO public.api_event VALUES (377, 'Gymnastics Women''s Balance Beam', 28);
INSERT INTO public.api_event VALUES (378, 'Gymnastics Women''s Floor Exercise', 28);
INSERT INTO public.api_event VALUES (379, 'Gymnastics Women''s Horse Vault', 28);
INSERT INTO public.api_event VALUES (380, 'Gymnastics Women''s Individual All-Around', 28);
INSERT INTO public.api_event VALUES (381, 'Gymnastics Women''s Team All-Around', 28);
INSERT INTO public.api_event VALUES (382, 'Gymnastics Women''s Team Portable Apparatus', 28);
INSERT INTO public.api_event VALUES (383, 'Gymnastics Women''s Uneven Bars', 28);
INSERT INTO public.api_event VALUES (384, 'Handball Men''s Handball', 29);
INSERT INTO public.api_event VALUES (385, 'Handball Women''s Handball', 29);
INSERT INTO public.api_event VALUES (386, 'Hockey Men''s Hockey', 30);
INSERT INTO public.api_event VALUES (387, 'Hockey Women''s Hockey', 30);
INSERT INTO public.api_event VALUES (388, 'Ice Hockey Men''s Ice Hockey', 31);
INSERT INTO public.api_event VALUES (389, 'Ice Hockey Women''s Ice Hockey', 31);
INSERT INTO public.api_event VALUES (390, 'Jeu De Paume Men''s Singles', 32);
INSERT INTO public.api_event VALUES (391, 'Judo Men''s Extra-Lightweight', 33);
INSERT INTO public.api_event VALUES (392, 'Judo Men''s Half-Heavyweight', 33);
INSERT INTO public.api_event VALUES (393, 'Judo Men''s Half-Lightweight', 33);
INSERT INTO public.api_event VALUES (394, 'Judo Men''s Half-Middleweight', 33);
INSERT INTO public.api_event VALUES (395, 'Judo Men''s Heavyweight', 33);
INSERT INTO public.api_event VALUES (396, 'Judo Men''s Lightweight', 33);
INSERT INTO public.api_event VALUES (397, 'Judo Men''s Middleweight', 33);
INSERT INTO public.api_event VALUES (398, 'Judo Men''s Open Class', 33);
INSERT INTO public.api_event VALUES (399, 'Judo Women''s Extra-Lightweight', 33);
INSERT INTO public.api_event VALUES (400, 'Judo Women''s Half-Heavyweight', 33);
INSERT INTO public.api_event VALUES (401, 'Judo Women''s Half-Lightweight', 33);
INSERT INTO public.api_event VALUES (402, 'Judo Women''s Half-Middleweight', 33);
INSERT INTO public.api_event VALUES (403, 'Judo Women''s Heavyweight', 33);
INSERT INTO public.api_event VALUES (404, 'Judo Women''s Lightweight', 33);
INSERT INTO public.api_event VALUES (405, 'Judo Women''s Middleweight', 33);
INSERT INTO public.api_event VALUES (406, 'Lacrosse Men''s Lacrosse', 34);
INSERT INTO public.api_event VALUES (407, 'Luge Men''s Singles', 35);
INSERT INTO public.api_event VALUES (408, 'Luge Mixed (Men)''s Doubles', 35);
INSERT INTO public.api_event VALUES (409, 'Luge Mixed Team Relay', 35);
INSERT INTO public.api_event VALUES (410, 'Luge Women''s Singles', 35);
INSERT INTO public.api_event VALUES (411, 'Military Ski Patrol Men''s Military Ski Patrol', 36);
INSERT INTO public.api_event VALUES (412, 'Modern Pentathlon Men''s Individual', 37);
INSERT INTO public.api_event VALUES (413, 'Modern Pentathlon Men''s Team', 37);
INSERT INTO public.api_event VALUES (414, 'Modern Pentathlon Women''s Individual', 37);
INSERT INTO public.api_event VALUES (415, 'Motorboating Mixed A-Class (Open)', 38);
INSERT INTO public.api_event VALUES (416, 'Motorboating Mixed B-Class (Under 60 Feet)', 38);
INSERT INTO public.api_event VALUES (417, 'Motorboating Mixed C-Class', 38);
INSERT INTO public.api_event VALUES (418, 'Nordic Combined Men''s Individual', 39);
INSERT INTO public.api_event VALUES (419, 'Nordic Combined Men''s Large Hill / 10 km, Individual', 39);
INSERT INTO public.api_event VALUES (420, 'Nordic Combined Men''s Normal Hill / 10 km, Individual', 39);
INSERT INTO public.api_event VALUES (421, 'Nordic Combined Men''s Sprint', 39);
INSERT INTO public.api_event VALUES (422, 'Nordic Combined Men''s Team', 39);
INSERT INTO public.api_event VALUES (423, 'Polo Men''s Polo', 40);
INSERT INTO public.api_event VALUES (424, 'Racquets Men''s Doubles', 41);
INSERT INTO public.api_event VALUES (425, 'Racquets Men''s Singles', 41);
INSERT INTO public.api_event VALUES (426, 'Rhythmic Gymnastics Women''s Group', 42);
INSERT INTO public.api_event VALUES (427, 'Rhythmic Gymnastics Women''s Individual', 42);
INSERT INTO public.api_event VALUES (428, 'Roque Men''s Singles', 43);
INSERT INTO public.api_event VALUES (429, 'Rowing Men''s 17-Man Naval Rowing Boats', 44);
INSERT INTO public.api_event VALUES (430, 'Rowing Men''s 6-Man Naval Rowing Boats', 44);
INSERT INTO public.api_event VALUES (431, 'Rowing Men''s Coxed Eights', 44);
INSERT INTO public.api_event VALUES (432, 'Rowing Men''s Coxed Fours', 44);
INSERT INTO public.api_event VALUES (433, 'Rowing Men''s Coxed Fours, Inriggers', 44);
INSERT INTO public.api_event VALUES (434, 'Rowing Men''s Coxed Fours, Outriggers', 44);
INSERT INTO public.api_event VALUES (435, 'Rowing Men''s Coxed Pairs', 44);
INSERT INTO public.api_event VALUES (436, 'Rowing Men''s Coxed Pairs (1 kilometres)', 44);
INSERT INTO public.api_event VALUES (437, 'Rowing Men''s Coxed Pairs (1 mile)', 44);
INSERT INTO public.api_event VALUES (438, 'Rowing Men''s Coxless Fours', 44);
INSERT INTO public.api_event VALUES (439, 'Rowing Men''s Coxless Pairs', 44);
INSERT INTO public.api_event VALUES (441, 'Rowing Men''s Lightweight Coxless Fours', 44);
INSERT INTO public.api_event VALUES (442, 'Rowing Men''s Lightweight Double Sculls', 44);
INSERT INTO public.api_event VALUES (443, 'Rowing Men''s Quadruple Sculls', 44);
INSERT INTO public.api_event VALUES (444, 'Rowing Men''s Single Sculls', 44);
INSERT INTO public.api_event VALUES (445, 'Rowing Women''s Coxed Eights', 44);
INSERT INTO public.api_event VALUES (446, 'Rowing Women''s Coxed Fours', 44);
INSERT INTO public.api_event VALUES (447, 'Rowing Women''s Coxed Quadruple Sculls', 44);
INSERT INTO public.api_event VALUES (448, 'Rowing Women''s Coxless Fours', 44);
INSERT INTO public.api_event VALUES (449, 'Rowing Women''s Coxless Pairs', 44);
INSERT INTO public.api_event VALUES (450, 'Rowing Women''s Double Sculls', 44);
INSERT INTO public.api_event VALUES (451, 'Rowing Women''s Lightweight Double Sculls', 44);
INSERT INTO public.api_event VALUES (452, 'Rowing Women''s Quadruple Sculls', 44);
INSERT INTO public.api_event VALUES (453, 'Rowing Women''s Single Sculls', 44);
INSERT INTO public.api_event VALUES (454, 'Rugby Men''s Rugby', 45);
INSERT INTO public.api_event VALUES (455, 'Rugby Sevens Men''s Rugby Sevens', 46);
INSERT INTO public.api_event VALUES (456, 'Rugby Sevens Women''s Rugby Sevens', 46);
INSERT INTO public.api_event VALUES (457, 'Sailing Men''s One Person Dinghy', 47);
INSERT INTO public.api_event VALUES (458, 'Sailing Men''s One Person Heavyweight Dinghy', 47);
INSERT INTO public.api_event VALUES (459, 'Sailing Men''s Skiff', 47);
INSERT INTO public.api_event VALUES (460, 'Sailing Men''s Two Person Dinghy', 47);
INSERT INTO public.api_event VALUES (461, 'Sailing Men''s Two Person Keelboat', 47);
INSERT INTO public.api_event VALUES (462, 'Sailing Men''s Windsurfer', 47);
INSERT INTO public.api_event VALUES (463, 'Sailing Mixed 0.5-1 Ton', 47);
INSERT INTO public.api_event VALUES (464, 'Sailing Mixed 0-0.5 Ton', 47);
INSERT INTO public.api_event VALUES (465, 'Sailing Mixed 10 metres', 47);
INSERT INTO public.api_event VALUES (466, 'Sailing Mixed 10-20 Ton', 47);
INSERT INTO public.api_event VALUES (467, 'Sailing Mixed 12 foot', 47);
INSERT INTO public.api_event VALUES (468, 'Sailing Mixed 12 metres', 47);
INSERT INTO public.api_event VALUES (469, 'Sailing Mixed 1-2 Ton', 47);
INSERT INTO public.api_event VALUES (470, 'Sailing Mixed 20+ Ton', 47);
INSERT INTO public.api_event VALUES (471, 'Sailing Mixed 2-3 Ton', 47);
INSERT INTO public.api_event VALUES (472, 'Sailing Mixed 30 metres', 47);
INSERT INTO public.api_event VALUES (473, 'Sailing Mixed 3-10 Ton', 47);
INSERT INTO public.api_event VALUES (474, 'Sailing Mixed 40 metres', 47);
INSERT INTO public.api_event VALUES (475, 'Sailing Mixed 5.5 metres', 47);
INSERT INTO public.api_event VALUES (476, 'Sailing Mixed 6 metres', 47);
INSERT INTO public.api_event VALUES (477, 'Sailing Mixed 6.5 metres', 47);
INSERT INTO public.api_event VALUES (478, 'Sailing Mixed 7 metres', 47);
INSERT INTO public.api_event VALUES (479, 'Sailing Mixed 8 metres', 47);
INSERT INTO public.api_event VALUES (480, 'Sailing Mixed Multihull', 47);
INSERT INTO public.api_event VALUES (481, 'Sailing Mixed One Person Dinghy', 47);
INSERT INTO public.api_event VALUES (482, 'Sailing Mixed Open', 47);
INSERT INTO public.api_event VALUES (483, 'Sailing Mixed Skiff', 47);
INSERT INTO public.api_event VALUES (484, 'Sailing Mixed Three Person Keelboat', 47);
INSERT INTO public.api_event VALUES (485, 'Sailing Mixed Two Person Dinghy', 47);
INSERT INTO public.api_event VALUES (486, 'Sailing Mixed Two Person Heavyweight Dinghy', 47);
INSERT INTO public.api_event VALUES (487, 'Sailing Mixed Two Person Keelboat', 47);
INSERT INTO public.api_event VALUES (488, 'Sailing Mixed Windsurfer', 47);
INSERT INTO public.api_event VALUES (489, 'Sailing Women''s One Person Dinghy', 47);
INSERT INTO public.api_event VALUES (490, 'Sailing Women''s Skiff', 47);
INSERT INTO public.api_event VALUES (491, 'Sailing Women''s Three Person Keelboat', 47);
INSERT INTO public.api_event VALUES (492, 'Sailing Women''s Two Person Dinghy', 47);
INSERT INTO public.api_event VALUES (493, 'Sailing Women''s Windsurfer', 47);
INSERT INTO public.api_event VALUES (494, 'Shooting Men''s Air Pistol, 10 metres', 48);
INSERT INTO public.api_event VALUES (495, 'Shooting Men''s Air Rifle, 10 metres', 48);
INSERT INTO public.api_event VALUES (496, 'Shooting Men''s Double Trap', 48);
INSERT INTO public.api_event VALUES (497, 'Shooting Men''s Dueling Pistol Au Commandement, 25 metres', 48);
INSERT INTO public.api_event VALUES (498, 'Shooting Men''s Dueling Pistol Au Vise 20 metres', 48);
INSERT INTO public.api_event VALUES (499, 'Shooting Men''s Dueling Pistol, 30 metres', 48);
INSERT INTO public.api_event VALUES (500, 'Shooting Men''s Dueling Pistol, 30 metres, Team', 48);
INSERT INTO public.api_event VALUES (501, 'Shooting Men''s Free Pistol, 25 metres', 48);
INSERT INTO public.api_event VALUES (502, 'Shooting Men''s Free Pistol, 30 metres', 48);
INSERT INTO public.api_event VALUES (503, 'Shooting Men''s Free Pistol, 50 metres', 48);
INSERT INTO public.api_event VALUES (504, 'Shooting Men''s Free Pistol, 50 metres, Team', 48);
INSERT INTO public.api_event VALUES (505, 'Shooting Men''s Free Pistol, 50 yards', 48);
INSERT INTO public.api_event VALUES (506, 'Shooting Men''s Free Pistol, 50 yards, Team', 48);
INSERT INTO public.api_event VALUES (507, 'Shooting Men''s Free Rifle, 1,000 Yards', 48);
INSERT INTO public.api_event VALUES (508, 'Shooting Men''s Free Rifle, 400, 600 and 800 metres, Team', 48);
INSERT INTO public.api_event VALUES (509, 'Shooting Men''s Free Rifle, Any Position, 300 metres', 48);
INSERT INTO public.api_event VALUES (510, 'Shooting Men''s Free Rifle, Kneeling, 300 metres', 48);
INSERT INTO public.api_event VALUES (511, 'Shooting Men''s Free Rifle, Prone, 300 metres', 48);
INSERT INTO public.api_event VALUES (512, 'Shooting Men''s Free Rifle, Prone, 600 metres', 48);
INSERT INTO public.api_event VALUES (513, 'Shooting Men''s Free Rifle, Standing, 300 metres', 48);
INSERT INTO public.api_event VALUES (514, 'Shooting Men''s Free Rifle, Three Positions, 300 metres', 48);
INSERT INTO public.api_event VALUES (515, 'Shooting Men''s Free Rifle, Three Positions, 300 metres, Team', 48);
INSERT INTO public.api_event VALUES (516, 'Shooting Men''s Military Pistol, 25 metres', 48);
INSERT INTO public.api_event VALUES (517, 'Shooting Men''s Military Pistol, 30 metres', 48);
INSERT INTO public.api_event VALUES (518, 'Shooting Men''s Military Pistol, Team', 48);
INSERT INTO public.api_event VALUES (519, 'Shooting Men''s Military Revolver, 1873-1874 Gras Model, 20 metres', 48);
INSERT INTO public.api_event VALUES (520, 'Shooting Men''s Military Revolver, 20 metres', 48);
INSERT INTO public.api_event VALUES (521, 'Shooting Men''s Military Rifle, 1873-1874 Gras Model, Kneeling Or Standing, 200 metres', 48);
INSERT INTO public.api_event VALUES (522, 'Shooting Men''s Military Rifle, 200 metres', 48);
INSERT INTO public.api_event VALUES (523, 'Shooting Men''s Military Rifle, 200, 400, 500 and 600 metres, Team', 48);
INSERT INTO public.api_event VALUES (524, 'Shooting Men''s Military Rifle, 200/500/600/800/900/1,000 Yards, Team', 48);
INSERT INTO public.api_event VALUES (525, 'Shooting Men''s Military Rifle, 300 metres and 600 metres, Prone, Team', 48);
INSERT INTO public.api_event VALUES (526, 'Shooting Men''s Military Rifle, Any Position, 600 metres', 48);
INSERT INTO public.api_event VALUES (527, 'Shooting Men''s Military Rifle, Kneeling Or Standing, 300 metres', 48);
INSERT INTO public.api_event VALUES (528, 'Shooting Men''s Military Rifle, Prone, 300 metres', 48);
INSERT INTO public.api_event VALUES (529, 'Shooting Men''s Military Rifle, Prone, 300 metres, Team', 48);
INSERT INTO public.api_event VALUES (530, 'Shooting Men''s Military Rifle, Prone, 600 metres', 48);
INSERT INTO public.api_event VALUES (531, 'Shooting Men''s Military Rifle, Prone, 600 metres, Team', 48);
INSERT INTO public.api_event VALUES (532, 'Shooting Men''s Military Rifle, Standing, 300 metres', 48);
INSERT INTO public.api_event VALUES (533, 'Shooting Men''s Military Rifle, Standing, 300 metres, Team', 48);
INSERT INTO public.api_event VALUES (534, 'Shooting Men''s Military Rifle, Three Positions, 300 metres', 48);
INSERT INTO public.api_event VALUES (535, 'Shooting Men''s Muzzle-Loading Pistol, 25 metres', 48);
INSERT INTO public.api_event VALUES (536, 'Shooting Men''s Rapid-Fire Pistol, 25 metres', 48);
INSERT INTO public.api_event VALUES (537, 'Shooting Men''s Running Target, 10 metres', 48);
INSERT INTO public.api_event VALUES (538, 'Shooting Men''s Running Target, 50 metres', 48);
INSERT INTO public.api_event VALUES (539, 'Shooting Men''s Running Target, Double Shot', 48);
INSERT INTO public.api_event VALUES (540, 'Shooting Men''s Running Target, Double Shot, Team', 48);
INSERT INTO public.api_event VALUES (541, 'Shooting Men''s Running Target, Single And Double Shot', 48);
INSERT INTO public.api_event VALUES (542, 'Shooting Men''s Running Target, Single Shot', 48);
INSERT INTO public.api_event VALUES (543, 'Shooting Men''s Running Target, Single Shot, Team', 48);
INSERT INTO public.api_event VALUES (544, 'Shooting Men''s Skeet', 48);
INSERT INTO public.api_event VALUES (545, 'Shooting Men''s Small Bore-Rifle, Standing, 50 metres, Team', 48);
INSERT INTO public.api_event VALUES (546, 'Shooting Men''s Small-Bore Rifle, 50 and 100 yards, Team', 48);
INSERT INTO public.api_event VALUES (547, 'Shooting Men''s Small-Bore Rifle, Any Position, 50 metres', 48);
INSERT INTO public.api_event VALUES (548, 'Shooting Men''s Small-Bore Rifle, Disappearing Target, 25 metres', 48);
INSERT INTO public.api_event VALUES (549, 'Shooting Men''s Small-Bore Rifle, Disappearing Target, 25 metres, Team', 48);
INSERT INTO public.api_event VALUES (550, 'Shooting Men''s Small-Bore Rifle, Disappearing Target, 25 yards', 48);
INSERT INTO public.api_event VALUES (551, 'Shooting Men''s Small-Bore Rifle, Moving Target, 25 yards', 48);
INSERT INTO public.api_event VALUES (552, 'Shooting Men''s Small-Bore Rifle, Prone, 50 and 100 yards', 48);
INSERT INTO public.api_event VALUES (553, 'Shooting Men''s Small-Bore Rifle, Prone, 50 metres', 48);
INSERT INTO public.api_event VALUES (554, 'Shooting Men''s Small-Bore Rifle, Prone, 50 metres, Team', 48);
INSERT INTO public.api_event VALUES (555, 'Shooting Men''s Small-Bore Rifle, Standing, 50 metres', 48);
INSERT INTO public.api_event VALUES (556, 'Shooting Men''s Small-Bore Rifle, Three Positions, 50 metres', 48);
INSERT INTO public.api_event VALUES (557, 'Shooting Men''s Trap', 48);
INSERT INTO public.api_event VALUES (558, 'Shooting Men''s Trap, Double Shot, 14 metres', 48);
INSERT INTO public.api_event VALUES (559, 'Shooting Men''s Trap, Single Shot, 16 metres', 48);
INSERT INTO public.api_event VALUES (560, 'Shooting Men''s Trap, Team', 48);
INSERT INTO public.api_event VALUES (561, 'Shooting Mixed Free Pistol, 50 metres', 48);
INSERT INTO public.api_event VALUES (562, 'Shooting Mixed Free Rifle, Three Positions, 300 metres', 48);
INSERT INTO public.api_event VALUES (563, 'Shooting Mixed Rapid-Fire Pistol, 25 metres', 48);
INSERT INTO public.api_event VALUES (564, 'Shooting Mixed Running Target, 50 metres', 48);
INSERT INTO public.api_event VALUES (565, 'Shooting Mixed Skeet', 48);
INSERT INTO public.api_event VALUES (566, 'Shooting Mixed Small-Bore Rifle, Prone, 50 metres', 48);
INSERT INTO public.api_event VALUES (567, 'Shooting Mixed Small-Bore Rifle, Three Positions, 50 metres', 48);
INSERT INTO public.api_event VALUES (568, 'Shooting Mixed Trap', 48);
INSERT INTO public.api_event VALUES (569, 'Shooting Women''s Air Pistol, 10 metres', 48);
INSERT INTO public.api_event VALUES (570, 'Shooting Women''s Air Rifle, 10 metres', 48);
INSERT INTO public.api_event VALUES (571, 'Shooting Women''s Double Trap', 48);
INSERT INTO public.api_event VALUES (572, 'Shooting Women''s Skeet', 48);
INSERT INTO public.api_event VALUES (573, 'Shooting Women''s Small-Bore Rifle, Three Positions, 50 metres', 48);
INSERT INTO public.api_event VALUES (574, 'Shooting Women''s Sporting Pistol, 25 metres', 48);
INSERT INTO public.api_event VALUES (575, 'Shooting Women''s Trap', 48);
INSERT INTO public.api_event VALUES (576, 'Short Track Speed Skating Men''s 1,000 metres', 49);
INSERT INTO public.api_event VALUES (577, 'Short Track Speed Skating Men''s 1,500 metres', 49);
INSERT INTO public.api_event VALUES (578, 'Short Track Speed Skating Men''s 5,000 metres Relay', 49);
INSERT INTO public.api_event VALUES (579, 'Short Track Speed Skating Men''s 500 metres', 49);
INSERT INTO public.api_event VALUES (580, 'Short Track Speed Skating Women''s 1,000 metres', 49);
INSERT INTO public.api_event VALUES (581, 'Short Track Speed Skating Women''s 1,500 metres', 49);
INSERT INTO public.api_event VALUES (582, 'Short Track Speed Skating Women''s 3,000 metres Relay', 49);
INSERT INTO public.api_event VALUES (583, 'Short Track Speed Skating Women''s 500 metres', 49);
INSERT INTO public.api_event VALUES (584, 'Skeleton Men''s Skeleton', 50);
INSERT INTO public.api_event VALUES (585, 'Skeleton Women''s Skeleton', 50);
INSERT INTO public.api_event VALUES (586, 'Ski Jumping Men''s Large Hill, Individual', 51);
INSERT INTO public.api_event VALUES (587, 'Ski Jumping Men''s Large Hill, Team', 51);
INSERT INTO public.api_event VALUES (588, 'Ski Jumping Men''s Normal Hill, Individual', 51);
INSERT INTO public.api_event VALUES (589, 'Ski Jumping Women''s Normal Hill, Individual', 51);
INSERT INTO public.api_event VALUES (590, 'Snowboarding Men''s Boardercross', 52);
INSERT INTO public.api_event VALUES (591, 'Snowboarding Men''s Giant Slalom', 52);
INSERT INTO public.api_event VALUES (592, 'Snowboarding Men''s Halfpipe', 52);
INSERT INTO public.api_event VALUES (593, 'Snowboarding Men''s Parallel Giant Slalom', 52);
INSERT INTO public.api_event VALUES (594, 'Snowboarding Men''s Parallel Slalom', 52);
INSERT INTO public.api_event VALUES (595, 'Snowboarding Men''s Slopestyle', 52);
INSERT INTO public.api_event VALUES (596, 'Snowboarding Women''s Boardercross', 52);
INSERT INTO public.api_event VALUES (597, 'Snowboarding Women''s Giant Slalom', 52);
INSERT INTO public.api_event VALUES (598, 'Snowboarding Women''s Halfpipe', 52);
INSERT INTO public.api_event VALUES (599, 'Snowboarding Women''s Parallel Giant Slalom', 52);
INSERT INTO public.api_event VALUES (600, 'Snowboarding Women''s Parallel Slalom', 52);
INSERT INTO public.api_event VALUES (601, 'Snowboarding Women''s Slopestyle', 52);
INSERT INTO public.api_event VALUES (602, 'Softball Women''s Softball', 53);
INSERT INTO public.api_event VALUES (603, 'Speed Skating Men''s 1,000 metres', 54);
INSERT INTO public.api_event VALUES (604, 'Speed Skating Men''s 1,500 metres', 54);
INSERT INTO public.api_event VALUES (605, 'Speed Skating Men''s 10,000 metres', 54);
INSERT INTO public.api_event VALUES (606, 'Speed Skating Men''s 5,000 metres', 54);
INSERT INTO public.api_event VALUES (607, 'Speed Skating Men''s 500 metres', 54);
INSERT INTO public.api_event VALUES (608, 'Speed Skating Men''s Allround', 54);
INSERT INTO public.api_event VALUES (609, 'Speed Skating Men''s Team Pursuit (8 laps)', 54);
INSERT INTO public.api_event VALUES (610, 'Speed Skating Women''s 1,000 metres', 54);
INSERT INTO public.api_event VALUES (611, 'Speed Skating Women''s 1,500 metres', 54);
INSERT INTO public.api_event VALUES (612, 'Speed Skating Women''s 3,000 metres', 54);
INSERT INTO public.api_event VALUES (613, 'Speed Skating Women''s 5,000 metres', 54);
INSERT INTO public.api_event VALUES (614, 'Speed Skating Women''s 500 metres', 54);
INSERT INTO public.api_event VALUES (615, 'Speed Skating Women''s Team Pursuit (6 laps)', 54);
INSERT INTO public.api_event VALUES (616, 'Swimming Men''s 1,000 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (617, 'Swimming Men''s 1,200 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (618, 'Swimming Men''s 1,500 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (619, 'Swimming Men''s 10 kilometres Open Water', 55);
INSERT INTO public.api_event VALUES (620, 'Swimming Men''s 100 metres Backstroke', 55);
INSERT INTO public.api_event VALUES (621, 'Swimming Men''s 100 metres Breaststroke', 55);
INSERT INTO public.api_event VALUES (622, 'Swimming Men''s 100 metres Butterfly', 55);
INSERT INTO public.api_event VALUES (623, 'Swimming Men''s 100 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (624, 'Swimming Men''s 100 metres Freestyle For Sailors', 55);
INSERT INTO public.api_event VALUES (625, 'Swimming Men''s 100 Yard Backstroke', 55);
INSERT INTO public.api_event VALUES (626, 'Swimming Men''s 100 yard Freestyle', 55);
INSERT INTO public.api_event VALUES (627, 'Swimming Men''s 200 metres Backstroke', 55);
INSERT INTO public.api_event VALUES (628, 'Swimming Men''s 200 metres Breaststroke', 55);
INSERT INTO public.api_event VALUES (629, 'Swimming Men''s 200 metres Butterfly', 55);
INSERT INTO public.api_event VALUES (630, 'Swimming Men''s 200 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (631, 'Swimming Men''s 200 metres Individual Medley', 55);
INSERT INTO public.api_event VALUES (632, 'Swimming Men''s 200 metres Obstacle Course', 55);
INSERT INTO public.api_event VALUES (633, 'Swimming Men''s 200 metres Team Swimming', 55);
INSERT INTO public.api_event VALUES (634, 'Swimming Men''s 220 yard Freestyle', 55);
INSERT INTO public.api_event VALUES (635, 'Swimming Men''s 4 x 100 metres Freestyle Relay', 55);
INSERT INTO public.api_event VALUES (636, 'Swimming Men''s 4 x 100 metres Medley Relay', 55);
INSERT INTO public.api_event VALUES (637, 'Swimming Men''s 4 x 200 metres Freestyle Relay', 55);
INSERT INTO public.api_event VALUES (638, 'Swimming Men''s 4 x 250 metres Freestyle Relay', 55);
INSERT INTO public.api_event VALUES (639, 'Swimming Men''s 4 x 50 Yard Freestyle Relay', 55);
INSERT INTO public.api_event VALUES (640, 'Swimming Men''s 4,000 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (641, 'Swimming Men''s 400 metres Breaststroke', 55);
INSERT INTO public.api_event VALUES (642, 'Swimming Men''s 400 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (643, 'Swimming Men''s 400 metres Individual Medley', 55);
INSERT INTO public.api_event VALUES (644, 'Swimming Men''s 440 Yard Breaststroke', 55);
INSERT INTO public.api_event VALUES (645, 'Swimming Men''s 440 yard Freestyle', 55);
INSERT INTO public.api_event VALUES (646, 'Swimming Men''s 50 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (647, 'Swimming Men''s 50 yard Freestyle', 55);
INSERT INTO public.api_event VALUES (648, 'Swimming Men''s 500 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (649, 'Swimming Men''s 880 yard Freestyle', 55);
INSERT INTO public.api_event VALUES (650, 'Swimming Men''s One Mile Freestyle', 55);
INSERT INTO public.api_event VALUES (651, 'Swimming Men''s Plunge For Distance', 55);
INSERT INTO public.api_event VALUES (652, 'Swimming Men''s Underwater Swimming', 55);
INSERT INTO public.api_event VALUES (653, 'Swimming Women''s 10 kilometres Open Water', 55);
INSERT INTO public.api_event VALUES (654, 'Swimming Women''s 100 metres Backstroke', 55);
INSERT INTO public.api_event VALUES (655, 'Swimming Women''s 100 metres Breaststroke', 55);
INSERT INTO public.api_event VALUES (656, 'Swimming Women''s 100 metres Butterfly', 55);
INSERT INTO public.api_event VALUES (657, 'Swimming Women''s 100 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (658, 'Swimming Women''s 200 metres Backstroke', 55);
INSERT INTO public.api_event VALUES (659, 'Swimming Women''s 200 metres Breaststroke', 55);
INSERT INTO public.api_event VALUES (660, 'Swimming Women''s 200 metres Butterfly', 55);
INSERT INTO public.api_event VALUES (661, 'Swimming Women''s 200 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (662, 'Swimming Women''s 200 metres Individual Medley', 55);
INSERT INTO public.api_event VALUES (663, 'Swimming Women''s 300 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (664, 'Swimming Women''s 4 x 100 metres Freestyle Relay', 55);
INSERT INTO public.api_event VALUES (665, 'Swimming Women''s 4 x 100 metres Medley Relay', 55);
INSERT INTO public.api_event VALUES (666, 'Swimming Women''s 4 x 200 metres Freestyle Relay', 55);
INSERT INTO public.api_event VALUES (667, 'Swimming Women''s 400 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (668, 'Swimming Women''s 400 metres Individual Medley', 55);
INSERT INTO public.api_event VALUES (669, 'Swimming Women''s 50 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (670, 'Swimming Women''s 800 metres Freestyle', 55);
INSERT INTO public.api_event VALUES (671, 'Synchronized Swimming Women''s Duet', 56);
INSERT INTO public.api_event VALUES (672, 'Synchronized Swimming Women''s Solo', 56);
INSERT INTO public.api_event VALUES (673, 'Synchronized Swimming Women''s Team', 56);
INSERT INTO public.api_event VALUES (674, 'Table Tennis Men''s Doubles', 57);
INSERT INTO public.api_event VALUES (675, 'Table Tennis Men''s Singles', 57);
INSERT INTO public.api_event VALUES (676, 'Table Tennis Men''s Team', 57);
INSERT INTO public.api_event VALUES (677, 'Table Tennis Women''s Doubles', 57);
INSERT INTO public.api_event VALUES (678, 'Table Tennis Women''s Singles', 57);
INSERT INTO public.api_event VALUES (679, 'Table Tennis Women''s Team', 57);
INSERT INTO public.api_event VALUES (680, 'Taekwondo Men''s Featherweight', 58);
INSERT INTO public.api_event VALUES (681, 'Taekwondo Men''s Flyweight', 58);
INSERT INTO public.api_event VALUES (682, 'Taekwondo Men''s Heavyweight', 58);
INSERT INTO public.api_event VALUES (683, 'Taekwondo Men''s Welterweight', 58);
INSERT INTO public.api_event VALUES (684, 'Taekwondo Women''s Featherweight', 58);
INSERT INTO public.api_event VALUES (685, 'Taekwondo Women''s Flyweight', 58);
INSERT INTO public.api_event VALUES (686, 'Taekwondo Women''s Heavyweight', 58);
INSERT INTO public.api_event VALUES (687, 'Taekwondo Women''s Welterweight', 58);
INSERT INTO public.api_event VALUES (688, 'Tennis Men''s Doubles', 59);
INSERT INTO public.api_event VALUES (689, 'Tennis Men''s Doubles, Covered Courts', 59);
INSERT INTO public.api_event VALUES (690, 'Tennis Men''s Singles', 59);
INSERT INTO public.api_event VALUES (691, 'Tennis Men''s Singles, Covered Courts', 59);
INSERT INTO public.api_event VALUES (692, 'Tennis Mixed Doubles', 59);
INSERT INTO public.api_event VALUES (693, 'Tennis Mixed Doubles, Covered Courts', 59);
INSERT INTO public.api_event VALUES (694, 'Tennis Women''s Doubles', 59);
INSERT INTO public.api_event VALUES (695, 'Tennis Women''s Singles', 59);
INSERT INTO public.api_event VALUES (696, 'Tennis Women''s Singles, Covered Courts', 59);
INSERT INTO public.api_event VALUES (697, 'Trampolining Men''s Individual', 60);
INSERT INTO public.api_event VALUES (698, 'Trampolining Women''s Individual', 60);
INSERT INTO public.api_event VALUES (699, 'Triathlon Men''s Olympic Distance', 61);
INSERT INTO public.api_event VALUES (700, 'Triathlon Women''s Olympic Distance', 61);
INSERT INTO public.api_event VALUES (701, 'Tug-Of-War Men''s Tug-Of-War', 62);
INSERT INTO public.api_event VALUES (702, 'Volleyball Men''s Volleyball', 63);
INSERT INTO public.api_event VALUES (703, 'Volleyball Women''s Volleyball', 63);
INSERT INTO public.api_event VALUES (704, 'Water Polo Men''s Water Polo', 64);
INSERT INTO public.api_event VALUES (705, 'Water Polo Women''s Water Polo', 64);
INSERT INTO public.api_event VALUES (706, 'Weightlifting Men''s All-Around Dumbbell Contest', 65);
INSERT INTO public.api_event VALUES (707, 'Weightlifting Men''s Bantamweight', 65);
INSERT INTO public.api_event VALUES (708, 'Weightlifting Men''s Featherweight', 65);
INSERT INTO public.api_event VALUES (709, 'Weightlifting Men''s Flyweight', 65);
INSERT INTO public.api_event VALUES (710, 'Weightlifting Men''s Heavyweight', 65);
INSERT INTO public.api_event VALUES (711, 'Weightlifting Men''s Heavyweight I', 65);
INSERT INTO public.api_event VALUES (712, 'Weightlifting Men''s Heavyweight II', 65);
INSERT INTO public.api_event VALUES (713, 'Weightlifting Men''s Light-Heavyweight', 65);
INSERT INTO public.api_event VALUES (714, 'Weightlifting Men''s Lightweight', 65);
INSERT INTO public.api_event VALUES (715, 'Weightlifting Men''s Middle-Heavyweight', 65);
INSERT INTO public.api_event VALUES (716, 'Weightlifting Men''s Middleweight', 65);
INSERT INTO public.api_event VALUES (717, 'Weightlifting Men''s Super-Heavyweight', 65);
INSERT INTO public.api_event VALUES (718, 'Weightlifting Men''s Unlimited, One Hand', 65);
INSERT INTO public.api_event VALUES (719, 'Weightlifting Men''s Unlimited, Two Hands', 65);
INSERT INTO public.api_event VALUES (720, 'Weightlifting Women''s Featherweight', 65);
INSERT INTO public.api_event VALUES (721, 'Weightlifting Women''s Flyweight', 65);
INSERT INTO public.api_event VALUES (722, 'Weightlifting Women''s Heavyweight', 65);
INSERT INTO public.api_event VALUES (723, 'Weightlifting Women''s Light-Heavyweight', 65);
INSERT INTO public.api_event VALUES (724, 'Weightlifting Women''s Lightweight', 65);
INSERT INTO public.api_event VALUES (725, 'Weightlifting Women''s Middleweight', 65);
INSERT INTO public.api_event VALUES (726, 'Weightlifting Women''s Super-Heavyweight', 65);
INSERT INTO public.api_event VALUES (727, 'Wrestling Men''s All-Around, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (728, 'Wrestling Men''s Bantamweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (729, 'Wrestling Men''s Bantamweight, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (730, 'Wrestling Men''s Featherweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (731, 'Wrestling Men''s Featherweight, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (732, 'Wrestling Men''s Flyweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (733, 'Wrestling Men''s Flyweight, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (734, 'Wrestling Men''s Heavyweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (735, 'Wrestling Men''s Heavyweight, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (736, 'Wrestling Men''s Light-Flyweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (737, 'Wrestling Men''s Light-Flyweight, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (738, 'Wrestling Men''s Light-Heavyweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (739, 'Wrestling Men''s Light-Heavyweight, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (740, 'Wrestling Men''s Lightweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (741, 'Wrestling Men''s Lightweight, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (742, 'Wrestling Men''s Middleweight A, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (743, 'Wrestling Men''s Middleweight B, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (744, 'Wrestling Men''s Middleweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (745, 'Wrestling Men''s Middleweight, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (746, 'Wrestling Men''s Super-Heavyweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (747, 'Wrestling Men''s Super-Heavyweight, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (748, 'Wrestling Men''s Unlimited Class, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (749, 'Wrestling Men''s Welterweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (750, 'Wrestling Men''s Welterweight, Greco-Roman', 66);
INSERT INTO public.api_event VALUES (751, 'Wrestling Women''s Featherweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (752, 'Wrestling Women''s Flyweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (753, 'Wrestling Women''s Heavyweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (754, 'Wrestling Women''s Light-Heavyweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (755, 'Wrestling Women''s Lightweight, Freestyle', 66);
INSERT INTO public.api_event VALUES (756, 'Wrestling Women''s Middleweight, Freestyle', 66);


--
-- TOC entry 3219 (class 0 OID 33426)
-- Dependencies: 223
-- Data for Name: api_game; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.api_game VALUES (1, 'Athina', 1896, 'Summer');
INSERT INTO public.api_game VALUES (2, 'Paris', 1900, 'Summer');
INSERT INTO public.api_game VALUES (3, 'St. Louis', 1904, 'Summer');
INSERT INTO public.api_game VALUES (4, 'Athina', 1906, 'Summer');
INSERT INTO public.api_game VALUES (5, 'London', 1908, 'Summer');
INSERT INTO public.api_game VALUES (6, 'Stockholm', 1912, 'Summer');
INSERT INTO public.api_game VALUES (7, 'Antwerpen', 1920, 'Summer');
INSERT INTO public.api_game VALUES (8, 'Chamonix', 1924, 'Winter');
INSERT INTO public.api_game VALUES (9, 'Paris', 1924, 'Summer');
INSERT INTO public.api_game VALUES (10, 'Amsterdam', 1928, 'Summer');
INSERT INTO public.api_game VALUES (11, 'Sankt Moritz', 1928, 'Winter');
INSERT INTO public.api_game VALUES (12, 'Lake Placid', 1932, 'Winter');
INSERT INTO public.api_game VALUES (13, 'Los Angeles', 1932, 'Summer');
INSERT INTO public.api_game VALUES (14, 'Berlin', 1936, 'Summer');
INSERT INTO public.api_game VALUES (15, 'Garmisch-Partenkirchen', 1936, 'Winter');
INSERT INTO public.api_game VALUES (16, 'London', 1948, 'Summer');
INSERT INTO public.api_game VALUES (17, 'Sankt Moritz', 1948, 'Winter');
INSERT INTO public.api_game VALUES (18, 'Helsinki', 1952, 'Summer');
INSERT INTO public.api_game VALUES (19, 'Oslo', 1952, 'Winter');
INSERT INTO public.api_game VALUES (20, 'Cortina d''Ampezzo', 1956, 'Winter');
INSERT INTO public.api_game VALUES (21, 'Melbourne', 1956, 'Summer');
INSERT INTO public.api_game VALUES (22, 'Stockholm', 1956, 'Summer');
INSERT INTO public.api_game VALUES (23, 'Roma', 1960, 'Summer');
INSERT INTO public.api_game VALUES (24, 'Squaw Valley', 1960, 'Winter');
INSERT INTO public.api_game VALUES (25, 'Innsbruck', 1964, 'Winter');
INSERT INTO public.api_game VALUES (26, 'Tokyo', 1964, 'Summer');
INSERT INTO public.api_game VALUES (27, 'Grenoble', 1968, 'Winter');
INSERT INTO public.api_game VALUES (28, 'Mexico City', 1968, 'Summer');
INSERT INTO public.api_game VALUES (29, 'Munich', 1972, 'Summer');
INSERT INTO public.api_game VALUES (30, 'Sapporo', 1972, 'Winter');
INSERT INTO public.api_game VALUES (31, 'Innsbruck', 1976, 'Winter');
INSERT INTO public.api_game VALUES (32, 'Montreal', 1976, 'Summer');
INSERT INTO public.api_game VALUES (33, 'Lake Placid', 1980, 'Winter');
INSERT INTO public.api_game VALUES (34, 'Moskva', 1980, 'Summer');
INSERT INTO public.api_game VALUES (35, 'Los Angeles', 1984, 'Summer');
INSERT INTO public.api_game VALUES (36, 'Sarajevo', 1984, 'Winter');
INSERT INTO public.api_game VALUES (37, 'Calgary', 1988, 'Winter');
INSERT INTO public.api_game VALUES (38, 'Seoul', 1988, 'Summer');
INSERT INTO public.api_game VALUES (39, 'Albertville', 1992, 'Winter');
INSERT INTO public.api_game VALUES (40, 'Barcelona', 1992, 'Summer');
INSERT INTO public.api_game VALUES (41, 'Lillehammer', 1994, 'Winter');
INSERT INTO public.api_game VALUES (42, 'Atlanta', 1996, 'Summer');
INSERT INTO public.api_game VALUES (43, 'Nagano', 1998, 'Winter');
INSERT INTO public.api_game VALUES (44, 'Sydney', 2000, 'Summer');
INSERT INTO public.api_game VALUES (45, 'Salt Lake City', 2002, 'Winter');
INSERT INTO public.api_game VALUES (46, 'Athina', 2004, 'Summer');
INSERT INTO public.api_game VALUES (47, 'Torino', 2006, 'Winter');
INSERT INTO public.api_game VALUES (48, 'Beijing', 2008, 'Summer');
INSERT INTO public.api_game VALUES (49, 'Vancouver', 2010, 'Winter');
INSERT INTO public.api_game VALUES (50, 'London', 2012, 'Summer');
INSERT INTO public.api_game VALUES (51, 'Sochi', 2014, 'Winter');
INSERT INTO public.api_game VALUES (52, 'Rio de Janeiro', 2016, 'Summer');


--
-- TOC entry 3229 (class 0 OID 33483)
-- Dependencies: 233
-- Data for Name: api_gameevent; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.api_gameevent VALUES (5863, 21, 52);
INSERT INTO public.api_gameevent VALUES (5864, 34, 52);
INSERT INTO public.api_gameevent VALUES (5865, 38, 52);
INSERT INTO public.api_gameevent VALUES (5866, 39, 52);
INSERT INTO public.api_gameevent VALUES (5867, 64, 52);
INSERT INTO public.api_gameevent VALUES (5868, 69, 52);
INSERT INTO public.api_gameevent VALUES (5869, 70, 52);
INSERT INTO public.api_gameevent VALUES (5870, 71, 52);
INSERT INTO public.api_gameevent VALUES (5871, 74, 52);
INSERT INTO public.api_gameevent VALUES (5872, 75, 52);
INSERT INTO public.api_gameevent VALUES (5873, 78, 52);
INSERT INTO public.api_gameevent VALUES (5874, 84, 52);
INSERT INTO public.api_gameevent VALUES (5875, 85, 52);
INSERT INTO public.api_gameevent VALUES (5876, 87, 52);
INSERT INTO public.api_gameevent VALUES (5877, 88, 52);
INSERT INTO public.api_gameevent VALUES (5878, 90, 52);
INSERT INTO public.api_gameevent VALUES (5879, 92, 52);
INSERT INTO public.api_gameevent VALUES (5880, 95, 52);
INSERT INTO public.api_gameevent VALUES (5881, 99, 52);
INSERT INTO public.api_gameevent VALUES (5882, 100, 52);
INSERT INTO public.api_gameevent VALUES (5883, 103, 52);
INSERT INTO public.api_gameevent VALUES (5884, 104, 52);
INSERT INTO public.api_gameevent VALUES (5885, 105, 52);
INSERT INTO public.api_gameevent VALUES (5886, 108, 52);
INSERT INTO public.api_gameevent VALUES (5887, 109, 52);
INSERT INTO public.api_gameevent VALUES (5888, 112, 52);
INSERT INTO public.api_gameevent VALUES (5889, 113, 52);
INSERT INTO public.api_gameevent VALUES (5890, 119, 52);
INSERT INTO public.api_gameevent VALUES (5891, 120, 52);
INSERT INTO public.api_gameevent VALUES (5892, 122, 52);
INSERT INTO public.api_gameevent VALUES (5893, 123, 52);
INSERT INTO public.api_gameevent VALUES (5894, 124, 52);
INSERT INTO public.api_gameevent VALUES (5895, 125, 52);
INSERT INTO public.api_gameevent VALUES (5896, 126, 52);
INSERT INTO public.api_gameevent VALUES (5897, 128, 52);
INSERT INTO public.api_gameevent VALUES (5898, 129, 52);
INSERT INTO public.api_gameevent VALUES (5899, 130, 52);
INSERT INTO public.api_gameevent VALUES (5900, 131, 52);
INSERT INTO public.api_gameevent VALUES (5901, 132, 52);
INSERT INTO public.api_gameevent VALUES (5902, 133, 52);
INSERT INTO public.api_gameevent VALUES (5903, 135, 52);
INSERT INTO public.api_gameevent VALUES (5904, 136, 52);
INSERT INTO public.api_gameevent VALUES (5905, 137, 52);
INSERT INTO public.api_gameevent VALUES (5906, 138, 52);
INSERT INTO public.api_gameevent VALUES (5907, 139, 52);
INSERT INTO public.api_gameevent VALUES (5908, 140, 52);
INSERT INTO public.api_gameevent VALUES (5909, 141, 52);
INSERT INTO public.api_gameevent VALUES (5910, 142, 52);
INSERT INTO public.api_gameevent VALUES (5911, 144, 52);
INSERT INTO public.api_gameevent VALUES (5912, 145, 52);
INSERT INTO public.api_gameevent VALUES (5913, 146, 52);
INSERT INTO public.api_gameevent VALUES (5914, 147, 52);
INSERT INTO public.api_gameevent VALUES (5915, 148, 52);
INSERT INTO public.api_gameevent VALUES (5916, 149, 52);
INSERT INTO public.api_gameevent VALUES (5917, 150, 52);
INSERT INTO public.api_gameevent VALUES (5918, 151, 52);
INSERT INTO public.api_gameevent VALUES (5919, 153, 52);
INSERT INTO public.api_gameevent VALUES (5920, 154, 52);
INSERT INTO public.api_gameevent VALUES (5921, 156, 52);
INSERT INTO public.api_gameevent VALUES (5922, 157, 52);
INSERT INTO public.api_gameevent VALUES (5923, 175, 52);
INSERT INTO public.api_gameevent VALUES (5924, 177, 52);
INSERT INTO public.api_gameevent VALUES (5925, 178, 52);
INSERT INTO public.api_gameevent VALUES (5926, 179, 52);
INSERT INTO public.api_gameevent VALUES (5927, 180, 52);
INSERT INTO public.api_gameevent VALUES (5928, 182, 52);
INSERT INTO public.api_gameevent VALUES (5929, 183, 52);
INSERT INTO public.api_gameevent VALUES (5930, 184, 52);
INSERT INTO public.api_gameevent VALUES (5931, 185, 52);
INSERT INTO public.api_gameevent VALUES (5932, 186, 52);
INSERT INTO public.api_gameevent VALUES (5933, 187, 52);
INSERT INTO public.api_gameevent VALUES (5934, 188, 52);
INSERT INTO public.api_gameevent VALUES (5935, 189, 52);
INSERT INTO public.api_gameevent VALUES (5936, 190, 52);
INSERT INTO public.api_gameevent VALUES (5937, 193, 52);
INSERT INTO public.api_gameevent VALUES (5938, 194, 52);
INSERT INTO public.api_gameevent VALUES (5939, 196, 52);
INSERT INTO public.api_gameevent VALUES (5940, 198, 52);
INSERT INTO public.api_gameevent VALUES (5941, 201, 52);
INSERT INTO public.api_gameevent VALUES (5942, 203, 52);
INSERT INTO public.api_gameevent VALUES (5943, 205, 52);
INSERT INTO public.api_gameevent VALUES (5944, 207, 52);
INSERT INTO public.api_gameevent VALUES (5945, 209, 52);
INSERT INTO public.api_gameevent VALUES (5946, 211, 52);
INSERT INTO public.api_gameevent VALUES (5947, 212, 52);
INSERT INTO public.api_gameevent VALUES (5948, 213, 52);
INSERT INTO public.api_gameevent VALUES (5949, 214, 52);
INSERT INTO public.api_gameevent VALUES (5950, 215, 52);
INSERT INTO public.api_gameevent VALUES (5951, 216, 52);
INSERT INTO public.api_gameevent VALUES (5952, 263, 52);
INSERT INTO public.api_gameevent VALUES (5953, 265, 52);
INSERT INTO public.api_gameevent VALUES (5954, 266, 52);
INSERT INTO public.api_gameevent VALUES (5955, 268, 52);
INSERT INTO public.api_gameevent VALUES (5956, 269, 52);
INSERT INTO public.api_gameevent VALUES (5957, 271, 52);
INSERT INTO public.api_gameevent VALUES (5958, 273, 52);
INSERT INTO public.api_gameevent VALUES (5959, 276, 52);
INSERT INTO public.api_gameevent VALUES (5960, 277, 52);
INSERT INTO public.api_gameevent VALUES (5961, 279, 52);
INSERT INTO public.api_gameevent VALUES (5962, 281, 52);
INSERT INTO public.api_gameevent VALUES (5963, 282, 52);
INSERT INTO public.api_gameevent VALUES (5964, 283, 52);
INSERT INTO public.api_gameevent VALUES (5965, 284, 52);
INSERT INTO public.api_gameevent VALUES (5966, 286, 52);
INSERT INTO public.api_gameevent VALUES (5967, 287, 52);
INSERT INTO public.api_gameevent VALUES (5968, 288, 52);
INSERT INTO public.api_gameevent VALUES (5969, 289, 52);
INSERT INTO public.api_gameevent VALUES (5970, 291, 52);
INSERT INTO public.api_gameevent VALUES (5971, 292, 52);
INSERT INTO public.api_gameevent VALUES (5972, 293, 52);
INSERT INTO public.api_gameevent VALUES (5973, 294, 52);
INSERT INTO public.api_gameevent VALUES (5974, 296, 52);
INSERT INTO public.api_gameevent VALUES (5975, 297, 52);
INSERT INTO public.api_gameevent VALUES (5976, 298, 52);
INSERT INTO public.api_gameevent VALUES (5977, 299, 52);
INSERT INTO public.api_gameevent VALUES (5978, 308, 52);
INSERT INTO public.api_gameevent VALUES (5979, 309, 52);
INSERT INTO public.api_gameevent VALUES (5980, 313, 52);
INSERT INTO public.api_gameevent VALUES (5981, 314, 52);
INSERT INTO public.api_gameevent VALUES (5982, 316, 52);
INSERT INTO public.api_gameevent VALUES (5983, 317, 52);
INSERT INTO public.api_gameevent VALUES (5984, 318, 52);
INSERT INTO public.api_gameevent VALUES (5985, 321, 52);
INSERT INTO public.api_gameevent VALUES (5986, 322, 52);
INSERT INTO public.api_gameevent VALUES (5987, 324, 52);
INSERT INTO public.api_gameevent VALUES (5988, 325, 52);
INSERT INTO public.api_gameevent VALUES (5989, 330, 52);
INSERT INTO public.api_gameevent VALUES (5990, 331, 52);
INSERT INTO public.api_gameevent VALUES (5991, 332, 52);
INSERT INTO public.api_gameevent VALUES (5992, 334, 52);
INSERT INTO public.api_gameevent VALUES (5993, 335, 52);
INSERT INTO public.api_gameevent VALUES (5994, 342, 52);
INSERT INTO public.api_gameevent VALUES (5995, 343, 52);
INSERT INTO public.api_gameevent VALUES (5996, 354, 52);
INSERT INTO public.api_gameevent VALUES (5997, 356, 52);
INSERT INTO public.api_gameevent VALUES (5998, 358, 52);
INSERT INTO public.api_gameevent VALUES (5999, 359, 52);
INSERT INTO public.api_gameevent VALUES (6000, 361, 52);
INSERT INTO public.api_gameevent VALUES (6001, 362, 52);
INSERT INTO public.api_gameevent VALUES (6002, 367, 52);
INSERT INTO public.api_gameevent VALUES (6003, 369, 52);
INSERT INTO public.api_gameevent VALUES (6004, 370, 52);
INSERT INTO public.api_gameevent VALUES (6005, 373, 52);
INSERT INTO public.api_gameevent VALUES (6006, 377, 52);
INSERT INTO public.api_gameevent VALUES (6007, 378, 52);
INSERT INTO public.api_gameevent VALUES (6008, 379, 52);
INSERT INTO public.api_gameevent VALUES (6009, 380, 52);
INSERT INTO public.api_gameevent VALUES (6010, 381, 52);
INSERT INTO public.api_gameevent VALUES (6011, 383, 52);
INSERT INTO public.api_gameevent VALUES (6012, 384, 52);
INSERT INTO public.api_gameevent VALUES (6013, 385, 52);
INSERT INTO public.api_gameevent VALUES (6014, 386, 52);
INSERT INTO public.api_gameevent VALUES (6015, 387, 52);
INSERT INTO public.api_gameevent VALUES (6016, 391, 52);
INSERT INTO public.api_gameevent VALUES (6017, 392, 52);
INSERT INTO public.api_gameevent VALUES (6018, 393, 52);
INSERT INTO public.api_gameevent VALUES (6019, 394, 52);
INSERT INTO public.api_gameevent VALUES (6020, 395, 52);
INSERT INTO public.api_gameevent VALUES (6021, 396, 52);
INSERT INTO public.api_gameevent VALUES (6022, 397, 52);
INSERT INTO public.api_gameevent VALUES (6023, 399, 52);
INSERT INTO public.api_gameevent VALUES (6024, 400, 52);
INSERT INTO public.api_gameevent VALUES (6025, 401, 52);
INSERT INTO public.api_gameevent VALUES (6026, 402, 52);
INSERT INTO public.api_gameevent VALUES (6027, 403, 52);
INSERT INTO public.api_gameevent VALUES (6028, 404, 52);
INSERT INTO public.api_gameevent VALUES (6029, 405, 52);
INSERT INTO public.api_gameevent VALUES (6030, 412, 52);
INSERT INTO public.api_gameevent VALUES (6031, 414, 52);
INSERT INTO public.api_gameevent VALUES (6032, 426, 52);
INSERT INTO public.api_gameevent VALUES (6033, 427, 52);
INSERT INTO public.api_gameevent VALUES (6034, 431, 52);
INSERT INTO public.api_gameevent VALUES (6035, 438, 52);
INSERT INTO public.api_gameevent VALUES (6036, 439, 52);
INSERT INTO public.api_gameevent VALUES (6037, 440, 52);
INSERT INTO public.api_gameevent VALUES (6038, 441, 52);
INSERT INTO public.api_gameevent VALUES (6039, 442, 52);
INSERT INTO public.api_gameevent VALUES (6040, 443, 52);
INSERT INTO public.api_gameevent VALUES (6041, 444, 52);
INSERT INTO public.api_gameevent VALUES (6042, 445, 52);
INSERT INTO public.api_gameevent VALUES (6043, 449, 52);
INSERT INTO public.api_gameevent VALUES (6044, 450, 52);
INSERT INTO public.api_gameevent VALUES (6045, 451, 52);
INSERT INTO public.api_gameevent VALUES (6046, 452, 52);
INSERT INTO public.api_gameevent VALUES (6047, 453, 52);
INSERT INTO public.api_gameevent VALUES (6048, 455, 52);
INSERT INTO public.api_gameevent VALUES (6049, 456, 52);
INSERT INTO public.api_gameevent VALUES (6050, 457, 52);
INSERT INTO public.api_gameevent VALUES (6051, 458, 52);
INSERT INTO public.api_gameevent VALUES (6052, 459, 52);
INSERT INTO public.api_gameevent VALUES (6053, 460, 52);
INSERT INTO public.api_gameevent VALUES (6054, 462, 52);
INSERT INTO public.api_gameevent VALUES (6055, 480, 52);
INSERT INTO public.api_gameevent VALUES (6056, 489, 52);
INSERT INTO public.api_gameevent VALUES (6057, 490, 52);
INSERT INTO public.api_gameevent VALUES (6058, 492, 52);
INSERT INTO public.api_gameevent VALUES (6059, 493, 52);
INSERT INTO public.api_gameevent VALUES (6060, 494, 52);
INSERT INTO public.api_gameevent VALUES (6061, 495, 52);
INSERT INTO public.api_gameevent VALUES (6062, 496, 52);
INSERT INTO public.api_gameevent VALUES (6063, 503, 52);
INSERT INTO public.api_gameevent VALUES (6064, 536, 52);
INSERT INTO public.api_gameevent VALUES (6065, 544, 52);
INSERT INTO public.api_gameevent VALUES (6066, 553, 52);
INSERT INTO public.api_gameevent VALUES (6067, 556, 52);
INSERT INTO public.api_gameevent VALUES (6068, 557, 52);
INSERT INTO public.api_gameevent VALUES (6069, 569, 52);
INSERT INTO public.api_gameevent VALUES (6070, 570, 52);
INSERT INTO public.api_gameevent VALUES (6071, 572, 52);
INSERT INTO public.api_gameevent VALUES (6072, 573, 52);
INSERT INTO public.api_gameevent VALUES (6073, 574, 52);
INSERT INTO public.api_gameevent VALUES (6074, 575, 52);
INSERT INTO public.api_gameevent VALUES (6075, 618, 52);
INSERT INTO public.api_gameevent VALUES (6076, 619, 52);
INSERT INTO public.api_gameevent VALUES (6077, 620, 52);
INSERT INTO public.api_gameevent VALUES (6078, 621, 52);
INSERT INTO public.api_gameevent VALUES (6079, 622, 52);
INSERT INTO public.api_gameevent VALUES (6080, 623, 52);
INSERT INTO public.api_gameevent VALUES (6081, 627, 52);
INSERT INTO public.api_gameevent VALUES (6082, 628, 52);
INSERT INTO public.api_gameevent VALUES (6083, 629, 52);
INSERT INTO public.api_gameevent VALUES (6084, 630, 52);
INSERT INTO public.api_gameevent VALUES (6085, 631, 52);
INSERT INTO public.api_gameevent VALUES (6086, 635, 52);
INSERT INTO public.api_gameevent VALUES (6087, 636, 52);
INSERT INTO public.api_gameevent VALUES (6088, 637, 52);
INSERT INTO public.api_gameevent VALUES (6089, 642, 52);
INSERT INTO public.api_gameevent VALUES (6090, 643, 52);
INSERT INTO public.api_gameevent VALUES (6091, 646, 52);
INSERT INTO public.api_gameevent VALUES (6092, 653, 52);
INSERT INTO public.api_gameevent VALUES (6093, 654, 52);
INSERT INTO public.api_gameevent VALUES (6094, 655, 52);
INSERT INTO public.api_gameevent VALUES (6095, 656, 52);
INSERT INTO public.api_gameevent VALUES (6096, 657, 52);
INSERT INTO public.api_gameevent VALUES (6097, 658, 52);
INSERT INTO public.api_gameevent VALUES (6098, 659, 52);
INSERT INTO public.api_gameevent VALUES (6099, 660, 52);
INSERT INTO public.api_gameevent VALUES (6100, 661, 52);
INSERT INTO public.api_gameevent VALUES (6101, 662, 52);
INSERT INTO public.api_gameevent VALUES (6102, 664, 52);
INSERT INTO public.api_gameevent VALUES (6103, 665, 52);
INSERT INTO public.api_gameevent VALUES (6104, 666, 52);
INSERT INTO public.api_gameevent VALUES (6105, 667, 52);
INSERT INTO public.api_gameevent VALUES (6106, 668, 52);
INSERT INTO public.api_gameevent VALUES (6107, 669, 52);
INSERT INTO public.api_gameevent VALUES (6108, 670, 52);
INSERT INTO public.api_gameevent VALUES (6109, 671, 52);
INSERT INTO public.api_gameevent VALUES (6110, 673, 52);
INSERT INTO public.api_gameevent VALUES (6111, 675, 52);
INSERT INTO public.api_gameevent VALUES (6112, 676, 52);
INSERT INTO public.api_gameevent VALUES (6113, 678, 52);
INSERT INTO public.api_gameevent VALUES (6114, 679, 52);
INSERT INTO public.api_gameevent VALUES (6115, 680, 52);
INSERT INTO public.api_gameevent VALUES (6116, 681, 52);
INSERT INTO public.api_gameevent VALUES (6117, 682, 52);
INSERT INTO public.api_gameevent VALUES (6118, 683, 52);
INSERT INTO public.api_gameevent VALUES (6119, 684, 52);
INSERT INTO public.api_gameevent VALUES (6120, 685, 52);
INSERT INTO public.api_gameevent VALUES (6121, 686, 52);
INSERT INTO public.api_gameevent VALUES (6122, 687, 52);
INSERT INTO public.api_gameevent VALUES (6123, 688, 52);
INSERT INTO public.api_gameevent VALUES (6124, 690, 52);
INSERT INTO public.api_gameevent VALUES (6125, 692, 52);
INSERT INTO public.api_gameevent VALUES (6126, 694, 52);
INSERT INTO public.api_gameevent VALUES (6127, 695, 52);
INSERT INTO public.api_gameevent VALUES (6128, 697, 52);
INSERT INTO public.api_gameevent VALUES (6129, 698, 52);
INSERT INTO public.api_gameevent VALUES (6130, 699, 52);
INSERT INTO public.api_gameevent VALUES (6131, 700, 52);
INSERT INTO public.api_gameevent VALUES (6132, 702, 52);
INSERT INTO public.api_gameevent VALUES (6133, 703, 52);
INSERT INTO public.api_gameevent VALUES (6134, 704, 52);
INSERT INTO public.api_gameevent VALUES (6135, 705, 52);
INSERT INTO public.api_gameevent VALUES (6136, 707, 52);
INSERT INTO public.api_gameevent VALUES (6137, 708, 52);
INSERT INTO public.api_gameevent VALUES (6138, 710, 52);
INSERT INTO public.api_gameevent VALUES (6139, 713, 52);
INSERT INTO public.api_gameevent VALUES (6140, 714, 52);
INSERT INTO public.api_gameevent VALUES (6141, 715, 52);
INSERT INTO public.api_gameevent VALUES (6142, 716, 52);
INSERT INTO public.api_gameevent VALUES (6143, 717, 52);
INSERT INTO public.api_gameevent VALUES (6144, 720, 52);
INSERT INTO public.api_gameevent VALUES (6145, 721, 52);
INSERT INTO public.api_gameevent VALUES (6146, 722, 52);
INSERT INTO public.api_gameevent VALUES (6147, 723, 52);
INSERT INTO public.api_gameevent VALUES (6148, 724, 52);
INSERT INTO public.api_gameevent VALUES (6149, 725, 52);
INSERT INTO public.api_gameevent VALUES (6150, 726, 52);
INSERT INTO public.api_gameevent VALUES (6151, 730, 52);
INSERT INTO public.api_gameevent VALUES (6152, 731, 52);
INSERT INTO public.api_gameevent VALUES (6153, 734, 52);
INSERT INTO public.api_gameevent VALUES (6154, 735, 52);
INSERT INTO public.api_gameevent VALUES (6155, 738, 52);
INSERT INTO public.api_gameevent VALUES (6156, 739, 52);
INSERT INTO public.api_gameevent VALUES (6157, 744, 52);
INSERT INTO public.api_gameevent VALUES (6158, 745, 52);
INSERT INTO public.api_gameevent VALUES (6159, 746, 52);
INSERT INTO public.api_gameevent VALUES (6160, 747, 52);
INSERT INTO public.api_gameevent VALUES (6161, 749, 52);
INSERT INTO public.api_gameevent VALUES (6162, 750, 52);
INSERT INTO public.api_gameevent VALUES (6163, 751, 52);
INSERT INTO public.api_gameevent VALUES (6164, 752, 52);
INSERT INTO public.api_gameevent VALUES (6165, 753, 52);
INSERT INTO public.api_gameevent VALUES (6166, 754, 52);
INSERT INTO public.api_gameevent VALUES (6167, 755, 52);
INSERT INTO public.api_gameevent VALUES (6168, 756, 52);
INSERT INTO public.api_gameevent VALUES (5862, 615, 51);
INSERT INTO public.api_gameevent VALUES (5861, 614, 51);
INSERT INTO public.api_gameevent VALUES (5860, 613, 51);
INSERT INTO public.api_gameevent VALUES (5859, 612, 51);
INSERT INTO public.api_gameevent VALUES (5858, 611, 51);
INSERT INTO public.api_gameevent VALUES (5857, 610, 51);
INSERT INTO public.api_gameevent VALUES (5856, 609, 51);
INSERT INTO public.api_gameevent VALUES (5855, 607, 51);
INSERT INTO public.api_gameevent VALUES (5854, 606, 51);
INSERT INTO public.api_gameevent VALUES (5853, 605, 51);
INSERT INTO public.api_gameevent VALUES (5852, 604, 51);
INSERT INTO public.api_gameevent VALUES (5851, 603, 51);
INSERT INTO public.api_gameevent VALUES (5850, 601, 51);
INSERT INTO public.api_gameevent VALUES (5849, 600, 51);
INSERT INTO public.api_gameevent VALUES (5848, 599, 51);
INSERT INTO public.api_gameevent VALUES (5847, 598, 51);
INSERT INTO public.api_gameevent VALUES (5846, 596, 51);
INSERT INTO public.api_gameevent VALUES (5845, 595, 51);
INSERT INTO public.api_gameevent VALUES (5844, 594, 51);
INSERT INTO public.api_gameevent VALUES (5843, 593, 51);
INSERT INTO public.api_gameevent VALUES (5842, 592, 51);
INSERT INTO public.api_gameevent VALUES (5841, 590, 51);
INSERT INTO public.api_gameevent VALUES (5840, 589, 51);
INSERT INTO public.api_gameevent VALUES (5839, 588, 51);
INSERT INTO public.api_gameevent VALUES (5838, 587, 51);
INSERT INTO public.api_gameevent VALUES (5837, 586, 51);
INSERT INTO public.api_gameevent VALUES (5836, 585, 51);
INSERT INTO public.api_gameevent VALUES (5835, 584, 51);
INSERT INTO public.api_gameevent VALUES (5834, 583, 51);
INSERT INTO public.api_gameevent VALUES (5833, 582, 51);
INSERT INTO public.api_gameevent VALUES (5832, 581, 51);
INSERT INTO public.api_gameevent VALUES (5831, 580, 51);
INSERT INTO public.api_gameevent VALUES (5830, 579, 51);
INSERT INTO public.api_gameevent VALUES (5829, 578, 51);
INSERT INTO public.api_gameevent VALUES (5828, 577, 51);
INSERT INTO public.api_gameevent VALUES (5827, 576, 51);
INSERT INTO public.api_gameevent VALUES (5826, 422, 51);
INSERT INTO public.api_gameevent VALUES (5825, 420, 51);
INSERT INTO public.api_gameevent VALUES (5824, 419, 51);
INSERT INTO public.api_gameevent VALUES (5823, 410, 51);
INSERT INTO public.api_gameevent VALUES (5822, 409, 51);
INSERT INTO public.api_gameevent VALUES (5821, 408, 51);
INSERT INTO public.api_gameevent VALUES (5820, 407, 51);
INSERT INTO public.api_gameevent VALUES (5819, 389, 51);
INSERT INTO public.api_gameevent VALUES (5818, 388, 51);
INSERT INTO public.api_gameevent VALUES (5817, 353, 51);
INSERT INTO public.api_gameevent VALUES (5816, 352, 51);
INSERT INTO public.api_gameevent VALUES (5815, 351, 51);
INSERT INTO public.api_gameevent VALUES (5814, 350, 51);
INSERT INTO public.api_gameevent VALUES (5813, 349, 51);
INSERT INTO public.api_gameevent VALUES (5812, 348, 51);
INSERT INTO public.api_gameevent VALUES (5811, 347, 51);
INSERT INTO public.api_gameevent VALUES (5810, 346, 51);
INSERT INTO public.api_gameevent VALUES (5809, 345, 51);
INSERT INTO public.api_gameevent VALUES (5808, 344, 51);
INSERT INTO public.api_gameevent VALUES (5807, 341, 51);
INSERT INTO public.api_gameevent VALUES (5806, 340, 51);
INSERT INTO public.api_gameevent VALUES (5805, 339, 51);
INSERT INTO public.api_gameevent VALUES (5804, 338, 51);
INSERT INTO public.api_gameevent VALUES (5803, 336, 51);
INSERT INTO public.api_gameevent VALUES (5802, 245, 51);
INSERT INTO public.api_gameevent VALUES (5801, 244, 51);
INSERT INTO public.api_gameevent VALUES (5800, 243, 51);
INSERT INTO public.api_gameevent VALUES (5799, 242, 51);
INSERT INTO public.api_gameevent VALUES (5798, 238, 51);
INSERT INTO public.api_gameevent VALUES (5797, 237, 51);
INSERT INTO public.api_gameevent VALUES (5796, 234, 51);
INSERT INTO public.api_gameevent VALUES (5795, 232, 51);
INSERT INTO public.api_gameevent VALUES (5794, 231, 51);
INSERT INTO public.api_gameevent VALUES (5793, 230, 51);
INSERT INTO public.api_gameevent VALUES (5792, 229, 51);
INSERT INTO public.api_gameevent VALUES (5791, 228, 51);
INSERT INTO public.api_gameevent VALUES (5790, 227, 51);
INSERT INTO public.api_gameevent VALUES (5789, 224, 51);
INSERT INTO public.api_gameevent VALUES (5788, 174, 51);
INSERT INTO public.api_gameevent VALUES (5787, 173, 51);
INSERT INTO public.api_gameevent VALUES (5786, 171, 51);
INSERT INTO public.api_gameevent VALUES (5785, 170, 51);
INSERT INTO public.api_gameevent VALUES (5784, 168, 51);
INSERT INTO public.api_gameevent VALUES (5783, 166, 51);
INSERT INTO public.api_gameevent VALUES (5782, 165, 51);
INSERT INTO public.api_gameevent VALUES (5781, 164, 51);
INSERT INTO public.api_gameevent VALUES (5780, 163, 51);
INSERT INTO public.api_gameevent VALUES (5779, 162, 51);
INSERT INTO public.api_gameevent VALUES (5778, 161, 51);
INSERT INTO public.api_gameevent VALUES (5777, 160, 51);
INSERT INTO public.api_gameevent VALUES (5776, 159, 51);
INSERT INTO public.api_gameevent VALUES (5775, 158, 51);
INSERT INTO public.api_gameevent VALUES (5774, 11, 51);
INSERT INTO public.api_gameevent VALUES (5773, 10, 51);
INSERT INTO public.api_gameevent VALUES (5772, 9, 51);
INSERT INTO public.api_gameevent VALUES (5771, 8, 51);
INSERT INTO public.api_gameevent VALUES (5770, 7, 51);
INSERT INTO public.api_gameevent VALUES (5769, 6, 51);
INSERT INTO public.api_gameevent VALUES (5768, 5, 51);
INSERT INTO public.api_gameevent VALUES (5767, 4, 51);
INSERT INTO public.api_gameevent VALUES (5766, 3, 51);
INSERT INTO public.api_gameevent VALUES (5765, 2, 51);
INSERT INTO public.api_gameevent VALUES (5764, 756, 50);
INSERT INTO public.api_gameevent VALUES (5763, 755, 50);
INSERT INTO public.api_gameevent VALUES (5762, 753, 50);
INSERT INTO public.api_gameevent VALUES (5761, 752, 50);
INSERT INTO public.api_gameevent VALUES (5760, 750, 50);
INSERT INTO public.api_gameevent VALUES (5759, 749, 50);
INSERT INTO public.api_gameevent VALUES (5758, 747, 50);
INSERT INTO public.api_gameevent VALUES (5757, 746, 50);
INSERT INTO public.api_gameevent VALUES (5756, 745, 50);
INSERT INTO public.api_gameevent VALUES (5755, 744, 50);
INSERT INTO public.api_gameevent VALUES (5754, 741, 50);
INSERT INTO public.api_gameevent VALUES (5753, 740, 50);
INSERT INTO public.api_gameevent VALUES (5752, 739, 50);
INSERT INTO public.api_gameevent VALUES (5751, 738, 50);
INSERT INTO public.api_gameevent VALUES (5750, 735, 50);
INSERT INTO public.api_gameevent VALUES (5749, 734, 50);
INSERT INTO public.api_gameevent VALUES (5748, 731, 50);
INSERT INTO public.api_gameevent VALUES (5747, 730, 50);
INSERT INTO public.api_gameevent VALUES (5746, 726, 50);
INSERT INTO public.api_gameevent VALUES (5745, 725, 50);
INSERT INTO public.api_gameevent VALUES (5744, 724, 50);
INSERT INTO public.api_gameevent VALUES (5743, 723, 50);
INSERT INTO public.api_gameevent VALUES (5742, 722, 50);
INSERT INTO public.api_gameevent VALUES (5741, 721, 50);
INSERT INTO public.api_gameevent VALUES (5740, 720, 50);
INSERT INTO public.api_gameevent VALUES (5739, 717, 50);
INSERT INTO public.api_gameevent VALUES (5738, 716, 50);
INSERT INTO public.api_gameevent VALUES (5737, 715, 50);
INSERT INTO public.api_gameevent VALUES (5736, 714, 50);
INSERT INTO public.api_gameevent VALUES (5735, 713, 50);
INSERT INTO public.api_gameevent VALUES (5734, 710, 50);
INSERT INTO public.api_gameevent VALUES (5733, 708, 50);
INSERT INTO public.api_gameevent VALUES (5732, 707, 50);
INSERT INTO public.api_gameevent VALUES (5731, 705, 50);
INSERT INTO public.api_gameevent VALUES (5730, 704, 50);
INSERT INTO public.api_gameevent VALUES (5729, 703, 50);
INSERT INTO public.api_gameevent VALUES (5728, 702, 50);
INSERT INTO public.api_gameevent VALUES (5727, 700, 50);
INSERT INTO public.api_gameevent VALUES (5726, 699, 50);
INSERT INTO public.api_gameevent VALUES (5725, 698, 50);
INSERT INTO public.api_gameevent VALUES (5724, 697, 50);
INSERT INTO public.api_gameevent VALUES (5723, 695, 50);
INSERT INTO public.api_gameevent VALUES (5722, 694, 50);
INSERT INTO public.api_gameevent VALUES (5721, 692, 50);
INSERT INTO public.api_gameevent VALUES (5720, 690, 50);
INSERT INTO public.api_gameevent VALUES (5719, 688, 50);
INSERT INTO public.api_gameevent VALUES (5718, 687, 50);
INSERT INTO public.api_gameevent VALUES (5717, 686, 50);
INSERT INTO public.api_gameevent VALUES (5716, 685, 50);
INSERT INTO public.api_gameevent VALUES (5715, 684, 50);
INSERT INTO public.api_gameevent VALUES (5714, 683, 50);
INSERT INTO public.api_gameevent VALUES (5713, 682, 50);
INSERT INTO public.api_gameevent VALUES (5712, 681, 50);
INSERT INTO public.api_gameevent VALUES (5711, 680, 50);
INSERT INTO public.api_gameevent VALUES (5710, 679, 50);
INSERT INTO public.api_gameevent VALUES (5709, 678, 50);
INSERT INTO public.api_gameevent VALUES (5708, 676, 50);
INSERT INTO public.api_gameevent VALUES (5707, 675, 50);
INSERT INTO public.api_gameevent VALUES (5706, 673, 50);
INSERT INTO public.api_gameevent VALUES (5705, 671, 50);
INSERT INTO public.api_gameevent VALUES (5704, 670, 50);
INSERT INTO public.api_gameevent VALUES (5703, 669, 50);
INSERT INTO public.api_gameevent VALUES (5702, 668, 50);
INSERT INTO public.api_gameevent VALUES (5701, 667, 50);
INSERT INTO public.api_gameevent VALUES (5700, 666, 50);
INSERT INTO public.api_gameevent VALUES (5699, 665, 50);
INSERT INTO public.api_gameevent VALUES (5698, 664, 50);
INSERT INTO public.api_gameevent VALUES (5697, 662, 50);
INSERT INTO public.api_gameevent VALUES (5696, 661, 50);
INSERT INTO public.api_gameevent VALUES (5695, 660, 50);
INSERT INTO public.api_gameevent VALUES (5694, 659, 50);
INSERT INTO public.api_gameevent VALUES (5693, 658, 50);
INSERT INTO public.api_gameevent VALUES (5692, 657, 50);
INSERT INTO public.api_gameevent VALUES (5691, 656, 50);
INSERT INTO public.api_gameevent VALUES (5690, 655, 50);
INSERT INTO public.api_gameevent VALUES (5689, 654, 50);
INSERT INTO public.api_gameevent VALUES (5688, 653, 50);
INSERT INTO public.api_gameevent VALUES (5687, 646, 50);
INSERT INTO public.api_gameevent VALUES (5686, 643, 50);
INSERT INTO public.api_gameevent VALUES (5685, 642, 50);
INSERT INTO public.api_gameevent VALUES (5684, 637, 50);
INSERT INTO public.api_gameevent VALUES (5683, 636, 50);
INSERT INTO public.api_gameevent VALUES (5682, 635, 50);
INSERT INTO public.api_gameevent VALUES (5681, 631, 50);
INSERT INTO public.api_gameevent VALUES (5680, 630, 50);
INSERT INTO public.api_gameevent VALUES (5679, 629, 50);
INSERT INTO public.api_gameevent VALUES (5678, 628, 50);
INSERT INTO public.api_gameevent VALUES (5677, 627, 50);
INSERT INTO public.api_gameevent VALUES (5676, 623, 50);
INSERT INTO public.api_gameevent VALUES (5675, 622, 50);
INSERT INTO public.api_gameevent VALUES (5674, 621, 50);
INSERT INTO public.api_gameevent VALUES (5673, 620, 50);
INSERT INTO public.api_gameevent VALUES (5672, 619, 50);
INSERT INTO public.api_gameevent VALUES (5671, 618, 50);
INSERT INTO public.api_gameevent VALUES (5670, 575, 50);
INSERT INTO public.api_gameevent VALUES (5669, 574, 50);
INSERT INTO public.api_gameevent VALUES (5668, 573, 50);
INSERT INTO public.api_gameevent VALUES (5667, 572, 50);
INSERT INTO public.api_gameevent VALUES (5666, 570, 50);
INSERT INTO public.api_gameevent VALUES (5665, 569, 50);
INSERT INTO public.api_gameevent VALUES (5664, 557, 50);
INSERT INTO public.api_gameevent VALUES (5663, 556, 50);
INSERT INTO public.api_gameevent VALUES (5662, 553, 50);
INSERT INTO public.api_gameevent VALUES (5661, 544, 50);
INSERT INTO public.api_gameevent VALUES (5660, 536, 50);
INSERT INTO public.api_gameevent VALUES (5659, 503, 50);
INSERT INTO public.api_gameevent VALUES (5658, 496, 50);
INSERT INTO public.api_gameevent VALUES (5657, 495, 50);
INSERT INTO public.api_gameevent VALUES (5656, 494, 50);
INSERT INTO public.api_gameevent VALUES (5655, 493, 50);
INSERT INTO public.api_gameevent VALUES (5654, 492, 50);
INSERT INTO public.api_gameevent VALUES (5653, 491, 50);
INSERT INTO public.api_gameevent VALUES (5652, 489, 50);
INSERT INTO public.api_gameevent VALUES (5651, 462, 50);
INSERT INTO public.api_gameevent VALUES (5650, 461, 50);
INSERT INTO public.api_gameevent VALUES (5649, 460, 50);
INSERT INTO public.api_gameevent VALUES (5648, 459, 50);
INSERT INTO public.api_gameevent VALUES (5647, 458, 50);
INSERT INTO public.api_gameevent VALUES (5646, 457, 50);
INSERT INTO public.api_gameevent VALUES (5645, 453, 50);
INSERT INTO public.api_gameevent VALUES (5644, 452, 50);
INSERT INTO public.api_gameevent VALUES (5643, 451, 50);
INSERT INTO public.api_gameevent VALUES (5642, 450, 50);
INSERT INTO public.api_gameevent VALUES (5641, 449, 50);
INSERT INTO public.api_gameevent VALUES (5640, 445, 50);
INSERT INTO public.api_gameevent VALUES (5639, 444, 50);
INSERT INTO public.api_gameevent VALUES (5638, 443, 50);
INSERT INTO public.api_gameevent VALUES (5637, 442, 50);
INSERT INTO public.api_gameevent VALUES (5636, 441, 50);
INSERT INTO public.api_gameevent VALUES (5635, 440, 50);
INSERT INTO public.api_gameevent VALUES (5634, 439, 50);
INSERT INTO public.api_gameevent VALUES (5633, 438, 50);
INSERT INTO public.api_gameevent VALUES (5632, 431, 50);
INSERT INTO public.api_gameevent VALUES (5631, 427, 50);
INSERT INTO public.api_gameevent VALUES (5630, 426, 50);
INSERT INTO public.api_gameevent VALUES (5629, 414, 50);
INSERT INTO public.api_gameevent VALUES (5628, 412, 50);
INSERT INTO public.api_gameevent VALUES (5627, 405, 50);
INSERT INTO public.api_gameevent VALUES (5626, 404, 50);
INSERT INTO public.api_gameevent VALUES (5625, 403, 50);
INSERT INTO public.api_gameevent VALUES (5624, 402, 50);
INSERT INTO public.api_gameevent VALUES (5623, 401, 50);
INSERT INTO public.api_gameevent VALUES (5622, 400, 50);
INSERT INTO public.api_gameevent VALUES (5621, 399, 50);
INSERT INTO public.api_gameevent VALUES (5620, 397, 50);
INSERT INTO public.api_gameevent VALUES (5619, 396, 50);
INSERT INTO public.api_gameevent VALUES (5618, 395, 50);
INSERT INTO public.api_gameevent VALUES (5617, 394, 50);
INSERT INTO public.api_gameevent VALUES (5616, 393, 50);
INSERT INTO public.api_gameevent VALUES (5615, 392, 50);
INSERT INTO public.api_gameevent VALUES (5614, 391, 50);
INSERT INTO public.api_gameevent VALUES (5613, 387, 50);
INSERT INTO public.api_gameevent VALUES (5612, 386, 50);
INSERT INTO public.api_gameevent VALUES (5611, 385, 50);
INSERT INTO public.api_gameevent VALUES (5610, 384, 50);
INSERT INTO public.api_gameevent VALUES (5609, 383, 50);
INSERT INTO public.api_gameevent VALUES (5608, 381, 50);
INSERT INTO public.api_gameevent VALUES (5607, 380, 50);
INSERT INTO public.api_gameevent VALUES (5606, 379, 50);
INSERT INTO public.api_gameevent VALUES (5605, 378, 50);
INSERT INTO public.api_gameevent VALUES (5604, 377, 50);
INSERT INTO public.api_gameevent VALUES (5603, 373, 50);
INSERT INTO public.api_gameevent VALUES (5602, 370, 50);
INSERT INTO public.api_gameevent VALUES (5601, 369, 50);
INSERT INTO public.api_gameevent VALUES (5600, 367, 50);
INSERT INTO public.api_gameevent VALUES (5599, 362, 50);
INSERT INTO public.api_gameevent VALUES (5598, 361, 50);
INSERT INTO public.api_gameevent VALUES (5597, 359, 50);
INSERT INTO public.api_gameevent VALUES (5596, 358, 50);
INSERT INTO public.api_gameevent VALUES (5595, 343, 50);
INSERT INTO public.api_gameevent VALUES (5594, 342, 50);
INSERT INTO public.api_gameevent VALUES (5593, 334, 50);
INSERT INTO public.api_gameevent VALUES (5592, 333, 50);
INSERT INTO public.api_gameevent VALUES (5591, 332, 50);
INSERT INTO public.api_gameevent VALUES (5590, 331, 50);
INSERT INTO public.api_gameevent VALUES (5589, 330, 50);
INSERT INTO public.api_gameevent VALUES (5588, 328, 50);
INSERT INTO public.api_gameevent VALUES (5587, 325, 50);
INSERT INTO public.api_gameevent VALUES (5586, 324, 50);
INSERT INTO public.api_gameevent VALUES (5585, 322, 50);
INSERT INTO public.api_gameevent VALUES (5584, 318, 50);
INSERT INTO public.api_gameevent VALUES (5583, 317, 50);
INSERT INTO public.api_gameevent VALUES (5582, 316, 50);
INSERT INTO public.api_gameevent VALUES (5581, 314, 50);
INSERT INTO public.api_gameevent VALUES (5580, 313, 50);
INSERT INTO public.api_gameevent VALUES (5579, 309, 50);
INSERT INTO public.api_gameevent VALUES (5578, 308, 50);
INSERT INTO public.api_gameevent VALUES (5577, 299, 50);
INSERT INTO public.api_gameevent VALUES (5576, 298, 50);
INSERT INTO public.api_gameevent VALUES (5575, 297, 50);
INSERT INTO public.api_gameevent VALUES (5574, 296, 50);
INSERT INTO public.api_gameevent VALUES (5573, 294, 50);
INSERT INTO public.api_gameevent VALUES (5572, 293, 50);
INSERT INTO public.api_gameevent VALUES (5571, 292, 50);
INSERT INTO public.api_gameevent VALUES (5570, 291, 50);
INSERT INTO public.api_gameevent VALUES (5569, 289, 50);
INSERT INTO public.api_gameevent VALUES (5568, 288, 50);
INSERT INTO public.api_gameevent VALUES (5567, 287, 50);
INSERT INTO public.api_gameevent VALUES (5566, 286, 50);
INSERT INTO public.api_gameevent VALUES (5565, 284, 50);
INSERT INTO public.api_gameevent VALUES (5564, 283, 50);
INSERT INTO public.api_gameevent VALUES (5563, 282, 50);
INSERT INTO public.api_gameevent VALUES (5562, 281, 50);
INSERT INTO public.api_gameevent VALUES (5561, 279, 50);
INSERT INTO public.api_gameevent VALUES (5560, 277, 50);
INSERT INTO public.api_gameevent VALUES (5559, 276, 50);
INSERT INTO public.api_gameevent VALUES (5558, 273, 50);
INSERT INTO public.api_gameevent VALUES (5557, 271, 50);
INSERT INTO public.api_gameevent VALUES (5556, 269, 50);
INSERT INTO public.api_gameevent VALUES (5555, 268, 50);
INSERT INTO public.api_gameevent VALUES (5554, 266, 50);
INSERT INTO public.api_gameevent VALUES (5553, 265, 50);
INSERT INTO public.api_gameevent VALUES (5552, 263, 50);
INSERT INTO public.api_gameevent VALUES (5551, 216, 50);
INSERT INTO public.api_gameevent VALUES (5550, 215, 50);
INSERT INTO public.api_gameevent VALUES (5549, 214, 50);
INSERT INTO public.api_gameevent VALUES (5548, 213, 50);
INSERT INTO public.api_gameevent VALUES (5547, 212, 50);
INSERT INTO public.api_gameevent VALUES (5546, 211, 50);
INSERT INTO public.api_gameevent VALUES (5545, 209, 50);
INSERT INTO public.api_gameevent VALUES (5544, 207, 50);
INSERT INTO public.api_gameevent VALUES (5543, 205, 50);
INSERT INTO public.api_gameevent VALUES (5542, 203, 50);
INSERT INTO public.api_gameevent VALUES (5541, 201, 50);
INSERT INTO public.api_gameevent VALUES (5540, 198, 50);
INSERT INTO public.api_gameevent VALUES (5539, 196, 50);
INSERT INTO public.api_gameevent VALUES (5538, 194, 50);
INSERT INTO public.api_gameevent VALUES (5537, 193, 50);
INSERT INTO public.api_gameevent VALUES (5536, 190, 50);
INSERT INTO public.api_gameevent VALUES (5535, 189, 50);
INSERT INTO public.api_gameevent VALUES (5534, 188, 50);
INSERT INTO public.api_gameevent VALUES (5533, 187, 50);
INSERT INTO public.api_gameevent VALUES (5532, 186, 50);
INSERT INTO public.api_gameevent VALUES (5531, 185, 50);
INSERT INTO public.api_gameevent VALUES (5530, 184, 50);
INSERT INTO public.api_gameevent VALUES (5529, 183, 50);
INSERT INTO public.api_gameevent VALUES (5528, 182, 50);
INSERT INTO public.api_gameevent VALUES (5527, 180, 50);
INSERT INTO public.api_gameevent VALUES (5526, 179, 50);
INSERT INTO public.api_gameevent VALUES (5525, 178, 50);
INSERT INTO public.api_gameevent VALUES (5524, 177, 50);
INSERT INTO public.api_gameevent VALUES (5523, 175, 50);
INSERT INTO public.api_gameevent VALUES (5522, 157, 50);
INSERT INTO public.api_gameevent VALUES (5521, 156, 50);
INSERT INTO public.api_gameevent VALUES (5520, 154, 50);
INSERT INTO public.api_gameevent VALUES (5519, 153, 50);
INSERT INTO public.api_gameevent VALUES (5518, 151, 50);
INSERT INTO public.api_gameevent VALUES (5517, 150, 50);
INSERT INTO public.api_gameevent VALUES (5516, 149, 50);
INSERT INTO public.api_gameevent VALUES (5515, 148, 50);
INSERT INTO public.api_gameevent VALUES (5514, 147, 50);
INSERT INTO public.api_gameevent VALUES (5513, 146, 50);
INSERT INTO public.api_gameevent VALUES (5512, 145, 50);
INSERT INTO public.api_gameevent VALUES (5511, 144, 50);
INSERT INTO public.api_gameevent VALUES (5510, 142, 50);
INSERT INTO public.api_gameevent VALUES (5509, 141, 50);
INSERT INTO public.api_gameevent VALUES (5508, 140, 50);
INSERT INTO public.api_gameevent VALUES (5507, 139, 50);
INSERT INTO public.api_gameevent VALUES (5506, 138, 50);
INSERT INTO public.api_gameevent VALUES (5505, 137, 50);
INSERT INTO public.api_gameevent VALUES (5504, 136, 50);
INSERT INTO public.api_gameevent VALUES (5503, 135, 50);
INSERT INTO public.api_gameevent VALUES (5502, 133, 50);
INSERT INTO public.api_gameevent VALUES (5501, 132, 50);
INSERT INTO public.api_gameevent VALUES (5500, 131, 50);
INSERT INTO public.api_gameevent VALUES (5499, 130, 50);
INSERT INTO public.api_gameevent VALUES (5498, 129, 50);
INSERT INTO public.api_gameevent VALUES (5497, 128, 50);
INSERT INTO public.api_gameevent VALUES (5496, 126, 50);
INSERT INTO public.api_gameevent VALUES (5495, 125, 50);
INSERT INTO public.api_gameevent VALUES (5494, 124, 50);
INSERT INTO public.api_gameevent VALUES (5493, 123, 50);
INSERT INTO public.api_gameevent VALUES (5492, 122, 50);
INSERT INTO public.api_gameevent VALUES (5491, 120, 50);
INSERT INTO public.api_gameevent VALUES (5490, 119, 50);
INSERT INTO public.api_gameevent VALUES (5489, 113, 50);
INSERT INTO public.api_gameevent VALUES (5488, 112, 50);
INSERT INTO public.api_gameevent VALUES (5487, 109, 50);
INSERT INTO public.api_gameevent VALUES (5486, 108, 50);
INSERT INTO public.api_gameevent VALUES (5485, 105, 50);
INSERT INTO public.api_gameevent VALUES (5484, 104, 50);
INSERT INTO public.api_gameevent VALUES (5483, 103, 50);
INSERT INTO public.api_gameevent VALUES (5482, 100, 50);
INSERT INTO public.api_gameevent VALUES (5481, 99, 50);
INSERT INTO public.api_gameevent VALUES (5480, 95, 50);
INSERT INTO public.api_gameevent VALUES (5479, 92, 50);
INSERT INTO public.api_gameevent VALUES (5478, 90, 50);
INSERT INTO public.api_gameevent VALUES (5477, 88, 50);
INSERT INTO public.api_gameevent VALUES (5476, 87, 50);
INSERT INTO public.api_gameevent VALUES (5475, 85, 50);
INSERT INTO public.api_gameevent VALUES (5474, 84, 50);
INSERT INTO public.api_gameevent VALUES (5473, 78, 50);
INSERT INTO public.api_gameevent VALUES (5472, 75, 50);
INSERT INTO public.api_gameevent VALUES (5471, 74, 50);
INSERT INTO public.api_gameevent VALUES (5470, 71, 50);
INSERT INTO public.api_gameevent VALUES (5469, 70, 50);
INSERT INTO public.api_gameevent VALUES (5468, 69, 50);
INSERT INTO public.api_gameevent VALUES (5467, 64, 50);
INSERT INTO public.api_gameevent VALUES (5466, 39, 50);
INSERT INTO public.api_gameevent VALUES (5465, 38, 50);
INSERT INTO public.api_gameevent VALUES (5464, 34, 50);
INSERT INTO public.api_gameevent VALUES (5463, 21, 50);


--
-- TOC entry 3221 (class 0 OID 33437)
-- Dependencies: 225
-- Data for Name: api_medal; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.api_medal VALUES (916, 'Gold', 2, 51);
INSERT INTO public.api_medal VALUES (917, 'Silver', 2, 51);
INSERT INTO public.api_medal VALUES (918, 'Bronze', 2, 51);
INSERT INTO public.api_medal VALUES (919, 'Gold', 3, 51);
INSERT INTO public.api_medal VALUES (920, 'Silver', 3, 51);
INSERT INTO public.api_medal VALUES (921, 'Bronze', 3, 51);
INSERT INTO public.api_medal VALUES (922, 'Gold', 4, 51);
INSERT INTO public.api_medal VALUES (923, 'Silver', 4, 51);
INSERT INTO public.api_medal VALUES (924, 'Bronze', 4, 51);
INSERT INTO public.api_medal VALUES (925, 'Gold', 5, 51);
INSERT INTO public.api_medal VALUES (926, 'Silver', 5, 51);
INSERT INTO public.api_medal VALUES (927, 'Bronze', 5, 51);
INSERT INTO public.api_medal VALUES (928, 'Gold', 6, 51);
INSERT INTO public.api_medal VALUES (929, 'Silver', 6, 51);
INSERT INTO public.api_medal VALUES (930, 'Bronze', 6, 51);
INSERT INTO public.api_medal VALUES (931, 'Gold', 7, 51);
INSERT INTO public.api_medal VALUES (932, 'Silver', 7, 51);
INSERT INTO public.api_medal VALUES (933, 'Bronze', 7, 51);
INSERT INTO public.api_medal VALUES (934, 'Gold', 8, 51);
INSERT INTO public.api_medal VALUES (935, 'Bronze', 8, 51);
INSERT INTO public.api_medal VALUES (936, 'Gold', 9, 51);
INSERT INTO public.api_medal VALUES (937, 'Silver', 9, 51);
INSERT INTO public.api_medal VALUES (938, 'Bronze', 9, 51);
INSERT INTO public.api_medal VALUES (939, 'Gold', 10, 51);
INSERT INTO public.api_medal VALUES (940, 'Silver', 10, 51);
INSERT INTO public.api_medal VALUES (941, 'Bronze', 10, 51);
INSERT INTO public.api_medal VALUES (942, 'Gold', 11, 51);
INSERT INTO public.api_medal VALUES (943, 'Silver', 11, 51);
INSERT INTO public.api_medal VALUES (944, 'Bronze', 11, 51);
INSERT INTO public.api_medal VALUES (945, 'Gold', 158, 51);
INSERT INTO public.api_medal VALUES (946, 'Silver', 158, 51);
INSERT INTO public.api_medal VALUES (947, 'Bronze', 158, 51);
INSERT INTO public.api_medal VALUES (948, 'Gold', 159, 51);
INSERT INTO public.api_medal VALUES (949, 'Silver', 159, 51);
INSERT INTO public.api_medal VALUES (950, 'Bronze', 159, 51);
INSERT INTO public.api_medal VALUES (951, 'Gold', 160, 51);
INSERT INTO public.api_medal VALUES (952, 'Silver', 160, 51);
INSERT INTO public.api_medal VALUES (953, 'Bronze', 160, 51);
INSERT INTO public.api_medal VALUES (954, 'Gold', 161, 51);
INSERT INTO public.api_medal VALUES (955, 'Silver', 161, 51);
INSERT INTO public.api_medal VALUES (956, 'Bronze', 161, 51);
INSERT INTO public.api_medal VALUES (957, 'Gold', 162, 51);
INSERT INTO public.api_medal VALUES (958, 'Silver', 162, 51);
INSERT INTO public.api_medal VALUES (959, 'Bronze', 162, 51);
INSERT INTO public.api_medal VALUES (960, 'Gold', 163, 51);
INSERT INTO public.api_medal VALUES (961, 'Silver', 163, 51);
INSERT INTO public.api_medal VALUES (962, 'Bronze', 163, 51);
INSERT INTO public.api_medal VALUES (963, 'Gold', 164, 51);
INSERT INTO public.api_medal VALUES (964, 'Silver', 164, 51);
INSERT INTO public.api_medal VALUES (965, 'Bronze', 164, 51);
INSERT INTO public.api_medal VALUES (966, 'Gold', 165, 51);
INSERT INTO public.api_medal VALUES (967, 'Silver', 165, 51);
INSERT INTO public.api_medal VALUES (968, 'Bronze', 165, 51);
INSERT INTO public.api_medal VALUES (969, 'Gold', 166, 51);
INSERT INTO public.api_medal VALUES (970, 'Silver', 166, 51);
INSERT INTO public.api_medal VALUES (971, 'Bronze', 166, 51);
INSERT INTO public.api_medal VALUES (972, 'Gold', 168, 51);
INSERT INTO public.api_medal VALUES (973, 'Silver', 168, 51);
INSERT INTO public.api_medal VALUES (974, 'Bronze', 168, 51);
INSERT INTO public.api_medal VALUES (975, 'Gold', 170, 51);
INSERT INTO public.api_medal VALUES (976, 'Silver', 170, 51);
INSERT INTO public.api_medal VALUES (977, 'Bronze', 170, 51);
INSERT INTO public.api_medal VALUES (978, 'Gold', 171, 51);
INSERT INTO public.api_medal VALUES (979, 'Silver', 171, 51);
INSERT INTO public.api_medal VALUES (980, 'Bronze', 171, 51);
INSERT INTO public.api_medal VALUES (981, 'Gold', 173, 51);
INSERT INTO public.api_medal VALUES (982, 'Silver', 173, 51);
INSERT INTO public.api_medal VALUES (983, 'Bronze', 173, 51);
INSERT INTO public.api_medal VALUES (984, 'Gold', 174, 51);
INSERT INTO public.api_medal VALUES (985, 'Silver', 174, 51);
INSERT INTO public.api_medal VALUES (986, 'Bronze', 174, 51);
INSERT INTO public.api_medal VALUES (987, 'Gold', 224, 51);
INSERT INTO public.api_medal VALUES (988, 'Silver', 224, 51);
INSERT INTO public.api_medal VALUES (989, 'Bronze', 224, 51);
INSERT INTO public.api_medal VALUES (990, 'Gold', 227, 51);
INSERT INTO public.api_medal VALUES (991, 'Silver', 227, 51);
INSERT INTO public.api_medal VALUES (992, 'Bronze', 227, 51);
INSERT INTO public.api_medal VALUES (993, 'Gold', 228, 51);
INSERT INTO public.api_medal VALUES (994, 'Silver', 228, 51);
INSERT INTO public.api_medal VALUES (995, 'Bronze', 228, 51);
INSERT INTO public.api_medal VALUES (996, 'Gold', 229, 51);
INSERT INTO public.api_medal VALUES (997, 'Silver', 229, 51);
INSERT INTO public.api_medal VALUES (998, 'Bronze', 229, 51);
INSERT INTO public.api_medal VALUES (999, 'Gold', 230, 51);
INSERT INTO public.api_medal VALUES (1000, 'Silver', 230, 51);
INSERT INTO public.api_medal VALUES (1001, 'Bronze', 230, 51);
INSERT INTO public.api_medal VALUES (1002, 'Gold', 231, 51);
INSERT INTO public.api_medal VALUES (1003, 'Silver', 231, 51);
INSERT INTO public.api_medal VALUES (1004, 'Bronze', 231, 51);
INSERT INTO public.api_medal VALUES (1005, 'Gold', 232, 51);
INSERT INTO public.api_medal VALUES (1006, 'Silver', 232, 51);
INSERT INTO public.api_medal VALUES (1007, 'Bronze', 232, 51);
INSERT INTO public.api_medal VALUES (1008, 'Gold', 234, 51);
INSERT INTO public.api_medal VALUES (1009, 'Silver', 234, 51);
INSERT INTO public.api_medal VALUES (1010, 'Bronze', 234, 51);
INSERT INTO public.api_medal VALUES (1011, 'Gold', 237, 51);
INSERT INTO public.api_medal VALUES (1012, 'Silver', 237, 51);
INSERT INTO public.api_medal VALUES (1013, 'Bronze', 237, 51);
INSERT INTO public.api_medal VALUES (1014, 'Gold', 238, 51);
INSERT INTO public.api_medal VALUES (1015, 'Silver', 238, 51);
INSERT INTO public.api_medal VALUES (1016, 'Bronze', 238, 51);
INSERT INTO public.api_medal VALUES (1017, 'Gold', 242, 51);
INSERT INTO public.api_medal VALUES (1018, 'Silver', 242, 51);
INSERT INTO public.api_medal VALUES (1019, 'Bronze', 242, 51);
INSERT INTO public.api_medal VALUES (1020, 'Gold', 243, 51);
INSERT INTO public.api_medal VALUES (1021, 'Silver', 243, 51);
INSERT INTO public.api_medal VALUES (1022, 'Bronze', 243, 51);
INSERT INTO public.api_medal VALUES (1023, 'Gold', 244, 51);
INSERT INTO public.api_medal VALUES (1024, 'Silver', 244, 51);
INSERT INTO public.api_medal VALUES (1025, 'Bronze', 244, 51);
INSERT INTO public.api_medal VALUES (1026, 'Gold', 245, 51);
INSERT INTO public.api_medal VALUES (1027, 'Silver', 245, 51);
INSERT INTO public.api_medal VALUES (1028, 'Bronze', 245, 51);
INSERT INTO public.api_medal VALUES (1029, 'Gold', 336, 51);
INSERT INTO public.api_medal VALUES (1030, 'Silver', 336, 51);
INSERT INTO public.api_medal VALUES (1031, 'Bronze', 336, 51);
INSERT INTO public.api_medal VALUES (1032, 'Gold', 338, 51);
INSERT INTO public.api_medal VALUES (1033, 'Silver', 338, 51);
INSERT INTO public.api_medal VALUES (1034, 'Bronze', 338, 51);
INSERT INTO public.api_medal VALUES (1035, 'Gold', 339, 51);
INSERT INTO public.api_medal VALUES (1036, 'Silver', 339, 51);
INSERT INTO public.api_medal VALUES (1037, 'Bronze', 339, 51);
INSERT INTO public.api_medal VALUES (1038, 'Gold', 340, 51);
INSERT INTO public.api_medal VALUES (1039, 'Silver', 340, 51);
INSERT INTO public.api_medal VALUES (1040, 'Bronze', 340, 51);
INSERT INTO public.api_medal VALUES (1041, 'Gold', 341, 51);
INSERT INTO public.api_medal VALUES (1042, 'Silver', 341, 51);
INSERT INTO public.api_medal VALUES (1043, 'Bronze', 341, 51);
INSERT INTO public.api_medal VALUES (1044, 'Gold', 344, 51);
INSERT INTO public.api_medal VALUES (1045, 'Silver', 344, 51);
INSERT INTO public.api_medal VALUES (1046, 'Bronze', 344, 51);
INSERT INTO public.api_medal VALUES (1047, 'Gold', 345, 51);
INSERT INTO public.api_medal VALUES (1048, 'Silver', 345, 51);
INSERT INTO public.api_medal VALUES (1049, 'Bronze', 345, 51);
INSERT INTO public.api_medal VALUES (1050, 'Gold', 346, 51);
INSERT INTO public.api_medal VALUES (1051, 'Silver', 346, 51);
INSERT INTO public.api_medal VALUES (1052, 'Bronze', 346, 51);
INSERT INTO public.api_medal VALUES (1053, 'Gold', 347, 51);
INSERT INTO public.api_medal VALUES (1054, 'Silver', 347, 51);
INSERT INTO public.api_medal VALUES (1055, 'Bronze', 347, 51);
INSERT INTO public.api_medal VALUES (1056, 'Gold', 348, 51);
INSERT INTO public.api_medal VALUES (1057, 'Silver', 348, 51);
INSERT INTO public.api_medal VALUES (1058, 'Bronze', 348, 51);
INSERT INTO public.api_medal VALUES (1059, 'Gold', 349, 51);
INSERT INTO public.api_medal VALUES (1060, 'Silver', 349, 51);
INSERT INTO public.api_medal VALUES (1061, 'Bronze', 349, 51);
INSERT INTO public.api_medal VALUES (1062, 'Gold', 350, 51);
INSERT INTO public.api_medal VALUES (1063, 'Silver', 350, 51);
INSERT INTO public.api_medal VALUES (1064, 'Bronze', 350, 51);
INSERT INTO public.api_medal VALUES (1065, 'Gold', 351, 51);
INSERT INTO public.api_medal VALUES (1066, 'Silver', 351, 51);
INSERT INTO public.api_medal VALUES (1067, 'Bronze', 351, 51);
INSERT INTO public.api_medal VALUES (1068, 'Gold', 352, 51);
INSERT INTO public.api_medal VALUES (1069, 'Silver', 352, 51);
INSERT INTO public.api_medal VALUES (1070, 'Bronze', 352, 51);
INSERT INTO public.api_medal VALUES (1071, 'Gold', 353, 51);
INSERT INTO public.api_medal VALUES (1072, 'Silver', 353, 51);
INSERT INTO public.api_medal VALUES (1073, 'Bronze', 353, 51);
INSERT INTO public.api_medal VALUES (1074, 'Gold', 388, 51);
INSERT INTO public.api_medal VALUES (1075, 'Silver', 388, 51);
INSERT INTO public.api_medal VALUES (1076, 'Bronze', 388, 51);
INSERT INTO public.api_medal VALUES (1077, 'Gold', 389, 51);
INSERT INTO public.api_medal VALUES (1078, 'Silver', 389, 51);
INSERT INTO public.api_medal VALUES (1079, 'Bronze', 389, 51);
INSERT INTO public.api_medal VALUES (1080, 'Gold', 407, 51);
INSERT INTO public.api_medal VALUES (1081, 'Silver', 407, 51);
INSERT INTO public.api_medal VALUES (1082, 'Bronze', 407, 51);
INSERT INTO public.api_medal VALUES (1083, 'Gold', 408, 51);
INSERT INTO public.api_medal VALUES (1084, 'Silver', 408, 51);
INSERT INTO public.api_medal VALUES (1085, 'Bronze', 408, 51);
INSERT INTO public.api_medal VALUES (1086, 'Gold', 409, 51);
INSERT INTO public.api_medal VALUES (1087, 'Silver', 409, 51);
INSERT INTO public.api_medal VALUES (1088, 'Bronze', 409, 51);
INSERT INTO public.api_medal VALUES (1089, 'Gold', 410, 51);
INSERT INTO public.api_medal VALUES (1090, 'Silver', 410, 51);
INSERT INTO public.api_medal VALUES (1091, 'Bronze', 410, 51);
INSERT INTO public.api_medal VALUES (1092, 'Gold', 419, 51);
INSERT INTO public.api_medal VALUES (1093, 'Silver', 419, 51);
INSERT INTO public.api_medal VALUES (1094, 'Bronze', 419, 51);
INSERT INTO public.api_medal VALUES (1095, 'Gold', 420, 51);
INSERT INTO public.api_medal VALUES (1096, 'Silver', 420, 51);
INSERT INTO public.api_medal VALUES (1097, 'Bronze', 420, 51);
INSERT INTO public.api_medal VALUES (1098, 'Gold', 422, 51);
INSERT INTO public.api_medal VALUES (1099, 'Silver', 422, 51);
INSERT INTO public.api_medal VALUES (1100, 'Bronze', 422, 51);
INSERT INTO public.api_medal VALUES (1101, 'Gold', 576, 51);
INSERT INTO public.api_medal VALUES (1102, 'Silver', 576, 51);
INSERT INTO public.api_medal VALUES (1103, 'Bronze', 576, 51);
INSERT INTO public.api_medal VALUES (1104, 'Gold', 577, 51);
INSERT INTO public.api_medal VALUES (1105, 'Silver', 577, 51);
INSERT INTO public.api_medal VALUES (1106, 'Bronze', 577, 51);
INSERT INTO public.api_medal VALUES (1107, 'Gold', 578, 51);
INSERT INTO public.api_medal VALUES (1108, 'Silver', 578, 51);
INSERT INTO public.api_medal VALUES (1109, 'Bronze', 578, 51);
INSERT INTO public.api_medal VALUES (1110, 'Gold', 579, 51);
INSERT INTO public.api_medal VALUES (1111, 'Silver', 579, 51);
INSERT INTO public.api_medal VALUES (1112, 'Bronze', 579, 51);
INSERT INTO public.api_medal VALUES (1113, 'Gold', 580, 51);
INSERT INTO public.api_medal VALUES (1114, 'Silver', 580, 51);
INSERT INTO public.api_medal VALUES (1115, 'Bronze', 580, 51);
INSERT INTO public.api_medal VALUES (1116, 'Gold', 581, 51);
INSERT INTO public.api_medal VALUES (1117, 'Silver', 581, 51);
INSERT INTO public.api_medal VALUES (1118, 'Bronze', 581, 51);
INSERT INTO public.api_medal VALUES (1119, 'Gold', 582, 51);
INSERT INTO public.api_medal VALUES (1120, 'Silver', 582, 51);
INSERT INTO public.api_medal VALUES (1121, 'Bronze', 582, 51);
INSERT INTO public.api_medal VALUES (1122, 'Gold', 583, 51);
INSERT INTO public.api_medal VALUES (1123, 'Silver', 583, 51);
INSERT INTO public.api_medal VALUES (1124, 'Bronze', 583, 51);
INSERT INTO public.api_medal VALUES (1125, 'Gold', 584, 51);
INSERT INTO public.api_medal VALUES (1126, 'Silver', 584, 51);
INSERT INTO public.api_medal VALUES (1127, 'Bronze', 584, 51);
INSERT INTO public.api_medal VALUES (1128, 'Gold', 585, 51);
INSERT INTO public.api_medal VALUES (1129, 'Silver', 585, 51);
INSERT INTO public.api_medal VALUES (1130, 'Bronze', 585, 51);
INSERT INTO public.api_medal VALUES (1131, 'Gold', 586, 51);
INSERT INTO public.api_medal VALUES (1132, 'Silver', 586, 51);
INSERT INTO public.api_medal VALUES (1133, 'Bronze', 586, 51);
INSERT INTO public.api_medal VALUES (1134, 'Gold', 587, 51);
INSERT INTO public.api_medal VALUES (1135, 'Silver', 587, 51);
INSERT INTO public.api_medal VALUES (1136, 'Bronze', 587, 51);
INSERT INTO public.api_medal VALUES (1137, 'Gold', 588, 51);
INSERT INTO public.api_medal VALUES (1138, 'Silver', 588, 51);
INSERT INTO public.api_medal VALUES (1139, 'Bronze', 588, 51);
INSERT INTO public.api_medal VALUES (1140, 'Gold', 589, 51);
INSERT INTO public.api_medal VALUES (1141, 'Silver', 589, 51);
INSERT INTO public.api_medal VALUES (1142, 'Bronze', 589, 51);
INSERT INTO public.api_medal VALUES (1143, 'Gold', 590, 51);
INSERT INTO public.api_medal VALUES (1144, 'Silver', 590, 51);
INSERT INTO public.api_medal VALUES (1145, 'Bronze', 590, 51);
INSERT INTO public.api_medal VALUES (1146, 'Gold', 592, 51);
INSERT INTO public.api_medal VALUES (1147, 'Silver', 592, 51);
INSERT INTO public.api_medal VALUES (1148, 'Bronze', 592, 51);
INSERT INTO public.api_medal VALUES (1149, 'Gold', 593, 51);
INSERT INTO public.api_medal VALUES (1150, 'Silver', 593, 51);
INSERT INTO public.api_medal VALUES (1151, 'Bronze', 593, 51);
INSERT INTO public.api_medal VALUES (1152, 'Gold', 594, 51);
INSERT INTO public.api_medal VALUES (1153, 'Silver', 594, 51);
INSERT INTO public.api_medal VALUES (1154, 'Bronze', 594, 51);
INSERT INTO public.api_medal VALUES (1155, 'Gold', 595, 51);
INSERT INTO public.api_medal VALUES (1156, 'Silver', 595, 51);
INSERT INTO public.api_medal VALUES (1157, 'Bronze', 595, 51);
INSERT INTO public.api_medal VALUES (1158, 'Gold', 596, 51);
INSERT INTO public.api_medal VALUES (1159, 'Silver', 596, 51);
INSERT INTO public.api_medal VALUES (1160, 'Bronze', 596, 51);
INSERT INTO public.api_medal VALUES (1161, 'Gold', 598, 51);
INSERT INTO public.api_medal VALUES (1162, 'Silver', 598, 51);
INSERT INTO public.api_medal VALUES (1163, 'Bronze', 598, 51);
INSERT INTO public.api_medal VALUES (1164, 'Gold', 599, 51);
INSERT INTO public.api_medal VALUES (1165, 'Silver', 599, 51);
INSERT INTO public.api_medal VALUES (1166, 'Bronze', 599, 51);
INSERT INTO public.api_medal VALUES (1167, 'Gold', 600, 51);
INSERT INTO public.api_medal VALUES (1168, 'Silver', 600, 51);
INSERT INTO public.api_medal VALUES (1169, 'Bronze', 600, 51);
INSERT INTO public.api_medal VALUES (1170, 'Gold', 601, 51);
INSERT INTO public.api_medal VALUES (1171, 'Silver', 601, 51);
INSERT INTO public.api_medal VALUES (1172, 'Bronze', 601, 51);
INSERT INTO public.api_medal VALUES (1173, 'Gold', 603, 51);
INSERT INTO public.api_medal VALUES (1174, 'Silver', 603, 51);
INSERT INTO public.api_medal VALUES (1175, 'Bronze', 603, 51);
INSERT INTO public.api_medal VALUES (1176, 'Gold', 604, 51);
INSERT INTO public.api_medal VALUES (1177, 'Silver', 604, 51);
INSERT INTO public.api_medal VALUES (1178, 'Bronze', 604, 51);
INSERT INTO public.api_medal VALUES (1179, 'Gold', 605, 51);
INSERT INTO public.api_medal VALUES (1180, 'Silver', 605, 51);
INSERT INTO public.api_medal VALUES (1181, 'Bronze', 605, 51);
INSERT INTO public.api_medal VALUES (1182, 'Gold', 606, 51);
INSERT INTO public.api_medal VALUES (1183, 'Silver', 606, 51);
INSERT INTO public.api_medal VALUES (1184, 'Bronze', 606, 51);
INSERT INTO public.api_medal VALUES (1185, 'Gold', 607, 51);
INSERT INTO public.api_medal VALUES (1186, 'Silver', 607, 51);
INSERT INTO public.api_medal VALUES (1187, 'Bronze', 607, 51);
INSERT INTO public.api_medal VALUES (1188, 'Gold', 609, 51);
INSERT INTO public.api_medal VALUES (1189, 'Silver', 609, 51);
INSERT INTO public.api_medal VALUES (1190, 'Bronze', 609, 51);
INSERT INTO public.api_medal VALUES (1191, 'Gold', 610, 51);
INSERT INTO public.api_medal VALUES (1192, 'Silver', 610, 51);
INSERT INTO public.api_medal VALUES (1193, 'Bronze', 610, 51);
INSERT INTO public.api_medal VALUES (1194, 'Gold', 611, 51);
INSERT INTO public.api_medal VALUES (1195, 'Silver', 611, 51);
INSERT INTO public.api_medal VALUES (1196, 'Bronze', 611, 51);
INSERT INTO public.api_medal VALUES (1197, 'Gold', 612, 51);
INSERT INTO public.api_medal VALUES (1198, 'Silver', 612, 51);
INSERT INTO public.api_medal VALUES (1199, 'Bronze', 612, 51);
INSERT INTO public.api_medal VALUES (1200, 'Gold', 613, 51);
INSERT INTO public.api_medal VALUES (1201, 'Silver', 613, 51);
INSERT INTO public.api_medal VALUES (1202, 'Bronze', 613, 51);
INSERT INTO public.api_medal VALUES (1203, 'Gold', 614, 51);
INSERT INTO public.api_medal VALUES (1204, 'Silver', 614, 51);
INSERT INTO public.api_medal VALUES (1205, 'Bronze', 614, 51);
INSERT INTO public.api_medal VALUES (1206, 'Gold', 615, 51);
INSERT INTO public.api_medal VALUES (1207, 'Silver', 615, 51);
INSERT INTO public.api_medal VALUES (1208, 'Bronze', 615, 51);
INSERT INTO public.api_medal VALUES (1, 'Gold', 21, 52);
INSERT INTO public.api_medal VALUES (2, 'Silver', 21, 52);
INSERT INTO public.api_medal VALUES (3, 'Bronze', 21, 52);
INSERT INTO public.api_medal VALUES (4, 'Gold', 34, 52);
INSERT INTO public.api_medal VALUES (5, 'Silver', 34, 52);
INSERT INTO public.api_medal VALUES (6, 'Bronze', 34, 52);
INSERT INTO public.api_medal VALUES (7, 'Gold', 38, 52);
INSERT INTO public.api_medal VALUES (8, 'Silver', 38, 52);
INSERT INTO public.api_medal VALUES (9, 'Bronze', 38, 52);
INSERT INTO public.api_medal VALUES (10, 'Gold', 39, 52);
INSERT INTO public.api_medal VALUES (11, 'Silver', 39, 52);
INSERT INTO public.api_medal VALUES (12, 'Bronze', 39, 52);
INSERT INTO public.api_medal VALUES (13, 'Gold', 64, 52);
INSERT INTO public.api_medal VALUES (14, 'Silver', 64, 52);
INSERT INTO public.api_medal VALUES (15, 'Bronze', 64, 52);
INSERT INTO public.api_medal VALUES (16, 'Gold', 69, 52);
INSERT INTO public.api_medal VALUES (17, 'Silver', 69, 52);
INSERT INTO public.api_medal VALUES (18, 'Bronze', 69, 52);
INSERT INTO public.api_medal VALUES (19, 'Gold', 70, 52);
INSERT INTO public.api_medal VALUES (20, 'Silver', 70, 52);
INSERT INTO public.api_medal VALUES (21, 'Bronze', 70, 52);
INSERT INTO public.api_medal VALUES (22, 'Gold', 71, 52);
INSERT INTO public.api_medal VALUES (23, 'Silver', 71, 52);
INSERT INTO public.api_medal VALUES (24, 'Bronze', 71, 52);
INSERT INTO public.api_medal VALUES (25, 'Gold', 74, 52);
INSERT INTO public.api_medal VALUES (26, 'Silver', 74, 52);
INSERT INTO public.api_medal VALUES (27, 'Bronze', 74, 52);
INSERT INTO public.api_medal VALUES (28, 'Gold', 75, 52);
INSERT INTO public.api_medal VALUES (29, 'Silver', 75, 52);
INSERT INTO public.api_medal VALUES (30, 'Bronze', 75, 52);
INSERT INTO public.api_medal VALUES (31, 'Gold', 78, 52);
INSERT INTO public.api_medal VALUES (32, 'Silver', 78, 52);
INSERT INTO public.api_medal VALUES (33, 'Bronze', 78, 52);
INSERT INTO public.api_medal VALUES (34, 'Gold', 84, 52);
INSERT INTO public.api_medal VALUES (35, 'Silver', 84, 52);
INSERT INTO public.api_medal VALUES (36, 'Bronze', 84, 52);
INSERT INTO public.api_medal VALUES (37, 'Gold', 85, 52);
INSERT INTO public.api_medal VALUES (38, 'Silver', 85, 52);
INSERT INTO public.api_medal VALUES (39, 'Bronze', 85, 52);
INSERT INTO public.api_medal VALUES (40, 'Gold', 87, 52);
INSERT INTO public.api_medal VALUES (41, 'Silver', 87, 52);
INSERT INTO public.api_medal VALUES (42, 'Bronze', 87, 52);
INSERT INTO public.api_medal VALUES (43, 'Gold', 88, 52);
INSERT INTO public.api_medal VALUES (44, 'Silver', 88, 52);
INSERT INTO public.api_medal VALUES (45, 'Bronze', 88, 52);
INSERT INTO public.api_medal VALUES (46, 'Gold', 90, 52);
INSERT INTO public.api_medal VALUES (47, 'Silver', 90, 52);
INSERT INTO public.api_medal VALUES (48, 'Bronze', 90, 52);
INSERT INTO public.api_medal VALUES (49, 'Gold', 92, 52);
INSERT INTO public.api_medal VALUES (50, 'Silver', 92, 52);
INSERT INTO public.api_medal VALUES (51, 'Bronze', 92, 52);
INSERT INTO public.api_medal VALUES (52, 'Gold', 95, 52);
INSERT INTO public.api_medal VALUES (53, 'Silver', 95, 52);
INSERT INTO public.api_medal VALUES (54, 'Bronze', 95, 52);
INSERT INTO public.api_medal VALUES (55, 'Gold', 99, 52);
INSERT INTO public.api_medal VALUES (56, 'Silver', 99, 52);
INSERT INTO public.api_medal VALUES (57, 'Bronze', 99, 52);
INSERT INTO public.api_medal VALUES (58, 'Gold', 100, 52);
INSERT INTO public.api_medal VALUES (59, 'Silver', 100, 52);
INSERT INTO public.api_medal VALUES (60, 'Bronze', 100, 52);
INSERT INTO public.api_medal VALUES (61, 'Gold', 103, 52);
INSERT INTO public.api_medal VALUES (62, 'Silver', 103, 52);
INSERT INTO public.api_medal VALUES (63, 'Bronze', 103, 52);
INSERT INTO public.api_medal VALUES (64, 'Gold', 104, 52);
INSERT INTO public.api_medal VALUES (65, 'Silver', 104, 52);
INSERT INTO public.api_medal VALUES (66, 'Bronze', 104, 52);
INSERT INTO public.api_medal VALUES (67, 'Gold', 105, 52);
INSERT INTO public.api_medal VALUES (68, 'Silver', 105, 52);
INSERT INTO public.api_medal VALUES (69, 'Bronze', 105, 52);
INSERT INTO public.api_medal VALUES (70, 'Gold', 108, 52);
INSERT INTO public.api_medal VALUES (71, 'Silver', 108, 52);
INSERT INTO public.api_medal VALUES (72, 'Bronze', 108, 52);
INSERT INTO public.api_medal VALUES (73, 'Gold', 109, 52);
INSERT INTO public.api_medal VALUES (74, 'Silver', 109, 52);
INSERT INTO public.api_medal VALUES (75, 'Bronze', 109, 52);
INSERT INTO public.api_medal VALUES (76, 'Gold', 112, 52);
INSERT INTO public.api_medal VALUES (77, 'Silver', 112, 52);
INSERT INTO public.api_medal VALUES (78, 'Bronze', 112, 52);
INSERT INTO public.api_medal VALUES (79, 'Gold', 113, 52);
INSERT INTO public.api_medal VALUES (80, 'Silver', 113, 52);
INSERT INTO public.api_medal VALUES (81, 'Bronze', 113, 52);
INSERT INTO public.api_medal VALUES (82, 'Gold', 119, 52);
INSERT INTO public.api_medal VALUES (83, 'Silver', 119, 52);
INSERT INTO public.api_medal VALUES (84, 'Bronze', 119, 52);
INSERT INTO public.api_medal VALUES (85, 'Gold', 120, 52);
INSERT INTO public.api_medal VALUES (86, 'Silver', 120, 52);
INSERT INTO public.api_medal VALUES (87, 'Bronze', 120, 52);
INSERT INTO public.api_medal VALUES (88, 'Gold', 122, 52);
INSERT INTO public.api_medal VALUES (89, 'Silver', 122, 52);
INSERT INTO public.api_medal VALUES (90, 'Bronze', 122, 52);
INSERT INTO public.api_medal VALUES (91, 'Gold', 123, 52);
INSERT INTO public.api_medal VALUES (92, 'Silver', 123, 52);
INSERT INTO public.api_medal VALUES (93, 'Bronze', 123, 52);
INSERT INTO public.api_medal VALUES (94, 'Gold', 124, 52);
INSERT INTO public.api_medal VALUES (95, 'Silver', 124, 52);
INSERT INTO public.api_medal VALUES (96, 'Bronze', 124, 52);
INSERT INTO public.api_medal VALUES (97, 'Gold', 125, 52);
INSERT INTO public.api_medal VALUES (98, 'Silver', 125, 52);
INSERT INTO public.api_medal VALUES (99, 'Bronze', 125, 52);
INSERT INTO public.api_medal VALUES (100, 'Gold', 126, 52);
INSERT INTO public.api_medal VALUES (101, 'Silver', 126, 52);
INSERT INTO public.api_medal VALUES (102, 'Bronze', 126, 52);
INSERT INTO public.api_medal VALUES (103, 'Gold', 128, 52);
INSERT INTO public.api_medal VALUES (104, 'Silver', 128, 52);
INSERT INTO public.api_medal VALUES (105, 'Bronze', 128, 52);
INSERT INTO public.api_medal VALUES (106, 'Gold', 129, 52);
INSERT INTO public.api_medal VALUES (107, 'Silver', 129, 52);
INSERT INTO public.api_medal VALUES (108, 'Bronze', 129, 52);
INSERT INTO public.api_medal VALUES (109, 'Gold', 130, 52);
INSERT INTO public.api_medal VALUES (110, 'Silver', 130, 52);
INSERT INTO public.api_medal VALUES (111, 'Bronze', 130, 52);
INSERT INTO public.api_medal VALUES (112, 'Gold', 131, 52);
INSERT INTO public.api_medal VALUES (113, 'Silver', 131, 52);
INSERT INTO public.api_medal VALUES (114, 'Bronze', 131, 52);
INSERT INTO public.api_medal VALUES (115, 'Gold', 132, 52);
INSERT INTO public.api_medal VALUES (116, 'Silver', 132, 52);
INSERT INTO public.api_medal VALUES (117, 'Bronze', 132, 52);
INSERT INTO public.api_medal VALUES (118, 'Gold', 133, 52);
INSERT INTO public.api_medal VALUES (119, 'Silver', 133, 52);
INSERT INTO public.api_medal VALUES (120, 'Bronze', 133, 52);
INSERT INTO public.api_medal VALUES (121, 'Gold', 135, 52);
INSERT INTO public.api_medal VALUES (122, 'Silver', 135, 52);
INSERT INTO public.api_medal VALUES (123, 'Bronze', 135, 52);
INSERT INTO public.api_medal VALUES (124, 'Gold', 136, 52);
INSERT INTO public.api_medal VALUES (125, 'Silver', 136, 52);
INSERT INTO public.api_medal VALUES (126, 'Bronze', 136, 52);
INSERT INTO public.api_medal VALUES (127, 'Gold', 137, 52);
INSERT INTO public.api_medal VALUES (128, 'Silver', 137, 52);
INSERT INTO public.api_medal VALUES (129, 'Bronze', 137, 52);
INSERT INTO public.api_medal VALUES (130, 'Gold', 138, 52);
INSERT INTO public.api_medal VALUES (131, 'Silver', 138, 52);
INSERT INTO public.api_medal VALUES (132, 'Bronze', 138, 52);
INSERT INTO public.api_medal VALUES (133, 'Gold', 139, 52);
INSERT INTO public.api_medal VALUES (134, 'Silver', 139, 52);
INSERT INTO public.api_medal VALUES (135, 'Bronze', 139, 52);
INSERT INTO public.api_medal VALUES (136, 'Gold', 140, 52);
INSERT INTO public.api_medal VALUES (137, 'Silver', 140, 52);
INSERT INTO public.api_medal VALUES (138, 'Bronze', 140, 52);
INSERT INTO public.api_medal VALUES (139, 'Gold', 141, 52);
INSERT INTO public.api_medal VALUES (140, 'Silver', 141, 52);
INSERT INTO public.api_medal VALUES (141, 'Bronze', 141, 52);
INSERT INTO public.api_medal VALUES (142, 'Gold', 142, 52);
INSERT INTO public.api_medal VALUES (143, 'Silver', 142, 52);
INSERT INTO public.api_medal VALUES (144, 'Bronze', 142, 52);
INSERT INTO public.api_medal VALUES (145, 'Gold', 144, 52);
INSERT INTO public.api_medal VALUES (146, 'Silver', 144, 52);
INSERT INTO public.api_medal VALUES (147, 'Bronze', 144, 52);
INSERT INTO public.api_medal VALUES (148, 'Gold', 145, 52);
INSERT INTO public.api_medal VALUES (149, 'Silver', 145, 52);
INSERT INTO public.api_medal VALUES (150, 'Bronze', 145, 52);
INSERT INTO public.api_medal VALUES (151, 'Gold', 146, 52);
INSERT INTO public.api_medal VALUES (152, 'Silver', 146, 52);
INSERT INTO public.api_medal VALUES (153, 'Bronze', 146, 52);
INSERT INTO public.api_medal VALUES (154, 'Gold', 147, 52);
INSERT INTO public.api_medal VALUES (155, 'Silver', 147, 52);
INSERT INTO public.api_medal VALUES (156, 'Bronze', 147, 52);
INSERT INTO public.api_medal VALUES (157, 'Gold', 148, 52);
INSERT INTO public.api_medal VALUES (158, 'Silver', 148, 52);
INSERT INTO public.api_medal VALUES (159, 'Bronze', 148, 52);
INSERT INTO public.api_medal VALUES (160, 'Gold', 149, 52);
INSERT INTO public.api_medal VALUES (161, 'Silver', 149, 52);
INSERT INTO public.api_medal VALUES (162, 'Bronze', 149, 52);
INSERT INTO public.api_medal VALUES (163, 'Gold', 150, 52);
INSERT INTO public.api_medal VALUES (164, 'Silver', 150, 52);
INSERT INTO public.api_medal VALUES (165, 'Bronze', 150, 52);
INSERT INTO public.api_medal VALUES (166, 'Gold', 151, 52);
INSERT INTO public.api_medal VALUES (167, 'Silver', 151, 52);
INSERT INTO public.api_medal VALUES (168, 'Bronze', 151, 52);
INSERT INTO public.api_medal VALUES (169, 'Gold', 153, 52);
INSERT INTO public.api_medal VALUES (170, 'Silver', 153, 52);
INSERT INTO public.api_medal VALUES (171, 'Bronze', 153, 52);
INSERT INTO public.api_medal VALUES (172, 'Gold', 154, 52);
INSERT INTO public.api_medal VALUES (173, 'Silver', 154, 52);
INSERT INTO public.api_medal VALUES (174, 'Bronze', 154, 52);
INSERT INTO public.api_medal VALUES (175, 'Gold', 156, 52);
INSERT INTO public.api_medal VALUES (176, 'Silver', 156, 52);
INSERT INTO public.api_medal VALUES (177, 'Bronze', 156, 52);
INSERT INTO public.api_medal VALUES (178, 'Gold', 157, 52);
INSERT INTO public.api_medal VALUES (179, 'Silver', 157, 52);
INSERT INTO public.api_medal VALUES (180, 'Bronze', 157, 52);
INSERT INTO public.api_medal VALUES (181, 'Gold', 175, 52);
INSERT INTO public.api_medal VALUES (182, 'Silver', 175, 52);
INSERT INTO public.api_medal VALUES (183, 'Bronze', 175, 52);
INSERT INTO public.api_medal VALUES (184, 'Gold', 177, 52);
INSERT INTO public.api_medal VALUES (185, 'Bronze', 177, 52);
INSERT INTO public.api_medal VALUES (186, 'Gold', 178, 52);
INSERT INTO public.api_medal VALUES (187, 'Silver', 178, 52);
INSERT INTO public.api_medal VALUES (188, 'Bronze', 178, 52);
INSERT INTO public.api_medal VALUES (189, 'Gold', 179, 52);
INSERT INTO public.api_medal VALUES (190, 'Silver', 179, 52);
INSERT INTO public.api_medal VALUES (191, 'Bronze', 179, 52);
INSERT INTO public.api_medal VALUES (192, 'Gold', 180, 52);
INSERT INTO public.api_medal VALUES (193, 'Silver', 180, 52);
INSERT INTO public.api_medal VALUES (194, 'Bronze', 180, 52);
INSERT INTO public.api_medal VALUES (195, 'Gold', 182, 52);
INSERT INTO public.api_medal VALUES (196, 'Silver', 182, 52);
INSERT INTO public.api_medal VALUES (197, 'Bronze', 182, 52);
INSERT INTO public.api_medal VALUES (198, 'Gold', 183, 52);
INSERT INTO public.api_medal VALUES (199, 'Silver', 183, 52);
INSERT INTO public.api_medal VALUES (200, 'Bronze', 183, 52);
INSERT INTO public.api_medal VALUES (201, 'Gold', 184, 52);
INSERT INTO public.api_medal VALUES (202, 'Silver', 184, 52);
INSERT INTO public.api_medal VALUES (203, 'Bronze', 184, 52);
INSERT INTO public.api_medal VALUES (204, 'Gold', 185, 52);
INSERT INTO public.api_medal VALUES (205, 'Silver', 185, 52);
INSERT INTO public.api_medal VALUES (206, 'Bronze', 185, 52);
INSERT INTO public.api_medal VALUES (207, 'Gold', 186, 52);
INSERT INTO public.api_medal VALUES (208, 'Silver', 186, 52);
INSERT INTO public.api_medal VALUES (209, 'Bronze', 186, 52);
INSERT INTO public.api_medal VALUES (210, 'Gold', 187, 52);
INSERT INTO public.api_medal VALUES (211, 'Silver', 187, 52);
INSERT INTO public.api_medal VALUES (212, 'Bronze', 187, 52);
INSERT INTO public.api_medal VALUES (213, 'Gold', 188, 52);
INSERT INTO public.api_medal VALUES (214, 'Silver', 188, 52);
INSERT INTO public.api_medal VALUES (215, 'Bronze', 188, 52);
INSERT INTO public.api_medal VALUES (216, 'Gold', 189, 52);
INSERT INTO public.api_medal VALUES (217, 'Silver', 189, 52);
INSERT INTO public.api_medal VALUES (218, 'Bronze', 189, 52);
INSERT INTO public.api_medal VALUES (219, 'Gold', 190, 52);
INSERT INTO public.api_medal VALUES (220, 'Silver', 190, 52);
INSERT INTO public.api_medal VALUES (221, 'Bronze', 190, 52);
INSERT INTO public.api_medal VALUES (222, 'Gold', 193, 52);
INSERT INTO public.api_medal VALUES (223, 'Silver', 193, 52);
INSERT INTO public.api_medal VALUES (224, 'Bronze', 193, 52);
INSERT INTO public.api_medal VALUES (225, 'Gold', 194, 52);
INSERT INTO public.api_medal VALUES (226, 'Silver', 194, 52);
INSERT INTO public.api_medal VALUES (227, 'Bronze', 194, 52);
INSERT INTO public.api_medal VALUES (228, 'Gold', 196, 52);
INSERT INTO public.api_medal VALUES (229, 'Silver', 196, 52);
INSERT INTO public.api_medal VALUES (230, 'Bronze', 196, 52);
INSERT INTO public.api_medal VALUES (231, 'Gold', 198, 52);
INSERT INTO public.api_medal VALUES (232, 'Silver', 198, 52);
INSERT INTO public.api_medal VALUES (233, 'Bronze', 198, 52);
INSERT INTO public.api_medal VALUES (234, 'Gold', 201, 52);
INSERT INTO public.api_medal VALUES (235, 'Silver', 201, 52);
INSERT INTO public.api_medal VALUES (236, 'Bronze', 201, 52);
INSERT INTO public.api_medal VALUES (237, 'Gold', 203, 52);
INSERT INTO public.api_medal VALUES (238, 'Silver', 203, 52);
INSERT INTO public.api_medal VALUES (239, 'Bronze', 203, 52);
INSERT INTO public.api_medal VALUES (240, 'Gold', 205, 52);
INSERT INTO public.api_medal VALUES (241, 'Silver', 205, 52);
INSERT INTO public.api_medal VALUES (242, 'Bronze', 205, 52);
INSERT INTO public.api_medal VALUES (243, 'Gold', 207, 52);
INSERT INTO public.api_medal VALUES (244, 'Silver', 207, 52);
INSERT INTO public.api_medal VALUES (245, 'Bronze', 207, 52);
INSERT INTO public.api_medal VALUES (246, 'Gold', 209, 52);
INSERT INTO public.api_medal VALUES (247, 'Silver', 209, 52);
INSERT INTO public.api_medal VALUES (248, 'Bronze', 209, 52);
INSERT INTO public.api_medal VALUES (249, 'Gold', 211, 52);
INSERT INTO public.api_medal VALUES (250, 'Silver', 211, 52);
INSERT INTO public.api_medal VALUES (251, 'Bronze', 211, 52);
INSERT INTO public.api_medal VALUES (252, 'Gold', 212, 52);
INSERT INTO public.api_medal VALUES (253, 'Silver', 212, 52);
INSERT INTO public.api_medal VALUES (254, 'Bronze', 212, 52);
INSERT INTO public.api_medal VALUES (255, 'Gold', 213, 52);
INSERT INTO public.api_medal VALUES (256, 'Silver', 213, 52);
INSERT INTO public.api_medal VALUES (257, 'Bronze', 213, 52);
INSERT INTO public.api_medal VALUES (258, 'Gold', 214, 52);
INSERT INTO public.api_medal VALUES (259, 'Silver', 214, 52);
INSERT INTO public.api_medal VALUES (260, 'Bronze', 214, 52);
INSERT INTO public.api_medal VALUES (261, 'Gold', 215, 52);
INSERT INTO public.api_medal VALUES (262, 'Silver', 215, 52);
INSERT INTO public.api_medal VALUES (263, 'Bronze', 215, 52);
INSERT INTO public.api_medal VALUES (264, 'Gold', 216, 52);
INSERT INTO public.api_medal VALUES (265, 'Silver', 216, 52);
INSERT INTO public.api_medal VALUES (266, 'Bronze', 216, 52);
INSERT INTO public.api_medal VALUES (267, 'Gold', 263, 52);
INSERT INTO public.api_medal VALUES (268, 'Silver', 263, 52);
INSERT INTO public.api_medal VALUES (269, 'Bronze', 263, 52);
INSERT INTO public.api_medal VALUES (270, 'Gold', 265, 52);
INSERT INTO public.api_medal VALUES (271, 'Silver', 265, 52);
INSERT INTO public.api_medal VALUES (272, 'Bronze', 265, 52);
INSERT INTO public.api_medal VALUES (273, 'Gold', 266, 52);
INSERT INTO public.api_medal VALUES (274, 'Silver', 266, 52);
INSERT INTO public.api_medal VALUES (275, 'Bronze', 266, 52);
INSERT INTO public.api_medal VALUES (276, 'Gold', 268, 52);
INSERT INTO public.api_medal VALUES (277, 'Silver', 268, 52);
INSERT INTO public.api_medal VALUES (278, 'Bronze', 268, 52);
INSERT INTO public.api_medal VALUES (279, 'Gold', 269, 52);
INSERT INTO public.api_medal VALUES (280, 'Silver', 269, 52);
INSERT INTO public.api_medal VALUES (281, 'Bronze', 269, 52);
INSERT INTO public.api_medal VALUES (282, 'Gold', 271, 52);
INSERT INTO public.api_medal VALUES (283, 'Silver', 271, 52);
INSERT INTO public.api_medal VALUES (284, 'Bronze', 271, 52);
INSERT INTO public.api_medal VALUES (285, 'Gold', 273, 52);
INSERT INTO public.api_medal VALUES (286, 'Silver', 273, 52);
INSERT INTO public.api_medal VALUES (287, 'Bronze', 273, 52);
INSERT INTO public.api_medal VALUES (288, 'Gold', 276, 52);
INSERT INTO public.api_medal VALUES (289, 'Silver', 276, 52);
INSERT INTO public.api_medal VALUES (290, 'Bronze', 276, 52);
INSERT INTO public.api_medal VALUES (291, 'Gold', 277, 52);
INSERT INTO public.api_medal VALUES (292, 'Silver', 277, 52);
INSERT INTO public.api_medal VALUES (293, 'Bronze', 277, 52);
INSERT INTO public.api_medal VALUES (294, 'Gold', 279, 52);
INSERT INTO public.api_medal VALUES (295, 'Silver', 279, 52);
INSERT INTO public.api_medal VALUES (296, 'Bronze', 279, 52);
INSERT INTO public.api_medal VALUES (297, 'Gold', 281, 52);
INSERT INTO public.api_medal VALUES (298, 'Silver', 281, 52);
INSERT INTO public.api_medal VALUES (299, 'Bronze', 281, 52);
INSERT INTO public.api_medal VALUES (300, 'Gold', 282, 52);
INSERT INTO public.api_medal VALUES (301, 'Silver', 282, 52);
INSERT INTO public.api_medal VALUES (302, 'Bronze', 282, 52);
INSERT INTO public.api_medal VALUES (303, 'Gold', 283, 52);
INSERT INTO public.api_medal VALUES (304, 'Silver', 283, 52);
INSERT INTO public.api_medal VALUES (305, 'Bronze', 283, 52);
INSERT INTO public.api_medal VALUES (306, 'Gold', 284, 52);
INSERT INTO public.api_medal VALUES (307, 'Silver', 284, 52);
INSERT INTO public.api_medal VALUES (308, 'Bronze', 284, 52);
INSERT INTO public.api_medal VALUES (309, 'Gold', 286, 52);
INSERT INTO public.api_medal VALUES (310, 'Silver', 286, 52);
INSERT INTO public.api_medal VALUES (311, 'Bronze', 286, 52);
INSERT INTO public.api_medal VALUES (312, 'Gold', 287, 52);
INSERT INTO public.api_medal VALUES (313, 'Silver', 287, 52);
INSERT INTO public.api_medal VALUES (314, 'Bronze', 287, 52);
INSERT INTO public.api_medal VALUES (315, 'Gold', 288, 52);
INSERT INTO public.api_medal VALUES (316, 'Silver', 288, 52);
INSERT INTO public.api_medal VALUES (317, 'Bronze', 288, 52);
INSERT INTO public.api_medal VALUES (318, 'Gold', 289, 52);
INSERT INTO public.api_medal VALUES (319, 'Silver', 289, 52);
INSERT INTO public.api_medal VALUES (320, 'Bronze', 289, 52);
INSERT INTO public.api_medal VALUES (321, 'Gold', 291, 52);
INSERT INTO public.api_medal VALUES (322, 'Silver', 291, 52);
INSERT INTO public.api_medal VALUES (323, 'Bronze', 291, 52);
INSERT INTO public.api_medal VALUES (324, 'Gold', 292, 52);
INSERT INTO public.api_medal VALUES (325, 'Silver', 292, 52);
INSERT INTO public.api_medal VALUES (326, 'Bronze', 292, 52);
INSERT INTO public.api_medal VALUES (327, 'Gold', 293, 52);
INSERT INTO public.api_medal VALUES (328, 'Silver', 293, 52);
INSERT INTO public.api_medal VALUES (329, 'Bronze', 293, 52);
INSERT INTO public.api_medal VALUES (330, 'Gold', 294, 52);
INSERT INTO public.api_medal VALUES (331, 'Silver', 294, 52);
INSERT INTO public.api_medal VALUES (332, 'Bronze', 294, 52);
INSERT INTO public.api_medal VALUES (333, 'Gold', 296, 52);
INSERT INTO public.api_medal VALUES (334, 'Silver', 296, 52);
INSERT INTO public.api_medal VALUES (335, 'Bronze', 296, 52);
INSERT INTO public.api_medal VALUES (336, 'Gold', 297, 52);
INSERT INTO public.api_medal VALUES (337, 'Silver', 297, 52);
INSERT INTO public.api_medal VALUES (338, 'Bronze', 297, 52);
INSERT INTO public.api_medal VALUES (339, 'Gold', 298, 52);
INSERT INTO public.api_medal VALUES (340, 'Silver', 298, 52);
INSERT INTO public.api_medal VALUES (341, 'Bronze', 298, 52);
INSERT INTO public.api_medal VALUES (342, 'Gold', 299, 52);
INSERT INTO public.api_medal VALUES (343, 'Silver', 299, 52);
INSERT INTO public.api_medal VALUES (344, 'Bronze', 299, 52);
INSERT INTO public.api_medal VALUES (345, 'Gold', 308, 52);
INSERT INTO public.api_medal VALUES (346, 'Silver', 308, 52);
INSERT INTO public.api_medal VALUES (347, 'Bronze', 308, 52);
INSERT INTO public.api_medal VALUES (348, 'Gold', 309, 52);
INSERT INTO public.api_medal VALUES (349, 'Silver', 309, 52);
INSERT INTO public.api_medal VALUES (350, 'Bronze', 309, 52);
INSERT INTO public.api_medal VALUES (351, 'Gold', 313, 52);
INSERT INTO public.api_medal VALUES (352, 'Silver', 313, 52);
INSERT INTO public.api_medal VALUES (353, 'Bronze', 313, 52);
INSERT INTO public.api_medal VALUES (354, 'Gold', 314, 52);
INSERT INTO public.api_medal VALUES (355, 'Silver', 314, 52);
INSERT INTO public.api_medal VALUES (356, 'Bronze', 314, 52);
INSERT INTO public.api_medal VALUES (357, 'Gold', 316, 52);
INSERT INTO public.api_medal VALUES (358, 'Silver', 316, 52);
INSERT INTO public.api_medal VALUES (359, 'Bronze', 316, 52);
INSERT INTO public.api_medal VALUES (360, 'Gold', 317, 52);
INSERT INTO public.api_medal VALUES (361, 'Silver', 317, 52);
INSERT INTO public.api_medal VALUES (362, 'Bronze', 317, 52);
INSERT INTO public.api_medal VALUES (363, 'Gold', 318, 52);
INSERT INTO public.api_medal VALUES (364, 'Silver', 318, 52);
INSERT INTO public.api_medal VALUES (365, 'Bronze', 318, 52);
INSERT INTO public.api_medal VALUES (366, 'Gold', 321, 52);
INSERT INTO public.api_medal VALUES (367, 'Silver', 321, 52);
INSERT INTO public.api_medal VALUES (368, 'Bronze', 321, 52);
INSERT INTO public.api_medal VALUES (369, 'Gold', 322, 52);
INSERT INTO public.api_medal VALUES (370, 'Silver', 322, 52);
INSERT INTO public.api_medal VALUES (371, 'Bronze', 322, 52);
INSERT INTO public.api_medal VALUES (372, 'Gold', 324, 52);
INSERT INTO public.api_medal VALUES (373, 'Silver', 324, 52);
INSERT INTO public.api_medal VALUES (374, 'Bronze', 324, 52);
INSERT INTO public.api_medal VALUES (375, 'Gold', 325, 52);
INSERT INTO public.api_medal VALUES (376, 'Silver', 325, 52);
INSERT INTO public.api_medal VALUES (377, 'Bronze', 325, 52);
INSERT INTO public.api_medal VALUES (378, 'Gold', 330, 52);
INSERT INTO public.api_medal VALUES (379, 'Silver', 330, 52);
INSERT INTO public.api_medal VALUES (380, 'Bronze', 330, 52);
INSERT INTO public.api_medal VALUES (381, 'Gold', 331, 52);
INSERT INTO public.api_medal VALUES (382, 'Silver', 331, 52);
INSERT INTO public.api_medal VALUES (383, 'Bronze', 331, 52);
INSERT INTO public.api_medal VALUES (384, 'Gold', 332, 52);
INSERT INTO public.api_medal VALUES (385, 'Silver', 332, 52);
INSERT INTO public.api_medal VALUES (386, 'Bronze', 332, 52);
INSERT INTO public.api_medal VALUES (387, 'Gold', 334, 52);
INSERT INTO public.api_medal VALUES (388, 'Silver', 334, 52);
INSERT INTO public.api_medal VALUES (389, 'Bronze', 334, 52);
INSERT INTO public.api_medal VALUES (390, 'Gold', 335, 52);
INSERT INTO public.api_medal VALUES (391, 'Silver', 335, 52);
INSERT INTO public.api_medal VALUES (392, 'Bronze', 335, 52);
INSERT INTO public.api_medal VALUES (393, 'Gold', 342, 52);
INSERT INTO public.api_medal VALUES (394, 'Silver', 342, 52);
INSERT INTO public.api_medal VALUES (395, 'Bronze', 342, 52);
INSERT INTO public.api_medal VALUES (396, 'Gold', 343, 52);
INSERT INTO public.api_medal VALUES (397, 'Silver', 343, 52);
INSERT INTO public.api_medal VALUES (398, 'Bronze', 343, 52);
INSERT INTO public.api_medal VALUES (399, 'Gold', 354, 52);
INSERT INTO public.api_medal VALUES (400, 'Silver', 354, 52);
INSERT INTO public.api_medal VALUES (401, 'Bronze', 354, 52);
INSERT INTO public.api_medal VALUES (402, 'Gold', 356, 52);
INSERT INTO public.api_medal VALUES (403, 'Silver', 356, 52);
INSERT INTO public.api_medal VALUES (404, 'Bronze', 356, 52);
INSERT INTO public.api_medal VALUES (405, 'Gold', 358, 52);
INSERT INTO public.api_medal VALUES (406, 'Silver', 358, 52);
INSERT INTO public.api_medal VALUES (407, 'Bronze', 358, 52);
INSERT INTO public.api_medal VALUES (408, 'Gold', 359, 52);
INSERT INTO public.api_medal VALUES (409, 'Silver', 359, 52);
INSERT INTO public.api_medal VALUES (410, 'Bronze', 359, 52);
INSERT INTO public.api_medal VALUES (411, 'Gold', 361, 52);
INSERT INTO public.api_medal VALUES (412, 'Silver', 361, 52);
INSERT INTO public.api_medal VALUES (413, 'Bronze', 361, 52);
INSERT INTO public.api_medal VALUES (414, 'Gold', 362, 52);
INSERT INTO public.api_medal VALUES (415, 'Silver', 362, 52);
INSERT INTO public.api_medal VALUES (416, 'Bronze', 362, 52);
INSERT INTO public.api_medal VALUES (417, 'Gold', 367, 52);
INSERT INTO public.api_medal VALUES (418, 'Silver', 367, 52);
INSERT INTO public.api_medal VALUES (419, 'Bronze', 367, 52);
INSERT INTO public.api_medal VALUES (420, 'Gold', 369, 52);
INSERT INTO public.api_medal VALUES (421, 'Silver', 369, 52);
INSERT INTO public.api_medal VALUES (422, 'Bronze', 369, 52);
INSERT INTO public.api_medal VALUES (423, 'Gold', 370, 52);
INSERT INTO public.api_medal VALUES (424, 'Silver', 370, 52);
INSERT INTO public.api_medal VALUES (425, 'Bronze', 370, 52);
INSERT INTO public.api_medal VALUES (426, 'Gold', 373, 52);
INSERT INTO public.api_medal VALUES (427, 'Silver', 373, 52);
INSERT INTO public.api_medal VALUES (428, 'Bronze', 373, 52);
INSERT INTO public.api_medal VALUES (429, 'Gold', 377, 52);
INSERT INTO public.api_medal VALUES (430, 'Silver', 377, 52);
INSERT INTO public.api_medal VALUES (431, 'Bronze', 377, 52);
INSERT INTO public.api_medal VALUES (432, 'Gold', 378, 52);
INSERT INTO public.api_medal VALUES (433, 'Silver', 378, 52);
INSERT INTO public.api_medal VALUES (434, 'Bronze', 378, 52);
INSERT INTO public.api_medal VALUES (435, 'Gold', 379, 52);
INSERT INTO public.api_medal VALUES (436, 'Silver', 379, 52);
INSERT INTO public.api_medal VALUES (437, 'Bronze', 379, 52);
INSERT INTO public.api_medal VALUES (438, 'Gold', 380, 52);
INSERT INTO public.api_medal VALUES (439, 'Silver', 380, 52);
INSERT INTO public.api_medal VALUES (440, 'Bronze', 380, 52);
INSERT INTO public.api_medal VALUES (441, 'Gold', 381, 52);
INSERT INTO public.api_medal VALUES (442, 'Silver', 381, 52);
INSERT INTO public.api_medal VALUES (443, 'Bronze', 381, 52);
INSERT INTO public.api_medal VALUES (444, 'Gold', 383, 52);
INSERT INTO public.api_medal VALUES (445, 'Silver', 383, 52);
INSERT INTO public.api_medal VALUES (446, 'Bronze', 383, 52);
INSERT INTO public.api_medal VALUES (447, 'Gold', 384, 52);
INSERT INTO public.api_medal VALUES (448, 'Silver', 384, 52);
INSERT INTO public.api_medal VALUES (449, 'Bronze', 384, 52);
INSERT INTO public.api_medal VALUES (450, 'Gold', 385, 52);
INSERT INTO public.api_medal VALUES (451, 'Silver', 385, 52);
INSERT INTO public.api_medal VALUES (452, 'Bronze', 385, 52);
INSERT INTO public.api_medal VALUES (453, 'Gold', 386, 52);
INSERT INTO public.api_medal VALUES (454, 'Silver', 386, 52);
INSERT INTO public.api_medal VALUES (455, 'Bronze', 386, 52);
INSERT INTO public.api_medal VALUES (456, 'Gold', 387, 52);
INSERT INTO public.api_medal VALUES (457, 'Silver', 387, 52);
INSERT INTO public.api_medal VALUES (458, 'Bronze', 387, 52);
INSERT INTO public.api_medal VALUES (459, 'Gold', 391, 52);
INSERT INTO public.api_medal VALUES (460, 'Silver', 391, 52);
INSERT INTO public.api_medal VALUES (461, 'Bronze', 391, 52);
INSERT INTO public.api_medal VALUES (462, 'Gold', 392, 52);
INSERT INTO public.api_medal VALUES (463, 'Silver', 392, 52);
INSERT INTO public.api_medal VALUES (464, 'Bronze', 392, 52);
INSERT INTO public.api_medal VALUES (465, 'Gold', 393, 52);
INSERT INTO public.api_medal VALUES (466, 'Silver', 393, 52);
INSERT INTO public.api_medal VALUES (467, 'Bronze', 393, 52);
INSERT INTO public.api_medal VALUES (468, 'Gold', 394, 52);
INSERT INTO public.api_medal VALUES (469, 'Silver', 394, 52);
INSERT INTO public.api_medal VALUES (470, 'Bronze', 394, 52);
INSERT INTO public.api_medal VALUES (471, 'Gold', 395, 52);
INSERT INTO public.api_medal VALUES (472, 'Silver', 395, 52);
INSERT INTO public.api_medal VALUES (473, 'Bronze', 395, 52);
INSERT INTO public.api_medal VALUES (474, 'Gold', 396, 52);
INSERT INTO public.api_medal VALUES (475, 'Silver', 396, 52);
INSERT INTO public.api_medal VALUES (476, 'Bronze', 396, 52);
INSERT INTO public.api_medal VALUES (477, 'Gold', 397, 52);
INSERT INTO public.api_medal VALUES (478, 'Silver', 397, 52);
INSERT INTO public.api_medal VALUES (479, 'Bronze', 397, 52);
INSERT INTO public.api_medal VALUES (480, 'Gold', 399, 52);
INSERT INTO public.api_medal VALUES (481, 'Silver', 399, 52);
INSERT INTO public.api_medal VALUES (482, 'Bronze', 399, 52);
INSERT INTO public.api_medal VALUES (483, 'Gold', 400, 52);
INSERT INTO public.api_medal VALUES (484, 'Silver', 400, 52);
INSERT INTO public.api_medal VALUES (485, 'Bronze', 400, 52);
INSERT INTO public.api_medal VALUES (486, 'Gold', 401, 52);
INSERT INTO public.api_medal VALUES (487, 'Silver', 401, 52);
INSERT INTO public.api_medal VALUES (488, 'Bronze', 401, 52);
INSERT INTO public.api_medal VALUES (489, 'Gold', 402, 52);
INSERT INTO public.api_medal VALUES (490, 'Silver', 402, 52);
INSERT INTO public.api_medal VALUES (491, 'Bronze', 402, 52);
INSERT INTO public.api_medal VALUES (492, 'Gold', 403, 52);
INSERT INTO public.api_medal VALUES (493, 'Silver', 403, 52);
INSERT INTO public.api_medal VALUES (494, 'Bronze', 403, 52);
INSERT INTO public.api_medal VALUES (495, 'Gold', 404, 52);
INSERT INTO public.api_medal VALUES (496, 'Silver', 404, 52);
INSERT INTO public.api_medal VALUES (497, 'Bronze', 404, 52);
INSERT INTO public.api_medal VALUES (498, 'Gold', 405, 52);
INSERT INTO public.api_medal VALUES (499, 'Silver', 405, 52);
INSERT INTO public.api_medal VALUES (500, 'Bronze', 405, 52);
INSERT INTO public.api_medal VALUES (501, 'Gold', 412, 52);
INSERT INTO public.api_medal VALUES (502, 'Silver', 412, 52);
INSERT INTO public.api_medal VALUES (503, 'Bronze', 412, 52);
INSERT INTO public.api_medal VALUES (504, 'Gold', 414, 52);
INSERT INTO public.api_medal VALUES (505, 'Silver', 414, 52);
INSERT INTO public.api_medal VALUES (506, 'Bronze', 414, 52);
INSERT INTO public.api_medal VALUES (507, 'Gold', 426, 52);
INSERT INTO public.api_medal VALUES (508, 'Silver', 426, 52);
INSERT INTO public.api_medal VALUES (509, 'Bronze', 426, 52);
INSERT INTO public.api_medal VALUES (510, 'Gold', 427, 52);
INSERT INTO public.api_medal VALUES (511, 'Silver', 427, 52);
INSERT INTO public.api_medal VALUES (512, 'Bronze', 427, 52);
INSERT INTO public.api_medal VALUES (513, 'Gold', 431, 52);
INSERT INTO public.api_medal VALUES (514, 'Silver', 431, 52);
INSERT INTO public.api_medal VALUES (515, 'Bronze', 431, 52);
INSERT INTO public.api_medal VALUES (516, 'Gold', 438, 52);
INSERT INTO public.api_medal VALUES (517, 'Silver', 438, 52);
INSERT INTO public.api_medal VALUES (518, 'Bronze', 438, 52);
INSERT INTO public.api_medal VALUES (519, 'Gold', 439, 52);
INSERT INTO public.api_medal VALUES (520, 'Silver', 439, 52);
INSERT INTO public.api_medal VALUES (521, 'Bronze', 439, 52);
INSERT INTO public.api_medal VALUES (522, 'Gold', 440, 52);
INSERT INTO public.api_medal VALUES (523, 'Silver', 440, 52);
INSERT INTO public.api_medal VALUES (524, 'Bronze', 440, 52);
INSERT INTO public.api_medal VALUES (525, 'Gold', 441, 52);
INSERT INTO public.api_medal VALUES (526, 'Silver', 441, 52);
INSERT INTO public.api_medal VALUES (527, 'Bronze', 441, 52);
INSERT INTO public.api_medal VALUES (528, 'Gold', 442, 52);
INSERT INTO public.api_medal VALUES (529, 'Silver', 442, 52);
INSERT INTO public.api_medal VALUES (530, 'Bronze', 442, 52);
INSERT INTO public.api_medal VALUES (531, 'Gold', 443, 52);
INSERT INTO public.api_medal VALUES (532, 'Silver', 443, 52);
INSERT INTO public.api_medal VALUES (533, 'Bronze', 443, 52);
INSERT INTO public.api_medal VALUES (534, 'Gold', 444, 52);
INSERT INTO public.api_medal VALUES (535, 'Silver', 444, 52);
INSERT INTO public.api_medal VALUES (536, 'Bronze', 444, 52);
INSERT INTO public.api_medal VALUES (537, 'Gold', 445, 52);
INSERT INTO public.api_medal VALUES (538, 'Silver', 445, 52);
INSERT INTO public.api_medal VALUES (539, 'Bronze', 445, 52);
INSERT INTO public.api_medal VALUES (540, 'Gold', 449, 52);
INSERT INTO public.api_medal VALUES (541, 'Silver', 449, 52);
INSERT INTO public.api_medal VALUES (542, 'Bronze', 449, 52);
INSERT INTO public.api_medal VALUES (543, 'Gold', 450, 52);
INSERT INTO public.api_medal VALUES (544, 'Silver', 450, 52);
INSERT INTO public.api_medal VALUES (545, 'Bronze', 450, 52);
INSERT INTO public.api_medal VALUES (546, 'Gold', 451, 52);
INSERT INTO public.api_medal VALUES (547, 'Silver', 451, 52);
INSERT INTO public.api_medal VALUES (548, 'Bronze', 451, 52);
INSERT INTO public.api_medal VALUES (549, 'Gold', 452, 52);
INSERT INTO public.api_medal VALUES (550, 'Silver', 452, 52);
INSERT INTO public.api_medal VALUES (551, 'Bronze', 452, 52);
INSERT INTO public.api_medal VALUES (552, 'Gold', 453, 52);
INSERT INTO public.api_medal VALUES (553, 'Silver', 453, 52);
INSERT INTO public.api_medal VALUES (554, 'Bronze', 453, 52);
INSERT INTO public.api_medal VALUES (555, 'Gold', 455, 52);
INSERT INTO public.api_medal VALUES (556, 'Silver', 455, 52);
INSERT INTO public.api_medal VALUES (557, 'Bronze', 455, 52);
INSERT INTO public.api_medal VALUES (558, 'Gold', 456, 52);
INSERT INTO public.api_medal VALUES (559, 'Silver', 456, 52);
INSERT INTO public.api_medal VALUES (560, 'Bronze', 456, 52);
INSERT INTO public.api_medal VALUES (561, 'Gold', 457, 52);
INSERT INTO public.api_medal VALUES (562, 'Silver', 457, 52);
INSERT INTO public.api_medal VALUES (563, 'Bronze', 457, 52);
INSERT INTO public.api_medal VALUES (564, 'Gold', 458, 52);
INSERT INTO public.api_medal VALUES (565, 'Silver', 458, 52);
INSERT INTO public.api_medal VALUES (566, 'Bronze', 458, 52);
INSERT INTO public.api_medal VALUES (567, 'Gold', 459, 52);
INSERT INTO public.api_medal VALUES (568, 'Silver', 459, 52);
INSERT INTO public.api_medal VALUES (569, 'Bronze', 459, 52);
INSERT INTO public.api_medal VALUES (570, 'Gold', 460, 52);
INSERT INTO public.api_medal VALUES (571, 'Silver', 460, 52);
INSERT INTO public.api_medal VALUES (572, 'Bronze', 460, 52);
INSERT INTO public.api_medal VALUES (573, 'Gold', 462, 52);
INSERT INTO public.api_medal VALUES (574, 'Silver', 462, 52);
INSERT INTO public.api_medal VALUES (575, 'Bronze', 462, 52);
INSERT INTO public.api_medal VALUES (576, 'Gold', 480, 52);
INSERT INTO public.api_medal VALUES (577, 'Silver', 480, 52);
INSERT INTO public.api_medal VALUES (578, 'Bronze', 480, 52);
INSERT INTO public.api_medal VALUES (579, 'Gold', 489, 52);
INSERT INTO public.api_medal VALUES (580, 'Silver', 489, 52);
INSERT INTO public.api_medal VALUES (581, 'Bronze', 489, 52);
INSERT INTO public.api_medal VALUES (582, 'Gold', 490, 52);
INSERT INTO public.api_medal VALUES (583, 'Silver', 490, 52);
INSERT INTO public.api_medal VALUES (584, 'Bronze', 490, 52);
INSERT INTO public.api_medal VALUES (585, 'Gold', 492, 52);
INSERT INTO public.api_medal VALUES (586, 'Silver', 492, 52);
INSERT INTO public.api_medal VALUES (587, 'Bronze', 492, 52);
INSERT INTO public.api_medal VALUES (588, 'Gold', 493, 52);
INSERT INTO public.api_medal VALUES (589, 'Silver', 493, 52);
INSERT INTO public.api_medal VALUES (590, 'Bronze', 493, 52);
INSERT INTO public.api_medal VALUES (591, 'Gold', 494, 52);
INSERT INTO public.api_medal VALUES (592, 'Silver', 494, 52);
INSERT INTO public.api_medal VALUES (593, 'Bronze', 494, 52);
INSERT INTO public.api_medal VALUES (594, 'Gold', 495, 52);
INSERT INTO public.api_medal VALUES (595, 'Silver', 495, 52);
INSERT INTO public.api_medal VALUES (596, 'Bronze', 495, 52);
INSERT INTO public.api_medal VALUES (597, 'Gold', 496, 52);
INSERT INTO public.api_medal VALUES (598, 'Silver', 496, 52);
INSERT INTO public.api_medal VALUES (599, 'Bronze', 496, 52);
INSERT INTO public.api_medal VALUES (600, 'Gold', 503, 52);
INSERT INTO public.api_medal VALUES (601, 'Silver', 503, 52);
INSERT INTO public.api_medal VALUES (602, 'Bronze', 503, 52);
INSERT INTO public.api_medal VALUES (603, 'Gold', 536, 52);
INSERT INTO public.api_medal VALUES (604, 'Silver', 536, 52);
INSERT INTO public.api_medal VALUES (605, 'Bronze', 536, 52);
INSERT INTO public.api_medal VALUES (606, 'Gold', 544, 52);
INSERT INTO public.api_medal VALUES (607, 'Silver', 544, 52);
INSERT INTO public.api_medal VALUES (608, 'Bronze', 544, 52);
INSERT INTO public.api_medal VALUES (609, 'Gold', 553, 52);
INSERT INTO public.api_medal VALUES (610, 'Silver', 553, 52);
INSERT INTO public.api_medal VALUES (611, 'Bronze', 553, 52);
INSERT INTO public.api_medal VALUES (612, 'Gold', 556, 52);
INSERT INTO public.api_medal VALUES (613, 'Silver', 556, 52);
INSERT INTO public.api_medal VALUES (614, 'Bronze', 556, 52);
INSERT INTO public.api_medal VALUES (615, 'Gold', 557, 52);
INSERT INTO public.api_medal VALUES (616, 'Silver', 557, 52);
INSERT INTO public.api_medal VALUES (617, 'Bronze', 557, 52);
INSERT INTO public.api_medal VALUES (618, 'Gold', 569, 52);
INSERT INTO public.api_medal VALUES (619, 'Silver', 569, 52);
INSERT INTO public.api_medal VALUES (620, 'Bronze', 569, 52);
INSERT INTO public.api_medal VALUES (621, 'Gold', 570, 52);
INSERT INTO public.api_medal VALUES (622, 'Silver', 570, 52);
INSERT INTO public.api_medal VALUES (623, 'Bronze', 570, 52);
INSERT INTO public.api_medal VALUES (624, 'Gold', 572, 52);
INSERT INTO public.api_medal VALUES (625, 'Silver', 572, 52);
INSERT INTO public.api_medal VALUES (626, 'Bronze', 572, 52);
INSERT INTO public.api_medal VALUES (627, 'Gold', 573, 52);
INSERT INTO public.api_medal VALUES (628, 'Silver', 573, 52);
INSERT INTO public.api_medal VALUES (629, 'Bronze', 573, 52);
INSERT INTO public.api_medal VALUES (630, 'Gold', 574, 52);
INSERT INTO public.api_medal VALUES (631, 'Silver', 574, 52);
INSERT INTO public.api_medal VALUES (632, 'Bronze', 574, 52);
INSERT INTO public.api_medal VALUES (633, 'Gold', 575, 52);
INSERT INTO public.api_medal VALUES (634, 'Silver', 575, 52);
INSERT INTO public.api_medal VALUES (635, 'Bronze', 575, 52);
INSERT INTO public.api_medal VALUES (636, 'Gold', 618, 52);
INSERT INTO public.api_medal VALUES (637, 'Silver', 618, 52);
INSERT INTO public.api_medal VALUES (638, 'Bronze', 618, 52);
INSERT INTO public.api_medal VALUES (639, 'Gold', 619, 52);
INSERT INTO public.api_medal VALUES (640, 'Silver', 619, 52);
INSERT INTO public.api_medal VALUES (641, 'Bronze', 619, 52);
INSERT INTO public.api_medal VALUES (642, 'Gold', 620, 52);
INSERT INTO public.api_medal VALUES (643, 'Silver', 620, 52);
INSERT INTO public.api_medal VALUES (644, 'Bronze', 620, 52);
INSERT INTO public.api_medal VALUES (645, 'Gold', 621, 52);
INSERT INTO public.api_medal VALUES (646, 'Silver', 621, 52);
INSERT INTO public.api_medal VALUES (647, 'Bronze', 621, 52);
INSERT INTO public.api_medal VALUES (648, 'Gold', 622, 52);
INSERT INTO public.api_medal VALUES (649, 'Silver', 622, 52);
INSERT INTO public.api_medal VALUES (650, 'Gold', 623, 52);
INSERT INTO public.api_medal VALUES (651, 'Silver', 623, 52);
INSERT INTO public.api_medal VALUES (652, 'Bronze', 623, 52);
INSERT INTO public.api_medal VALUES (653, 'Gold', 627, 52);
INSERT INTO public.api_medal VALUES (654, 'Silver', 627, 52);
INSERT INTO public.api_medal VALUES (655, 'Bronze', 627, 52);
INSERT INTO public.api_medal VALUES (656, 'Gold', 628, 52);
INSERT INTO public.api_medal VALUES (657, 'Silver', 628, 52);
INSERT INTO public.api_medal VALUES (658, 'Bronze', 628, 52);
INSERT INTO public.api_medal VALUES (659, 'Gold', 629, 52);
INSERT INTO public.api_medal VALUES (660, 'Silver', 629, 52);
INSERT INTO public.api_medal VALUES (661, 'Bronze', 629, 52);
INSERT INTO public.api_medal VALUES (662, 'Gold', 630, 52);
INSERT INTO public.api_medal VALUES (663, 'Silver', 630, 52);
INSERT INTO public.api_medal VALUES (664, 'Bronze', 630, 52);
INSERT INTO public.api_medal VALUES (665, 'Gold', 631, 52);
INSERT INTO public.api_medal VALUES (666, 'Silver', 631, 52);
INSERT INTO public.api_medal VALUES (667, 'Bronze', 631, 52);
INSERT INTO public.api_medal VALUES (668, 'Gold', 635, 52);
INSERT INTO public.api_medal VALUES (669, 'Silver', 635, 52);
INSERT INTO public.api_medal VALUES (670, 'Bronze', 635, 52);
INSERT INTO public.api_medal VALUES (671, 'Gold', 636, 52);
INSERT INTO public.api_medal VALUES (672, 'Silver', 636, 52);
INSERT INTO public.api_medal VALUES (673, 'Bronze', 636, 52);
INSERT INTO public.api_medal VALUES (674, 'Gold', 637, 52);
INSERT INTO public.api_medal VALUES (675, 'Silver', 637, 52);
INSERT INTO public.api_medal VALUES (676, 'Bronze', 637, 52);
INSERT INTO public.api_medal VALUES (677, 'Gold', 642, 52);
INSERT INTO public.api_medal VALUES (678, 'Silver', 642, 52);
INSERT INTO public.api_medal VALUES (679, 'Bronze', 642, 52);
INSERT INTO public.api_medal VALUES (680, 'Gold', 643, 52);
INSERT INTO public.api_medal VALUES (681, 'Silver', 643, 52);
INSERT INTO public.api_medal VALUES (682, 'Bronze', 643, 52);
INSERT INTO public.api_medal VALUES (683, 'Gold', 646, 52);
INSERT INTO public.api_medal VALUES (684, 'Silver', 646, 52);
INSERT INTO public.api_medal VALUES (685, 'Bronze', 646, 52);
INSERT INTO public.api_medal VALUES (686, 'Gold', 653, 52);
INSERT INTO public.api_medal VALUES (687, 'Silver', 653, 52);
INSERT INTO public.api_medal VALUES (688, 'Bronze', 653, 52);
INSERT INTO public.api_medal VALUES (689, 'Gold', 654, 52);
INSERT INTO public.api_medal VALUES (690, 'Silver', 654, 52);
INSERT INTO public.api_medal VALUES (691, 'Bronze', 654, 52);
INSERT INTO public.api_medal VALUES (692, 'Gold', 655, 52);
INSERT INTO public.api_medal VALUES (693, 'Silver', 655, 52);
INSERT INTO public.api_medal VALUES (694, 'Bronze', 655, 52);
INSERT INTO public.api_medal VALUES (695, 'Gold', 656, 52);
INSERT INTO public.api_medal VALUES (696, 'Silver', 656, 52);
INSERT INTO public.api_medal VALUES (697, 'Bronze', 656, 52);
INSERT INTO public.api_medal VALUES (698, 'Gold', 657, 52);
INSERT INTO public.api_medal VALUES (699, 'Bronze', 657, 52);
INSERT INTO public.api_medal VALUES (700, 'Gold', 658, 52);
INSERT INTO public.api_medal VALUES (701, 'Silver', 658, 52);
INSERT INTO public.api_medal VALUES (702, 'Bronze', 658, 52);
INSERT INTO public.api_medal VALUES (703, 'Gold', 659, 52);
INSERT INTO public.api_medal VALUES (704, 'Silver', 659, 52);
INSERT INTO public.api_medal VALUES (705, 'Bronze', 659, 52);
INSERT INTO public.api_medal VALUES (706, 'Gold', 660, 52);
INSERT INTO public.api_medal VALUES (707, 'Silver', 660, 52);
INSERT INTO public.api_medal VALUES (708, 'Bronze', 660, 52);
INSERT INTO public.api_medal VALUES (709, 'Gold', 661, 52);
INSERT INTO public.api_medal VALUES (710, 'Silver', 661, 52);
INSERT INTO public.api_medal VALUES (711, 'Bronze', 661, 52);
INSERT INTO public.api_medal VALUES (712, 'Gold', 662, 52);
INSERT INTO public.api_medal VALUES (713, 'Silver', 662, 52);
INSERT INTO public.api_medal VALUES (714, 'Bronze', 662, 52);
INSERT INTO public.api_medal VALUES (715, 'Gold', 664, 52);
INSERT INTO public.api_medal VALUES (716, 'Silver', 664, 52);
INSERT INTO public.api_medal VALUES (717, 'Bronze', 664, 52);
INSERT INTO public.api_medal VALUES (718, 'Gold', 665, 52);
INSERT INTO public.api_medal VALUES (719, 'Silver', 665, 52);
INSERT INTO public.api_medal VALUES (720, 'Bronze', 665, 52);
INSERT INTO public.api_medal VALUES (721, 'Gold', 666, 52);
INSERT INTO public.api_medal VALUES (722, 'Silver', 666, 52);
INSERT INTO public.api_medal VALUES (723, 'Bronze', 666, 52);
INSERT INTO public.api_medal VALUES (724, 'Gold', 667, 52);
INSERT INTO public.api_medal VALUES (725, 'Silver', 667, 52);
INSERT INTO public.api_medal VALUES (726, 'Bronze', 667, 52);
INSERT INTO public.api_medal VALUES (727, 'Gold', 668, 52);
INSERT INTO public.api_medal VALUES (728, 'Silver', 668, 52);
INSERT INTO public.api_medal VALUES (729, 'Bronze', 668, 52);
INSERT INTO public.api_medal VALUES (730, 'Gold', 669, 52);
INSERT INTO public.api_medal VALUES (731, 'Silver', 669, 52);
INSERT INTO public.api_medal VALUES (732, 'Bronze', 669, 52);
INSERT INTO public.api_medal VALUES (733, 'Gold', 670, 52);
INSERT INTO public.api_medal VALUES (734, 'Silver', 670, 52);
INSERT INTO public.api_medal VALUES (735, 'Bronze', 670, 52);
INSERT INTO public.api_medal VALUES (736, 'Gold', 671, 52);
INSERT INTO public.api_medal VALUES (737, 'Silver', 671, 52);
INSERT INTO public.api_medal VALUES (738, 'Bronze', 671, 52);
INSERT INTO public.api_medal VALUES (739, 'Gold', 673, 52);
INSERT INTO public.api_medal VALUES (740, 'Silver', 673, 52);
INSERT INTO public.api_medal VALUES (741, 'Bronze', 673, 52);
INSERT INTO public.api_medal VALUES (742, 'Gold', 675, 52);
INSERT INTO public.api_medal VALUES (743, 'Silver', 675, 52);
INSERT INTO public.api_medal VALUES (744, 'Bronze', 675, 52);
INSERT INTO public.api_medal VALUES (745, 'Gold', 676, 52);
INSERT INTO public.api_medal VALUES (746, 'Silver', 676, 52);
INSERT INTO public.api_medal VALUES (747, 'Bronze', 676, 52);
INSERT INTO public.api_medal VALUES (748, 'Gold', 678, 52);
INSERT INTO public.api_medal VALUES (749, 'Silver', 678, 52);
INSERT INTO public.api_medal VALUES (750, 'Bronze', 678, 52);
INSERT INTO public.api_medal VALUES (751, 'Gold', 679, 52);
INSERT INTO public.api_medal VALUES (752, 'Silver', 679, 52);
INSERT INTO public.api_medal VALUES (753, 'Bronze', 679, 52);
INSERT INTO public.api_medal VALUES (754, 'Gold', 680, 52);
INSERT INTO public.api_medal VALUES (755, 'Silver', 680, 52);
INSERT INTO public.api_medal VALUES (756, 'Bronze', 680, 52);
INSERT INTO public.api_medal VALUES (757, 'Gold', 681, 52);
INSERT INTO public.api_medal VALUES (758, 'Silver', 681, 52);
INSERT INTO public.api_medal VALUES (759, 'Bronze', 681, 52);
INSERT INTO public.api_medal VALUES (760, 'Gold', 682, 52);
INSERT INTO public.api_medal VALUES (761, 'Silver', 682, 52);
INSERT INTO public.api_medal VALUES (762, 'Bronze', 682, 52);
INSERT INTO public.api_medal VALUES (763, 'Gold', 683, 52);
INSERT INTO public.api_medal VALUES (764, 'Silver', 683, 52);
INSERT INTO public.api_medal VALUES (765, 'Bronze', 683, 52);
INSERT INTO public.api_medal VALUES (766, 'Gold', 684, 52);
INSERT INTO public.api_medal VALUES (767, 'Silver', 684, 52);
INSERT INTO public.api_medal VALUES (768, 'Bronze', 684, 52);
INSERT INTO public.api_medal VALUES (769, 'Gold', 685, 52);
INSERT INTO public.api_medal VALUES (770, 'Silver', 685, 52);
INSERT INTO public.api_medal VALUES (771, 'Bronze', 685, 52);
INSERT INTO public.api_medal VALUES (772, 'Gold', 686, 52);
INSERT INTO public.api_medal VALUES (773, 'Silver', 686, 52);
INSERT INTO public.api_medal VALUES (774, 'Bronze', 686, 52);
INSERT INTO public.api_medal VALUES (775, 'Gold', 687, 52);
INSERT INTO public.api_medal VALUES (776, 'Silver', 687, 52);
INSERT INTO public.api_medal VALUES (777, 'Bronze', 687, 52);
INSERT INTO public.api_medal VALUES (778, 'Gold', 688, 52);
INSERT INTO public.api_medal VALUES (779, 'Silver', 688, 52);
INSERT INTO public.api_medal VALUES (780, 'Bronze', 688, 52);
INSERT INTO public.api_medal VALUES (781, 'Gold', 690, 52);
INSERT INTO public.api_medal VALUES (782, 'Silver', 690, 52);
INSERT INTO public.api_medal VALUES (783, 'Bronze', 690, 52);
INSERT INTO public.api_medal VALUES (784, 'Gold', 692, 52);
INSERT INTO public.api_medal VALUES (785, 'Silver', 692, 52);
INSERT INTO public.api_medal VALUES (786, 'Bronze', 692, 52);
INSERT INTO public.api_medal VALUES (787, 'Gold', 694, 52);
INSERT INTO public.api_medal VALUES (788, 'Silver', 694, 52);
INSERT INTO public.api_medal VALUES (789, 'Bronze', 694, 52);
INSERT INTO public.api_medal VALUES (790, 'Gold', 695, 52);
INSERT INTO public.api_medal VALUES (791, 'Silver', 695, 52);
INSERT INTO public.api_medal VALUES (792, 'Bronze', 695, 52);
INSERT INTO public.api_medal VALUES (793, 'Gold', 697, 52);
INSERT INTO public.api_medal VALUES (794, 'Silver', 697, 52);
INSERT INTO public.api_medal VALUES (795, 'Bronze', 697, 52);
INSERT INTO public.api_medal VALUES (796, 'Gold', 698, 52);
INSERT INTO public.api_medal VALUES (797, 'Silver', 698, 52);
INSERT INTO public.api_medal VALUES (798, 'Bronze', 698, 52);
INSERT INTO public.api_medal VALUES (799, 'Gold', 699, 52);
INSERT INTO public.api_medal VALUES (800, 'Silver', 699, 52);
INSERT INTO public.api_medal VALUES (801, 'Bronze', 699, 52);
INSERT INTO public.api_medal VALUES (802, 'Gold', 700, 52);
INSERT INTO public.api_medal VALUES (803, 'Silver', 700, 52);
INSERT INTO public.api_medal VALUES (804, 'Bronze', 700, 52);
INSERT INTO public.api_medal VALUES (805, 'Gold', 702, 52);
INSERT INTO public.api_medal VALUES (806, 'Silver', 702, 52);
INSERT INTO public.api_medal VALUES (807, 'Bronze', 702, 52);
INSERT INTO public.api_medal VALUES (808, 'Gold', 703, 52);
INSERT INTO public.api_medal VALUES (809, 'Silver', 703, 52);
INSERT INTO public.api_medal VALUES (810, 'Bronze', 703, 52);
INSERT INTO public.api_medal VALUES (811, 'Gold', 704, 52);
INSERT INTO public.api_medal VALUES (812, 'Silver', 704, 52);
INSERT INTO public.api_medal VALUES (813, 'Bronze', 704, 52);
INSERT INTO public.api_medal VALUES (814, 'Gold', 705, 52);
INSERT INTO public.api_medal VALUES (815, 'Silver', 705, 52);
INSERT INTO public.api_medal VALUES (816, 'Bronze', 705, 52);
INSERT INTO public.api_medal VALUES (817, 'Gold', 707, 52);
INSERT INTO public.api_medal VALUES (818, 'Silver', 707, 52);
INSERT INTO public.api_medal VALUES (819, 'Bronze', 707, 52);
INSERT INTO public.api_medal VALUES (820, 'Gold', 708, 52);
INSERT INTO public.api_medal VALUES (821, 'Silver', 708, 52);
INSERT INTO public.api_medal VALUES (822, 'Bronze', 708, 52);
INSERT INTO public.api_medal VALUES (823, 'Gold', 710, 52);
INSERT INTO public.api_medal VALUES (824, 'Silver', 710, 52);
INSERT INTO public.api_medal VALUES (825, 'Bronze', 710, 52);
INSERT INTO public.api_medal VALUES (826, 'Gold', 713, 52);
INSERT INTO public.api_medal VALUES (827, 'Silver', 713, 52);
INSERT INTO public.api_medal VALUES (828, 'Bronze', 713, 52);
INSERT INTO public.api_medal VALUES (829, 'Gold', 714, 52);
INSERT INTO public.api_medal VALUES (830, 'Silver', 714, 52);
INSERT INTO public.api_medal VALUES (831, 'Bronze', 714, 52);
INSERT INTO public.api_medal VALUES (832, 'Gold', 715, 52);
INSERT INTO public.api_medal VALUES (833, 'Silver', 715, 52);
INSERT INTO public.api_medal VALUES (834, 'Bronze', 715, 52);
INSERT INTO public.api_medal VALUES (835, 'Gold', 716, 52);
INSERT INTO public.api_medal VALUES (836, 'Silver', 716, 52);
INSERT INTO public.api_medal VALUES (837, 'Bronze', 716, 52);
INSERT INTO public.api_medal VALUES (838, 'Gold', 717, 52);
INSERT INTO public.api_medal VALUES (839, 'Silver', 717, 52);
INSERT INTO public.api_medal VALUES (840, 'Bronze', 717, 52);
INSERT INTO public.api_medal VALUES (841, 'Gold', 720, 52);
INSERT INTO public.api_medal VALUES (842, 'Silver', 720, 52);
INSERT INTO public.api_medal VALUES (843, 'Bronze', 720, 52);
INSERT INTO public.api_medal VALUES (844, 'Gold', 721, 52);
INSERT INTO public.api_medal VALUES (845, 'Silver', 721, 52);
INSERT INTO public.api_medal VALUES (846, 'Bronze', 721, 52);
INSERT INTO public.api_medal VALUES (847, 'Gold', 722, 52);
INSERT INTO public.api_medal VALUES (848, 'Silver', 722, 52);
INSERT INTO public.api_medal VALUES (849, 'Bronze', 722, 52);
INSERT INTO public.api_medal VALUES (850, 'Gold', 723, 52);
INSERT INTO public.api_medal VALUES (851, 'Silver', 723, 52);
INSERT INTO public.api_medal VALUES (852, 'Bronze', 723, 52);
INSERT INTO public.api_medal VALUES (853, 'Gold', 724, 52);
INSERT INTO public.api_medal VALUES (854, 'Silver', 724, 52);
INSERT INTO public.api_medal VALUES (855, 'Bronze', 724, 52);
INSERT INTO public.api_medal VALUES (856, 'Gold', 725, 52);
INSERT INTO public.api_medal VALUES (857, 'Silver', 725, 52);
INSERT INTO public.api_medal VALUES (858, 'Bronze', 725, 52);
INSERT INTO public.api_medal VALUES (859, 'Gold', 726, 52);
INSERT INTO public.api_medal VALUES (860, 'Silver', 726, 52);
INSERT INTO public.api_medal VALUES (861, 'Bronze', 726, 52);
INSERT INTO public.api_medal VALUES (862, 'Gold', 730, 52);
INSERT INTO public.api_medal VALUES (863, 'Silver', 730, 52);
INSERT INTO public.api_medal VALUES (864, 'Bronze', 730, 52);
INSERT INTO public.api_medal VALUES (865, 'Gold', 731, 52);
INSERT INTO public.api_medal VALUES (866, 'Silver', 731, 52);
INSERT INTO public.api_medal VALUES (867, 'Bronze', 731, 52);
INSERT INTO public.api_medal VALUES (868, 'Gold', 734, 52);
INSERT INTO public.api_medal VALUES (869, 'Silver', 734, 52);
INSERT INTO public.api_medal VALUES (870, 'Bronze', 734, 52);
INSERT INTO public.api_medal VALUES (871, 'Gold', 735, 52);
INSERT INTO public.api_medal VALUES (872, 'Silver', 735, 52);
INSERT INTO public.api_medal VALUES (873, 'Bronze', 735, 52);
INSERT INTO public.api_medal VALUES (874, 'Gold', 738, 52);
INSERT INTO public.api_medal VALUES (875, 'Silver', 738, 52);
INSERT INTO public.api_medal VALUES (876, 'Bronze', 738, 52);
INSERT INTO public.api_medal VALUES (877, 'Gold', 739, 52);
INSERT INTO public.api_medal VALUES (878, 'Silver', 739, 52);
INSERT INTO public.api_medal VALUES (879, 'Bronze', 739, 52);
INSERT INTO public.api_medal VALUES (880, 'Gold', 744, 52);
INSERT INTO public.api_medal VALUES (881, 'Silver', 744, 52);
INSERT INTO public.api_medal VALUES (882, 'Bronze', 744, 52);
INSERT INTO public.api_medal VALUES (883, 'Gold', 745, 52);
INSERT INTO public.api_medal VALUES (884, 'Silver', 745, 52);
INSERT INTO public.api_medal VALUES (885, 'Bronze', 745, 52);
INSERT INTO public.api_medal VALUES (886, 'Gold', 746, 52);
INSERT INTO public.api_medal VALUES (887, 'Silver', 746, 52);
INSERT INTO public.api_medal VALUES (888, 'Bronze', 746, 52);
INSERT INTO public.api_medal VALUES (889, 'Gold', 747, 52);
INSERT INTO public.api_medal VALUES (890, 'Silver', 747, 52);
INSERT INTO public.api_medal VALUES (891, 'Bronze', 747, 52);
INSERT INTO public.api_medal VALUES (892, 'Gold', 749, 52);
INSERT INTO public.api_medal VALUES (893, 'Silver', 749, 52);
INSERT INTO public.api_medal VALUES (894, 'Bronze', 749, 52);
INSERT INTO public.api_medal VALUES (895, 'Gold', 750, 52);
INSERT INTO public.api_medal VALUES (896, 'Silver', 750, 52);
INSERT INTO public.api_medal VALUES (897, 'Bronze', 750, 52);
INSERT INTO public.api_medal VALUES (898, 'Gold', 751, 52);
INSERT INTO public.api_medal VALUES (899, 'Silver', 751, 52);
INSERT INTO public.api_medal VALUES (900, 'Bronze', 751, 52);
INSERT INTO public.api_medal VALUES (901, 'Gold', 752, 52);
INSERT INTO public.api_medal VALUES (902, 'Silver', 752, 52);
INSERT INTO public.api_medal VALUES (903, 'Bronze', 752, 52);
INSERT INTO public.api_medal VALUES (904, 'Gold', 753, 52);
INSERT INTO public.api_medal VALUES (905, 'Silver', 753, 52);
INSERT INTO public.api_medal VALUES (906, 'Bronze', 753, 52);
INSERT INTO public.api_medal VALUES (907, 'Gold', 754, 52);
INSERT INTO public.api_medal VALUES (908, 'Silver', 754, 52);
INSERT INTO public.api_medal VALUES (909, 'Bronze', 754, 52);
INSERT INTO public.api_medal VALUES (910, 'Gold', 755, 52);
INSERT INTO public.api_medal VALUES (911, 'Silver', 755, 52);
INSERT INTO public.api_medal VALUES (912, 'Bronze', 755, 52);
INSERT INTO public.api_medal VALUES (913, 'Gold', 756, 52);
INSERT INTO public.api_medal VALUES (914, 'Silver', 756, 52);
INSERT INTO public.api_medal VALUES (915, 'Bronze', 756, 52);


--
-- TOC entry 3223 (class 0 OID 33448)
-- Dependencies: 227
-- Data for Name: api_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.api_person VALUES (22, 'Aaron Brown', 'M', 1992, 21);
INSERT INTO public.api_person VALUES (30, 'Aaron Russell', 'M', 1993, 141);
INSERT INTO public.api_person VALUES (39, 'Abbey Weitzeil', 'F', 1997, 141);
INSERT INTO public.api_person VALUES (48, 'Abdoul Razak Issoufou Alfaga', 'M', 1995, 97);
INSERT INTO public.api_person VALUES (55, 'Abdullah Al-Rashidi', 'M', 1964, 61);
INSERT INTO public.api_person VALUES (58, 'Abdullahi Shehu', 'M', 1993, 96);
INSERT INTO public.api_person VALUES (60, 'Abdul-Rashid Bulayevich Sadulayev', 'M', 1996, 112);
INSERT INTO public.api_person VALUES (93, 'Adam George Peaty', 'M', 1995, 47);
INSERT INTO public.api_person VALUES (117, 'Adelina Dmitriyevna Sotnikova', 'F', 1997, 112);
INSERT INTO public.api_person VALUES (118, 'Adelina Maria Cojocariu-Bogus', 'F', 1989, 110);
INSERT INTO public.api_person VALUES (129, 'Adilbek Sabitovich Niyazymbetov', 'M', 1989, 72);
INSERT INTO public.api_person VALUES (193, 'Adrien Dipanda', 'M', 1988, 44);
INSERT INTO public.api_person VALUES (216, 'Agnieszka Kobus', 'F', 1991, 105);
INSERT INTO public.api_person VALUES (220, 'Agustn Alejandro Mazzilli', 'M', 1989, 5);
INSERT INTO public.api_person VALUES (224, 'Ahmad Abughaush', 'M', 1996, 70);
INSERT INTO public.api_person VALUES (235, 'Ai Fukuhara', 'F', 1989, 71);
INSERT INTO public.api_person VALUES (240, 'Aika Hakoyama', 'F', 1991, 71);
INSERT INTO public.api_person VALUES (241, 'Aikaterini "Ekaterini" Stefanidi', 'F', 1990, 52);
INSERT INTO public.api_person VALUES (249, 'Aino-Kaisa Saarinen', 'F', 1979, 43);
INSERT INTO public.api_person VALUES (253, 'Aja L. Evans', 'F', 1989, 141);
INSERT INTO public.api_person VALUES (257, 'Akeem Haynes', 'M', 1992, 21);
INSERT INTO public.api_person VALUES (275, 'Akito Watabe', 'M', 1989, 71);
INSERT INTO public.api_person VALUES (328, 'Alba Torrens Salom', 'F', 1990, 38);
INSERT INTO public.api_person VALUES (395, 'Albert Mikhaylovich Demchenko', 'M', 1972, 112);
INSERT INTO public.api_person VALUES (408, 'Albert Saritov', 'M', 1985, 110);
INSERT INTO public.api_person VALUES (439, 'Albertus Stephanus "Kwagga" Smith', 'M', 1993, 111);
INSERT INTO public.api_person VALUES (462, 'Alec Potts', 'M', 1996, 7);
INSERT INTO public.api_person VALUES (467, 'Alejandra Quereda Flores', 'F', 1992, 38);
INSERT INTO public.api_person VALUES (469, 'Alejandro "lex" Abrines Redondo', 'M', 1993, 38);
INSERT INTO public.api_person VALUES (490, 'Aleksander Barkov', 'M', 1996, 43);
INSERT INTO public.api_person VALUES (504, 'Aleksandr Aleksandrovich Smyshlyayev', 'M', 1988, 112);
INSERT INTO public.api_person VALUES (515, 'Aleksandr Andreyevich Bessmertnykh', 'M', 1987, 112);
INSERT INTO public.api_person VALUES (531, 'Aleksandr Gennadyevich Legkov', 'M', 1984, 112);
INSERT INTO public.api_person VALUES (553, 'Aleksandr Leonidovich Lesun', 'M', 1988, 112);
INSERT INTO public.api_person VALUES (594, 'Aleksandr Sergeyevich Zaychikov', 'M', 1993, 72);
INSERT INTO public.api_person VALUES (620, 'Aleksandr Vladimirovich Denisyev', 'M', 1992, 112);
INSERT INTO public.api_person VALUES (628, 'Aleksandr Vladimirovich Tretyakov', 'M', 1986, 112);
INSERT INTO public.api_person VALUES (637, 'Aleksandr Yuryevich Zubkov', 'M', 1975, 112);
INSERT INTO public.api_person VALUES (640, 'Aleksandra Cotti', 'F', 1989, 68);
INSERT INTO public.api_person VALUES (641, 'Aleksandra Crvendaki', 'F', 1996, 117);
INSERT INTO public.api_person VALUES (646, 'Aleksandra Viktorovna Gerasimenya', 'F', 1986, 15);
INSERT INTO public.api_person VALUES (647, 'Aleksandra Vyacheslavovna Patskevich', 'F', 1989, 112);
INSERT INTO public.api_person VALUES (659, 'Aleksey Aleksandrovich Negodaylo', 'M', 1990, 112);
INSERT INTO public.api_person VALUES (664, 'Aleksey Alekseyevich Denisenko', 'M', 1994, 112);
INSERT INTO public.api_person VALUES (667, 'Aleksey Anatolyevich Volkov', 'M', 1989, 112);
INSERT INTO public.api_person VALUES (669, 'Aleksey Borisovich Cheremisinov', 'M', 1985, 112);
INSERT INTO public.api_person VALUES (678, 'Aleksey Ivanovich Voyevoda', 'M', 1981, 112);
INSERT INTO public.api_person VALUES (742, 'Alessandro Nora', 'M', 1987, 68);
INSERT INTO public.api_person VALUES (747, 'Alessandro Velotto', 'M', 1995, 68);
INSERT INTO public.api_person VALUES (755, 'Alex Baumann', 'M', 1986, 120);
INSERT INTO public.api_person VALUES (757, 'Alex Deibold', 'M', 1987, 141);
INSERT INTO public.api_person VALUES (768, 'Alexander "Alex" Edmondson', 'M', 1994, 7);
INSERT INTO public.api_person VALUES (769, 'Alexander "Alex" Hill', 'M', 1993, 7);
INSERT INTO public.api_person VALUES (771, 'Alexander "Alex" Pietrangelo', 'M', 1990, 21);
INSERT INTO public.api_person VALUES (776, 'Alexander Belonogoff', 'M', 1990, 7);
INSERT INTO public.api_person VALUES (779, 'Alexander Brouwer', 'M', 1990, 94);
INSERT INTO public.api_person VALUES (780, 'Alexander Chen Massialas', 'M', 1994, 141);
INSERT INTO public.api_person VALUES (791, 'Alexander John "Alex" Gregory', 'M', 1984, 47);
INSERT INTO public.api_person VALUES (797, 'Alexander Lennart Steen', 'M', 1985, 123);
INSERT INTO public.api_person VALUES (798, 'Alexander Mah Owens Drysdale', 'M', 1979, 99);
INSERT INTO public.api_person VALUES (802, 'Alexander Michael "Alex" Naddour', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (823, 'Alexandra "Alex" Carpenter', 'F', 1995, 141);
INSERT INTO public.api_person VALUES (831, 'Alexandra Lacrabre', 'F', 1987, 44);
INSERT INTO public.api_person VALUES (833, 'Alexandra Maria "Alex" Maloney', 'F', 1992, 99);
INSERT INTO public.api_person VALUES (835, 'Alexandra Mary L. "Alex" Danson', 'F', 1985, 47);
INSERT INTO public.api_person VALUES (839, 'Alexandra Popp', 'F', 1991, 50);
INSERT INTO public.api_person VALUES (840, 'Alexandra Rose "Aly" Raisman', 'F', 1994, 141);
INSERT INTO public.api_person VALUES (843, 'Alexandre "Alex" Bilodeau', 'M', 1988, 21);
INSERT INTO public.api_person VALUES (876, 'Alexis Pinturault', 'M', 1992, 44);
INSERT INTO public.api_person VALUES (877, 'Alexis Raynaud', 'M', 1995, 44);
INSERT INTO public.api_person VALUES (1021, 'Alicia Quirk', 'F', 1992, 7);
INSERT INTO public.api_person VALUES (1030, 'Alina Ivanivna Komashchuk', 'F', 1993, 138);
INSERT INTO public.api_person VALUES (1032, 'Alina Mller', 'F', 1999, 120);
INSERT INTO public.api_person VALUES (1037, 'Alise Rose Post', 'F', 1991, 141);
INSERT INTO public.api_person VALUES (1038, 'Alisha Rebecca Glass', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (1040, 'Alison Conte Cerutti', 'M', 1986, 18);
INSERT INTO public.api_person VALUES (1049, 'Alistair Edward Brownlee', 'M', 1988, 47);
INSERT INTO public.api_person VALUES (1052, 'Aliya Farkhatovna Mustafina', 'F', 1995, 112);
INSERT INTO public.api_person VALUES (1055, 'Aljona Sawtchenko', 'F', 1984, 50);
INSERT INTO public.api_person VALUES (1056, 'Alla Anatolyevna Shishkina', 'F', 1990, 112);
INSERT INTO public.api_person VALUES (1058, 'Alla Petrovna Tsuper', 'F', 1980, 15);
INSERT INTO public.api_person VALUES (1076, 'Allar Raja', 'M', 1983, 39);
INSERT INTO public.api_person VALUES (1090, 'Allison Beveridge', 'F', 1993, 21);
INSERT INTO public.api_person VALUES (1093, 'Allison M. Brock', 'F', 1980, 141);
INSERT INTO public.api_person VALUES (1094, 'Allison Marie Pineau', 'F', 1989, 44);
INSERT INTO public.api_person VALUES (1097, 'Allison Rodgers Schmitt', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (1098, 'Allysha Chapman', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (1099, 'Allyson Michelle Felix', 'F', 1986, 141);
INSERT INTO public.api_person VALUES (1101, 'Almaz Ayana Eba', 'F', 1992, 40);
INSERT INTO public.api_person VALUES (1105, 'Almuth Schult', 'F', 1991, 50);
INSERT INTO public.api_person VALUES (1114, 'Alonzo Russell', 'M', 1992, 10);
INSERT INTO public.api_person VALUES (1150, 'Alyona Igorevna Zavarzina', 'F', 1990, 112);
INSERT INTO public.api_person VALUES (1160, 'Amanda Elmore', 'F', 1991, 141);
INSERT INTO public.api_person VALUES (1161, 'Amanda Jo Weir (-Davis)', 'F', 1986, 141);
INSERT INTO public.api_person VALUES (1163, 'Amanda Kessel', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (1165, 'Amanda Maria Kurtovic', 'F', 1991, 98);
INSERT INTO public.api_person VALUES (1167, 'Amanda Polk', 'F', 1986, 141);
INSERT INTO public.api_person VALUES (1169, 'Amandine Suzanne Monique Leynaud', 'F', 1986, 44);
INSERT INTO public.api_person VALUES (1193, 'Amelie Kober', 'F', 1988, 50);
INSERT INTO public.api_person VALUES (1195, 'Ami Kondo', 'F', 1995, 71);
INSERT INTO public.api_person VALUES (1196, 'Aminu Umar', 'M', 1995, 96);
INSERT INTO public.api_person VALUES (1219, 'Amy Tinkler', 'F', 2000, 47);
INSERT INTO public.api_person VALUES (1221, 'Amy Turner', 'F', 1984, 7);
INSERT INTO public.api_person VALUES (1224, 'An Ba-Ul', 'M', 1994, 75);
INSERT INTO public.api_person VALUES (1230, 'an Koir', 'M', 1985, 116);
INSERT INTO public.api_person VALUES (1238, 'Ana Dabovi', 'F', 1990, 117);
INSERT INTO public.api_person VALUES (1249, 'Ana Maria Florentina Brnz-Popescu', 'F', 1985, 110);
INSERT INTO public.api_person VALUES (1255, 'Anabelle Smith', 'F', 1993, 7);
INSERT INTO public.api_person VALUES (1257, 'Anamari "Ana" Velenek', 'F', 1991, 116);
INSERT INTO public.api_person VALUES (1260, 'Anastasia Vladimirovna Kuzmina (Shipulina-)', 'F', 1985, 122);
INSERT INTO public.api_person VALUES (1267, 'Anastasiya Alekseyevna Tatareva', 'F', 1997, 112);
INSERT INTO public.api_person VALUES (1268, 'Anastasiya Dmitriyevna Simanovich', 'F', 1995, 112);
INSERT INTO public.api_person VALUES (1269, 'Anastasiya Ilyinichna Bliznyuk', 'F', 1994, 112);
INSERT INTO public.api_person VALUES (1270, 'Anastasiya Ivanovna Maksimova', 'F', 1991, 112);
INSERT INTO public.api_person VALUES (1277, 'Anastasiya Sergeyevna Voynova', 'F', 1993, 112);
INSERT INTO public.api_person VALUES (1283, 'Anastasiya Yevgenyevna Belyakova', 'F', 1993, 112);
INSERT INTO public.api_person VALUES (1335, 'Anders Bardal', 'M', 1983, 98);
INSERT INTO public.api_person VALUES (1353, 'Anders Patrik Berglund', 'M', 1989, 123);
INSERT INTO public.api_person VALUES (1417, 'Andre De Grasse', 'M', 1995, 21);
INSERT INTO public.api_person VALUES (1443, 'Andrea Fondelli', 'M', 1994, 68);
INSERT INTO public.api_person VALUES (1466, 'Andrea Santarelli', 'M', 1993, 68);
INSERT INTO public.api_person VALUES (1504, 'Andreas Kuffner', 'M', 1987, 50);
INSERT INTO public.api_person VALUES (1506, 'Andreas Linger', 'M', 1982, 8);
INSERT INTO public.api_person VALUES (1526, 'Andreas Wank', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (1528, 'Andreas Wellinger', 'M', 1996, 50);
INSERT INTO public.api_person VALUES (1531, 'Andreas Wolff', 'M', 1991, 50);
INSERT INTO public.api_person VALUES (1534, 'Andreea Boghian', 'F', 1992, 110);
INSERT INTO public.api_person VALUES (1540, 'Andrei Jms', 'M', 1982, 39);
INSERT INTO public.api_person VALUES (1549, 'Andrew "Andy" Triggs Hodge', 'M', 1979, 47);
INSERT INTO public.api_person VALUES (1551, 'Andrew Barron "Andy" Murray', 'M', 1987, 47);
INSERT INTO public.api_person VALUES (1580, 'Andrew Weibrecht', 'M', 1987, 141);
INSERT INTO public.api_person VALUES (1635, 'Andrija Prlainovi', 'M', 1987, 117);
INSERT INTO public.api_person VALUES (1637, 'Andris ics', 'M', 1986, 78);
INSERT INTO public.api_person VALUES (1647, 'Andro Bulje', 'M', 1986, 28);
INSERT INTO public.api_person VALUES (1663, 'Andrs Rdli', 'M', 1984, 58);
INSERT INTO public.api_person VALUES (1692, 'Anelo etka', 'M', 1986, 28);
INSERT INTO public.api_person VALUES (1707, 'Angel Lajuane McCoughtry', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (1714, 'Angela Frautschi', 'F', 1988, 120);
INSERT INTO public.api_person VALUES (1734, 'Angelina Romanovna Melnikova', 'F', 2000, 112);
INSERT INTO public.api_person VALUES (1736, 'Angelique Kerber', 'F', 1988, 50);
INSERT INTO public.api_person VALUES (1762, 'Anicka van Emden', 'F', 1987, 94);
INSERT INTO public.api_person VALUES (1780, 'Anita Mrton', 'F', 1989, 58);
INSERT INTO public.api_person VALUES (1783, 'Anita Wodarczyk', 'F', 1986, 105);
INSERT INTO public.api_person VALUES (1784, 'Aniuar Borisovich Geduyev', 'M', 1987, 112);
INSERT INTO public.api_person VALUES (1790, 'Anja Mittag', 'F', 1985, 50);
INSERT INTO public.api_person VALUES (1795, 'Anja Stiefel', 'F', 1991, 120);
INSERT INTO public.api_person VALUES (1801, 'Anke Karstens', 'F', 1986, 50);
INSERT INTO public.api_person VALUES (1814, 'Ann Kristin Aafedt Flatland', 'F', 1983, 98);
INSERT INTO public.api_person VALUES (1829, 'Anna Cruz Lebrato', 'F', 1987, 38);
INSERT INTO public.api_person VALUES (1833, 'Anna Fenninger (-Veith)', 'F', 1990, 8);
INSERT INTO public.api_person VALUES (1840, 'Anna Ida Holmlund', 'F', 1988, 123);
INSERT INTO public.api_person VALUES (1843, 'Anna Jenny Eva Maria Fransson (Magnusson-)', 'F', 1987, 123);
INSERT INTO public.api_person VALUES (1848, 'Anna Korakaki', 'F', 1996, 52);
INSERT INTO public.api_person VALUES (1854, 'Anna Maree Devenish Meares', 'F', 1984, 7);
INSERT INTO public.api_person VALUES (1855, 'Anna Margret Haag (Hansson-)', 'F', 1987, 123);
INSERT INTO public.api_person VALUES (1860, 'Anna Maria Prytz', 'F', 1977, 123);
INSERT INTO public.api_person VALUES (1867, 'Anna Olegovna Karnaukh', 'F', 1994, 112);
INSERT INTO public.api_person VALUES (1873, 'Anna Sergeyevna Grinyova', 'F', 1988, 112);
INSERT INTO public.api_person VALUES (1874, 'Anna Sergeyevna Sedoykina', 'F', 1984, 112);
INSERT INTO public.api_person VALUES (1875, 'Anna Sergeyevna Sen', 'F', 1991, 112);
INSERT INTO public.api_person VALUES (1876, 'Anna Sloan', 'F', 1991, 47);
INSERT INTO public.api_person VALUES (1881, 'Anna Ulrika Maria Wennerstrm', 'F', 1986, 123);
INSERT INTO public.api_person VALUES (1883, 'Anna van der Breggen', 'F', 1990, 94);
INSERT INTO public.api_person VALUES (1886, 'Anna Viktorovna Timofeyeva', 'F', 1987, 112);
INSERT INTO public.api_person VALUES (1887, 'Anna Viktorovna Vyakhireva', 'F', 1995, 112);
INSERT INTO public.api_person VALUES (1892, 'Anna Vladimirovna Ustyukhina', 'F', 1989, 112);
INSERT INTO public.api_person VALUES (1899, 'Annalise Murphy', 'F', 1990, 63);
INSERT INTO public.api_person VALUES (1909, 'Anne Dsane Andersen', 'F', 1993, 32);
INSERT INTO public.api_person VALUES (1919, 'Anne Kathryn Schleper', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (1923, 'Anne Maria Kyllnen', 'F', 1988, 43);
INSERT INTO public.api_person VALUES (1932, 'Anne Schrder', 'F', 1995, 50);
INSERT INTO public.api_person VALUES (1941, 'Anneisha McLaughlin-Whilby', 'F', 1986, 69);
INSERT INTO public.api_person VALUES (1942, 'Annekatrin Thiele', 'F', 1985, 50);
INSERT INTO public.api_person VALUES (1957, 'Anne-Marie Rindom', 'F', 1991, 32);
INSERT INTO public.api_person VALUES (1990, 'Annika Sprink', 'F', 1996, 50);
INSERT INTO public.api_person VALUES (1992, 'Annike Berit Krahn', 'F', 1985, 50);
INSERT INTO public.api_person VALUES (2043, 'Anthony Lee Ervin', 'M', 1981, 141);
INSERT INTO public.api_person VALUES (2095, 'Anton Mikhaylovich Chupkov', 'M', 1997, 112);
INSERT INTO public.api_person VALUES (2099, 'Anton Sergeyevich Kushnir', 'M', 1985, 15);
INSERT INTO public.api_person VALUES (2107, 'Anton Vladimirovich Shipulin', 'M', 1988, 112);
INSERT INTO public.api_person VALUES (2155, 'Antonio Petkovi', 'M', 1986, 28);
INSERT INTO public.api_person VALUES (2192, 'Antti Sakari Pihlstrm', 'M', 1985, 43);
INSERT INTO public.api_person VALUES (2204, 'Apisai Raviyawa Domolailai', 'M', 1989, 42);
INSERT INTO public.api_person VALUES (2206, 'April Elizabeth Ross', 'F', 1982, 141);
INSERT INTO public.api_person VALUES (2221, 'Are Weierholt Strandli', 'M', 1989, 98);
INSERT INTO public.api_person VALUES (2226, 'Aria Fischer', 'F', 1999, 141);
INSERT INTO public.api_person VALUES (2230, 'Arianna Fontana', 'F', 1991, 68);
INSERT INTO public.api_person VALUES (2231, 'Arianna Garibotti', 'F', 1990, 68);
INSERT INTO public.api_person VALUES (2260, 'Arlen Lpez Cardona', 'M', 1993, 29);
INSERT INTO public.api_person VALUES (2262, 'Arman Hall', 'M', 1994, 141);
INSERT INTO public.api_person VALUES (2287, 'Armin Zggeler', 'M', 1974, 68);
INSERT INTO public.api_person VALUES (2297, 'Arnaud Bovolenta', 'M', 1989, 44);
INSERT INTO public.api_person VALUES (2301, 'Arnd Peiffer', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (2357, 'Artem Harutyunyan', 'M', 1991, 50);
INSERT INTO public.api_person VALUES (2358, 'Artemi Gavezou Castro', 'F', 1994, 38);
INSERT INTO public.api_person VALUES (2416, 'Arthur Nabarrete Zanetti', 'M', 1990, 18);
INSERT INTO public.api_person VALUES (2419, 'Arthur Nory Oyakawa Mariano', 'M', 1994, 18);
INSERT INTO public.api_person VALUES (2436, 'Arthur Van Doren', 'M', 1995, 13);
INSERT INTO public.api_person VALUES (2455, 'Artur Aleksanyan', 'M', 1992, 6);
INSERT INTO public.api_person VALUES (2459, 'Artur Kamilevich Akhmatkhuzin', 'M', 1988, 112);
INSERT INTO public.api_person VALUES (2479, 'Arvis Vilkaste', 'M', 1990, 78);
INSERT INTO public.api_person VALUES (2491, 'Asafa Kehine Powell', 'M', 1983, 69);
INSERT INTO public.api_person VALUES (2497, 'Asha Solette Philip', 'F', 1991, 47);
INSERT INTO public.api_person VALUES (2499, 'Ashleigh Johnson', 'F', 1995, 141);
INSERT INTO public.api_person VALUES (2505, 'Ashley Elisabeth Wagner', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (2508, 'Ashley Lawrence', 'F', 1995, 21);
INSERT INTO public.api_person VALUES (2510, 'Ashley Spencer', 'F', 1993, 141);
INSERT INTO public.api_person VALUES (2511, 'Ashley Steacy', 'F', 1987, 21);
INSERT INTO public.api_person VALUES (2515, 'Ashton James Eaton', 'M', 1988, 141);
INSERT INTO public.api_person VALUES (2528, 'Astier Nicolas', 'M', 1989, 44);
INSERT INTO public.api_person VALUES (2529, 'Astou Barro Ndour Gueye', 'F', 1995, 38);
INSERT INTO public.api_person VALUES (2534, 'Asuka Antonio "Aska" Cambridge', 'M', 1993, 71);
INSERT INTO public.api_person VALUES (2573, 'Audrey Tcheumo', 'F', 1990, 44);
INSERT INTO public.api_person VALUES (2615, 'Augustus Richard "Gus" Kenworthy', 'M', 1992, 141);
INSERT INTO public.api_person VALUES (2627, 'Aurimas Didbalis', 'M', 1991, 81);
INSERT INTO public.api_person VALUES (2628, 'Aurimas Lankas', 'M', 1986, 81);
INSERT INTO public.api_person VALUES (2667, 'Ayaka Takahashi', 'F', 1990, 71);
INSERT INTO public.api_person VALUES (2668, 'Ayana Onozuka', 'F', 1989, 71);
INSERT INTO public.api_person VALUES (2681, 'Ayumu Hirano', 'M', 1999, 71);
INSERT INTO public.api_person VALUES (2687, 'Babett Peter', 'F', 1988, 50);
INSERT INTO public.api_person VALUES (2735, 'Barbara Lechner-Engleder', 'F', 1983, 50);
INSERT INTO public.api_person VALUES (2747, 'Barbora potkov', 'F', 1981, 31);
INSERT INTO public.api_person VALUES (2748, 'Barbora Strcov (-Zhlavov)', 'F', 1986, 31);
INSERT INTO public.api_person VALUES (2770, 'Bastian Steger', 'M', 1981, 50);
INSERT INTO public.api_person VALUES (2771, 'Batrice Edwige', 'F', 1989, 44);
INSERT INTO public.api_person VALUES (2774, 'Beat Hefti', 'M', 1978, 120);
INSERT INTO public.api_person VALUES (2779, 'Beata Mikoajczyk', 'F', 1986, 105);
INSERT INTO public.api_person VALUES (2807, 'Bektemir Ruzmatzhonovich Melikuziyev', 'M', 1996, 142);
INSERT INTO public.api_person VALUES (2823, 'Bengt Fredrik Lindberg', 'M', 1986, 123);
INSERT INTO public.api_person VALUES (2855, 'Benjamin Martin Karl', 'M', 1986, 8);
INSERT INTO public.api_person VALUES (2948, 'Bernhard Gruber', 'M', 1983, 8);
INSERT INTO public.api_person VALUES (2986, 'Beslan Zaudinovich Mudranov', 'M', 1986, 112);
INSERT INTO public.api_person VALUES (2989, 'Bethanie Lynn Mattek-Sands', 'F', 1985, 141);
INSERT INTO public.api_person VALUES (3006, 'Bianca Farella', 'F', 1992, 21);
INSERT INTO public.api_person VALUES (3009, 'Bianca Michaela Walkden', 'F', 1992, 47);
INSERT INTO public.api_person VALUES (3011, 'Bianka Bua', 'F', 1994, 117);
INSERT INTO public.api_person VALUES (3063, 'Bjrn Henrik Lundqvist', 'M', 1983, 123);
INSERT INTO public.api_person VALUES (3065, 'Bjrn Kircheisen', 'M', 1984, 50);
INSERT INTO public.api_person VALUES (3098, 'Blair Tuke', 'M', 1989, 99);
INSERT INTO public.api_person VALUES (3099, 'Blake Pieroni', 'M', 1996, 141);
INSERT INTO public.api_person VALUES (3101, 'Blandine Dancette', 'F', 1988, 44);
INSERT INTO public.api_person VALUES (3103, 'Blanka Vlai', 'F', 1984, 28);
INSERT INTO public.api_person VALUES (3118, 'Boaz Cornelius Meylink', 'M', 1984, 94);
INSERT INTO public.api_person VALUES (3120, 'Bob Johannes Carolus de Jong', 'M', 1977, 94);
INSERT INTO public.api_person VALUES (3132, 'Bogdan Bogdanovi', 'M', 1993, 117);
INSERT INTO public.api_person VALUES (3137, 'Boglrka Kaps', 'F', 1993, 58);
INSERT INTO public.api_person VALUES (3139, 'Bo-Gyung "Lydia" Ko', 'F', 1997, 99);
INSERT INTO public.api_person VALUES (3141, 'Bohdan Viktorovych Bondarenko', 'M', 1990, 138);
INSERT INTO public.api_person VALUES (3159, 'Bojana ivkovi', 'F', 1988, 117);
INSERT INTO public.api_person VALUES (3170, 'Boniface Mucheru Tumuti', 'M', 1992, 73);
INSERT INTO public.api_person VALUES (3229, 'Boudewijn Rell', 'M', 1989, 94);
INSERT INTO public.api_person VALUES (3235, 'Bradley "Brad" Jacobs', 'M', 1986, 21);
INSERT INTO public.api_person VALUES (3239, 'Bradley Marc Wiggins', 'M', 1980, 47);
INSERT INTO public.api_person VALUES (3244, 'Brady Lee Ellison', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (3256, 'Branislav Mitrovi', 'M', 1985, 117);
INSERT INTO public.api_person VALUES (3259, 'Brankica Mihajlovi', 'F', 1991, 117);
INSERT INTO public.api_person VALUES (3268, 'Brbara Seixas de Freitas', 'F', 1987, 18);
INSERT INTO public.api_person VALUES (3272, 'Breanna Mackenzie Stewart', 'F', 1995, 141);
INSERT INTO public.api_person VALUES (3286, 'Brendon Rodney', 'M', 1992, 21);
INSERT INTO public.api_person VALUES (3340, 'Brianna Decker', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (3341, 'Brianna Rollins', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (3342, 'Brianne Alexandra Jenner', 'F', 1992, 21);
INSERT INTO public.api_person VALUES (3344, 'Brianne Theisen-Eaton', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (3377, 'Brittany "Britt" Benn', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (3381, 'Brittany Joyce Elmslie', 'F', 1994, 7);
INSERT INTO public.api_person VALUES (3382, 'Brittany MacLean', 'F', 1994, 21);
INSERT INTO public.api_person VALUES (3383, 'Brittney Davon Reese', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (3384, 'Brittney Yevette Griner', 'F', 1991, 141);
INSERT INTO public.api_person VALUES (3388, 'Bronte Amelia Arnold Barratt', 'F', 1989, 7);
INSERT INTO public.api_person VALUES (3389, 'Bronte Campbell', 'F', 1994, 7);
INSERT INTO public.api_person VALUES (3422, 'Bruno "Bruninho" Mossa de Rezende', 'M', 1986, 18);
INSERT INTO public.api_person VALUES (3445, 'Bruno Oscar Schmidt', 'M', 1987, 18);
INSERT INTO public.api_person VALUES (3469, 'Bryony Kate Frances Page', 'F', 1991, 47);
INSERT INTO public.api_person VALUES (3489, 'Caeleb Remel Dressel', 'M', 1997, 141);
INSERT INTO public.api_person VALUES (3496, 'Cai Zelin', 'M', 1991, 23);
INSERT INTO public.api_person VALUES (3497, 'Caia Jaqueline van Maasakker', 'F', 1989, 94);
INSERT INTO public.api_person VALUES (3503, 'Caleb Paine', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (3505, 'Callum Scotson', 'M', 1997, 7);
INSERT INTO public.api_person VALUES (3506, 'Callum Skinner', 'M', 1993, 47);
INSERT INTO public.api_person VALUES (3519, 'Cameron Girdlestone', 'M', 1988, 7);
INSERT INTO public.api_person VALUES (3521, 'Cameron McEvoy', 'M', 1994, 7);
INSERT INTO public.api_person VALUES (3522, 'Cameron van der Burgh', 'M', 1988, 111);
INSERT INTO public.api_person VALUES (3523, 'Camilla Herrem', 'F', 1987, 98);
INSERT INTO public.api_person VALUES (3527, 'Camille Anas Ayglon-Saurina', 'F', 1985, 44);
INSERT INTO public.api_person VALUES (3528, 'Camille Lecointre', 'F', 1985, 44);
INSERT INTO public.api_person VALUES (3540, 'Cao Yuan', 'M', 1995, 23);
INSERT INTO public.api_person VALUES (3547, 'Carey Price', 'M', 1988, 21);
INSERT INTO public.api_person VALUES (3553, 'Carina Br', 'F', 1990, 50);
INSERT INTO public.api_person VALUES (3555, 'Carina Vogt', 'F', 1992, 50);
INSERT INTO public.api_person VALUES (3601, 'Carl Henrik Zetterberg', 'M', 1981, 123);
INSERT INTO public.api_person VALUES (3624, 'Carl Marcus Joakim Hellner', 'M', 1986, 123);
INSERT INTO public.api_person VALUES (3631, 'Carl Oliver Ruud Hagelin', 'M', 1989, 123);
INSERT INTO public.api_person VALUES (3639, 'Carl Peder Fredricson', 'M', 1972, 123);
INSERT INTO public.api_person VALUES (3644, 'Carl Rupert Hester', 'M', 1967, 47);
INSERT INTO public.api_person VALUES (3658, 'Carl Wilhelm Loui Eriksson', 'M', 1986, 123);
INSERT INTO public.api_person VALUES (3677, 'Carli Ellen Lloyd', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (3678, 'Carlien Clemens Dirkse van den Heuvel', 'F', 1987, 94);
INSERT INTO public.api_person VALUES (3679, 'Carline Bouw', 'F', 1985, 94);
INSERT INTO public.api_person VALUES (3708, 'Carlos Alberto Ramrez Yepes', 'M', 1994, 26);
INSERT INTO public.api_person VALUES (3717, 'Carlos Coloma Nicols', 'M', 1982, 38);
INSERT INTO public.api_person VALUES (3756, 'Carmelo Kyan Anthony', 'M', 1984, 141);
INSERT INTO public.api_person VALUES (3783, 'Carolina Kostner', 'F', 1988, 68);
INSERT INTO public.api_person VALUES (3784, 'Carolina Mara Marn Marn', 'F', 1993, 38);
INSERT INTO public.api_person VALUES (3789, 'Caroline Archer "KK" Clark', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (3795, 'Caroline Ouellette', 'F', 1980, 21);
INSERT INTO public.api_person VALUES (3818, 'Casper Michael von Folsach', 'M', 1993, 32);
INSERT INTO public.api_person VALUES (3819, 'Casper Ulrich Mortensen', 'M', 1990, 32);
INSERT INTO public.api_person VALUES (3823, 'Cate Natalie Campbell', 'F', 1992, 7);
INSERT INTO public.api_person VALUES (3825, 'Caterine Ibargn Mena', 'F', 1984, 26);
INSERT INTO public.api_person VALUES (3830, 'Catharine Pendrel', 'F', 1981, 21);
INSERT INTO public.api_person VALUES (3845, 'Catherine Michelle "Katie" Meili', 'F', 1991, 141);
INSERT INTO public.api_person VALUES (3848, 'Catherine Rose "Katie" Greves (-Solesbury)', 'F', 1983, 47);
INSERT INTO public.api_person VALUES (3849, 'Catherine Skinner', 'F', 1990, 7);
INSERT INTO public.api_person VALUES (3850, 'Catherine Ward', 'F', 1988, 21);
INSERT INTO public.api_person VALUES (3858, 'Cbrayl Hsnov', 'M', 1990, 9);
INSERT INTO public.api_person VALUES (3860, 'Ccile Pieper', 'F', 1995, 50);
INSERT INTO public.api_person VALUES (3863, 'Cdric Charlier', 'M', 1988, 13);
INSERT INTO public.api_person VALUES (3867, 'Cdric Sorhaindo', 'M', 1984, 44);
INSERT INTO public.api_person VALUES (3877, 'Cecil Sebastian Afrika', 'M', 1988, 111);
INSERT INTO public.api_person VALUES (3878, 'Cecilia Carranza Saroli', 'F', 1987, 5);
INSERT INTO public.api_person VALUES (3890, 'Cenk ldem', 'M', 1986, 134);
INSERT INTO public.api_person VALUES (3905, 'Chad Guy Bertrand le Clos', 'M', 1992, 111);
INSERT INTO public.api_person VALUES (3910, 'Chan Peng Soon', 'M', 1988, 84);
INSERT INTO public.api_person VALUES (3917, 'Chang Hye-Jin', 'F', 1987, 75);
INSERT INTO public.api_person VALUES (3922, 'Chantal Achterberg', 'F', 1985, 94);
INSERT INTO public.api_person VALUES (3925, 'Chantal Jean Van Landeghem', 'F', 1994, 21);
INSERT INTO public.api_person VALUES (3932, 'Charity Williams', 'F', 1997, 21);
INSERT INTO public.api_person VALUES (3933, 'Charle Cournoyer', 'M', 1992, 21);
INSERT INTO public.api_person VALUES (3950, 'Charles Allen "Charlie" White, Jr.', 'M', 1988, 141);
INSERT INTO public.api_person VALUES (4029, 'Charles Hamelin', 'M', 1985, 21);
INSERT INTO public.api_person VALUES (4129, 'Charline "Charlie" Labont', 'F', 1983, 21);
INSERT INTO public.api_person VALUES (4130, 'Charline Picon', 'F', 1985, 44);
INSERT INTO public.api_person VALUES (4133, 'Charlotta Eva "Lotta" Schelin', 'F', 1984, 123);
INSERT INTO public.api_person VALUES (4138, 'Charlotte Caslick', 'F', 1995, 7);
INSERT INTO public.api_person VALUES (4143, 'Charlotte Stapenhorst', 'F', 1995, 50);
INSERT INTO public.api_person VALUES (4144, 'Charlotte Susan Jane Dujardin', 'F', 1985, 47);
INSERT INTO public.api_person VALUES (4145, 'Charlotte Willemijn "Lotte" van Beek', 'F', 1992, 94);
INSERT INTO public.api_person VALUES (4148, 'Chase Tyler Kalisz', 'M', 1994, 141);
INSERT INTO public.api_person VALUES (4150, 'Chay Crista Kerio Cullen', 'F', 1986, 47);
INSERT INTO public.api_person VALUES (4152, 'Cheick Sallah Ciss Junior', 'M', 1994, 24);
INSERT INTO public.api_person VALUES (4155, 'Chen Aisen', 'M', 1996, 23);
INSERT INTO public.api_person VALUES (4157, 'Chen Dequan', 'M', 1996, 23);
INSERT INTO public.api_person VALUES (4164, 'Chen Long', 'M', 1989, 23);
INSERT INTO public.api_person VALUES (4167, 'Chen Peina', 'F', 1989, 23);
INSERT INTO public.api_person VALUES (4170, 'Chen Ruolin', 'F', 1993, 23);
INSERT INTO public.api_person VALUES (4194, 'Cheng Xunzhao', 'M', 1991, 23);
INSERT INTO public.api_person VALUES (4195, 'Cheong Jun Hoong', 'F', 1990, 84);
INSERT INTO public.api_person VALUES (4204, 'Cheslin Kolbe', 'M', 1994, 111);
INSERT INTO public.api_person VALUES (4211, 'Chiara Cainero', 'F', 1978, 68);
INSERT INTO public.api_person VALUES (4212, 'Chiara Tabani', 'F', 1995, 68);
INSERT INTO public.api_person VALUES (4225, 'Chlo Bulleux', 'F', 1992, 44);
INSERT INTO public.api_person VALUES (4226, 'Chlo Dufour-Lapointe', 'F', 1992, 21);
INSERT INTO public.api_person VALUES (4227, 'Chlo Dygert (-Owen)', 'F', 1997, 141);
INSERT INTO public.api_person VALUES (4228, 'Chlo Ella Trespeuch', 'F', 1995, 44);
INSERT INTO public.api_person VALUES (4229, 'Chloe Elysha Dalton', 'F', 1993, 7);
INSERT INTO public.api_person VALUES (4230, 'Chloe Esposito', 'F', 1992, 7);
INSERT INTO public.api_person VALUES (4233, 'Choe Hyo-Sim', 'F', 1994, 107);
INSERT INTO public.api_person VALUES (4246, 'Choi Mi-Sun', 'F', 1996, 75);
INSERT INTO public.api_person VALUES (4254, 'Chrisann Gordon', 'F', 1995, 69);
INSERT INTO public.api_person VALUES (4255, 'Christa Deanne Harmotto-Dietzen', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (4261, 'Christania Williams', 'F', 1995, 69);
INSERT INTO public.api_person VALUES (4269, 'Christian Ahlmann', 'M', 1975, 50);
INSERT INTO public.api_person VALUES (4276, 'Christian Dissinger', 'M', 1992, 50);
INSERT INTO public.api_person VALUES (4305, 'Christian Presciutti', 'M', 1983, 68);
INSERT INTO public.api_person VALUES (4308, 'Christian Reitz', 'M', 1987, 50);
INSERT INTO public.api_person VALUES (4319, 'Christian Taylor', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (4339, 'Christina Bertrup', 'F', 1977, 123);
INSERT INTO public.api_person VALUES (4359, 'Christine Day', 'F', 1987, 69);
INSERT INTO public.api_person VALUES (4365, 'Christine Ijeoma Chika Ohuruogu', 'F', 1984, 47);
INSERT INTO public.api_person VALUES (4371, 'Christine Margaret Sinclair', 'F', 1983, 21);
INSERT INTO public.api_person VALUES (4384, 'Christinna Pedersen', 'F', 1986, 32);
INSERT INTO public.api_person VALUES (4387, 'Christof Innerhofer', 'M', 1985, 68);
INSERT INTO public.api_person VALUES (4392, 'Christoph Bieler', 'M', 1978, 8);
INSERT INTO public.api_person VALUES (4394, 'Christoph Harting', 'M', 1990, 50);
INSERT INTO public.api_person VALUES (4399, 'Christoph Sumann', 'M', 1976, 8);
INSERT INTO public.api_person VALUES (4401, 'Christophe Alexandre Christian Lematre', 'M', 1990, 44);
INSERT INTO public.api_person VALUES (4409, 'Christopher "Chris" Creveling', 'M', 1987, 141);
INSERT INTO public.api_person VALUES (4411, 'Christopher "Chris" Fogt', 'M', 1984, 141);
INSERT INTO public.api_person VALUES (4414, 'Christopher "Chris" Kunitz', 'M', 1980, 21);
INSERT INTO public.api_person VALUES (4425, 'Christopher Burton', 'M', 1982, 7);
INSERT INTO public.api_person VALUES (4429, 'Christopher Clive "Chris" Froome', 'M', 1985, 47);
INSERT INTO public.api_person VALUES (4435, 'Christopher Deon "Chris" Brown', 'M', 1979, 10);
INSERT INTO public.api_person VALUES (4443, 'Christopher James "Chris" Mears', 'M', 1993, 47);
INSERT INTO public.api_person VALUES (4444, 'Christopher James "Chris" Walker-Hebborn', 'M', 1990, 47);
INSERT INTO public.api_person VALUES (4458, 'Christopher Phillip "Chris" Langridge', 'M', 1985, 47);
INSERT INTO public.api_person VALUES (4460, 'Christopher Rhr', 'M', 1994, 50);
INSERT INTO public.api_person VALUES (4466, 'Christopher Wesley', 'M', 1987, 50);
INSERT INTO public.api_person VALUES (4481, 'Cierra Runge', 'F', 1996, 141);
INSERT INTO public.api_person VALUES (4492, 'Claire Hamilton', 'F', 1989, 47);
INSERT INTO public.api_person VALUES (4519, 'Claressa Maria Shields', 'F', 1995, 141);
INSERT INTO public.api_person VALUES (4523, 'Clarisse Agbegnenou', 'F', 1993, 44);
INSERT INTO public.api_person VALUES (4524, 'Clark Smith', 'M', 1995, 141);
INSERT INTO public.api_person VALUES (4552, 'Claudia Knzel-Nystad', 'F', 1978, 50);
INSERT INTO public.api_person VALUES (4576, 'Clayton Murphy', 'M', 1995, 141);
INSERT INTO public.api_person VALUES (4607, 'Clment Mignon', 'M', 1993, 44);
INSERT INTO public.api_person VALUES (4621, 'Cody Miller', 'M', 1992, 141);
INSERT INTO public.api_person VALUES (4637, 'Coline Mattel', 'F', 1996, 44);
INSERT INTO public.api_person VALUES (4649, 'Connor Evan Fields', 'M', 1993, 141);
INSERT INTO public.api_person VALUES (4650, 'Connor Jaeger', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (4654, 'Conor James Dwyer', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (4665, 'Conseslus Kipruto', 'M', 1995, 73);
INSERT INTO public.api_person VALUES (4681, 'Constantine Michael Louloudis', 'M', 1992, 47);
INSERT INTO public.api_person VALUES (4685, 'Corey Cogdell-Unrein', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (4687, 'Corey Perry', 'M', 1986, 21);
INSERT INTO public.api_person VALUES (4737, 'Courtney Lynn Kaiulani  Mathewson', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (4739, 'Courtney Lynn Thompson', 'F', 1985, 141);
INSERT INTO public.api_person VALUES (4740, 'Courtney Okolo', 'F', 1994, 141);
INSERT INTO public.api_person VALUES (4758, 'Cristian Isaac Toro Carballo', 'M', 1992, 38);
INSERT INTO public.api_person VALUES (4789, 'Curtis "Curt" Tomasevicz', 'M', 1981, 141);
INSERT INTO public.api_person VALUES (4825, 'Cyrille Maret', 'M', 1988, 44);
INSERT INTO public.api_person VALUES (4835, 'Dafne Schippers', 'F', 1992, 94);
INSERT INTO public.api_person VALUES (4848, 'Dagmara Wozniak (Woniak-)', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (4853, 'Daiki Ito', 'M', 1986, 71);
INSERT INTO public.api_person VALUES (4867, 'Daiya Seto', 'M', 1994, 71);
INSERT INTO public.api_person VALUES (4868, 'Dajana Butulija', 'F', 1986, 117);
INSERT INTO public.api_person VALUES (4873, 'Dalilah Muhammad', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (4878, 'Damian Warner', 'M', 1990, 21);
INSERT INTO public.api_person VALUES (4882, 'Damir Buri', 'M', 1981, 28);
INSERT INTO public.api_person VALUES (4885, 'Damir Martin', 'M', 1988, 28);
INSERT INTO public.api_person VALUES (4898, 'Dan Ola Jonathan Ericsson (Marklund-)', 'M', 1985, 123);
INSERT INTO public.api_person VALUES (4907, 'Dana Whitney Vollmer (-Grant)', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (4910, 'Dane Alex Bird-Smith', 'M', 1992, 7);
INSERT INTO public.api_person VALUES (4912, 'Danell Johan Leyva Gonzalez', 'M', 1992, 141);
INSERT INTO public.api_person VALUES (4914, 'Daniar Ismailow', 'M', 1992, 134);
INSERT INTO public.api_person VALUES (4917, 'Daniel "Dan" Bibby', 'M', 1991, 47);
INSERT INTO public.api_person VALUES (4920, 'Daniel "Dan" Hamhuis', 'M', 1983, 21);
INSERT INTO public.api_person VALUES (4925, 'Daniel "Dan" Wallace', 'M', 1993, 47);
INSERT INTO public.api_person VALUES (4931, 'Daniel Akpeyi', 'M', 1986, 96);
INSERT INTO public.api_person VALUES (4939, 'Daniel Bhm', 'M', 1987, 50);
INSERT INTO public.api_person VALUES (4946, 'Daniel Deuer', 'M', 1982, 50);
INSERT INTO public.api_person VALUES (4957, 'Daniel Goodfellow', 'M', 1997, 47);
INSERT INTO public.api_person VALUES (4958, 'Daniel Havel', 'M', 1992, 31);
INSERT INTO public.api_person VALUES (4961, 'Daniel James "Dan" Norton', 'M', 1988, 47);
INSERT INTO public.api_person VALUES (4964, 'Daniel Jasinski', 'M', 1990, 50);
INSERT INTO public.api_person VALUES (4970, 'Daniel Jrent', 'M', 1991, 44);
INSERT INTO public.api_person VALUES (4979, 'Daniel Mesotitsch', 'M', 1977, 8);
INSERT INTO public.api_person VALUES (4981, 'Daniel Narcisse', 'M', 1980, 44);
INSERT INTO public.api_person VALUES (5017, 'Daniela Druncea', 'F', 1991, 110);
INSERT INTO public.api_person VALUES (5020, 'Daniela Iraschko-Stolz', 'F', 1984, 8);
INSERT INTO public.api_person VALUES (5031, 'Daniele Garozzo', 'M', 1993, 68);
INSERT INTO public.api_person VALUES (5032, 'Daniele Lupo', 'M', 1991, 68);
INSERT INTO public.api_person VALUES (5034, 'Daniele Pasquale Sottile', 'M', 1980, 68);
INSERT INTO public.api_person VALUES (5043, 'Danielle Nicole Page', 'F', 1987, 117);
INSERT INTO public.api_person VALUES (5063, 'Daniyar Maratovich Yeleusinov', 'M', 1991, 72);
INSERT INTO public.api_person VALUES (5076, 'Danuta Kozk', 'F', 1987, 58);
INSERT INTO public.api_person VALUES (5086, 'Dara Howell', 'F', 1995, 21);
INSERT INTO public.api_person VALUES (5091, 'Dariga Shakimova', 'F', 1989, 72);
INSERT INTO public.api_person VALUES (5092, 'Dario Alonzo Cologna', 'M', 1987, 120);
INSERT INTO public.api_person VALUES (5121, 'Darya Mikhaylovna Shmelyova', 'F', 1995, 112);
INSERT INTO public.api_person VALUES (5123, 'Darya Sergeyevna Naumova', 'F', 1996, 15);
INSERT INTO public.api_person VALUES (5124, 'Darya Sergeyevna Spiridonova', 'F', 1998, 112);
INSERT INTO public.api_person VALUES (5127, 'Darya Vladimirovna Domracheva', 'F', 1987, 15);
INSERT INTO public.api_person VALUES (5128, 'Darya Yevgenyevna Dmitriyeva', 'F', 1996, 112);
INSERT INTO public.api_person VALUES (5129, 'Daryl Homer', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (5130, 'Daryll Saskia Neita', 'F', 1997, 47);
INSERT INTO public.api_person VALUES (5132, 'Daumants Dreikens', 'M', 1985, 78);
INSERT INTO public.api_person VALUES (5146, 'David Alasdair Boudia', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (5164, 'David Cameron Lee', 'M', 1982, 141);
INSERT INTO public.api_person VALUES (5185, 'David Edward Plummer', 'M', 1986, 141);
INSERT INTO public.api_person VALUES (5189, 'David Florence', 'M', 1983, 47);
INSERT INTO public.api_person VALUES (5219, 'David John Morris', 'M', 1985, 7);
INSERT INTO public.api_person VALUES (5223, 'David Johnny Oduya', 'M', 1982, 123);
INSERT INTO public.api_person VALUES (5235, 'David Lekuta Rudisha', 'M', 1989, 73);
INSERT INTO public.api_person VALUES (5256, 'David Michael Smith', 'M', 1985, 141);
INSERT INTO public.api_person VALUES (5260, 'David Morgan', 'M', 1994, 7);
INSERT INTO public.api_person VALUES (5261, 'David Murdoch', 'M', 1979, 47);
INSERT INTO public.api_person VALUES (5277, 'David Sagitovich Belyavsky', 'M', 1992, 112);
INSERT INTO public.api_person VALUES (5288, 'David Verburg', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (5300, 'David Wise', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (5304, 'Davie Selke', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (5310, 'Davit Gochayevich Chakvetadze', 'M', 1993, 112);
INSERT INTO public.api_person VALUES (5318, 'Davor tefanek', 'M', 1986, 117);
INSERT INTO public.api_person VALUES (5322, 'Dawn McEwen (Askin-)', 'F', 1981, 21);
INSERT INTO public.api_person VALUES (5336, 'Deanne Rose', 'F', 1999, 21);
INSERT INTO public.api_person VALUES (5376, 'DeMar Darnell DeRozan', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (5377, 'DeMarcus Amir Cousins', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (5389, 'Deng Shudi', 'M', 1992, 23);
INSERT INTO public.api_person VALUES (5390, 'Deng Wei', 'F', 1993, 23);
INSERT INTO public.api_person VALUES (5394, 'Denia Caballero Ponce', 'F', 1990, 29);
INSERT INTO public.api_person VALUES (5398, 'Denis Gargaud Chanut', 'M', 1987, 44);
INSERT INTO public.api_person VALUES (5406, 'Denis Maksymilian Kudla', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (5408, 'Denis Mikhaylovich Ablyazin', 'M', 1993, 112);
INSERT INTO public.api_person VALUES (5409, 'Denis Myk', 'M', 1996, 122);
INSERT INTO public.api_person VALUES (5414, 'Denis Sergeyevich Dmitriyev', 'M', 1986, 112);
INSERT INTO public.api_person VALUES (5417, 'Denis Ulanov', 'M', 1994, 72);
INSERT INTO public.api_person VALUES (5421, 'Denis Yuryevich Ten', 'M', 1994, 72);
INSERT INTO public.api_person VALUES (5422, 'Denise Herrmann', 'F', 1989, 50);
INSERT INTO public.api_person VALUES (5441, 'Denny Morrison', 'M', 1986, 21);
INSERT INTO public.api_person VALUES (5450, 'der Francis Carbonera', 'M', 1984, 18);
INSERT INTO public.api_person VALUES (5454, 'Derek Drouin', 'M', 1990, 21);
INSERT INTO public.api_person VALUES (5468, 'Desiree Latifah N. Henry', 'F', 1996, 47);
INSERT INTO public.api_person VALUES (5469, 'Desiree Rose Marie Scott', 'F', 1988, 21);
INSERT INTO public.api_person VALUES (5486, 'Devin Logan', 'F', 1994, 141);
INSERT INTO public.api_person VALUES (5501, 'Diana Bacosi', 'F', 1983, 68);
INSERT INTO public.api_person VALUES (5502, 'Diana Beverly Matheson', 'F', 1984, 21);
INSERT INTO public.api_person VALUES (5514, 'Diana Lurena Taurasi', 'F', 1982, 141);
INSERT INTO public.api_person VALUES (5552, 'Diego Matias Hyplito', 'M', 1986, 18);
INSERT INTO public.api_person VALUES (5585, 'Dilshod Nazarov', 'M', 1982, 129);
INSERT INTO public.api_person VALUES (5594, 'Dimitri David Bascou', 'M', 1987, 44);
INSERT INTO public.api_person VALUES (5598, 'Dimitrij Ovtcharov', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (5616, 'Ding Ning', 'F', 1990, 23);
INSERT INTO public.api_person VALUES (5617, 'Ding Xia', 'F', 1990, 23);
INSERT INTO public.api_person VALUES (5643, 'Dirk Uittenbogaard', 'M', 1990, 94);
INSERT INTO public.api_person VALUES (5644, 'Dirk Van Tichelt', 'M', 1984, 13);
INSERT INTO public.api_person VALUES (5647, 'Diyorbek Urozboyev', 'M', 1994, 142);
INSERT INTO public.api_person VALUES (5663, 'Dmitry Igorevich Balandin', 'M', 1995, 72);
INSERT INTO public.api_person VALUES (5677, 'Dmitry Semyonovich Yaparov', 'M', 1986, 112);
INSERT INTO public.api_person VALUES (5691, 'Dmitry Vladimirovich Malyshko', 'M', 1988, 112);
INSERT INTO public.api_person VALUES (5692, 'Dmitry Vladimirovich Sovolyov', 'M', 1990, 112);
INSERT INTO public.api_person VALUES (5697, 'Dmitry Vyacheslavovich Trunenkov', 'M', 1985, 112);
INSERT INTO public.api_person VALUES (5702, 'Dmytro Mykolaiovych Yanchuk', 'M', 1993, 138);
INSERT INTO public.api_person VALUES (5732, 'Domenico Montrone', 'M', 1986, 68);
INSERT INTO public.api_person VALUES (5745, 'Dominik Landertinger', 'M', 1988, 8);
INSERT INTO public.api_person VALUES (5746, 'Dominik Windisch', 'M', 1990, 68);
INSERT INTO public.api_person VALUES (5748, 'Dominique Gisin', 'F', 1986, 120);
INSERT INTO public.api_person VALUES (5750, 'Dominique Maltais', 'F', 1981, 21);
INSERT INTO public.api_person VALUES (5807, 'Donata Vitartait', 'F', 1989, 81);
INSERT INTO public.api_person VALUES (5809, 'Dong Bin', 'M', 1989, 23);
INSERT INTO public.api_person VALUES (5810, 'Dong Dong', 'M', 1989, 23);
INSERT INTO public.api_person VALUES (5822, 'Dorian Benno Eric van Rijsselberge', 'M', 1989, 94);
INSERT INTO public.api_person VALUES (5833, 'Dorjnyambuugiin Otgondalai', 'M', 1988, 87);
INSERT INTO public.api_person VALUES (5835, 'Dorjsurengiin Sumiya', 'F', 1991, 87);
INSERT INTO public.api_person VALUES (5841, 'Dorothea Wierer', 'F', 1991, 68);
INSERT INTO public.api_person VALUES (5842, 'Dorothee Schneider (-Krumhoff)', 'F', 1969, 50);
INSERT INTO public.api_person VALUES (5880, 'Douglas Correia de Souza', 'M', 1996, 18);
INSERT INTO public.api_person VALUES (5884, 'Douglas dos Santos Justino de Melo', 'M', 1994, 18);
INSERT INTO public.api_person VALUES (5915, 'Dragana Stankovi', 'F', 1995, 117);
INSERT INTO public.api_person VALUES (5926, 'Draymond Jamal Green', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (5928, 'Drew Doughty', 'M', 1990, 21);
INSERT INTO public.api_person VALUES (5938, 'Du Li', 'F', 1982, 23);
INSERT INTO public.api_person VALUES (5940, 'Duan Jingli', 'F', 1989, 23);
INSERT INTO public.api_person VALUES (5941, 'Duan Mandi', 'M', 1994, 117);
INSERT INTO public.api_person VALUES (5959, 'Duko Pijetlovi', 'M', 1985, 117);
INSERT INTO public.api_person VALUES (5975, 'Duncan Keith', 'M', 1984, 21);
INSERT INTO public.api_person VALUES (5982, 'Duncan William MacNaughton Scott', 'M', 1997, 47);
INSERT INTO public.api_person VALUES (5997, 'Dylan Michael Sage', 'M', 1992, 111);
INSERT INTO public.api_person VALUES (5998, 'Dylan Moscovitch', 'M', 1985, 21);
INSERT INTO public.api_person VALUES (6001, 'Dzhavid Shakirovich Gamzatov', 'M', 1990, 15);
INSERT INTO public.api_person VALUES (6003, 'Dzsenifer Marozsn', 'F', 1992, 50);
INSERT INTO public.api_person VALUES (6132, 'Eduardo C. "Eddy" Alvarez', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (6149, 'Edvinas Ramanauskas', 'M', 1986, 81);
INSERT INTO public.api_person VALUES (6151, 'Edward "Ed" Clancy', 'M', 1985, 47);
INSERT INTO public.api_person VALUES (6195, 'Edward James Eddie Dawkins', 'M', 1989, 99);
INSERT INTO public.api_person VALUES (6230, 'Edward Theodore "Ed" Ling', 'M', 1983, 47);
INSERT INTO public.api_person VALUES (6308, 'Eilidh Child-Doyle', 'F', 1987, 47);
INSERT INTO public.api_person VALUES (6343, 'Eko Yuli Irawan', 'M', 1989, 59);
INSERT INTO public.api_person VALUES (6351, 'Elaine Thompson', 'F', 1992, 69);
INSERT INTO public.api_person VALUES (6352, 'Elana Alessandra Meyers (-Taylor)', 'F', 1985, 141);
INSERT INTO public.api_person VALUES (6361, 'Eleanor "Elle" Logan', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (6365, 'Eleftherios Petrounias', 'M', 1991, 52);
INSERT INTO public.api_person VALUES (6371, 'Elena Delle Donne', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (6378, 'Elena Lpez Benaches', 'F', 1995, 38);
INSERT INTO public.api_person VALUES (6383, 'Elena Viviani', 'F', 1993, 68);
INSERT INTO public.api_person VALUES (6394, 'Elia Viviani', 'M', 1989, 68);
INSERT INTO public.api_person VALUES (6400, 'Elin Ingrid Johanna Rubensson', 'F', 1993, 123);
INSERT INTO public.api_person VALUES (6404, 'Elinor Jane Barker', 'F', 1995, 47);
INSERT INTO public.api_person VALUES (6408, 'Elis Ligtlee', 'F', 1994, 94);
INSERT INTO public.api_person VALUES (6411, 'Elisa Di Francisca', 'F', 1983, 68);
INSERT INTO public.api_person VALUES (6412, 'Elisa Longo Borghini', 'F', 1992, 68);
INSERT INTO public.api_person VALUES (6413, 'Elisa Queirolo', 'F', 1991, 68);
INSERT INTO public.api_person VALUES (6436, 'Elitsa Atanasova Yankova', 'F', 1995, 20);
INSERT INTO public.api_person VALUES (6437, 'Eliud Kipchoge', 'M', 1985, 73);
INSERT INTO public.api_person VALUES (6438, 'Eliza McCartney', 'F', 1997, 99);
INSERT INTO public.api_person VALUES (6439, 'Elizabeth "Beezie" Madden (Patton-)', 'F', 1964, 141);
INSERT INTO public.api_person VALUES (6452, 'Elizabeth Anne "Lizzy" Yarnold', 'F', 1989, 47);
INSERT INTO public.api_person VALUES (6490, 'Ellen Marijn Hoog', 'F', 1986, 94);
INSERT INTO public.api_person VALUES (6496, 'Ellia Green', 'F', 1993, 7);
INSERT INTO public.api_person VALUES (6499, 'Elliot Van Strydonck', 'M', 1988, 13);
INSERT INTO public.api_person VALUES (6502, 'Elmar Qasmov', 'M', 1991, 9);
INSERT INTO public.api_person VALUES (6505, 'Elmira Anuarbekovna Syzdykova', 'F', 1992, 72);
INSERT INTO public.api_person VALUES (6506, 'Elmurat Zulypkarovich Tasmuradov', 'M', 1992, 142);
INSERT INTO public.api_person VALUES (6521, 'Elvina Khaydaryanovna Karimova', 'F', 1994, 112);
INSERT INTO public.api_person VALUES (6531, 'Elza Truma (-Cauce)', 'F', 1991, 78);
INSERT INTO public.api_person VALUES (6540, 'Emanuele Birarelli', 'M', 1981, 68);
INSERT INTO public.api_person VALUES (6546, 'Emese Judit Szsz', 'F', 1983, 58);
INSERT INTO public.api_person VALUES (6567, 'Emil Hegle Svendsen', 'M', 1986, 98);
INSERT INTO public.api_person VALUES (6586, 'Emilee Cherry', 'F', 1993, 7);
INSERT INTO public.api_person VALUES (6587, 'Emilia Elisabeth Appelqvist', 'F', 1990, 123);
INSERT INTO public.api_person VALUES (6592, 'Emilie Hegh Arntzen', 'F', 1994, 98);
INSERT INTO public.api_person VALUES (6609, 'Emily Jane Diamond', 'F', 1991, 47);
INSERT INTO public.api_person VALUES (6610, 'Emily Jane Seebohm', 'F', 1992, 7);
INSERT INTO public.api_person VALUES (6613, 'Emily Overholt', 'F', 1998, 21);
INSERT INTO public.api_person VALUES (6614, 'Emily Regan', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (6621, 'Emma Aastrand Jrgensen', 'F', 1996, 32);
INSERT INTO public.api_person VALUES (6623, 'Emma Christina Wikn', 'F', 1990, 123);
INSERT INTO public.api_person VALUES (6625, 'Emma Jane Coburn', 'F', 1991, 141);
INSERT INTO public.api_person VALUES (6627, 'Emma Karolina Johansson', 'F', 1984, 123);
INSERT INTO public.api_person VALUES (6628, 'Emma Kate Tonegato', 'F', 1995, 7);
INSERT INTO public.api_person VALUES (6633, 'Emma McKeon', 'F', 1994, 7);
INSERT INTO public.api_person VALUES (6637, 'Emma Sofia Berglund', 'F', 1989, 123);
INSERT INTO public.api_person VALUES (6638, 'Emma Stina Blackstenius', 'F', 1996, 123);
INSERT INTO public.api_person VALUES (6647, 'Emmanuel Shinkut Daniel', 'M', 1994, 96);
INSERT INTO public.api_person VALUES (6648, 'Emmanuel Stockbroekx', 'M', 1994, 13);
INSERT INTO public.api_person VALUES (6661, 'English Gardner', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (6665, 'Enni Eriika  Rukajrvi', 'F', 1991, 43);
INSERT INTO public.api_person VALUES (6673, 'Enrico Garozzo', 'M', 1989, 68);
INSERT INTO public.api_person VALUES (6693, 'Enzo-Boris Lefort', 'M', 1992, 44);
INSERT INTO public.api_person VALUES (6705, 'Eri Tosaka', 'F', 1994, 71);
INSERT INTO public.api_person VALUES (6720, 'Eric Frenzel', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (6721, 'Eric Gordon Murray', 'M', 1982, 99);
INSERT INTO public.api_person VALUES (6727, 'Eric J. "E.J." Harnden', 'M', 1984, 21);
INSERT INTO public.api_person VALUES (6728, 'Eric Johannesen', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (6731, 'Eric Lamaze', 'M', 1968, 21);
INSERT INTO public.api_person VALUES (6738, 'Eric Radford', 'M', 1985, 21);
INSERT INTO public.api_person VALUES (6745, 'Erica Elizabeth Wiebe', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (6794, 'Erik Daniel Sedin', 'M', 1981, 123);
INSERT INTO public.api_person VALUES (6806, 'Erik Heil', 'M', 1990, 50);
INSERT INTO public.api_person VALUES (6815, 'Erik Jakob Silfverberg (Ekstrm-)', 'M', 1991, 123);
INSERT INTO public.api_person VALUES (6822, 'Erik Lesser', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (6824, 'Erik Marcus Svensson', 'M', 1990, 123);
INSERT INTO public.api_person VALUES (6842, 'Erik Sven-Gunnar Karlsson', 'M', 1991, 123);
INSERT INTO public.api_person VALUES (6843, 'Erik Thomas Shoji', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (6847, 'Erik Vlek', 'M', 1982, 122);
INSERT INTO public.api_person VALUES (6867, 'Erin Mullady Hamlin', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (6874, 'Erislandy Savn Cotilla', 'M', 1990, 29);
INSERT INTO public.api_person VALUES (6895, 'Erlon de Souza Silva', 'M', 1991, 18);
INSERT INTO public.api_person VALUES (7004, 'Erwann Lucien douard Le Pchoux', 'M', 1982, 44);
INSERT INTO public.api_person VALUES (7036, 'Estelle Mossely', 'F', 1993, 44);
INSERT INTO public.api_person VALUES (7037, 'Estelle Nze Minko', 'F', 1992, 44);
INSERT INTO public.api_person VALUES (7047, 'Ethan Mitchell', 'M', 1991, 99);
INSERT INTO public.api_person VALUES (7091, 'Eunice Jepkirui Kirwa', 'F', 1984, 19);
INSERT INTO public.api_person VALUES (7098, 'Eva Calvo Gmez', 'F', 1991, 38);
INSERT INTO public.api_person VALUES (7109, 'Eva Roma Maria de Goede', 'F', 1989, 94);
INSERT INTO public.api_person VALUES (7110, 'Eva Samkov', 'F', 1994, 31);
INSERT INTO public.api_person VALUES (7111, 'Eva Sofia Jakobsson', 'F', 1990, 123);
INSERT INTO public.api_person VALUES (7120, 'Evan Reese Jager', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (7122, 'Evandro Motta Guerra', 'M', 1982, 18);
INSERT INTO public.api_person VALUES (7128, 'Evania Pelite', 'F', 1995, 7);
INSERT INTO public.api_person VALUES (7129, 'Eve Muirhead', 'F', 1991, 47);
INSERT INTO public.api_person VALUES (7134, 'Evelina Raselli', 'F', 1993, 120);
INSERT INTO public.api_person VALUES (7172, 'Fabian Cancellara', 'M', 1981, 120);
INSERT INTO public.api_person VALUES (7174, 'Fabian Hambchen', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (7175, 'Fabian Riele', 'M', 1991, 50);
INSERT INTO public.api_person VALUES (7176, 'Fabian Wiede', 'M', 1994, 50);
INSERT INTO public.api_person VALUES (7181, 'Fabien Pierre Aurlien Dominique Gilot', 'M', 1984, 44);
INSERT INTO public.api_person VALUES (7186, 'Fabio Basile', 'M', 1995, 68);
INSERT INTO public.api_person VALUES (7201, 'Facundo Callioni', 'M', 1986, 5);
INSERT INTO public.api_person VALUES (7205, 'Faith Chepngetich Kibiegon', 'F', 1994, 73);
INSERT INTO public.api_person VALUES (7214, 'Fan Kexin', 'F', 1994, 23);
INSERT INTO public.api_person VALUES (7215, 'Fan Yilin', 'F', 2000, 23);
INSERT INTO public.api_person VALUES (7223, 'Fanny Welle-Strand Horn (-Birkeland)', 'F', 1989, 98);
INSERT INTO public.api_person VALUES (7228, 'Farkhad Ibragimovich Kharki', 'M', 1991, 72);
INSERT INTO public.api_person VALUES (7241, 'Fazliddin Khasanbayevich Gaybnazarov', 'M', 1991, 142);
INSERT INTO public.api_person VALUES (7244, 'Federica Radicchi', 'F', 1989, 68);
INSERT INTO public.api_person VALUES (7251, 'Fehaid Al-Deehani', 'M', 1967, 61);
INSERT INTO public.api_person VALUES (7257, 'Felipe Almeida Wu', 'M', 1992, 18);
INSERT INTO public.api_person VALUES (7258, 'Felipe Anderson Perieira Gomes', 'M', 1993, 18);
INSERT INTO public.api_person VALUES (7261, 'Felipe Reyes Cabaas', 'M', 1980, 38);
INSERT INTO public.api_person VALUES (7263, 'Felix Denayer', 'M', 1990, 13);
INSERT INTO public.api_person VALUES (7264, 'Felix Drahotta', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (7269, 'Felix Loch', 'M', 1990, 50);
INSERT INTO public.api_person VALUES (7274, 'Feng Shanshan', 'F', 1990, 23);
INSERT INTO public.api_person VALUES (7367, 'Ferry Weertman', 'M', 1992, 94);
INSERT INTO public.api_person VALUES (7368, 'Feyisa Lilesa', 'M', 1990, 40);
INSERT INTO public.api_person VALUES (7378, 'Filip Filipovi', 'M', 1987, 117);
INSERT INTO public.api_person VALUES (7379, 'Filip Hrgovi', 'M', 1992, 28);
INSERT INTO public.api_person VALUES (7386, 'Filippo Lanza', 'M', 1991, 68);
INSERT INTO public.api_person VALUES (7397, 'Finn Lemke', 'M', 1992, 50);
INSERT INTO public.api_person VALUES (7402, 'Fiona Clare Bigwood', 'F', 1976, 47);
INSERT INTO public.api_person VALUES (7411, 'Fitzroy Junior Dunkley', 'M', 1993, 69);
INSERT INTO public.api_person VALUES (7443, 'Florence Schelling', 'F', 1990, 120);
INSERT INTO public.api_person VALUES (7446, 'Florent Manaudou', 'M', 1991, 44);
INSERT INTO public.api_person VALUES (7447, 'Florent Van Aubel', 'M', 1992, 13);
INSERT INTO public.api_person VALUES (7449, 'Florian Fuchs', 'M', 1992, 50);
INSERT INTO public.api_person VALUES (7460, 'Florin Mergea', 'M', 1985, 110);
INSERT INTO public.api_person VALUES (7477, 'Foluke Antinuke Akinradewo', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (7487, 'Francena Lynette McCorory', 'F', 1989, 141);
INSERT INTO public.api_person VALUES (7492, 'Frances Julia Houghton', 'F', 1981, 47);
INSERT INTO public.api_person VALUES (7495, 'Francesca Dallap', 'F', 1986, 68);
INSERT INTO public.api_person VALUES (7496, 'Francesca Pomeri', 'F', 1993, 68);
INSERT INTO public.api_person VALUES (7509, 'Francesco Di Fulvio', 'M', 1994, 68);
INSERT INTO public.api_person VALUES (7522, 'Francine Niyonsaba', 'F', 1993, 12);
INSERT INTO public.api_person VALUES (7558, 'Francis Townley Haas', 'M', 1997, 141);
INSERT INTO public.api_person VALUES (7603, 'Franck Robert Bernard Solforosi', 'M', 1985, 44);
INSERT INTO public.api_person VALUES (7642, 'Frank Chamizo Marquez', 'M', 1992, 68);
INSERT INTO public.api_person VALUES (7750, 'Franois Hougaard', 'M', 1988, 111);
INSERT INTO public.api_person VALUES (7755, 'Franois Pervis', 'M', 1985, 44);
INSERT INTO public.api_person VALUES (7824, 'Franzisca Hauke', 'F', 1990, 50);
INSERT INTO public.api_person VALUES (7829, 'Franziska Weber', 'F', 1989, 50);
INSERT INTO public.api_person VALUES (7940, 'Frederik Rodenberg Madsen', 'M', 1998, 32);
INSERT INTO public.api_person VALUES (7957, 'Frentorish "Tori" Bowie', 'F', 1991, 141);
INSERT INTO public.api_person VALUES (7961, 'Fridolina Rolf', 'F', 1994, 123);
INSERT INTO public.api_person VALUES (8031, 'Fu Haifeng', 'M', 1984, 23);
INSERT INTO public.api_person VALUES (8033, 'Fu Yuanhui', 'F', 1996, 23);
INSERT INTO public.api_person VALUES (8040, 'Fyodor Aleksandrovich Klimov', 'M', 1991, 112);
INSERT INTO public.api_person VALUES (8053, 'Gabriel Barbosa Almeida', 'M', 1997, 18);
INSERT INTO public.api_person VALUES (8059, 'Gabriel Fernando de Jesus', 'M', 1997, 18);
INSERT INTO public.api_person VALUES (8061, 'Gabriel Ingemar John Landeskog', 'M', 1993, 123);
INSERT INTO public.api_person VALUES (8076, 'Gabriela Soukalov (-Koukalov)', 'F', 1990, 31);
INSERT INTO public.api_person VALUES (8086, 'Gabriele Detti', 'M', 1995, 68);
INSERT INTO public.api_person VALUES (8093, 'Gabriele Rossetti', 'M', 1995, 68);
INSERT INTO public.api_person VALUES (8100, 'Gabriella Timea Szab', 'F', 1987, 58);
INSERT INTO public.api_person VALUES (8101, 'Gabrielle Christina Victoria "Gabby" Douglas', 'F', 1996, 141);
INSERT INTO public.api_person VALUES (8116, 'Galen Rupp', 'M', 1986, 141);
INSERT INTO public.api_person VALUES (8157, 'Gao Lei', 'M', 1992, 23);
INSERT INTO public.api_person VALUES (8188, 'Gary O''Donovan', 'M', 1993, 63);
INSERT INTO public.api_person VALUES (8217, 'gatha Bednarczuk Rippel', 'F', 1983, 18);
INSERT INTO public.api_person VALUES (8218, 'Gauthier Boccard', 'M', 1992, 13);
INSERT INTO public.api_person VALUES (8219, 'Gauthier Grumier', 'M', 1984, 44);
INSERT INTO public.api_person VALUES (8220, 'Gauthier Klauss', 'M', 1988, 44);
INSERT INTO public.api_person VALUES (8229, 'Gayle Broughton', 'F', 1996, 99);
INSERT INTO public.api_person VALUES (8234, 'Gbor Gyula Boczk', 'M', 1977, 58);
INSERT INTO public.api_person VALUES (8250, 'Gelena Dmitriyevna Topilina', 'F', 1994, 112);
INSERT INTO public.api_person VALUES (8257, 'Gemma Etheridge', 'F', 1987, 7);
INSERT INTO public.api_person VALUES (8260, 'Genevieve "Gen" Behrent', 'F', 1991, 99);
INSERT INTO public.api_person VALUES (8261, 'Genevra "Gevvie" Stone', 'F', 1985, 141);
INSERT INTO public.api_person VALUES (8283, 'Geno Petriashvili', 'M', 1994, 49);
INSERT INTO public.api_person VALUES (8286, 'Genzebe Dibaba Keneni', 'F', 1991, 40);
INSERT INTO public.api_person VALUES (8351, 'George Christopher Nash', 'M', 1990, 47);
INSERT INTO public.api_person VALUES (8531, 'Georgia Simmerling', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (8537, 'Georgina Sophie "Georgie" Twigg', 'F', 1991, 47);
INSERT INTO public.api_person VALUES (8582, 'Geraldina Rachel "Dina" Asher-Smith', 'F', 1996, 47);
INSERT INTO public.api_person VALUES (8610, 'Gerek Lin Meinhardt', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (8647, 'Germn Sal Snchez Snchez', 'M', 1992, 86);
INSERT INTO public.api_person VALUES (8669, 'Ghasem Gholamreza Rezaei', 'M', 1986, 62);
INSERT INTO public.api_person VALUES (8683, 'Ghislaine Landry', 'F', 1988, 21);
INSERT INTO public.api_person VALUES (8731, 'Gil Roberts', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (8745, 'Giles Lyndon Scott', 'M', 1987, 47);
INSERT INTO public.api_person VALUES (8762, 'Gillian Mary Apps', 'F', 1984, 21);
INSERT INTO public.api_person VALUES (8814, 'Giovanni Abagnale', 'M', 1995, 68);
INSERT INTO public.api_person VALUES (8839, 'Giovanni Pellielo', 'M', 1970, 68);
INSERT INTO public.api_person VALUES (8858, 'Giselle Anne Ansley', 'F', 1992, 47);
INSERT INTO public.api_person VALUES (8859, 'Gisle Marie "Gigi" Marvin', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (8863, 'Giulia Enrica Emmolo', 'F', 1992, 68);
INSERT INTO public.api_person VALUES (8864, 'Giulia Gorlero', 'F', 1991, 68);
INSERT INTO public.api_person VALUES (8866, 'Giulia Steingruber', 'F', 1994, 120);
INSERT INTO public.api_person VALUES (8906, 'Giuseppe Vicino', 'M', 1993, 68);
INSERT INTO public.api_person VALUES (8950, 'Gnonsiane Niombla', 'F', 1990, 44);
INSERT INTO public.api_person VALUES (8984, 'Goh Liu Ying', 'F', 1989, 84);
INSERT INTO public.api_person VALUES (8985, 'Goh V Shem', 'M', 1989, 84);
INSERT INTO public.api_person VALUES (8986, 'Gojko Pijetlovi', 'M', 1984, 117);
INSERT INTO public.api_person VALUES (8987, 'Gong Jinjie', 'F', 1987, 23);
INSERT INTO public.api_person VALUES (8989, 'Gong Sang-Jeong', 'F', 1997, 75);
INSERT INTO public.api_person VALUES (8990, 'Gong Xiangyu', 'F', 1997, 23);
INSERT INTO public.api_person VALUES (8993, 'Gonzalo Peillat', 'M', 1993, 5);
INSERT INTO public.api_person VALUES (8994, 'Gor Minasyan', 'M', 1995, 6);
INSERT INTO public.api_person VALUES (9041, 'Grace Elizabeth "Gracie" Gold', 'F', 1996, 141);
INSERT INTO public.api_person VALUES (9080, 'Grce Zaadi Deuna', 'F', 1993, 44);
INSERT INTO public.api_person VALUES (9081, 'Greg Drummond', 'M', 1989, 47);
INSERT INTO public.api_person VALUES (9082, 'Greg Van Avermaet', 'M', 1985, 13);
INSERT INTO public.api_person VALUES (9086, 'Gregor Schlierenzauer', 'M', 1990, 8);
INSERT INTO public.api_person VALUES (9088, 'Gregorio Paltrinieri', 'M', 1995, 68);
INSERT INTO public.api_person VALUES (9102, 'Gregory James "Greg" Rutherford', 'M', 1987, 47);
INSERT INTO public.api_person VALUES (9121, 'Grgory Benot Baug', 'M', 1985, 44);
INSERT INTO public.api_person VALUES (9133, 'Grischa Prmel', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (9163, 'Gu Xiao', 'F', 1993, 23);
INSERT INTO public.api_person VALUES (9197, 'Guillaume Louis  Benoit Raineau', 'M', 1986, 44);
INSERT INTO public.api_person VALUES (9204, 'Guillermo Gustavo "Willy" Hernangmez Geuer', 'M', 1994, 38);
INSERT INTO public.api_person VALUES (9241, 'Guo Li', 'F', 1993, 23);
INSERT INTO public.api_person VALUES (9293, 'Gustav Bo Nils Nyquist', 'M', 1990, 123);
INSERT INTO public.api_person VALUES (9334, 'Guy Olivier Nyokas', 'M', 1986, 44);
INSERT INTO public.api_person VALUES (9341, 'Gwak Dong-Han', 'M', 1992, 75);
INSERT INTO public.api_person VALUES (9343, 'Gwen Rosemary Jorgensen (-Lemieux)', 'F', 1986, 141);
INSERT INTO public.api_person VALUES (9391, 'Gyuzel Tagirovna Manyurova', 'F', 1978, 72);
INSERT INTO public.api_person VALUES (9397, 'Gza Imre', 'M', 1975, 58);
INSERT INTO public.api_person VALUES (9416, 'Haby Niar', 'F', 1993, 44);
INSERT INTO public.api_person VALUES (9417, 'Hac liyev', 'M', 1991, 9);
INSERT INTO public.api_person VALUES (9422, 'Hagos Gebrhiwet Berhe', 'M', 1994, 40);
INSERT INTO public.api_person VALUES (9431, 'Haley Lyn Irwin', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (9458, 'Hamish Byron Bond', 'M', 1986, 99);
INSERT INTO public.api_person VALUES (9474, 'Han Tianyu', 'M', 1997, 23);
INSERT INTO public.api_person VALUES (9491, 'Hanna Serhivna Rizatdinova', 'F', 1993, 138);
INSERT INTO public.api_person VALUES (9495, 'Hannah Angela Kearney', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (9496, 'Hannah Darling', 'F', 1996, 21);
INSERT INTO public.api_person VALUES (9498, 'Hannah Krger', 'F', 1989, 50);
INSERT INTO public.api_person VALUES (9500, 'Hannah Louise Macleod', 'F', 1984, 47);
INSERT INTO public.api_person VALUES (9501, 'Hannah Louise Mills', 'F', 1988, 47);
INSERT INTO public.api_person VALUES (9515, 'Hannes Ocik', 'M', 1991, 50);
INSERT INTO public.api_person VALUES (9549, 'Hans Daniel Alfredsson', 'M', 1973, 123);
INSERT INTO public.api_person VALUES (9571, 'Hans Gruhne', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (9612, 'Hans Niklas Kronwall', 'M', 1981, 123);
INSERT INTO public.api_person VALUES (9697, 'Hao Jialu', 'F', 1988, 23);
INSERT INTO public.api_person VALUES (9804, 'Harrison Bryce Jordan Barnes', 'M', 1992, 141);
INSERT INTO public.api_person VALUES (9858, 'Haruka Tachimoto', 'F', 1990, 71);
INSERT INTO public.api_person VALUES (9867, 'Hasanboy Dusmatov', 'M', 1993, 142);
INSERT INTO public.api_person VALUES (9871, 'Hassan Aliazam Yazdanicharati', 'M', 1995, 62);
INSERT INTO public.api_person VALUES (9872, 'Hassan Sabzali Rahimi', 'M', 1989, 62);
INSERT INTO public.api_person VALUES (9884, 'Hayley Marie Wickenheiser', 'F', 1979, 21);
INSERT INTO public.api_person VALUES (9914, 'He Zi', 'F', 1991, 23);
INSERT INTO public.api_person VALUES (9924, 'Heather Mary Stanning', 'F', 1985, 47);
INSERT INTO public.api_person VALUES (9925, 'Heather Moyse', 'F', 1979, 21);
INSERT INTO public.api_person VALUES (9934, 'Hedaya Ahmad Malak Wahba', 'F', 1993, 36);
INSERT INTO public.api_person VALUES (9936, 'Hedvig Lrke Berg Rasmussen', 'F', 1994, 32);
INSERT INTO public.api_person VALUES (9946, 'Heidi Diethelm Gerber', 'F', 1969, 120);
INSERT INTO public.api_person VALUES (9948, 'Heidi Lke', 'F', 1983, 98);
INSERT INTO public.api_person VALUES (9955, 'Heidi Weng', 'F', 1992, 98);
INSERT INTO public.api_person VALUES (10039, 'Helen Louise Maroulis', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (10044, 'Helen Rachel M. Glover', 'F', 1986, 47);
INSERT INTO public.api_person VALUES (10047, 'Helen Richardson-Walsh', 'F', 1982, 47);
INSERT INTO public.api_person VALUES (10080, 'Hellen Onsando Obiri', 'F', 1990, 73);
INSERT INTO public.api_person VALUES (10124, 'Hendrik Pekeler', 'M', 1991, 50);
INSERT INTO public.api_person VALUES (10181, 'Henri Junghnel', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (10206, 'Henri Schoeman', 'M', 1992, 111);
INSERT INTO public.api_person VALUES (10227, 'Henrik Kristoffersen', 'M', 1995, 98);
INSERT INTO public.api_person VALUES (10229, 'Henrik Mllgaard Jensen', 'M', 1985, 32);
INSERT INTO public.api_person VALUES (10230, 'Henrik Olof Stenson', 'M', 1976, 123);
INSERT INTO public.api_person VALUES (10235, 'Henrik Toft Hansen', 'M', 1987, 32);
INSERT INTO public.api_person VALUES (10458, 'Hidilyn Diaz', 'F', 1991, 104);
INSERT INTO public.api_person VALUES (10459, 'Hilary Atwood Knight', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (10460, 'Hilary Caldwell', 'F', 1991, 21);
INSERT INTO public.api_person VALUES (10492, 'Hiromi Miyake', 'F', 1986, 71);
INSERT INTO public.api_person VALUES (10495, 'Hirooki Arai', 'M', 1988, 71);
INSERT INTO public.api_person VALUES (10518, 'Hisayoshi Harasawa', 'M', 1992, 71);
INSERT INTO public.api_person VALUES (10542, 'Hlne Defrance', 'F', 1987, 44);
INSERT INTO public.api_person VALUES (10556, 'Hollie Webb', 'F', 1991, 47);
INSERT INTO public.api_person VALUES (10568, 'Hong Xun Vinh', 'M', 1975, 144);
INSERT INTO public.api_person VALUES (10582, 'Horia Tecu', 'M', 1985, 110);
INSERT INTO public.api_person VALUES (10621, 'Hristiana Todorova', 'F', 1995, 20);
INSERT INTO public.api_person VALUES (10629, 'Hsu Shu-Ching', 'F', 1991, 131);
INSERT INTO public.api_person VALUES (10632, 'Hu Jianguan', 'M', 1993, 23);
INSERT INTO public.api_person VALUES (10647, 'Huang Wenyi', 'F', 1991, 23);
INSERT INTO public.api_person VALUES (10650, 'Huang Xuechen', 'F', 1990, 23);
INSERT INTO public.api_person VALUES (10707, 'Hui Ruoqi', 'F', 1991, 23);
INSERT INTO public.api_person VALUES (10714, 'Huriana Manuel', 'F', 1987, 99);
INSERT INTO public.api_person VALUES (10718, 'Hvard Klemetsen', 'M', 1979, 98);
INSERT INTO public.api_person VALUES (10733, 'Hyland DeAndre Jordan, Jr.', 'M', 1988, 141);
INSERT INTO public.api_person VALUES (10735, 'Hyvin Kiyeng Jepkemoi', 'F', 1992, 73);
INSERT INTO public.api_person VALUES (10738, 'Iain Jensen', 'M', 1988, 7);
INSERT INTO public.api_person VALUES (10769, 'Ibragim Magomed-Saidovich Saidov', 'M', 1985, 15);
INSERT INTO public.api_person VALUES (10779, 'Ibtihaj Muhammad', 'F', 1986, 141);
INSERT INTO public.api_person VALUES (10781, 'Ida Alstad', 'F', 1985, 98);
INSERT INTO public.api_person VALUES (10784, 'Ida Maria Erika Ingemarsdotter', 'F', 1986, 123);
INSERT INTO public.api_person VALUES (10786, 'Idalys Ortz Bocourt', 'F', 1990, 29);
INSERT INTO public.api_person VALUES (10795, 'Ignacio Ortz', 'M', 1987, 5);
INSERT INTO public.api_person VALUES (10826, 'Igor Mareni', 'M', 1986, 28);
INSERT INTO public.api_person VALUES (10867, 'Iivo Henrik Niskanen', 'M', 1992, 43);
INSERT INTO public.api_person VALUES (10870, 'Ikhtiyor Karimovich Navruzov', 'M', 1989, 142);
INSERT INTO public.api_person VALUES (10913, 'Ilse Paulis', 'F', 1993, 94);
INSERT INTO public.api_person VALUES (10920, 'Ilya Anatolyevich Shtokalov', 'M', 1987, 112);
INSERT INTO public.api_person VALUES (10921, 'Ilya Grigoryevich Chernousov', 'M', 1987, 112);
INSERT INTO public.api_person VALUES (10941, 'ime Fantela', 'M', 1986, 28);
INSERT INTO public.api_person VALUES (10945, 'Imoh Ezekiel', 'M', 1994, 96);
INSERT INTO public.api_person VALUES (10988, 'Inge Janssen', 'F', 1989, 94);
INSERT INTO public.api_person VALUES (11022, 'Ingrid Klimke (-Busacker)', 'F', 1968, 50);
INSERT INTO public.api_person VALUES (11031, 'Ingrit Lorena Valencia Victoria', 'F', 1989, 26);
INSERT INTO public.api_person VALUES (11035, 'Ingvild Flugstad stberg', 'F', 1991, 98);
INSERT INTO public.api_person VALUES (11041, 'Inna Vasilyevna Deriglazova', 'F', 1990, 112);
INSERT INTO public.api_person VALUES (11043, 'Inna Volodymyrivna Osypenko-Radomska', 'F', 1983, 9);
INSERT INTO public.api_person VALUES (11044, 'Inna Yakovlevna Stepanova', 'F', 1990, 112);
INSERT INTO public.api_person VALUES (11049, 'Ins Boubakri', 'F', 1989, 133);
INSERT INTO public.api_person VALUES (11060, 'Ioana Strungaru (Crciun-)', 'F', 1989, 110);
INSERT INTO public.api_person VALUES (11114, 'Iouri Aleksandrovich Podladtchikov', 'M', 1989, 120);
INSERT INTO public.api_person VALUES (11120, 'Irak''li Turmanidze', 'M', 1985, 49);
INSERT INTO public.api_person VALUES (11128, 'Irene Karlijn "Ireen" Wst', 'F', 1987, 94);
INSERT INTO public.api_person VALUES (11167, 'Irina Valeryevna Bliznova', 'F', 1987, 112);
INSERT INTO public.api_person VALUES (11215, 'Isabel Kerschowski', 'F', 1988, 50);
INSERT INTO public.api_person VALUES (11230, 'Isabelle Regina Werth', 'F', 1970, 50);
INSERT INTO public.api_person VALUES (11238, 'Isaquias Queiroz dos Santos', 'M', 1994, 18);
INSERT INTO public.api_person VALUES (11241, 'Isidoro Ibarra', 'M', 1993, 5);
INSERT INTO public.api_person VALUES (11247, 'Ismael Borrero Molina', 'M', 1992, 29);
INSERT INTO public.api_person VALUES (11248, 'Ismael Marcelo Hernndez Uscanga', 'M', 1990, 86);
INSERT INTO public.api_person VALUES (11310, 'Iuliana Popa', 'F', 1996, 110);
INSERT INTO public.api_person VALUES (11318, 'Ivan Alekseyevich Stretovich', 'M', 1997, 112);
INSERT INTO public.api_person VALUES (11326, 'Ivan Fyodorovich Dychko', 'M', 1991, 72);
INSERT INTO public.api_person VALUES (11329, 'Ivan Grigoryevich Tikhon', 'M', 1976, 15);
INSERT INTO public.api_person VALUES (11341, 'Ivan Krapi', 'M', 1989, 28);
INSERT INTO public.api_person VALUES (11358, 'Ivan Perrillat Boiteux', 'M', 1986, 44);
INSERT INTO public.api_person VALUES (11376, 'Ivan Zaytsev', 'M', 1989, 68);
INSERT INTO public.api_person VALUES (11378, 'Ivana panovi', 'F', 1990, 117);
INSERT INTO public.api_person VALUES (11399, 'Ivica Kosteli', 'M', 1980, 28);
INSERT INTO public.api_person VALUES (11401, 'ivko Goci', 'M', 1983, 117);
INSERT INTO public.api_person VALUES (11435, 'Ja Dong-Min', 'M', 1987, 75);
INSERT INTO public.api_person VALUES (11451, 'Jack Bobridge', 'M', 1989, 7);
INSERT INTO public.api_person VALUES (11454, 'Jack David Laugher', 'M', 1995, 47);
INSERT INTO public.api_person VALUES (11463, 'Jack Sock', 'M', 1993, 141);
INSERT INTO public.api_person VALUES (11485, 'Jacob Jepsen Barse', 'M', 1989, 32);
INSERT INTO public.api_person VALUES (11486, 'Jacob Jorrit Bergsma', 'M', 1986, 94);
INSERT INTO public.api_person VALUES (11490, 'Jacob Robert "Jake" Linde-Kaminski ', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (11491, 'Jacob Sgaard Larsen', 'M', 1988, 32);
INSERT INTO public.api_person VALUES (11505, 'Jacqueline "Jackie" Galloway', 'F', 1996, 141);
INSERT INTO public.api_person VALUES (11546, 'Jade Louise Jones', 'F', 1993, 47);
INSERT INTO public.api_person VALUES (11564, 'Jake Packard', 'M', 1994, 7);
INSERT INTO public.api_person VALUES (11567, 'Jakob Diemer Fuglsang', 'M', 1985, 32);
INSERT INTO public.api_person VALUES (11591, 'James "Jimmy" Feigen', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (11627, 'James Davies', 'M', 1991, 47);
INSERT INTO public.api_person VALUES (11662, 'James George Guy', 'M', 1996, 47);
INSERT INTO public.api_person VALUES (11691, 'James Magnussen', 'M', 1991, 7);
INSERT INTO public.api_person VALUES (11695, 'James McRae', 'M', 1987, 7);
INSERT INTO public.api_person VALUES (11712, 'James Randolph "Jamie" Benn', 'M', 1990, 21);
INSERT INTO public.api_person VALUES (11722, 'James Roberts', 'M', 1991, 7);
INSERT INTO public.api_person VALUES (11723, 'James Rodwell', 'M', 1985, 47);
INSERT INTO public.api_person VALUES (11757, 'Jamie Greubel (-Poser)', 'F', 1984, 141);
INSERT INTO public.api_person VALUES (11759, 'Jamie Louise Anderson', 'F', 1991, 141);
INSERT INTO public.api_person VALUES (11772, 'Jan Blokhuijsen', 'M', 1990, 94);
INSERT INTO public.api_person VALUES (11811, 'Jan Hudec', 'M', 1982, 21);
INSERT INTO public.api_person VALUES (11831, 'Jan Marek Szymaski', 'M', 1990, 105);
INSERT INTO public.api_person VALUES (11835, 'Jan Olof Daniel Richardsson', 'M', 1983, 123);
INSERT INTO public.api_person VALUES (11850, 'Jan trba', 'M', 1981, 31);
INSERT INTO public.api_person VALUES (11856, 'Jan Vandrey', 'M', 1992, 50);
INSERT INTO public.api_person VALUES (11868, 'Jana Teschke', 'F', 1991, 50);
INSERT INTO public.api_person VALUES (11924, 'Janine Elizabeth Beckie', 'F', 1995, 21);
INSERT INTO public.api_person VALUES (11935, 'Janne Mller-Wieland', 'F', 1987, 50);
INSERT INTO public.api_person VALUES (11939, 'Jannick Green Krejberg', 'M', 1989, 32);
INSERT INTO public.api_person VALUES (11959, 'Jared Tallent', 'M', 1985, 7);
INSERT INTO public.api_person VALUES (11967, 'Jarkko Immonen', 'M', 1983, 43);
INSERT INTO public.api_person VALUES (11987, 'Jaroslav Kulhav', 'M', 1985, 31);
INSERT INTO public.api_person VALUES (11992, 'Jaroslav Soukup', 'M', 1983, 31);
INSERT INTO public.api_person VALUES (12001, 'Jasa Veremalua', 'M', 1988, 42);
INSERT INTO public.api_person VALUES (12003, 'Jasmin Glaesser', 'F', 1992, 21);
INSERT INTO public.api_person VALUES (12011, 'Jason Brown', 'M', 1995, 141);
INSERT INTO public.api_person VALUES (12014, 'Jason Francis Kenny', 'M', 1988, 47);
INSERT INTO public.api_person VALUES (12030, 'Jason Waterhouse', 'M', 1992, 7);
INSERT INTO public.api_person VALUES (12049, 'Javon Francis', 'M', 1995, 69);
INSERT INTO public.api_person VALUES (12051, 'Jay Daniel Bouwmeester', 'M', 1984, 21);
INSERT INTO public.api_person VALUES (12059, 'Jayna Hefford', 'F', 1978, 21);
INSERT INTO public.api_person VALUES (12062, 'Jazmin Roxy "Jazz" Carlin', 'F', 1991, 47);
INSERT INTO public.api_person VALUES (12063, 'J''den Michael Tbory Cox', 'M', 1995, 141);
INSERT INTO public.api_person VALUES (12115, 'Jean Quiquampoix', 'M', 1996, 44);
INSERT INTO public.api_person VALUES (12135, 'Jean-Charles Valladont', 'M', 1989, 44);
INSERT INTO public.api_person VALUES (12154, 'Jeanette Ottesen Gray', 'F', 1988, 32);
INSERT INTO public.api_person VALUES (12159, 'Jean-Frdric Chapuis', 'M', 1990, 44);
INSERT INTO public.api_person VALUES (12160, 'Jean-Guillaume Batrix', 'M', 1989, 44);
INSERT INTO public.api_person VALUES (12169, 'Jean-Marc Gaillard', 'M', 1981, 44);
INSERT INTO public.api_person VALUES (12172, 'Jean-Michel Lucenay', 'M', 1978, 44);
INSERT INTO public.api_person VALUES (12186, 'Jean-Paul Tony Helissey', 'M', 1990, 44);
INSERT INTO public.api_person VALUES (12205, 'Jeffrey "Jeff" Henderson', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (12217, 'Jeffrey J. "Jeff" Carter', 'M', 1985, 21);
INSERT INTO public.api_person VALUES (12224, 'Jelena Milovanovi', 'F', 1989, 117);
INSERT INTO public.api_person VALUES (12225, 'Jelena Nikoli', 'F', 1982, 117);
INSERT INTO public.api_person VALUES (12228, 'Jelle van Gorkom', 'M', 1991, 94);
INSERT INTO public.api_person VALUES (12229, 'Jemima Jelagat Sumgong', 'F', 1985, 73);
INSERT INTO public.api_person VALUES (12238, 'Jena Mai Hansen', 'F', 1989, 32);
INSERT INTO public.api_person VALUES (12249, 'Jennifer "Jen" Kish', 'F', 1988, 21);
INSERT INTO public.api_person VALUES (12257, 'Jennifer Dorothy June "Jenn" Wakefield', 'F', 1990, 21);
INSERT INTO public.api_person VALUES (12269, 'Jennifer Judith Jones', 'F', 1975, 21);
INSERT INTO public.api_person VALUES (12279, 'Jennifer Mae "Jenny" Barringer-Simpson', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (12281, 'Jennifer Marie "Jenny" Jones', 'F', 1981, 47);
INSERT INTO public.api_person VALUES (12283, 'Jennifer Valente', 'F', 1995, 141);
INSERT INTO public.api_person VALUES (12290, 'Jenny Rissveds', 'F', 1994, 123);
INSERT INTO public.api_person VALUES (12331, 'Jeong Bo-Kyeong', 'F', 1991, 75);
INSERT INTO public.api_person VALUES (12337, 'Jeong Gyeong-Eun', 'F', 1990, 75);
INSERT INTO public.api_person VALUES (12361, 'Jeremy Abbott', 'M', 1986, 141);
INSERT INTO public.api_person VALUES (12369, 'Jeremy Toljan', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (12402, 'Jesper Nddesbo', 'M', 1981, 32);
INSERT INTO public.api_person VALUES (12422, 'Jessica Ann "Jessie" Vetter', 'F', 1986, 141);
INSERT INTO public.api_person VALUES (12423, 'Jessica Ashwood', 'F', 1993, 7);
INSERT INTO public.api_person VALUES (12424, 'Jessica Esther "Jess" Fox', 'F', 1994, 7);
INSERT INTO public.api_person VALUES (12425, 'Jessica Eva Katarina Samuelsson', 'F', 1992, 123);
INSERT INTO public.api_person VALUES (12427, 'Jessica Hewitt', 'F', 1987, 21);
INSERT INTO public.api_person VALUES (12428, 'Jessica Jane "Jess" Eddie', 'F', 1985, 47);
INSERT INTO public.api_person VALUES (12429, 'Jessica Lutz', 'F', 1990, 120);
INSERT INTO public.api_person VALUES (12433, 'Jessica Phyllis Ennis-Hill', 'F', 1986, 47);
INSERT INTO public.api_person VALUES (12436, 'Jessie Alexandra Fleming', 'F', 1998, 21);
INSERT INTO public.api_person VALUES (12442, 'Jevaughn Minzie', 'M', 1995, 69);
INSERT INTO public.api_person VALUES (12472, 'Ji Prskavec', 'M', 1993, 31);
INSERT INTO public.api_person VALUES (12482, 'Jia Zongyang', 'M', 1992, 23);
INSERT INTO public.api_person VALUES (12503, 'Jill Officer Hinchey', 'F', 1976, 21);
INSERT INTO public.api_person VALUES (12510, 'Jimmy Butler III', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (12514, 'Jin Jong-O', 'M', 1980, 75);
INSERT INTO public.api_person VALUES (12539, 'Jnis Strenga', 'M', 1986, 78);
INSERT INTO public.api_person VALUES (12561, 'Jo Hae-Ri', 'F', 1987, 75);
INSERT INTO public.api_person VALUES (12567, 'Jo Qesem Ayela Aleh', 'F', 1986, 99);
INSERT INTO public.api_person VALUES (12591, 'Joahnys Oscar Argilagos Prez', 'M', 1997, 29);
INSERT INTO public.api_person VALUES (12604, 'Joanna Katie Rowsell Shand', 'F', 1989, 47);
INSERT INTO public.api_person VALUES (12605, 'Joanna Leszczyska', 'F', 1989, 105);
INSERT INTO public.api_person VALUES (12620, 'Joaqun Menini', 'M', 1992, 5);
INSERT INTO public.api_person VALUES (12628, 'Jocelyne Dawn Marie Larocque', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (12629, 'Jocelyne Nicole Lamoureux', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (12647, 'Joel Gonzlez Bonilla', 'M', 1990, 38);
INSERT INTO public.api_person VALUES (12657, 'Johan Arne Olsson', 'M', 1981, 123);
INSERT INTO public.api_person VALUES (12696, 'Johan Niklas Edin', 'M', 1986, 123);
INSERT INTO public.api_person VALUES (12738, 'Johannes Adrianus Albertus "Jan" Smeekens', 'M', 1988, 94);
INSERT INTO public.api_person VALUES (12768, 'Johannes Rydzek', 'M', 1992, 50);
INSERT INTO public.api_person VALUES (12778, 'John "Jack" Conger', 'M', 1995, 141);
INSERT INTO public.api_person VALUES (13025, 'John Michael Nchekwube Obinna "John Mikel Obi" Mikel', 'M', 1987, 96);
INSERT INTO public.api_person VALUES (13071, 'John Robert "J. R." Celski', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (13096, 'John Tavares', 'M', 1991, 21);
INSERT INTO public.api_person VALUES (13132, 'John-John Dohmen', 'M', 1988, 13);
INSERT INTO public.api_person VALUES (13147, 'Jolien D''hoore', 'F', 1990, 13);
INSERT INTO public.api_person VALUES (13175, 'Jonathan Bryan Toews', 'M', 1989, 21);
INSERT INTO public.api_person VALUES (13176, 'Jonathan Callum "Jonny" Brownlee', 'M', 1990, 47);
INSERT INTO public.api_person VALUES (13186, 'Jonathan Michael "Jon" Schofield', 'M', 1985, 47);
INSERT INTO public.api_person VALUES (13187, 'Jonathan Midol', 'M', 1988, 44);
INSERT INTO public.api_person VALUES (13202, 'Jonna Andersson', 'F', 1993, 123);
INSERT INTO public.api_person VALUES (13212, 'Jordan Malone', 'M', 1985, 141);
INSERT INTO public.api_person VALUES (13213, 'Jordan Quinn Larson-Burbach', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (13242, 'Jori Jonatan Lehter', 'M', 1988, 43);
INSERT INTO public.api_person VALUES (13243, 'Jorien ter Mors', 'F', 1990, 94);
INSERT INTO public.api_person VALUES (13260, 'Jos Carlos Cracco Neto', 'M', 1994, 18);
INSERT INTO public.api_person VALUES (13285, 'Jos Manuel Caldern Borrallo', 'M', 1982, 38);
INSERT INTO public.api_person VALUES (13323, 'Jose Blanger', 'F', 1986, 21);
INSERT INTO public.api_person VALUES (13335, 'Josef Dostl', 'M', 1993, 31);
INSERT INTO public.api_person VALUES (13385, 'Joseph "Gunnar" Bentz', 'M', 1996, 141);
INSERT INTO public.api_person VALUES (13389, 'Joseph "Joe" Clarke', 'M', 1993, 47);
INSERT INTO public.api_person VALUES (13394, 'Joseph "Joe" Joyce', 'M', 1986, 47);
INSERT INTO public.api_person VALUES (13449, 'Joseph Isaac Schooling', 'M', 1995, 115);
INSERT INTO public.api_person VALUES (13465, 'Joseph Mathias "Joe" Kovacs', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (13499, 'Josephine Henning', 'F', 1990, 50);
INSERT INTO public.api_person VALUES (13501, 'Josephine Pucci', 'F', 1991, 141);
INSERT INTO public.api_person VALUES (13504, 'Josh Prenot', 'M', 1993, 141);
INSERT INTO public.api_person VALUES (13505, 'Joshua "Josh" Booth', 'M', 1991, 7);
INSERT INTO public.api_person VALUES (13508, 'Joshua Buatsi', 'M', 1993, 47);
INSERT INTO public.api_person VALUES (13511, 'Joshua Dunkley-Smith', 'M', 1989, 7);
INSERT INTO public.api_person VALUES (13519, 'Josip Glasnovi', 'M', 1983, 28);
INSERT INTO public.api_person VALUES (13521, 'Josip Pavi', 'M', 1982, 28);
INSERT INTO public.api_person VALUES (13524, 'Joss Christensen', 'M', 1992, 141);
INSERT INTO public.api_person VALUES (13525, 'Josua Tuisova Ratulevu', 'M', 1994, 42);
INSERT INTO public.api_person VALUES (13533, 'Jovana Brakoevi-Kancian', 'F', 1988, 117);
INSERT INTO public.api_person VALUES (13534, 'Jovana Stevanovi', 'F', 1992, 117);
INSERT INTO public.api_person VALUES (13542, 'Joyce Sombroek', 'F', 1991, 94);
INSERT INTO public.api_person VALUES (13597, 'Jrgen Nyland Graabak', 'M', 1992, 98);
INSERT INTO public.api_person VALUES (13620, 'Jrme Truyens', 'M', 1988, 13);
INSERT INTO public.api_person VALUES (13621, 'Jrmie Azou', 'M', 1989, 44);
INSERT INTO public.api_person VALUES (13622, 'Jrmy Cadot', 'M', 1987, 44);
INSERT INTO public.api_person VALUES (13623, 'Jrmy Stravius', 'M', 1988, 44);
INSERT INTO public.api_person VALUES (13629, 'Ju Hyeong-Jun', 'M', 1992, 75);
INSERT INTO public.api_person VALUES (13646, 'Juan Carlos Navarro Feijoo', 'M', 1980, 38);
INSERT INTO public.api_person VALUES (13666, 'Juan Ignacio Gilardi', 'M', 1982, 5);
INSERT INTO public.api_person VALUES (13668, 'Juan Leon de Jongh', 'M', 1988, 111);
INSERT INTO public.api_person VALUES (13675, 'Juan Manuel Saladino', 'M', 1988, 5);
INSERT INTO public.api_person VALUES (13676, 'Juan Manuel Vivaldi', 'M', 1979, 5);
INSERT INTO public.api_person VALUES (13678, 'Juan Martn del Potro', 'M', 1989, 5);
INSERT INTO public.api_person VALUES (13679, 'Juan Martn Lpez', 'M', 1985, 5);
INSERT INTO public.api_person VALUES (13719, 'Juhamatti Tapio Aaltonen', 'M', 1986, 43);
INSERT INTO public.api_person VALUES (13743, 'Julia Dujmovits', 'F', 1988, 8);
INSERT INTO public.api_person VALUES (13747, 'Julia Krajewski', 'F', 1989, 50);
INSERT INTO public.api_person VALUES (13748, 'Julia Lier', 'F', 1992, 50);
INSERT INTO public.api_person VALUES (13751, 'Julia Marie Mancuso (-Fish)', 'F', 1985, 141);
INSERT INTO public.api_person VALUES (13752, 'Julia Marty', 'F', 1989, 120);
INSERT INTO public.api_person VALUES (13754, 'Julia Mller', 'F', 1986, 50);
INSERT INTO public.api_person VALUES (13757, 'Julian Brandt', 'M', 1996, 50);
INSERT INTO public.api_person VALUES (13779, 'Julie Wu Chu', 'F', 1983, 141);
INSERT INTO public.api_person VALUES (13797, 'Julio Csar La Cruz Peraza', 'M', 1990, 29);
INSERT INTO public.api_person VALUES (13815, 'Julius Khn', 'M', 1993, 50);
INSERT INTO public.api_person VALUES (13816, 'Julius Kiplagat Yego', 'M', 1989, 73);
INSERT INTO public.api_person VALUES (13825, 'Jun Mizutani', 'M', 1989, 71);
INSERT INTO public.api_person VALUES (13840, 'Juraj Tarr', 'M', 1979, 122);
INSERT INTO public.api_person VALUES (13848, 'Juris ics', 'M', 1984, 78);
INSERT INTO public.api_person VALUES (13853, 'Jussi Petteri Jokinen', 'M', 1984, 43);
INSERT INTO public.api_person VALUES (13854, 'Justin Alexander Gatlin', 'M', 1982, 141);
INSERT INTO public.api_person VALUES (13857, 'Justin Gilberto Geduld', 'M', 1994, 111);
INSERT INTO public.api_person VALUES (13861, 'Justin Peter Rose', 'M', 1980, 47);
INSERT INTO public.api_person VALUES (13865, 'Justine Dufour-Lapointe', 'F', 1995, 21);
INSERT INTO public.api_person VALUES (13872, 'Justyna Kowalczyk', 'F', 1983, 105);
INSERT INTO public.api_person VALUES (13878, 'Juuso Hietanen', 'M', 1986, 43);
INSERT INTO public.api_person VALUES (13938, 'Kacey Lee Bellamy', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (13939, 'Kadeisha Buchanan', 'F', 1996, 21);
INSERT INTO public.api_person VALUES (13941, 'Kaetlyn Osmond', 'F', 1996, 21);
INSERT INTO public.api_person VALUES (13942, 'Kahena Kunze', 'F', 1991, 18);
INSERT INTO public.api_person VALUES (13945, 'Kai Hfner', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (13948, 'Kaillie Humphries (Simondson-)', 'F', 1986, 21);
INSERT INTO public.api_person VALUES (13951, 'Kaitlyn Brooke Farrington', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (13952, 'Kaitlyn Lawes', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (13954, 'Kaj Hendriks', 'M', 1988, 94);
INSERT INTO public.api_person VALUES (13959, 'Kaleigh Gilchrist', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (13978, 'Kameryn Louise "Kami" Craig', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (13981, 'Kamil Wiktor Stoch', 'M', 1988, 105);
INSERT INTO public.api_person VALUES (13983, 'Kamilla Rytter Juhl', 'F', 1984, 32);
INSERT INTO public.api_person VALUES (13985, 'Kamran ahsuvarl', 'M', 1993, 9);
INSERT INTO public.api_person VALUES (13986, 'Kanae Yamabe', 'F', 1991, 71);
INSERT INTO public.api_person VALUES (13988, 'Kanami Nakamaki', 'F', 1992, 71);
INSERT INTO public.api_person VALUES (13992, 'Kano Omata', 'F', 1996, 71);
INSERT INTO public.api_person VALUES (13994, 'Kaori Icho', 'F', 1984, 71);
INSERT INTO public.api_person VALUES (13997, 'Kaori Matsumoto', 'F', 1988, 71);
INSERT INTO public.api_person VALUES (14025, 'Karen Bennett', 'F', 1989, 47);
INSERT INTO public.api_person VALUES (14045, 'Karen Paquin', 'F', 1987, 21);
INSERT INTO public.api_person VALUES (14053, 'Kari Aalvik Grimsb', 'F', 1985, 98);
INSERT INTO public.api_person VALUES (14056, 'Kari Lehtonen', 'M', 1984, 43);
INSERT INTO public.api_person VALUES (14060, 'Karim Florent Laghouag', 'M', 1976, 44);
INSERT INTO public.api_person VALUES (14071, 'Karin Oberhofer', 'F', 1986, 68);
INSERT INTO public.api_person VALUES (14082, 'Karina Khavazhevna Goricheva', 'F', 1993, 72);
INSERT INTO public.api_person VALUES (14114, 'Karl Emil Jnsson', 'M', 1986, 123);
INSERT INTO public.api_person VALUES (14183, 'Karl Schulze', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (14238, 'Karolina Naja', 'F', 1990, 105);
INSERT INTO public.api_person VALUES (14241, 'Karsta Lowe', 'F', 1993, 141);
INSERT INTO public.api_person VALUES (14244, 'Karsten Forsterling', 'M', 1980, 7);
INSERT INTO public.api_person VALUES (14249, 'Kasey Perry-Glass', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (14252, 'Kaspar Taimsoo', 'M', 1987, 39);
INSERT INTO public.api_person VALUES (14253, 'Kasper Sndergaard Sarup', 'M', 1981, 32);
INSERT INTO public.api_person VALUES (14254, 'Kasper Winther Jrgensen', 'M', 1985, 32);
INSERT INTO public.api_person VALUES (14255, 'Kasumi Ishikawa', 'F', 1993, 71);
INSERT INTO public.api_person VALUES (14268, 'Katarzyna Bronisawa Woniak', 'F', 1990, 105);
INSERT INTO public.api_person VALUES (14270, 'Katarzyna Wjcicka-Bachleda-Curu (-Trzebunia)', 'F', 1980, 105);
INSERT INTO public.api_person VALUES (14280, 'Katelin Snyder (-Guregian)', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (14282, 'Katerine Savard', 'F', 1993, 21);
INSERT INTO public.api_person VALUES (14289, 'Katharina Otte', 'F', 1987, 50);
INSERT INTO public.api_person VALUES (14296, 'Katherine Jane Grainger', 'F', 1976, 47);
INSERT INTO public.api_person VALUES (14312, 'Kathleen Baker', 'F', 1997, 141);
INSERT INTO public.api_person VALUES (14313, 'Kathleen Genevieve "Katie" Ledecky', 'F', 1997, 141);
INSERT INTO public.api_person VALUES (14321, 'Kathrin Louise "Kate" Richardson-Walsh', 'F', 1980, 47);
INSERT INTO public.api_person VALUES (14323, 'Kathrin Zettel', 'F', 1987, 8);
INSERT INTO public.api_person VALUES (14342, 'Katie Louise Archibald', 'F', 1994, 47);
INSERT INTO public.api_person VALUES (14343, 'Katinka Hossz', 'F', 1989, 58);
INSERT INTO public.api_person VALUES (14349, 'Katja Steen Salskov-Iversen', 'F', 1995, 32);
INSERT INTO public.api_person VALUES (14357, 'Katrin Nabholz', 'F', 1987, 120);
INSERT INTO public.api_person VALUES (14374, 'Katy Louise Marchant', 'F', 1993, 47);
INSERT INTO public.api_person VALUES (14377, 'Kawika Shoji', 'M', 1988, 141);
INSERT INTO public.api_person VALUES (14382, 'Kayla Banwarth', 'F', 1989, 141);
INSERT INTO public.api_person VALUES (14383, 'Kayla Harrison', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (14384, 'Kayla McAlister', 'F', 1989, 99);
INSERT INTO public.api_person VALUES (14385, 'Kayla Moleschi', 'F', 1991, 21);
INSERT INTO public.api_person VALUES (14423, 'Kei Marumo', 'F', 1992, 71);
INSERT INTO public.api_person VALUES (14424, 'Kei Nishikori', 'M', 1990, 71);
INSERT INTO public.api_person VALUES (14447, 'Kelli Allison Stack', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (14453, 'Kelly Brazier', 'F', 1990, 99);
INSERT INTO public.api_person VALUES (14454, 'Kelly Catlin', 'F', 1996, 141);
INSERT INTO public.api_person VALUES (14455, 'Kelly Clark', 'F', 1984, 141);
INSERT INTO public.api_person VALUES (14463, 'Kelly Maria Jonker', 'F', 1990, 94);
INSERT INTO public.api_person VALUES (14465, 'Kelly Massey', 'F', 1985, 47);
INSERT INTO public.api_person VALUES (14466, 'Kelly Murphy', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (14468, 'Kelly Russell', 'F', 1987, 21);
INSERT INTO public.api_person VALUES (14472, 'Kelsey Robinson', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (14473, 'Kelsey Serwa', 'F', 1990, 21);
INSERT INTO public.api_person VALUES (14474, 'Kelsi Worrell', 'F', 1994, 141);
INSERT INTO public.api_person VALUES (14478, 'Kemar Bailey-Cole', 'M', 1992, 69);
INSERT INTO public.api_person VALUES (14482, 'Kendall Coyne', 'F', 1993, 141);
INSERT INTO public.api_person VALUES (14497, 'Kennedy Goss', 'F', 1997, 21);
INSERT INTO public.api_person VALUES (14528, 'Kenneth Maxwell "Ken" Wallace', 'M', 1983, 7);
INSERT INTO public.api_person VALUES (14538, 'Kent Farrington', 'M', 1981, 141);
INSERT INTO public.api_person VALUES (14544, 'Kentin Mah', 'M', 1991, 44);
INSERT INTO public.api_person VALUES (14548, 'Kenzo Shirai', 'M', 1997, 71);
INSERT INTO public.api_person VALUES (14552, 'Kerri Lee Walsh Jennings', 'F', 1979, 141);
INSERT INTO public.api_person VALUES (14556, 'Kerron Stephon Clement', 'M', 1986, 141);
INSERT INTO public.api_person VALUES (14563, 'Kerry Simmonds', 'F', 1989, 141);
INSERT INTO public.api_person VALUES (14577, 'Kerttu Elina Niskanen', 'F', 1989, 43);
INSERT INTO public.api_person VALUES (14580, 'Keshorn Walcott', 'M', 1993, 132);
INSERT INTO public.api_person VALUES (14589, 'Kevin Cordes', 'M', 1994, 141);
INSERT INTO public.api_person VALUES (14610, 'Kevin Reynolds', 'M', 1991, 21);
INSERT INTO public.api_person VALUES (14612, 'Kevin Rolland', 'M', 1990, 44);
INSERT INTO public.api_person VALUES (14613, 'Kevin Staut', 'M', 1981, 44);
INSERT INTO public.api_person VALUES (14614, 'Kevin Wayne Durant', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (14631, 'Khasan Magometovich Khalmurzayev', 'M', 1994, 112);
INSERT INTO public.api_person VALUES (14656, 'Ki Bo-Bae', 'F', 1988, 75);
INSERT INTO public.api_person VALUES (14657, 'Kianoush Rostami', 'M', 1991, 62);
INSERT INTO public.api_person VALUES (14665, 'Kiley Neushul', 'F', 1993, 141);
INSERT INTO public.api_person VALUES (14666, 'Kim A-Lang', 'F', 1996, 75);
INSERT INTO public.api_person VALUES (14675, 'Kim Cheol-Min', 'M', 1993, 75);
INSERT INTO public.api_person VALUES (14707, 'Kim Hyeon-Wu', 'M', 1989, 75);
INSERT INTO public.api_person VALUES (14715, 'Kim Jeong-Hwan', 'M', 1984, 75);
INSERT INTO public.api_person VALUES (14722, 'Kim Jong-Hyeon', 'M', 1985, 75);
INSERT INTO public.api_person VALUES (14727, 'Kim Kuk-Hyang', 'F', 1993, 107);
INSERT INTO public.api_person VALUES (14728, 'Kim Lamarre', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (14755, 'Kim So-Hui', 'F', 1994, 75);
INSERT INTO public.api_person VALUES (14756, 'Kim Song-Guk', 'M', 1986, 107);
INSERT INTO public.api_person VALUES (14757, 'Kim Song-I', 'F', 1995, 107);
INSERT INTO public.api_person VALUES (14764, 'Kim Tae-Hun', 'M', 1995, 75);
INSERT INTO public.api_person VALUES (14774, 'Kim Woo-Jin', 'M', 1992, 75);
INSERT INTO public.api_person VALUES (14789, 'Kimberley "Kim" Crow-Brennan', 'F', 1986, 7);
INSERT INTO public.api_person VALUES (14793, 'Kimberly "Kim" Hill', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (14805, 'Kimberly Susan "Kim" Rhode (-Harryman)', 'F', 1979, 141);
INSERT INTO public.api_person VALUES (14806, 'Kimia Alizadeh Zenoorin', 'F', 1998, 62);
INSERT INTO public.api_person VALUES (14808, 'Kimmo Samuel Timonen', 'M', 1976, 43);
INSERT INTO public.api_person VALUES (14812, 'Kingsley Madu', 'M', 1996, 96);
INSERT INTO public.api_person VALUES (14820, 'Kira Walkenhorst', 'F', 1991, 50);
INSERT INTO public.api_person VALUES (14821, 'Kirani James', 'M', 1993, 53);
INSERT INTO public.api_person VALUES (14827, 'Kirill Akopovich Grigoryan', 'M', 1992, 112);
INSERT INTO public.api_person VALUES (14835, 'Kirsten Moore-Towers', 'F', 1993, 21);
INSERT INTO public.api_person VALUES (14839, 'Kirsti Lay (-Giroux)', 'F', 1988, 21);
INSERT INTO public.api_person VALUES (14843, 'Kitione Taliga', 'M', 1993, 42);
INSERT INTO public.api_person VALUES (14844, 'Kitty van Male', 'F', 1988, 94);
INSERT INTO public.api_person VALUES (14863, 'Kjetil Borch', 'M', 1990, 98);
INSERT INTO public.api_person VALUES (14864, 'Kjetil Jansrud', 'M', 1986, 98);
INSERT INTO public.api_person VALUES (14925, 'Klay Alexander Thompson', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (14927, 'Klementina "Tina" Maze', 'F', 1984, 116);
INSERT INTO public.api_person VALUES (14962, 'Koen Verweij', 'M', 1991, 94);
INSERT INTO public.api_person VALUES (14963, 'Kohei Uchimura', 'M', 1989, 71);
INSERT INTO public.api_person VALUES (14976, 'Koji Yamamuro', 'M', 1989, 71);
INSERT INTO public.api_person VALUES (14977, 'Koki Niwa', 'M', 1995, 71);
INSERT INTO public.api_person VALUES (14980, 'Komeil Nemat Ghasemi', 'M', 1988, 62);
INSERT INTO public.api_person VALUES (14989, 'Konrad ukasz Niedwiedzki', 'M', 1985, 105);
INSERT INTO public.api_person VALUES (15025, 'Kosovare "Kosse" Asllani', 'F', 1989, 123);
INSERT INTO public.api_person VALUES (15029, 'Kosuke Hagino', 'M', 1995, 71);
INSERT INTO public.api_person VALUES (15044, 'Krista Lhteenmki (-Prmkoski)', 'F', 1991, 43);
INSERT INTO public.api_person VALUES (15051, 'Kristi Castlin', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (15062, 'Kristin Ann Armstrong (-Savola)', 'F', 1974, 141);
INSERT INTO public.api_person VALUES (15068, 'Kristin Strmer Steira', 'F', 1982, 98);
INSERT INTO public.api_person VALUES (15073, 'Kristina Brring-Sprehe', 'F', 1987, 50);
INSERT INTO public.api_person VALUES (15074, 'Kristina Joana Reynolds', 'F', 1984, 50);
INSERT INTO public.api_person VALUES (15081, 'Kristina Vogel', 'F', 1991, 50);
INSERT INTO public.api_person VALUES (15086, 'Kristine Lunde-Borgersen', 'F', 1980, 98);
INSERT INTO public.api_person VALUES (15093, 'Kristoffer Brun', 'M', 1988, 98);
INSERT INTO public.api_person VALUES (15102, 'Krisztina Fazekas Zur', 'F', 1981, 58);
INSERT INTO public.api_person VALUES (15131, 'Kseniya Andreyevna Stolbova', 'F', 1993, 112);
INSERT INTO public.api_person VALUES (15134, 'Kseniya Vitalyevna Perova', 'F', 1989, 112);
INSERT INTO public.api_person VALUES (15140, 'Ku Bon-Chan', 'M', 1993, 75);
INSERT INTO public.api_person VALUES (15149, 'Kuo Hsing-Chun', 'F', 1994, 131);
INSERT INTO public.api_person VALUES (15184, 'Kurumi Yoshida', 'F', 1992, 71);
INSERT INTO public.api_person VALUES (15189, 'Kvin Mayer', 'M', 1992, 44);
INSERT INTO public.api_person VALUES (15197, 'Kyle Chalmers', 'M', 1998, 7);
INSERT INTO public.api_person VALUES (15198, 'Kyle Clemons', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (15199, 'Kyle Frederick Snyder', 'M', 1996, 141);
INSERT INTO public.api_person VALUES (15200, 'Kyle Gie Brown', 'M', 1987, 111);
INSERT INTO public.api_person VALUES (15203, 'Kyle Lowry', 'M', 1986, 141);
INSERT INTO public.api_person VALUES (15205, 'Kylie Jacqueline Masse', 'F', 1996, 21);
INSERT INTO public.api_person VALUES (15213, 'Kyrie Andrew Irving', 'M', 1992, 141);
INSERT INTO public.api_person VALUES (15225, 'Lachlan Tame', 'M', 1989, 7);
INSERT INTO public.api_person VALUES (15232, 'Ladislav kantr', 'M', 1983, 122);
INSERT INTO public.api_person VALUES (15245, 'Laia Palau Alts', 'F', 1980, 38);
INSERT INTO public.api_person VALUES (15287, 'Lara Gut', 'F', 1992, 120);
INSERT INTO public.api_person VALUES (15289, 'Lara Stalder', 'F', 1995, 120);
INSERT INTO public.api_person VALUES (15315, 'Lars Bender', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (15327, 'Lars Fredrik Nelson', 'M', 1986, 123);
INSERT INTO public.api_person VALUES (15341, 'Lars Marcus Johansson', 'M', 1991, 123);
INSERT INTO public.api_person VALUES (15343, 'Lars Nicklas Bckstrm', 'M', 1988, 123);
INSERT INTO public.api_person VALUES (15370, 'Lasha Shavdatuashvili', 'M', 1992, 49);
INSERT INTO public.api_person VALUES (15371, 'Lasha Talakhadze', 'M', 1994, 49);
INSERT INTO public.api_person VALUES (15372, 'LaShawn Merritt', 'M', 1986, 141);
INSERT INTO public.api_person VALUES (15376, 'Lasse Jemon Svan Hansen', 'M', 1984, 32);
INSERT INTO public.api_person VALUES (15377, 'Lasse Juhani Kukkonen', 'M', 1982, 43);
INSERT INTO public.api_person VALUES (15379, 'Lasse Norman Hansen', 'M', 1992, 32);
INSERT INTO public.api_person VALUES (15396, 'Laura Benz', 'F', 1993, 120);
INSERT INTO public.api_person VALUES (15397, 'Laura Brown', 'F', 1987, 21);
INSERT INTO public.api_person VALUES (15400, 'Laura Emma Unsworth', 'F', 1988, 47);
INSERT INTO public.api_person VALUES (15405, 'Laura Gil Collado', 'F', 1992, 38);
INSERT INTO public.api_person VALUES (15406, 'Laura Glauser', 'F', 1994, 44);
INSERT INTO public.api_person VALUES (15407, 'Laura Graves', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (15415, 'Laura Ludwig', 'F', 1986, 50);
INSERT INTO public.api_person VALUES (15418, 'Laura Michele Fortino', 'F', 1991, 21);
INSERT INTO public.api_person VALUES (15419, 'Laura Nicholls Gonzlez', 'F', 1989, 38);
INSERT INTO public.api_person VALUES (15420, 'Laura Oprea', 'F', 1994, 110);
INSERT INTO public.api_person VALUES (15421, 'Laura Quevedo Caizares', 'F', 1996, 38);
INSERT INTO public.api_person VALUES (15422, 'Laura Rebecca Trott (-Kenny)', 'F', 1992, 47);
INSERT INTO public.api_person VALUES (15425, 'Laura Teani', 'F', 1991, 68);
INSERT INTO public.api_person VALUES (15426, 'Laura Vargas Koch', 'F', 1990, 50);
INSERT INTO public.api_person VALUES (15440, 'Lauren Schmetterling', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (15443, 'Lauren Zoe "Laurie" Hernandez', 'F', 2000, 141);
INSERT INTO public.api_person VALUES (15469, 'Lauri Korpikoski', 'M', 1987, 43);
INSERT INTO public.api_person VALUES (15473, 'Lauriane Rougeau', 'F', 1991, 21);
INSERT INTO public.api_person VALUES (15475, 'Laurien Leurink', 'F', 1995, 94);
INSERT INTO public.api_person VALUES (15477, 'Laurisa Landre', 'F', 1986, 44);
INSERT INTO public.api_person VALUES (15480, 'Lauritz Schoof', 'M', 1991, 50);
INSERT INTO public.api_person VALUES (15484, 'Lauryn Chenet Williams', 'F', 1984, 141);
INSERT INTO public.api_person VALUES (15495, 'Lawrence Brittain', 'M', 1991, 111);
INSERT INTO public.api_person VALUES (15514, 'Le Chien-Ying', 'F', 1990, 131);
INSERT INTO public.api_person VALUES (15521, 'Leah Neale', 'F', 1995, 7);
INSERT INTO public.api_person VALUES (15522, 'Leah Smith', 'F', 1995, 141);
INSERT INTO public.api_person VALUES (15542, 'Lee Chong Wei', 'M', 1983, 84);
INSERT INTO public.api_person VALUES (15544, 'Lee Dae-Hun', 'M', 1992, 75);
INSERT INTO public.api_person VALUES (15547, 'Lee Ethel Stecklein', 'F', 1995, 141);
INSERT INTO public.api_person VALUES (15585, 'Lee Sang-Hwa', 'F', 1990, 75);
INSERT INTO public.api_person VALUES (15591, 'Lee Seung-Hun', 'M', 1989, 75);
INSERT INTO public.api_person VALUES (15593, 'Lee Seung-Yun', 'M', 1995, 75);
INSERT INTO public.api_person VALUES (15631, 'Lena Goeling', 'F', 1986, 50);
INSERT INTO public.api_person VALUES (15665, 'Leon Goretzka', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (15691, 'Leone Nakarawa', 'M', 1988, 42);
INSERT INTO public.api_person VALUES (15698, 'Leonid "Leo" Komarov', 'M', 1987, 43);
INSERT INTO public.api_person VALUES (15721, 'Leonie Rebekka Maier', 'F', 1993, 50);
INSERT INTO public.api_person VALUES (15722, 'Leonor Rodrguez Manso', 'F', 1992, 38);
INSERT INTO public.api_person VALUES (15770, 'Leticia Romero Gonzlez', 'F', 1995, 38);
INSERT INTO public.api_person VALUES (15799, 'Li Dan', 'F', 1989, 23);
INSERT INTO public.api_person VALUES (15817, 'Li Jianrou', 'F', 1987, 23);
INSERT INTO public.api_person VALUES (15831, 'Li Qian', 'F', 1990, 23);
INSERT INTO public.api_person VALUES (15840, 'Li Xiaolu', 'F', 1993, 23);
INSERT INTO public.api_person VALUES (15845, 'Li Xiaoxia', 'F', 1988, 23);
INSERT INTO public.api_person VALUES (15855, 'Li Yuehong', 'M', 1990, 23);
INSERT INTO public.api_person VALUES (15863, 'Lia Neal', 'F', 1995, 141);
INSERT INTO public.api_person VALUES (15865, 'Liam Nicholas Heath', 'M', 1985, 47);
INSERT INTO public.api_person VALUES (15873, 'Liang Xinping', 'F', 1994, 23);
INSERT INTO public.api_person VALUES (15883, 'Lidewij Marsia Maria Welten', 'F', 1990, 94);
INSERT INTO public.api_person VALUES (15888, 'Lidia Valentn Prez', 'F', 1985, 38);
INSERT INTO public.api_person VALUES (15911, 'Lilli Margaretha Sigfridsson', 'F', 1976, 123);
INSERT INTO public.api_person VALUES (15918, 'Lilly King', 'F', 1997, 141);
INSERT INTO public.api_person VALUES (15920, 'Lily Isabelle Owsley', 'F', 1995, 47);
INSERT INTO public.api_person VALUES (15922, 'Lilyana Natsir', 'F', 1986, 59);
INSERT INTO public.api_person VALUES (15925, 'Lin Chaopan', 'M', 1996, 23);
INSERT INTO public.api_person VALUES (15928, 'Lin Li', 'F', 1992, 23);
INSERT INTO public.api_person VALUES (15932, 'Lin Shih-Chia', 'F', 1993, 131);
INSERT INTO public.api_person VALUES (15935, 'Lin Yue', 'M', 1991, 23);
INSERT INTO public.api_person VALUES (15940, 'Linda Birgitta Sembrant', 'F', 1987, 123);
INSERT INTO public.api_person VALUES (15961, 'Lindsay Jennerich', 'F', 1982, 21);
INSERT INTO public.api_person VALUES (15962, 'Lindsay Marie Whalen', 'F', 1982, 141);
INSERT INTO public.api_person VALUES (15976, 'Linn-Kristin Ullevoldster Riegelhuth Koren', 'F', 1985, 98);
INSERT INTO public.api_person VALUES (15979, 'Linus Butt', 'M', 1987, 50);
INSERT INTO public.api_person VALUES (15990, 'Lisa Carrington', 'F', 1989, 99);
INSERT INTO public.api_person VALUES (15992, 'Lisa Darmanin', 'F', 1992, 7);
INSERT INTO public.api_person VALUES (15996, 'Lisa Hahn-Altenburg', 'F', 1990, 50);
INSERT INTO public.api_person VALUES (15999, 'Lisa Karolina Viktoria Dahlkvist', 'F', 1987, 123);
INSERT INTO public.api_person VALUES (16007, 'Lisa Schmidla', 'F', 1991, 50);
INSERT INTO public.api_person VALUES (16008, 'Lisa Schtze', 'F', 1997, 50);
INSERT INTO public.api_person VALUES (16010, 'Lisa Unruh', 'F', 1988, 50);
INSERT INTO public.api_person VALUES (16020, 'Liu Hong', 'F', 1987, 23);
INSERT INTO public.api_person VALUES (16021, 'Liu Huixia', 'F', 1998, 23);
INSERT INTO public.api_person VALUES (16029, 'Liu Shiwen', 'F', 1991, 23);
INSERT INTO public.api_person VALUES (16035, 'Liu Xiaotong', 'F', 1990, 23);
INSERT INTO public.api_person VALUES (16040, 'Liu Yang', 'M', 1995, 23);
INSERT INTO public.api_person VALUES (16057, 'Livia Altmann', 'F', 1995, 120);
INSERT INTO public.api_person VALUES (16084, 'Lock Luypaert', 'M', 1992, 13);
INSERT INTO public.api_person VALUES (16088, 'lodie Pascaline Clouvel', 'F', 1989, 44);
INSERT INTO public.api_person VALUES (16114, 'Long Qingquan', 'M', 1991, 23);
INSERT INTO public.api_person VALUES (16120, 'Loredana Dinu (Iordchioiu-)', 'F', 1984, 110);
INSERT INTO public.api_person VALUES (16138, 'Lorenzo Sotomayor Collazo', 'M', 1985, 9);
INSERT INTO public.api_person VALUES (16181, 'Louis Antoine Smith', 'M', 1989, 47);
INSERT INTO public.api_person VALUES (16249, 'Lourdes Mohedano Snchez de Mora', 'F', 1995, 38);
INSERT INTO public.api_person VALUES (16258, 'Lszl Cseh, Jr.', 'M', 1986, 58);
INSERT INTO public.api_person VALUES (16288, 'Lu Xiaojun', 'M', 1985, 23);
INSERT INTO public.api_person VALUES (16289, 'Lu Xiuzhi', 'F', 1994, 23);
INSERT INTO public.api_person VALUES (16295, 'Luan Garcia Teixeira', 'M', 1993, 18);
INSERT INTO public.api_person VALUES (16296, 'Luan Guilherme de Jesus Vieira', 'M', 1993, 18);
INSERT INTO public.api_person VALUES (16303, 'Luc Abalo', 'M', 1985, 44);
INSERT INTO public.api_person VALUES (16313, 'Luca Masso', 'M', 1994, 5);
INSERT INTO public.api_person VALUES (16316, 'Luca Vettori', 'M', 1991, 68);
INSERT INTO public.api_person VALUES (16319, 'Lucas Martn Rey', 'M', 1983, 5);
INSERT INTO public.api_person VALUES (16320, 'Lucas Martn Vila', 'M', 1987, 5);
INSERT INTO public.api_person VALUES (16322, 'Lucas Rafael Rossi', 'M', 1985, 5);
INSERT INTO public.api_person VALUES (16324, 'Lucas Saatkamp', 'M', 1986, 18);
INSERT INTO public.api_person VALUES (16325, 'Lucas Tramr', 'M', 1990, 120);
INSERT INTO public.api_person VALUES (16328, 'Lucia Peretti', 'F', 1991, 68);
INSERT INTO public.api_person VALUES (16340, 'Lucie afov', 'F', 1987, 31);
INSERT INTO public.api_person VALUES (16343, 'Lucie Hradeck', 'F', 1985, 31);
INSERT INTO public.api_person VALUES (16367, 'Lucy Davis', 'F', 1993, 141);
INSERT INTO public.api_person VALUES (16372, 'Ludger Beerbaum', 'M', 1964, 50);
INSERT INTO public.api_person VALUES (16380, 'Ludovic Fabregas', 'M', 1996, 44);
INSERT INTO public.api_person VALUES (16447, 'Luisito Pi', 'M', 1994, 34);
INSERT INTO public.api_person VALUES (16450, 'Luiz Felipe Marques Fonteles', 'M', 1984, 18);
INSERT INTO public.api_person VALUES (16453, 'Luiza Zotkowska', 'F', 1987, 105);
INSERT INTO public.api_person VALUES (16455, 'Luk Krplek', 'M', 1991, 31);
INSERT INTO public.api_person VALUES (16457, 'Luk Trefil', 'M', 1989, 31);
INSERT INTO public.api_person VALUES (16458, 'Luka Buki', 'M', 1994, 28);
INSERT INTO public.api_person VALUES (16460, 'Luka Karabatic', 'M', 1988, 44);
INSERT INTO public.api_person VALUES (16462, 'Luka Lonar', 'M', 1987, 28);
INSERT INTO public.api_person VALUES (16466, 'Lukas Hofer', 'M', 1990, 68);
INSERT INTO public.api_person VALUES (16467, 'Lukas Klapfer', 'M', 1986, 8);
INSERT INTO public.api_person VALUES (16468, 'Lukas Klostermann', 'M', 1996, 50);
INSERT INTO public.api_person VALUES (16482, 'Lus Javier Mosquera Lozano', 'M', 1995, 26);
INSERT INTO public.api_person VALUES (16485, 'Lutalo Massop-Muhammad', 'M', 1991, 47);
INSERT INTO public.api_person VALUES (16493, 'Luuka Jones', 'F', 1989, 99);
INSERT INTO public.api_person VALUES (16494, 'Luvo Manyonga', 'M', 1991, 111);
INSERT INTO public.api_person VALUES (16499, 'Lydia Ierodiaconou-Lassila', 'F', 1982, 7);
INSERT INTO public.api_person VALUES (16505, 'Lyndsey Fry', 'F', 1993, 141);
INSERT INTO public.api_person VALUES (16528, 'Lyubomira Kazanova', 'F', 1996, 20);
INSERT INTO public.api_person VALUES (16531, 'Lyubov Andreyevna Shutova', 'F', 1983, 112);
INSERT INTO public.api_person VALUES (16574, 'Lzaro Jorge lvarez Estrada', 'M', 1991, 29);
INSERT INTO public.api_person VALUES (16586, 'Ma Long', 'M', 1989, 23);
INSERT INTO public.api_person VALUES (16593, 'Maaike Christiane Head', 'F', 1984, 94);
INSERT INTO public.api_person VALUES (16599, 'Maartje Yvonne Helene Paumen', 'F', 1986, 94);
INSERT INTO public.api_person VALUES (16609, 'Mackenzie "Mack" Horton', 'M', 1996, 7);
INSERT INTO public.api_person VALUES (16611, 'Maddison Keeney', 'F', 1996, 7);
INSERT INTO public.api_person VALUES (16612, 'Maddison Michelle "Maddie" Bowman', 'F', 1994, 141);
INSERT INTO public.api_person VALUES (16614, 'Madeline "Maddie" Musselman', 'F', 1998, 141);
INSERT INTO public.api_person VALUES (16615, 'Madeline Clare "Maddie" Hinch', 'F', 1989, 47);
INSERT INTO public.api_person VALUES (16616, 'Madeline Groves', 'F', 1995, 7);
INSERT INTO public.api_person VALUES (16617, 'Madeline Jane "Maya" DiRado', 'F', 1993, 141);
INSERT INTO public.api_person VALUES (16619, 'Madison "Madi" Wilson', 'F', 1994, 7);
INSERT INTO public.api_person VALUES (16620, 'Madison Taylor Kocian', 'F', 1997, 141);
INSERT INTO public.api_person VALUES (16622, 'Mads Christiansen', 'M', 1986, 32);
INSERT INTO public.api_person VALUES (16624, 'Mads Mensah Larsen', 'M', 1992, 32);
INSERT INTO public.api_person VALUES (16631, 'Magdalena "Magda" Eriksson', 'F', 1994, 123);
INSERT INTO public.api_person VALUES (16633, 'Magdalena Fularczyk-Kozowska', 'F', 1987, 105);
INSERT INTO public.api_person VALUES (16651, 'Magnus Hovdal Moan', 'M', 1984, 98);
INSERT INTO public.api_person VALUES (16652, 'Magnus Krog', 'M', 1988, 98);
INSERT INTO public.api_person VALUES (16656, 'Magomed Idrisovich Ibragimov', 'M', 1985, 142);
INSERT INTO public.api_person VALUES (16662, 'Maharu Yoshimura', 'M', 1993, 71);
INSERT INTO public.api_person VALUES (16663, 'Mahiedine Mekhissi-Benabbad', 'M', 1985, 44);
INSERT INTO public.api_person VALUES (16670, 'Mai Nakamura', 'F', 1989, 71);
INSERT INTO public.api_person VALUES (16672, 'Maialen Chourraut Yurramendi', 'F', 1983, 38);
INSERT INTO public.api_person VALUES (16674, 'Maicon de Andrade Siqueira', 'M', 1993, 18);
INSERT INTO public.api_person VALUES (16682, 'Maiken Caspersen Falla', 'F', 1991, 98);
INSERT INTO public.api_person VALUES (16690, 'Maja Martyna Woszczowska', 'F', 1984, 105);
INSERT INTO public.api_person VALUES (16691, 'Maja Ognjenovi', 'F', 1985, 117);
INSERT INTO public.api_person VALUES (16694, 'Majlinda Kelmendi', 'F', 1991, 76);
INSERT INTO public.api_person VALUES (16697, 'Makenzie Fischer', 'F', 1997, 141);
INSERT INTO public.api_person VALUES (16712, 'Maksim Leonidovich Trankov', 'M', 1984, 112);
INSERT INTO public.api_person VALUES (16714, 'Maksim Mikhaylovich Vylegzhanin', 'M', 1983, 112);
INSERT INTO public.api_person VALUES (16739, 'Malte Jakschik', 'M', 1993, 50);
INSERT INTO public.api_person VALUES (16748, 'Mandy Islacker', 'F', 1989, 50);
INSERT INTO public.api_person VALUES (16784, 'Manon Houette', 'F', 1992, 44);
INSERT INTO public.api_person VALUES (16794, 'Manuel Brunet', 'M', 1986, 5);
INSERT INTO public.api_person VALUES (16821, 'Mao Yi', 'F', 2000, 23);
INSERT INTO public.api_person VALUES (16832, 'Mara del Rosario Espinoza Espinoza', 'F', 1988, 86);
INSERT INTO public.api_person VALUES (16834, 'Mara Guadalupe Gonzlez Romero', 'F', 1989, 86);
INSERT INTO public.api_person VALUES (16840, 'Mara Lucila Pascua Surez', 'F', 1983, 38);
INSERT INTO public.api_person VALUES (16863, 'Marc Lpez i Tarrs', 'M', 1982, 38);
INSERT INTO public.api_person VALUES (16875, 'Marc-Antoine Olivier', 'M', 1996, 44);
INSERT INTO public.api_person VALUES (16876, 'Marc-douard Vlasic', 'M', 1988, 21);
INSERT INTO public.api_person VALUES (16895, 'Marcel Hirscher', 'M', 1990, 8);
INSERT INTO public.api_person VALUES (16940, 'Marco Del Lungo', 'M', 1990, 68);
INSERT INTO public.api_person VALUES (16941, 'Marco Di Costanzo', 'M', 1992, 68);
INSERT INTO public.api_person VALUES (16943, 'Marco Fichera', 'M', 1994, 68);
INSERT INTO public.api_person VALUES (16948, 'Marco Innocenti', 'M', 1979, 68);
INSERT INTO public.api_person VALUES (16962, 'Marcos "Marquinhos" Aos Corra', 'M', 1994, 18);
INSERT INTO public.api_person VALUES (16971, 'Marcus China Watson', 'M', 1991, 47);
INSERT INTO public.api_person VALUES (16973, 'Marcus Cooper Walz', 'M', 1995, 38);
INSERT INTO public.api_person VALUES (16975, 'Marcus Gro', 'M', 1990, 50);
INSERT INTO public.api_person VALUES (16977, 'Marcus John Ellis', 'M', 1990, 47);
INSERT INTO public.api_person VALUES (16984, 'Marcus Viktor Krger', 'M', 1991, 123);
INSERT INTO public.api_person VALUES (16991, 'Mare Dibaba Hurssa (-Ibrahimova-)', 'F', 1990, 40);
INSERT INTO public.api_person VALUES (17010, 'Margaret Ann "Maggie" Steffens', 'F', 1993, 141);
INSERT INTO public.api_person VALUES (17022, 'Margaret Nyairera Wambui', 'F', 1996, 73);
INSERT INTO public.api_person VALUES (17031, 'Margarita Abdullayevna Mamun', 'F', 1996, 112);
INSERT INTO public.api_person VALUES (17032, 'Margarita Grigoryevna Tishkevich-Makhneva', 'F', 1992, 15);
INSERT INTO public.api_person VALUES (17053, 'Margot Madeleine Boer', 'F', 1986, 94);
INSERT INTO public.api_person VALUES (17055, 'Margot van Geffen', 'F', 1990, 94);
INSERT INTO public.api_person VALUES (17062, 'Mari Kristine Sbstad Molid', 'F', 1991, 98);
INSERT INTO public.api_person VALUES (17081, 'Maria Hfl-Riesch', 'F', 1985, 50);
INSERT INTO public.api_person VALUES (17101, 'Maria Springwald', 'F', 1991, 105);
INSERT INTO public.api_person VALUES (17105, 'Maria Verschoor', 'F', 1994, 94);
INSERT INTO public.api_person VALUES (17129, 'Mariana Pajn Londoo', 'F', 1992, 26);
INSERT INTO public.api_person VALUES (17149, 'Marianne St-Gelais', 'F', 1991, 21);
INSERT INTO public.api_person VALUES (17171, 'Marie Martinod', 'F', 1985, 44);
INSERT INTO public.api_person VALUES (17173, 'Marie Mvers', 'F', 1991, 50);
INSERT INTO public.api_person VALUES (17174, 'Marie Prouvensier', 'F', 1994, 44);
INSERT INTO public.api_person VALUES (17185, 'Mariel Leigh Zagunis', 'F', 1985, 141);
INSERT INTO public.api_person VALUES (17189, 'Marielle Thompson', 'F', 1993, 21);
INSERT INTO public.api_person VALUES (17192, 'Marie-Philip Poulin', 'F', 1992, 21);
INSERT INTO public.api_person VALUES (17194, 'Marie-ve Drolet', 'F', 1982, 21);
INSERT INTO public.api_person VALUES (17217, 'Marina Charlotte Kalla', 'F', 1988, 123);
INSERT INTO public.api_person VALUES (17234, 'Marina Viktorovna Poltoran-Litvinchuk', 'F', 1988, 15);
INSERT INTO public.api_person VALUES (17238, 'Marina Vladimirovna Sudakova (Yartseva-)', 'F', 1989, 112);
INSERT INTO public.api_person VALUES (17252, 'Marinus Kraus', 'M', 1992, 50);
INSERT INTO public.api_person VALUES (17273, 'Mario Matt', 'M', 1980, 8);
INSERT INTO public.api_person VALUES (17278, 'Mario Stecher', 'M', 1978, 8);
INSERT INTO public.api_person VALUES (17286, 'Mario-Elio Gyr', 'M', 1985, 120);
INSERT INTO public.api_person VALUES (17306, 'Marissa Castelli', 'F', 1991, 141);
INSERT INTO public.api_person VALUES (17307, 'Marit Bjrgen', 'F', 1981, 98);
INSERT INTO public.api_person VALUES (17308, 'Marit Bouwmeester', 'F', 1988, 94);
INSERT INTO public.api_person VALUES (17311, 'Marit Malm Frafjord', 'F', 1986, 98);
INSERT INTO public.api_person VALUES (17346, 'Mariya Olegovna Borisova', 'F', 1997, 112);
INSERT INTO public.api_person VALUES (17348, 'Mariya Ruslanovna Mamoshuk', 'F', 1993, 15);
INSERT INTO public.api_person VALUES (17350, 'Mariya Stadnik', 'F', 1988, 9);
INSERT INTO public.api_person VALUES (17354, 'Mariya Valeryevna Paseka', 'F', 1995, 112);
INSERT INTO public.api_person VALUES (17360, 'Mariya Vladimirovna Shurochkina', 'F', 1995, 112);
INSERT INTO public.api_person VALUES (17366, 'Mariya Yuryevna Tolkachova', 'F', 1998, 112);
INSERT INTO public.api_person VALUES (17408, 'Mark McMorris', 'M', 1994, 21);
INSERT INTO public.api_person VALUES (17411, 'Mark Overgaard Madsen', 'M', 1985, 32);
INSERT INTO public.api_person VALUES (17420, 'Mark Robertson', 'M', 1985, 47);
INSERT INTO public.api_person VALUES (17424, 'Mark Simon Cavendish', 'M', 1985, 47);
INSERT INTO public.api_person VALUES (17427, 'Mark Stewart Bennett', 'M', 1993, 47);
INSERT INTO public.api_person VALUES (17437, 'Marko Bija', 'M', 1991, 28);
INSERT INTO public.api_person VALUES (17445, 'Marko Macan', 'M', 1993, 28);
INSERT INTO public.api_person VALUES (17447, 'Marko Simonovi', 'M', 1986, 117);
INSERT INTO public.api_person VALUES (17450, 'Marko Tomievi', 'M', 1990, 117);
INSERT INTO public.api_person VALUES (17477, 'Marlies Schild (-Raich)', 'F', 1982, 8);
INSERT INTO public.api_person VALUES (17479, 'Marloes Keetels', 'F', 1993, 94);
INSERT INTO public.api_person VALUES (17482, 'Maro Jokovi', 'M', 1988, 28);
INSERT INTO public.api_person VALUES (17486, 'Marrit Leenstra', 'F', 1990, 94);
INSERT INTO public.api_person VALUES (17499, 'Marta Walczykiewicz', 'F', 1987, 105);
INSERT INTO public.api_person VALUES (17500, 'Marta Xargay Casademont', 'F', 1991, 38);
INSERT INTO public.api_person VALUES (17524, 'Martin Fourcade', 'M', 1989, 44);
INSERT INTO public.api_person VALUES (17529, 'Martin Hner', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (17536, 'Martin Johnsrud Sundby', 'M', 1985, 98);
INSERT INTO public.api_person VALUES (17555, 'Martin Sauer', 'M', 1983, 50);
INSERT INTO public.api_person VALUES (17560, 'Martin Sinkovi', 'M', 1990, 28);
INSERT INTO public.api_person VALUES (17561, 'Martin St. Louis', 'M', 1976, 21);
INSERT INTO public.api_person VALUES (17566, 'Martin Strobel', 'M', 1986, 50);
INSERT INTO public.api_person VALUES (17574, 'Martin Zwicker', 'M', 1987, 50);
INSERT INTO public.api_person VALUES (17583, 'Martina Hingis (-Hutin)', 'F', 1981, 120);
INSERT INTO public.api_person VALUES (17592, 'Martina Sblkov', 'F', 1988, 31);
INSERT INTO public.api_person VALUES (17596, 'Martina Valcepina', 'F', 1993, 68);
INSERT INTO public.api_person VALUES (17601, 'Martine Soffiatti Grael', 'F', 1991, 18);
INSERT INTO public.api_person VALUES (17602, 'Martins Dukurs', 'M', 1985, 78);
INSERT INTO public.api_person VALUES (17616, 'Marwa Al-Amri', 'F', 1989, 133);
INSERT INTO public.api_person VALUES (17677, 'Masashi Ebinuma', 'M', 1990, 71);
INSERT INTO public.api_person VALUES (17681, 'Masato Sakai', 'M', 1995, 71);
INSERT INTO public.api_person VALUES (17686, 'Mashu Baker', 'M', 1995, 71);
INSERT INTO public.api_person VALUES (17693, 'Massimo Colaci', 'M', 1985, 68);
INSERT INTO public.api_person VALUES (17699, 'Matas Enrique Paredes', 'M', 1982, 5);
INSERT INTO public.api_person VALUES (17701, 'Matas Rey', 'M', 1985, 5);
INSERT INTO public.api_person VALUES (17704, 'Matej Beu', 'M', 1988, 122);
INSERT INTO public.api_person VALUES (17706, 'Matej Tth', 'M', 1983, 122);
INSERT INTO public.api_person VALUES (17710, 'Mathew Belcher', 'M', 1983, 7);
INSERT INTO public.api_person VALUES (17718, 'Mathias Mller', 'M', 1992, 50);
INSERT INTO public.api_person VALUES (17719, 'Mathieu Albert Daniel Bauderlique', 'M', 1989, 44);
INSERT INTO public.api_person VALUES (17722, 'Mathieu Grbille', 'M', 1992, 44);
INSERT INTO public.api_person VALUES (17723, 'Mathieu Lemoine', 'M', 1984, 44);
INSERT INTO public.api_person VALUES (17737, 'Mats Grambusch', 'M', 1993, 50);
INSERT INTO public.api_person VALUES (17745, 'Matteo Aicardi', 'M', 1986, 68);
INSERT INTO public.api_person VALUES (17748, 'Matteo Castaldo', 'M', 1986, 68);
INSERT INTO public.api_person VALUES (17750, 'Matteo Lodo', 'M', 1995, 68);
INSERT INTO public.api_person VALUES (17753, 'Matteo Piano', 'M', 1991, 68);
INSERT INTO public.api_person VALUES (17757, 'Matthew "Matt" Abood', 'M', 1986, 7);
INSERT INTO public.api_person VALUES (17758, 'Matthew "Matt" Antoine', 'M', 1986, 141);
INSERT INTO public.api_person VALUES (17759, 'Matthew "Matt" Duchene', 'M', 1991, 21);
INSERT INTO public.api_person VALUES (17765, 'Matthew Anthony W. "Matt" Gotrel', 'M', 1989, 47);
INSERT INTO public.api_person VALUES (17773, 'Matthew Gerald "Matt" Centrowitz, Jr.', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (17775, 'Matthew Gregory "Matt" Kuchar', 'M', 1978, 141);
INSERT INTO public.api_person VALUES (17781, 'Matthew John "Matt" Anderson', 'M', 1987, 141);
INSERT INTO public.api_person VALUES (17785, 'Matthew Keir "Matt" Langridge', 'M', 1983, 47);
INSERT INTO public.api_person VALUES (17803, 'Matthias Lukas Ginter', 'M', 1994, 50);
INSERT INTO public.api_person VALUES (17805, 'Matthias Mayer', 'M', 1991, 8);
INSERT INTO public.api_person VALUES (17811, 'Matthieu Patrick Franois Peche', 'M', 1988, 44);
INSERT INTO public.api_person VALUES (17813, 'Matthijs Bchli', 'M', 1993, 94);
INSERT INTO public.api_person VALUES (17831, 'Maurcio Borges Almeida Silva', 'M', 1989, 18);
INSERT INTO public.api_person VALUES (17833, 'Maurcio Luiz de Souza', 'M', 1989, 18);
INSERT INTO public.api_person VALUES (17865, 'Maurice Manificat', 'M', 1987, 44);
INSERT INTO public.api_person VALUES (17906, 'Max Antony Whitlock', 'M', 1993, 47);
INSERT INTO public.api_person VALUES (17910, 'Max Christiansen', 'M', 1997, 50);
INSERT INTO public.api_person VALUES (17915, 'Max Hoff', 'M', 1983, 50);
INSERT INTO public.api_person VALUES (17923, 'Max Rendschmidt', 'M', 1994, 50);
INSERT INTO public.api_person VALUES (17933, 'Maxime Eugne Ren Beaumont', 'M', 1982, 44);
INSERT INTO public.api_person VALUES (17939, 'Maximilian Meyer', 'M', 1996, 50);
INSERT INTO public.api_person VALUES (17940, 'Maximilian Munski', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (17941, 'Maximilian Reinelt', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (17950, 'Maxwell Philip "Max" Holt', 'M', 1987, 141);
INSERT INTO public.api_person VALUES (17953, 'Maya April Moore', 'F', 1989, 141);
INSERT INTO public.api_person VALUES (17958, 'Mayra Aguiar da Silva', 'F', 1992, 18);
INSERT INTO public.api_person VALUES (17962, 'Mayya Andreyevna Petrova (Kaverina-)', 'F', 1982, 112);
INSERT INTO public.api_person VALUES (17965, 'McLain Ward', 'M', 1976, 141);
INSERT INTO public.api_person VALUES (17966, 'Mdlina Bere', 'F', 1993, 110);
INSERT INTO public.api_person VALUES (17967, 'Meagan Duhamel', 'F', 1986, 21);
INSERT INTO public.api_person VALUES (17968, 'Meaghan Benfeito', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (17969, 'Meaghan Mikkelson', 'F', 1985, 21);
INSERT INTO public.api_person VALUES (17975, 'Megan Bozek', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (17981, 'Megan Lukan', 'F', 1992, 21);
INSERT INTO public.api_person VALUES (17984, 'Meghan Christina Agosta (-Marciano)', 'F', 1988, 21);
INSERT INTO public.api_person VALUES (17985, 'Meghan Duggan', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (17986, 'Meghan Musnicki', 'F', 1983, 141);
INSERT INTO public.api_person VALUES (17990, 'Mehdy Metella', 'M', 1992, 44);
INSERT INTO public.api_person VALUES (18000, 'Meiskelina Catharina Anna "Carien" Kleibeuker', 'F', 1979, 94);
INSERT INTO public.api_person VALUES (18004, 'Melanie Behringer', 'F', 1986, 50);
INSERT INTO public.api_person VALUES (18007, 'Melanie Kate Wilson', 'F', 1984, 47);
INSERT INTO public.api_person VALUES (18009, 'Melanie Leupolz', 'F', 1994, 50);
INSERT INTO public.api_person VALUES (18011, 'Melanie Margalis', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (18021, 'Melissa Jeanette "Missy" Franklin', 'F', 1995, 141);
INSERT INTO public.api_person VALUES (18024, 'Melissa Palma Julie Tancredi', 'F', 1982, 21);
INSERT INTO public.api_person VALUES (18026, 'Melissa Seidemann', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (18031, 'Melodie Daoust', 'F', 1992, 21);
INSERT INTO public.api_person VALUES (18040, 'Meng Suping', 'F', 1989, 23);
INSERT INTO public.api_person VALUES (18045, 'Meredith T. Michaels-Beerbaum', 'F', 1970, 50);
INSERT INTO public.api_person VALUES (18060, 'Meryl Elizabeth Davis', 'F', 1987, 141);
INSERT INTO public.api_person VALUES (18071, 'Micah Makanamaikalani Christenson', 'M', 1993, 141);
INSERT INTO public.api_person VALUES (18082, 'Michael "Mike" Hixon', 'M', 1994, 141);
INSERT INTO public.api_person VALUES (18089, 'Michael "Mike" Riddle', 'M', 1987, 21);
INSERT INTO public.api_person VALUES (18125, 'Michael Damgaard Nielsen', 'M', 1990, 32);
INSERT INTO public.api_person VALUES (18128, 'Michael David Hepburn', 'M', 1992, 7);
INSERT INTO public.api_person VALUES (18146, 'Michael Fred Phelps, II', 'M', 1985, 141);
INSERT INTO public.api_person VALUES (18154, 'Michael Goodfellow', 'M', 1989, 47);
INSERT INTO public.api_person VALUES (18158, 'Michael Haybck', 'M', 1992, 8);
INSERT INTO public.api_person VALUES (18180, 'Michael Jung', 'M', 1983, 50);
INSERT INTO public.api_person VALUES (18249, 'Michael Walter Mathieu', 'M', 1984, 10);
INSERT INTO public.api_person VALUES (18257, 'Michal Alexandre Bodegas', 'M', 1987, 68);
INSERT INTO public.api_person VALUES (18258, 'Michal D''Almeida', 'M', 1988, 44);
INSERT INTO public.api_person VALUES (18265, 'Michal Yves Robert Guigou', 'M', 1982, 44);
INSERT INTO public.api_person VALUES (18290, 'Michel Theodoor Mulder', 'M', 1987, 94);
INSERT INTO public.api_person VALUES (18314, 'Michelle Denee Carter', 'F', 1986, 141);
INSERT INTO public.api_person VALUES (18325, 'Michelle Picard', 'F', 1994, 141);
INSERT INTO public.api_person VALUES (18330, 'Michelle Williams (-Toro)', 'F', 1991, 21);
INSERT INTO public.api_person VALUES (18342, 'Mie stergaard Nielsen', 'F', 1997, 32);
INSERT INTO public.api_person VALUES (18347, 'Migran Arutyunyan', 'M', 1989, 6);
INSERT INTO public.api_person VALUES (18367, 'Mihaela Maevska', 'F', 1991, 20);
INSERT INTO public.api_person VALUES (18369, 'Mihaela Petril', 'F', 1991, 110);
INSERT INTO public.api_person VALUES (18390, 'Mijan Lpez Nez', 'M', 1983, 29);
INSERT INTO public.api_person VALUES (18400, 'Mikael Antero Granlund', 'M', 1993, 43);
INSERT INTO public.api_person VALUES (18403, 'Mikaela Pauline Shiffrin', 'F', 1996, 141);
INSERT INTO public.api_person VALUES (18406, 'Mikal Kingsbury', 'M', 1993, 21);
INSERT INTO public.api_person VALUES (18451, 'Mikkel Hansen', 'M', 1988, 32);
INSERT INTO public.api_person VALUES (18468, 'Milad Beigi Hareqani', 'M', 1991, 9);
INSERT INTO public.api_person VALUES (18472, 'Milan Aleksi', 'M', 1986, 117);
INSERT INTO public.api_person VALUES (18482, 'Milan Mavan', 'M', 1990, 117);
INSERT INTO public.api_person VALUES (18489, 'Milda Valiukait', 'F', 1994, 81);
INSERT INTO public.api_person VALUES (18529, 'Milena Rai', 'F', 1991, 117);
INSERT INTO public.api_person VALUES (18531, 'Milenko Zori', 'M', 1989, 117);
INSERT INTO public.api_person VALUES (18533, 'Miles Cleveland Chamley-Watson', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (18535, 'Milica Dabovi', 'F', 1982, 117);
INSERT INTO public.api_person VALUES (18537, 'milie Andol', 'F', 1988, 44);
INSERT INTO public.api_person VALUES (18547, 'Milo Teodosi', 'M', 1987, 117);
INSERT INTO public.api_person VALUES (18548, 'Milo uk', 'M', 1991, 117);
INSERT INTO public.api_person VALUES (18566, 'Mima Ito', 'F', 2001, 71);
INSERT INTO public.api_person VALUES (18572, 'Mindaugas Grikonis', 'M', 1986, 81);
INSERT INTO public.api_person VALUES (18588, 'Mira Potkonen', 'F', 1981, 43);
INSERT INTO public.api_person VALUES (18599, 'Mireia Belmonte Garca', 'F', 1991, 38);
INSERT INTO public.api_person VALUES (18601, 'Mirela Krasimirova Demireva', 'F', 1990, 20);
INSERT INTO public.api_person VALUES (18607, 'Miriam Welte', 'F', 1987, 50);
INSERT INTO public.api_person VALUES (18638, 'Miroslav Raduljica', 'M', 1988, 117);
INSERT INTO public.api_person VALUES (18650, 'Misael Uziel Rodrguez Olivas', 'M', 1994, 86);
INSERT INTO public.api_person VALUES (18651, 'Misaki Matsutomo', 'F', 1992, 71);
INSERT INTO public.api_person VALUES (18653, 'Misato Nakamura', 'F', 1989, 71);
INSERT INTO public.api_person VALUES (18661, 'Mitchell James "Mitch" Larkin', 'M', 1993, 7);
INSERT INTO public.api_person VALUES (18687, 'Mlina Robert-Michon', 'F', 1979, 44);
INSERT INTO public.api_person VALUES (18698, 'Mobolade Abimbola Ajomale', 'M', 1996, 21);
INSERT INTO public.api_person VALUES (18716, 'Mohamed Ihab Youssef Ahmed Mahmoud', 'M', 1990, 36);
INSERT INTO public.api_person VALUES (18717, 'Mohamed Karim "Moe" Sbihi', 'M', 1988, 47);
INSERT INTO public.api_person VALUES (18721, 'Mohamed Muktar Jama "Mo" Farah', 'M', 1983, 47);
INSERT INTO public.api_person VALUES (18727, 'Mohammed Rabii', 'M', 1993, 83);
INSERT INTO public.api_person VALUES (18729, 'Mohd Azizulhasni Awang', 'M', 1988, 84);
INSERT INTO public.api_person VALUES (18733, 'Mokgadi Caster Semenya', 'F', 1991, 111);
INSERT INTO public.api_person VALUES (18735, 'Molly Meech', 'F', 1993, 99);
INSERT INTO public.api_person VALUES (18736, 'Molly Patricia Schaus', 'F', 1989, 141);
INSERT INTO public.api_person VALUES (18743, 'Monica Aksamit', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (18746, 'Monica Puig Marchn', 'F', 1994, 108);
INSERT INTO public.api_person VALUES (18751, 'Monika Ciaciuch', 'F', 1992, 105);
INSERT INTO public.api_person VALUES (18753, 'Monika Ewa Michalik (Rogien-)', 'F', 1980, 105);
INSERT INTO public.api_person VALUES (18756, 'Monika Karsch', 'F', 1983, 50);
INSERT INTO public.api_person VALUES (18760, 'Monique Edith Lamoureux (-Kolls)', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (18772, 'Moritz Frste', 'M', 1985, 50);
INSERT INTO public.api_person VALUES (18773, 'Moritz Trompertz', 'M', 1996, 50);
INSERT INTO public.api_person VALUES (18774, 'Morolake Akinosun', 'F', 1994, 141);
INSERT INTO public.api_person VALUES (18778, 'Morten Jrgensen', 'M', 1985, 32);
INSERT INTO public.api_person VALUES (18779, 'Morten Olsen', 'M', 1985, 32);
INSERT INTO public.api_person VALUES (18814, 'Mrti Rubenis', 'M', 1979, 78);
INSERT INTO public.api_person VALUES (18860, 'Murodzhon Kakharovich Akhmadaliyev', 'M', 1995, 142);
INSERT INTO public.api_person VALUES (18861, 'Murphy Edward Troy', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (18873, 'Mutaz Essa Barshim', 'M', 1991, 109);
INSERT INTO public.api_person VALUES (18909, 'Nadezhda Mikhaylovna Popok-Lepeshko', 'F', 1989, 15);
INSERT INTO public.api_person VALUES (18916, 'Nadezhda Sergeyevna Glyzina-Fedotova', 'F', 1988, 112);
INSERT INTO public.api_person VALUES (18917, 'Nadezhda Valeryevna Skardino', 'F', 1986, 15);
INSERT INTO public.api_person VALUES (18939, 'Nafissatou "Nafi" Thiam', 'F', 1995, 13);
INSERT INTO public.api_person VALUES (18948, 'Naito Ehara', 'M', 1993, 71);
INSERT INTO public.api_person VALUES (18974, 'Naohisa Takato', 'M', 1993, 71);
INSERT INTO public.api_person VALUES (18979, 'Naomi Frances van As', 'F', 1984, 94);
INSERT INTO public.api_person VALUES (18997, 'Natalia Barbara Czerwonka', 'F', 1989, 105);
INSERT INTO public.api_person VALUES (19000, 'Natalia Madaj', 'F', 1988, 105);
INSERT INTO public.api_person VALUES (19010, 'Natalie Geisenberger', 'F', 1988, 50);
INSERT INTO public.api_person VALUES (19016, 'Natalie Marie Spooner', 'F', 1991, 21);
INSERT INTO public.api_person VALUES (19019, 'Natalie Rooney', 'F', 1988, 99);
INSERT INTO public.api_person VALUES (19066, 'Nataliya Sergeyevna Ishchenko', 'F', 1986, 112);
INSERT INTO public.api_person VALUES (19069, 'Nataliya Siniin', 'F', 1985, 9);
INSERT INTO public.api_person VALUES (19084, 'Nataliya Vitalyevna Vorobyova', 'F', 1991, 112);
INSERT INTO public.api_person VALUES (19093, 'Nataliya Yuryevna Kuzyutina', 'F', 1989, 112);
INSERT INTO public.api_person VALUES (19101, 'Natasha Monique Hastings', 'F', 1986, 141);
INSERT INTO public.api_person VALUES (19102, 'Natasha Watcham-Roy', 'F', 1992, 21);
INSERT INTO public.api_person VALUES (19116, 'Nathan Ghar-Jun Adrian', 'M', 1989, 141);
INSERT INTO public.api_person VALUES (19121, 'Nathan Outteridge', 'M', 1986, 7);
INSERT INTO public.api_person VALUES (19128, 'Nathon Allen', 'M', 1996, 69);
INSERT INTO public.api_person VALUES (19132, 'Natsumi Hoshi', 'F', 1991, 71);
INSERT INTO public.api_person VALUES (19142, 'Ndifreke Effiong Udo', 'M', 1999, 96);
INSERT INTO public.api_person VALUES (19182, 'Nemanja Nedovi', 'M', 1991, 117);
INSERT INTO public.api_person VALUES (19191, 'Nevena Jovanovi', 'F', 1990, 117);
INSERT INTO public.api_person VALUES (19194, 'Nevin Galmarini', 'M', 1987, 120);
INSERT INTO public.api_person VALUES (19196, 'Neymar da Silva Santos Jnior', 'M', 1992, 18);
INSERT INTO public.api_person VALUES (19207, 'Nia Sifaatihii Ali', 'F', 1989, 141);
INSERT INTO public.api_person VALUES (19208, 'Niall Williams', 'F', 1988, 99);
INSERT INTO public.api_person VALUES (19210, 'Niccol Campriani', 'M', 1988, 68);
INSERT INTO public.api_person VALUES (19211, 'Niccol Gitto', 'M', 1987, 68);
INSERT INTO public.api_person VALUES (19212, 'Nichelle Prince', 'F', 1995, 21);
INSERT INTO public.api_person VALUES (19214, 'Nicholas "Nick" Goepper', 'M', 1995, 141);
INSERT INTO public.api_person VALUES (19217, 'Nicholas Charles "Nick" Dempsey', 'M', 1981, 47);
INSERT INTO public.api_person VALUES (19220, 'Nicholas David "Nick" Skelton', 'M', 1958, 47);
INSERT INTO public.api_person VALUES (19221, 'Nicholas Ian "Nick" Willis', 'M', 1983, 99);
INSERT INTO public.api_person VALUES (19225, 'Nicholas Presciutti', 'M', 1994, 68);
INSERT INTO public.api_person VALUES (19231, 'Nickel Ashmeade', 'M', 1990, 69);
INSERT INTO public.api_person VALUES (19233, 'Nico Miguel Hernandez', 'M', 1996, 141);
INSERT INTO public.api_person VALUES (19241, 'Nicola Spirig Hug', 'F', 1982, 120);
INSERT INTO public.api_person VALUES (19243, 'Nicola Virginia Adams', 'F', 1983, 47);
INSERT INTO public.api_person VALUES (19245, 'Nicola White', 'F', 1988, 47);
INSERT INTO public.api_person VALUES (19272, 'Nicolas Jacobi', 'M', 1987, 50);
INSERT INTO public.api_person VALUES (19280, 'Nicole Beukers', 'F', 1991, 94);
INSERT INTO public.api_person VALUES (19282, 'Nicole Bullo', 'F', 1988, 120);
INSERT INTO public.api_person VALUES (19286, 'Nicole Elise Beck', 'F', 1988, 7);
INSERT INTO public.api_person VALUES (19287, 'Nicole Fessel', 'F', 1984, 50);
INSERT INTO public.api_person VALUES (19289, 'Nicole Hosp', 'F', 1984, 8);
INSERT INTO public.api_person VALUES (19308, 'Nidzhat Aliyevich Rakhimov', 'M', 1994, 72);
INSERT INTO public.api_person VALUES (19337, 'Nike Lorenz', 'F', 1997, 50);
INSERT INTO public.api_person VALUES (19340, 'Nikita Gennadyevich Katsalapov', 'M', 1992, 112);
INSERT INTO public.api_person VALUES (19343, 'Nikita Valeryevich Kryukov', 'M', 1986, 112);
INSERT INTO public.api_person VALUES (19344, 'Nikita Vladimirovich Nagorny', 'M', 1997, 112);
INSERT INTO public.api_person VALUES (19348, 'Niklas Landin Jacobsen', 'M', 1989, 32);
INSERT INTO public.api_person VALUES (19349, 'Niklas Larsen', 'M', 1997, 32);
INSERT INTO public.api_person VALUES (19352, 'Niklas Sivert Hjalmarsson', 'M', 1988, 123);
INSERT INTO public.api_person VALUES (19353, 'Niklas Sle', 'M', 1996, 50);
INSERT INTO public.api_person VALUES (19355, 'Niklas Wellen', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (19360, 'Nikola Jaki', 'M', 1997, 117);
INSERT INTO public.api_person VALUES (19361, 'Nikola Joki', 'M', 1995, 117);
INSERT INTO public.api_person VALUES (19362, 'Nikola Kalini', 'M', 1992, 117);
INSERT INTO public.api_person VALUES (19363, 'Nikola Karabatic', 'M', 1984, 44);
INSERT INTO public.api_person VALUES (19366, 'Nikola Miroti Stajovi', 'M', 1991, 38);
INSERT INTO public.api_person VALUES (19410, 'Nikolay Igorevich Olyunin', 'M', 1992, 112);
INSERT INTO public.api_person VALUES (19453, 'Nikolay Yulyevich Kuksenkov', 'M', 1989, 112);
INSERT INTO public.api_person VALUES (19457, 'Nile Wilson', 'M', 1996, 47);
INSERT INTO public.api_person VALUES (19503, 'Nils Petersen', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (19535, 'Nina Waidacher', 'F', 1993, 120);
INSERT INTO public.api_person VALUES (19544, 'Nino Schurter', 'M', 1986, 120);
INSERT INTO public.api_person VALUES (19572, 'Noelle Pikus-Pace', 'F', 1983, 141);
INSERT INTO public.api_person VALUES (19583, 'Nora Mrk', 'F', 1991, 98);
INSERT INTO public.api_person VALUES (19606, 'Noriaki Kasai', 'M', 1973, 71);
INSERT INTO public.api_person VALUES (19641, 'Nouchka Fontijn', 'F', 1988, 94);
INSERT INTO public.api_person VALUES (19649, 'Novlene Hilaire Williams-Mills', 'F', 1982, 69);
INSERT INTO public.api_person VALUES (19650, 'Nozomi Okuhara', 'F', 1995, 71);
INSERT INTO public.api_person VALUES (19657, 'Nur Tatar', 'F', 1993, 134);
INSERT INTO public.api_person VALUES (19666, 'Nwanyika Jenete C. "Anyika" Onuora', 'F', 1985, 47);
INSERT INTO public.api_person VALUES (19691, 'Odette Giuffrida', 'F', 1995, 68);
INSERT INTO public.api_person VALUES (19696, 'Oghenekaro Peter Etebo', 'M', 1996, 96);
INSERT INTO public.api_person VALUES (19702, 'Oh Hye-Ri', 'F', 1988, 75);
INSERT INTO public.api_person VALUES (19707, 'Okechukwu Godson Azubuike', 'M', 1997, 96);
INSERT INTO public.api_person VALUES (19725, 'Oktawia Nowacka', 'F', 1991, 105);
INSERT INTO public.api_person VALUES (19727, 'Ola Vigen Hattestad', 'M', 1983, 98);
INSERT INTO public.api_person VALUES (19740, 'Olaf Karl Tufte', 'M', 1976, 98);
INSERT INTO public.api_person VALUES (19769, 'Ole Einar Bjrndalen', 'M', 1974, 98);
INSERT INTO public.api_person VALUES (19789, 'Oleg Antonov', 'M', 1988, 68);
INSERT INTO public.api_person VALUES (19820, 'Oleh Yuriyovych Verniaiev', 'M', 1994, 138);
INSERT INTO public.api_person VALUES (19868, 'Olena Mykhailivna Pidhrushna', 'F', 1987, 138);
INSERT INTO public.api_person VALUES (19873, 'Olena Oleksandrivna Voronina', 'F', 1990, 138);
INSERT INTO public.api_person VALUES (19875, 'Olena Vitalivna Kravatska', 'F', 1992, 138);
INSERT INTO public.api_person VALUES (19885, 'Olga Aleksandrovna Fatkulina', 'F', 1990, 112);
INSERT INTO public.api_person VALUES (19886, 'Olga Aleksandrovna Kochneva', 'F', 1988, 112);
INSERT INTO public.api_person VALUES (19889, 'Olga Alekseyevna Zaytseva (-Augustin)', 'F', 1979, 112);
INSERT INTO public.api_person VALUES (19892, 'Olga Borisovna Graf', 'F', 1984, 112);
INSERT INTO public.api_person VALUES (19900, 'Olga Gennadyevna Vilukhina', 'F', 1989, 112);
INSERT INTO public.api_person VALUES (19906, 'Olga Konstantinovna Belova-Gorbunova', 'F', 1994, 112);
INSERT INTO public.api_person VALUES (19921, 'Olga Sergeyevna Khudenko', 'F', 1992, 15);
INSERT INTO public.api_person VALUES (19923, 'Olga Sergeyevna Levina-Akopyan', 'F', 1985, 112);
INSERT INTO public.api_person VALUES (19924, 'Olga Sergeyevna Rypakova (Alekseyeva-)', 'F', 1985, 72);
INSERT INTO public.api_person VALUES (19925, 'Olga Sergeyevna Zabelinskaya (Sukhoruchenkova-)', 'F', 1980, 112);
INSERT INTO public.api_person VALUES (19946, 'Olha Hennadivna Kharlan', 'F', 1991, 138);
INSERT INTO public.api_person VALUES (19969, 'Oliver Oscar Emanuel Ekman Larsson', 'M', 1992, 123);
INSERT INTO public.api_person VALUES (19971, 'Oliver William Lindsay-Hague', 'M', 1991, 47);
INSERT INTO public.api_person VALUES (19972, 'Olivia Alma Charlotta Schough', 'F', 1991, 123);
INSERT INTO public.api_person VALUES (19974, 'Olivia Elizabeth "Polly" Powrie', 'F', 1988, 99);
INSERT INTO public.api_person VALUES (19975, 'Olivia Frances Carnegie-Brown', 'F', 1991, 47);
INSERT INTO public.api_person VALUES (19978, 'Olivia Smoliga', 'F', 1995, 141);
INSERT INTO public.api_person VALUES (19983, 'Olivier Floris Johannes Siegelaar', 'M', 1987, 94);
INSERT INTO public.api_person VALUES (19992, 'Olli Mtt', 'M', 1995, 43);
INSERT INTO public.api_person VALUES (19993, 'Olli Veli Pekka Jokinen', 'M', 1979, 43);
INSERT INTO public.api_person VALUES (20009, 'Oluwafemi "Junior" Ajayi', 'M', 1996, 96);
INSERT INTO public.api_person VALUES (20011, 'Om Yun-Chol', 'M', 1992, 107);
INSERT INTO public.api_person VALUES (20016, 'Omar McLeod', 'M', 1994, 69);
INSERT INTO public.api_person VALUES (20023, 'Ondej Moravec', 'M', 1985, 31);
INSERT INTO public.api_person VALUES (20024, 'Ondej Synek', 'M', 1983, 31);
INSERT INTO public.api_person VALUES (20031, 'Or Sasson', 'M', 1991, 66);
INSERT INTO public.api_person VALUES (20049, 'Orlando Ortega Alejo', 'M', 1991, 38);
INSERT INTO public.api_person VALUES (20084, 'Osea Kolinisau', 'M', 1986, 42);
INSERT INTO public.api_person VALUES (20099, 'Oskars Melbrdis', 'M', 1989, 78);
INSERT INTO public.api_person VALUES (20103, 'Osmany Juantorena Portuondo', 'M', 1986, 68);
INSERT INTO public.api_person VALUES (20106, 'Ossi Reijo Juhani Vnnen', 'M', 1981, 43);
INSERT INTO public.api_person VALUES (20131, 'Otgontsetseg Galbadrakhyn', 'F', 1992, 72);
INSERT INTO public.api_person VALUES (20188, 'Oussama Al-Oueslati', 'M', 1996, 133);
INSERT INTO public.api_person VALUES (20194, 'Owain Daniel John Doull', 'M', 1993, 47);
INSERT INTO public.api_person VALUES (20238, 'Pan Feihong', 'F', 1989, 23);
INSERT INTO public.api_person VALUES (20240, 'Panagiotis Mantis', 'M', 1982, 52);
INSERT INTO public.api_person VALUES (20244, 'Pandelela Rinong anak Pamg', 'F', 1993, 84);
INSERT INTO public.api_person VALUES (20247, 'Pang Wei', 'M', 1986, 23);
INSERT INTO public.api_person VALUES (20248, 'Panipak Wongpattanakit', 'F', 1998, 128);
INSERT INTO public.api_person VALUES (20266, 'Paolo Nicolai', 'M', 1989, 68);
INSERT INTO public.api_person VALUES (20267, 'Paolo Pizzo', 'M', 1983, 68);
INSERT INTO public.api_person VALUES (20280, 'Park In-Bee', 'F', 1988, 75);
INSERT INTO public.api_person VALUES (20293, 'Park Sang-Young', 'M', 1996, 75);
INSERT INTO public.api_person VALUES (20297, 'Park Seung-Hui', 'F', 1993, 75);
INSERT INTO public.api_person VALUES (20326, 'Patimat Abakarova', 'F', 1995, 9);
INSERT INTO public.api_person VALUES (20328, 'Patrice Bergeron-Cleary', 'M', 1986, 21);
INSERT INTO public.api_person VALUES (20352, 'Patricia Obee', 'F', 1992, 21);
INSERT INTO public.api_person VALUES (20370, 'Patrick Denis Marleau', 'M', 1980, 21);
INSERT INTO public.api_person VALUES (20376, 'Patrick Hausding', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (20392, 'Patrick Lewis Chan', 'M', 1991, 21);
INSERT INTO public.api_person VALUES (20399, 'Patrick Sharp', 'M', 1982, 21);
INSERT INTO public.api_person VALUES (20402, 'Patrick Wiencek', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (20409, 'Patrizia Kummer', 'F', 1988, 120);
INSERT INTO public.api_person VALUES (20412, 'Pau Gasol Sez', 'M', 1980, 38);
INSERT INTO public.api_person VALUES (20420, 'Paul Bennett', 'M', 1989, 47);
INSERT INTO public.api_person VALUES (20432, 'Paul Drux', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (20451, 'Paul George', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (20473, 'Paul Kipkemboi Chelimo', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (20474, 'Paul Kipngetich Tanui', 'M', 1991, 73);
INSERT INTO public.api_person VALUES (20500, 'Paul O''Donovan', 'M', 1994, 63);
INSERT INTO public.api_person VALUES (20530, 'Paula Beln Pareto', 'F', 1986, 5);
INSERT INTO public.api_person VALUES (20549, 'Pauline Louisa Hammarlund', 'F', 1994, 123);
INSERT INTO public.api_person VALUES (20592, 'Pavlo Yuriyovych Tymoshchenko', 'M', 1987, 138);
INSERT INTO public.api_person VALUES (20593, 'Pavlos Kagialis', 'M', 1984, 52);
INSERT INTO public.api_person VALUES (20620, 'Pedro Ibarra', 'M', 1986, 5);
INSERT INTO public.api_person VALUES (20644, 'Penelope "Penny" Oleksiak', 'F', 2000, 21);
INSERT INTO public.api_person VALUES (20679, 'Per Henrik Tallinder', 'M', 1979, 123);
INSERT INTO public.api_person VALUES (20715, 'Pernell Karl "PK" Subban', 'M', 1990, 21);
INSERT INTO public.api_person VALUES (20719, 'Pernille Blume', 'F', 1994, 32);
INSERT INTO public.api_person VALUES (20745, 'Peter "Pete" Reed', 'M', 1982, 47);
INSERT INTO public.api_person VALUES (20758, 'Peter Burling', 'M', 1991, 99);
INSERT INTO public.api_person VALUES (20811, 'Peter kantr', 'M', 1982, 122);
INSERT INTO public.api_person VALUES (20812, 'Peter Kauzer', 'M', 1984, 116);
INSERT INTO public.api_person VALUES (20832, 'Peter Matthews', 'M', 1990, 69);
INSERT INTO public.api_person VALUES (20843, 'Peter Noel Jan Wiersum', 'M', 1985, 94);
INSERT INTO public.api_person VALUES (20850, 'Peter Prevc', 'M', 1993, 116);
INSERT INTO public.api_person VALUES (20912, 'Petra Kvitov', 'F', 1990, 31);
INSERT INTO public.api_person VALUES (20933, 'Petri Kontiola', 'M', 1985, 43);
INSERT INTO public.api_person VALUES (20935, 'Petrissa Solja', 'F', 1994, 50);
INSERT INTO public.api_person VALUES (20959, 'Phelan Peter Hill', 'M', 1979, 47);
INSERT INTO public.api_person VALUES (20960, 'Phil Burgess', 'M', 1988, 47);
INSERT INTO public.api_person VALUES (20973, 'Philip Hindes', 'M', 1993, 47);
INSERT INTO public.api_person VALUES (20998, 'Philipp Max', 'M', 1994, 50);
INSERT INTO public.api_person VALUES (21024, 'Philippe Rozier', 'M', 1963, 44);
INSERT INTO public.api_person VALUES (21025, 'Philippus Albertus Borman "Philip" Snyman', 'M', 1987, 111);
INSERT INTO public.api_person VALUES (21032, 'Phillip Peter Dutton', 'M', 1964, 141);
INSERT INTO public.api_person VALUES (21034, 'Phillipp Wende', 'M', 1985, 50);
INSERT INTO public.api_person VALUES (21038, 'Phoebe Stanz', 'F', 1994, 120);
INSERT INTO public.api_person VALUES (21040, 'Phyllis Chanez Francis', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (21046, 'Pia-Sophie Oldhafer', 'F', 1992, 50);
INSERT INTO public.api_person VALUES (21088, 'Pierre Houin', 'M', 1994, 44);
INSERT INTO public.api_person VALUES (21091, 'Pierre Le Coq', 'M', 1989, 44);
INSERT INTO public.api_person VALUES (21112, 'Pierre Vaultier', 'M', 1988, 44);
INSERT INTO public.api_person VALUES (21125, 'Pieter Gilles "Mechiel" Versluis', 'M', 1987, 94);
INSERT INTO public.api_person VALUES (21129, 'Pieter Timmers', 'M', 1988, 13);
INSERT INTO public.api_person VALUES (21133, 'Pietro Figlioli', 'M', 1984, 68);
INSERT INTO public.api_person VALUES (21145, 'Pimsiri Sirikaew', 'F', 1990, 128);
INSERT INTO public.api_person VALUES (21150, 'Piotr Maachowski', 'M', 1983, 105);
INSERT INTO public.api_person VALUES (21176, 'Pnlope Leprvost', 'F', 1980, 44);
INSERT INTO public.api_person VALUES (21177, 'Poliana Okimoto-Cintra', 'F', 1983, 18);
INSERT INTO public.api_person VALUES (21180, 'Polina Viktorovna Kuznetsova (Vyakhireva-)', 'F', 1987, 112);
INSERT INTO public.api_person VALUES (21181, 'Polly Ann M. Swann', 'F', 1988, 47);
INSERT INTO public.api_person VALUES (21185, 'Pontus Sebastian Kraupp', 'M', 1986, 123);
INSERT INTO public.api_person VALUES (21186, 'Popoola Sodiq Saliu', 'M', 1995, 96);
INSERT INTO public.api_person VALUES (21188, 'Portia Woodman', 'F', 1991, 99);
INSERT INTO public.api_person VALUES (21240, 'Pter Somfai', 'M', 1980, 58);
INSERT INTO public.api_person VALUES (21244, 'Pusarla Venkata "P. V." Sindhu', 'F', 1995, 60);
INSERT INTO public.api_person VALUES (21260, 'Qin Kai', 'M', 1986, 23);
INSERT INTO public.api_person VALUES (21272, 'Race Alick Reid Imboden', 'M', 1993, 141);
INSERT INTO public.api_person VALUES (21273, 'Rachael Alexis Adams', 'F', 1990, 141);
INSERT INTO public.api_person VALUES (21277, 'Rachel Fattal', 'F', 1994, 141);
INSERT INTO public.api_person VALUES (21284, 'Rachele Bruni', 'F', 1991, 68);
INSERT INTO public.api_person VALUES (21289, 'Radek tpnek', 'M', 1979, 31);
INSERT INTO public.api_person VALUES (21290, 'Radik sayev', 'M', 1990, 9);
INSERT INTO public.api_person VALUES (21307, 'Rafa Majka', 'M', 1990, 105);
INSERT INTO public.api_person VALUES (21311, 'Rafael Alcntara do Nascimento', 'M', 1993, 18);
INSERT INTO public.api_person VALUES (21316, 'Rafael Carlos da Silva', 'M', 1987, 18);
INSERT INTO public.api_person VALUES (21323, 'Rafael Nadal Parera', 'M', 1986, 38);
INSERT INTO public.api_person VALUES (21327, 'Rafaela Lopes Silva', 'F', 1992, 18);
INSERT INTO public.api_person VALUES (21372, 'Rajeev Ram', 'M', 1984, 141);
INSERT INTO public.api_person VALUES (21489, 'Rasmus Christian Quaade', 'M', 1990, 32);
INSERT INTO public.api_person VALUES (21566, 'Rebecca Angharad "Becky" James', 'F', 1992, 47);
INSERT INTO public.api_person VALUES (21567, 'Rebecca Ann Johnston', 'F', 1990, 21);
INSERT INTO public.api_person VALUES (21577, 'Rebecca Quinn', 'F', 1996, 21);
INSERT INTO public.api_person VALUES (21580, 'Rebecca Scown', 'F', 1984, 99);
INSERT INTO public.api_person VALUES (21612, 'Rei Higuchi', 'M', 1996, 71);
INSERT INTO public.api_person VALUES (21673, 'Ren Cancan', 'F', 1988, 23);
INSERT INTO public.api_person VALUES (21705, 'Ren Qian', 'F', 2001, 23);
INSERT INTO public.api_person VALUES (21713, 'Ren Toft Hansen', 'M', 1985, 32);
INSERT INTO public.api_person VALUES (21739, 'Renato Soares de Oliveira Augusto', 'M', 1988, 18);
INSERT INTO public.api_person VALUES (21743, 'Renaud Lavillenie', 'M', 1987, 44);
INSERT INTO public.api_person VALUES (21748, 'Reneta Kamberova', 'F', 1991, 20);
INSERT INTO public.api_person VALUES (21757, 'Reruhi Shimizu', 'M', 1994, 71);
INSERT INTO public.api_person VALUES (21776, 'Rhian Emilie Wilkinson', 'F', 1982, 21);
INSERT INTO public.api_person VALUES (21782, 'Ri Se-Gwang', 'M', 1985, 107);
INSERT INTO public.api_person VALUES (21799, 'Ricard "Ricky" Rubio Vives', 'M', 1991, 38);
INSERT INTO public.api_person VALUES (21810, 'Ricardo Samuel Lucarelli Santos de Souza', 'M', 1992, 18);
INSERT INTO public.api_person VALUES (21882, 'Richard Hounslow', 'M', 1982, 47);
INSERT INTO public.api_person VALUES (21934, 'Richard Schmidt', 'M', 1987, 50);
INSERT INTO public.api_person VALUES (21960, 'Rick McLaren Nash', 'M', 1985, 21);
INSERT INTO public.api_person VALUES (21967, 'Rie Kaneto', 'F', 1989, 71);
INSERT INTO public.api_person VALUES (21969, 'rif rifov', 'M', 1989, 9);
INSERT INTO public.api_person VALUES (21981, 'Rikke Mller Pedersen', 'F', 1989, 32);
INSERT INTO public.api_person VALUES (21984, 'Rim Jong-Sim', 'F', 1993, 107);
INSERT INTO public.api_person VALUES (21991, 'Risako Kawai', 'F', 1995, 71);
INSERT INTO public.api_person VALUES (21992, 'Risako Mitsui', 'F', 1994, 71);
INSERT INTO public.api_person VALUES (21993, 'Rishod Rashidovich Sobirov', 'M', 1987, 142);
INSERT INTO public.api_person VALUES (22012, 'Ro Masivesi Dakuwaqa', 'M', 1994, 42);
INSERT INTO public.api_person VALUES (22021, 'Robeisy Eloy Ramrez Carrazana', 'M', 1994, 29);
INSERT INTO public.api_person VALUES (22060, 'Robert Bauer', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (22171, 'Robert Lcken', 'M', 1985, 94);
INSERT INTO public.api_person VALUES (22195, 'Robert Meeuwsen', 'M', 1988, 94);
INSERT INTO public.api_person VALUES (22212, 'Robert Peter "Robbie" Renwick', 'M', 1988, 47);
INSERT INTO public.api_person VALUES (22255, 'Roberta Bianconi', 'F', 1989, 68);
INSERT INTO public.api_person VALUES (22276, 'Roberto Luongo', 'M', 1980, 21);
INSERT INTO public.api_person VALUES (22292, 'Robin Duvillard', 'M', 1984, 44);
INSERT INTO public.api_person VALUES (22300, 'Robin Szolkowy', 'M', 1980, 50);
INSERT INTO public.api_person VALUES (22303, 'Robson Donato Conceio', 'M', 1989, 18);
INSERT INTO public.api_person VALUES (22333, 'Rodolfo "Rudy" Fernndez Farrs', 'M', 1985, 38);
INSERT INTO public.api_person VALUES (22343, 'Rodrigo Caio Coquette Russo', 'M', 1994, 18);
INSERT INTO public.api_person VALUES (22345, 'Rodrigo Dourado Cunha', 'M', 1994, 18);
INSERT INTO public.api_person VALUES (22377, 'Roger-Yves Bost', 'M', 1966, 44);
INSERT INTO public.api_person VALUES (22447, 'Roman Andreyevich Vlasov', 'M', 1991, 112);
INSERT INTO public.api_person VALUES (22461, 'Roman Sergeyevich Anoshkin', 'M', 1988, 112);
INSERT INTO public.api_person VALUES (22487, 'Romy Eggimann', 'F', 1996, 120);
INSERT INTO public.api_person VALUES (22491, 'ron Szilgyi', 'M', 1990, 58);
INSERT INTO public.api_person VALUES (22517, 'Ronald Matthias Mulder', 'M', 1987, 94);
INSERT INTO public.api_person VALUES (22523, 'Ronald Rauhe', 'M', 1982, 50);
INSERT INTO public.api_person VALUES (22554, 'Rosannagh "Rosie" MacLennan', 'F', 1989, 21);
INSERT INTO public.api_person VALUES (22555, 'Rosaria Aiello', 'F', 1989, 68);
INSERT INTO public.api_person VALUES (22558, 'Roscko Shane Specman', 'M', 1989, 111);
INSERT INTO public.api_person VALUES (22563, 'Roseline Filion', 'F', 1987, 21);
INSERT INTO public.api_person VALUES (22582, 'Rossella Fiamingo', 'F', 1991, 68);
INSERT INTO public.api_person VALUES (22597, 'Roxana Gabriela Cogianu', 'F', 1987, 110);
INSERT INTO public.api_person VALUES (22614, 'Rstm Orucov', 'M', 1992, 9);
INSERT INTO public.api_person VALUES (22615, 'Rsul unayev', 'M', 1991, 9);
INSERT INTO public.api_person VALUES (22617, 'Ruaridh Lawson McConnochie', 'M', 1992, 47);
INSERT INTO public.api_person VALUES (22626, 'Ruby Tui', 'F', 1992, 99);
INSERT INTO public.api_person VALUES (22695, 'Rusheen McDonald', 'M', 1993, 69);
INSERT INTO public.api_person VALUES (22696, 'Ruslan Albertovich Zakharov', 'M', 1988, 112);
INSERT INTO public.api_person VALUES (22700, 'Ruslan Nurudinov', 'M', 1992, 142);
INSERT INTO public.api_person VALUES (22720, 'Rustam Tulaganov', 'M', 1992, 142);
INSERT INTO public.api_person VALUES (22725, 'Rut Hedvig Lindahl', 'F', 1983, 123);
INSERT INTO public.api_person VALUES (22727, 'Ruth Beita Vila', 'F', 1979, 38);
INSERT INTO public.api_person VALUES (22734, 'Ruth Jebet', 'F', 1997, 19);
INSERT INTO public.api_person VALUES (22735, 'Ruth Marie Christelle Gbagbi', 'F', 1994, 24);
INSERT INTO public.api_person VALUES (22747, 'Ryan Crouser', 'M', 1993, 141);
INSERT INTO public.api_person VALUES (22749, 'Ryan Fry', 'M', 1979, 21);
INSERT INTO public.api_person VALUES (22750, 'Ryan Getzlaf', 'M', 1986, 21);
INSERT INTO public.api_person VALUES (22752, 'Ryan Harnden', 'M', 1987, 21);
INSERT INTO public.api_person VALUES (22753, 'Ryan Held', 'M', 1995, 141);
INSERT INTO public.api_person VALUES (22756, 'Ryan Murphy', 'M', 1995, 141);
INSERT INTO public.api_person VALUES (22760, 'Ryan Steven Lochte', 'M', 1985, 141);
INSERT INTO public.api_person VALUES (22763, 'Ryan Tyack', 'M', 1991, 7);
INSERT INTO public.api_person VALUES (22769, 'Ryohei Kato', 'M', 1994, 71);
INSERT INTO public.api_person VALUES (22777, 'Ryota Yamagata', 'M', 1992, 71);
INSERT INTO public.api_person VALUES (22795, 'Ryunosuke Haga', 'M', 1991, 71);
INSERT INTO public.api_person VALUES (22798, 'Rza Kayaalp', 'M', 1990, 134);
INSERT INTO public.api_person VALUES (22807, 'sa Nilla Maria Fischer', 'F', 1984, 123);
INSERT INTO public.api_person VALUES (22808, 'Saa ao', 'F', 1989, 117);
INSERT INTO public.api_person VALUES (22811, 'Sabah riti', 'M', 1989, 9);
INSERT INTO public.api_person VALUES (22833, 'Sabrina D''Angelo', 'F', 1993, 21);
INSERT INTO public.api_person VALUES (22834, 'Sabrina Hering', 'F', 1992, 50);
INSERT INTO public.api_person VALUES (22844, 'Sadiq Umar', 'M', 1997, 96);
INSERT INTO public.api_person VALUES (22846, 'Saeid Morad Abdevali', 'M', 1990, 62);
INSERT INTO public.api_person VALUES (22848, 'Sage Kotsenburg', 'M', 1994, 141);
INSERT INTO public.api_person VALUES (22856, 'Sakari Jalmari Salminen', 'M', 1989, 43);
INSERT INTO public.api_person VALUES (22858, 'Sakshi Malik', 'F', 1993, 60);
INSERT INTO public.api_person VALUES (22860, 'Sal Craviotto Rivero', 'M', 1985, 38);
INSERT INTO public.api_person VALUES (22867, 'Sally Conway', 'F', 1987, 47);
INSERT INTO public.api_person VALUES (22883, 'Salvatore Rossini', 'M', 1986, 68);
INSERT INTO public.api_person VALUES (22886, 'Sam Dorman', 'M', 1992, 141);
INSERT INTO public.api_person VALUES (22887, 'Sam Griffiths', 'M', 1972, 7);
INSERT INTO public.api_person VALUES (22889, 'Sam Kendricks', 'M', 1993, 141);
INSERT INTO public.api_person VALUES (22890, 'Sam Meech', 'M', 1991, 99);
INSERT INTO public.api_person VALUES (22891, 'Sam Webster', 'M', 1991, 99);
INSERT INTO public.api_person VALUES (22892, 'Sam Welsford', 'M', 1996, 7);
INSERT INTO public.api_person VALUES (22897, 'Samantha "Sami" Hill', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (22898, 'Samantha Ann "Sam" Quek', 'F', 1989, 47);
INSERT INTO public.api_person VALUES (22906, 'Sami Lepist', 'M', 1985, 43);
INSERT INTO public.api_person VALUES (22908, 'Sami Olavi Jauhojrvi', 'M', 1982, 43);
INSERT INTO public.api_person VALUES (22909, 'Sami Sakari Salo', 'M', 1975, 43);
INSERT INTO public.api_person VALUES (22910, 'Sami Vatanen', 'M', 1992, 43);
INSERT INTO public.api_person VALUES (22912, 'Samisoni Viriviri', 'M', 1988, 42);
INSERT INTO public.api_person VALUES (22927, 'Samuel Bode Miller', 'M', 1978, 141);
INSERT INTO public.api_person VALUES (22954, 'Samuel Thomas "Sam" Cross', 'M', 1993, 47);
INSERT INTO public.api_person VALUES (22962, 'Sandi Morris', 'F', 1992, 141);
INSERT INTO public.api_person VALUES (22963, 'Sandra Aguilar Navarro', 'F', 1993, 38);
INSERT INTO public.api_person VALUES (22967, 'Sandra Auffarth', 'F', 1987, 50);
INSERT INTO public.api_person VALUES (22979, 'Sandra Perkovi', 'F', 1990, 28);
INSERT INTO public.api_person VALUES (22985, 'Sandra Thalmann', 'F', 1993, 120);
INSERT INTO public.api_person VALUES (22991, 'Sandrine Mainville', 'F', 1992, 21);
INSERT INTO public.api_person VALUES (22995, 'Sandro Sukno', 'M', 1990, 28);
INSERT INTO public.api_person VALUES (22996, 'Sandro Viletta', 'M', 1986, 120);
INSERT INTO public.api_person VALUES (23002, 'Sanna Charlotte Solberg', 'F', 1990, 98);
INSERT INTO public.api_person VALUES (23005, 'Sanne Wevers', 'F', 1992, 94);
INSERT INTO public.api_person VALUES (23013, 'Santiago Ral Lange Roberti', 'M', 1962, 5);
INSERT INTO public.api_person VALUES (23019, 'Saori Yoshida', 'F', 1983, 71);
INSERT INTO public.api_person VALUES (23020, 'Sara Ahmed Samir', 'F', 1998, 36);
INSERT INTO public.api_person VALUES (23022, 'Sara Benz', 'F', 1993, 120);
INSERT INTO public.api_person VALUES (23023, 'Sara Caroline Seger', 'F', 1985, 123);
INSERT INTO public.api_person VALUES (23025, 'Sara Dosho', 'F', 1995, 71);
INSERT INTO public.api_person VALUES (23028, 'Sara Ilonka Dbritz', 'F', 1995, 50);
INSERT INTO public.api_person VALUES (23030, 'Sara Kolak', 'F', 1995, 28);
INSERT INTO public.api_person VALUES (23031, 'Sara Krnji', 'F', 1991, 117);
INSERT INTO public.api_person VALUES (23037, 'Sara Slott-Bruun Petersen', 'F', 1987, 32);
INSERT INTO public.api_person VALUES (23046, 'Sarah Elizabeth Robles', 'F', 1988, 141);
INSERT INTO public.api_person VALUES (23049, 'Sarah Forster', 'F', 1994, 120);
INSERT INTO public.api_person VALUES (23051, 'Sarah Frederica Sjstrm', 'F', 1994, 123);
INSERT INTO public.api_person VALUES (23056, 'Sarah Goss', 'F', 1993, 99);
INSERT INTO public.api_person VALUES (23058, 'Sarah Kathryn Hammer (-Sparks)', 'F', 1984, 141);
INSERT INTO public.api_person VALUES (23063, 'Sarah Ourahmoune', 'F', 1982, 44);
INSERT INTO public.api_person VALUES (23075, 'Saskia Bartusiak', 'F', 1983, 50);
INSERT INTO public.api_person VALUES (23076, 'Saskia Clark', 'F', 1980, 47);
INSERT INTO public.api_person VALUES (23085, 'Saturday Keigo Erimuya', 'M', 1998, 96);
INSERT INTO public.api_person VALUES (23089, 'Saulius Ritter', 'M', 1989, 81);
INSERT INTO public.api_person VALUES (23092, 'Sava Ranelovi', 'M', 1993, 117);
INSERT INTO public.api_person VALUES (23094, 'Savenaca Rawaca', 'M', 1992, 42);
INSERT INTO public.api_person VALUES (23110, 'Sbastien Dockier', 'M', 1990, 13);
INSERT INTO public.api_person VALUES (23116, 'scar Albeyro Figueroa Mosquera', 'M', 1983, 26);
INSERT INTO public.api_person VALUES (23127, 'Scott Andrews', 'M', 1990, 47);
INSERT INTO public.api_person VALUES (23132, 'Scott David Durant', 'M', 1988, 47);
INSERT INTO public.api_person VALUES (23143, 'Scott Patrick Moir', 'M', 1988, 21);
INSERT INTO public.api_person VALUES (23151, 'Seabelo Mohanoe Senatla', 'M', 1993, 111);
INSERT INTO public.api_person VALUES (23161, 'Sebastian Brendel', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (23172, 'Seda Gurgenovna Tutkhalyan', 'F', 1999, 112);
INSERT INTO public.api_person VALUES (23181, 'Seimone Delicia Augustus', 'F', 1984, 141);
INSERT INTO public.api_person VALUES (23182, 'Selim Yaar', 'M', 1990, 134);
INSERT INTO public.api_person VALUES (23183, 'Selin Oruz', 'F', 1997, 50);
INSERT INTO public.api_person VALUES (23185, 'Selina Gasparin', 'F', 1985, 120);
INSERT INTO public.api_person VALUES (23187, 'Semi Kunabuli Kunatani', 'M', 1991, 42);
INSERT INTO public.api_person VALUES (23188, 'Semyon Andreyevich Yelistratov', 'M', 1991, 112);
INSERT INTO public.api_person VALUES (23209, 'Seremaia "Jerry" Tuwai Vunisa', 'M', 1989, 42);
INSERT INTO public.api_person VALUES (23214, 'Serge David Gnabry', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (23249, 'Sergey Igorevich Kamensky', 'M', 1988, 112);
INSERT INTO public.api_person VALUES (23299, 'Sergey Viktorovich Semyonov', 'M', 1996, 112);
INSERT INTO public.api_person VALUES (23332, 'Sergio Llull Meli', 'M', 1988, 38);
INSERT INTO public.api_person VALUES (23335, 'Sergio Rodrguez Gmez', 'M', 1986, 38);
INSERT INTO public.api_person VALUES (23337, 'Sergiu Toma', 'M', 1987, 135);
INSERT INTO public.api_person VALUES (23361, 'Serhiy Volodymyrovych Kulish', 'M', 1993, 138);
INSERT INTO public.api_person VALUES (23372, 'Seth Muenfuh Sincere', 'M', 1998, 96);
INSERT INTO public.api_person VALUES (23378, 'Severin Freund', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (23390, 'Shakhobiddin Shokirovich Zoirov', 'M', 1993, 142);
INSERT INTO public.api_person VALUES (23391, 'Shakhram Dzhamshedovich Giyasov', 'M', 1993, 142);
INSERT INTO public.api_person VALUES (23392, 'Shakira Baker', 'F', 1992, 99);
INSERT INTO public.api_person VALUES (23393, 'Shakur Stevenson', 'M', 1997, 141);
INSERT INTO public.api_person VALUES (23405, 'Shane Rose', 'M', 1973, 7);
INSERT INTO public.api_person VALUES (23407, 'Shang Chunsong', 'F', 1996, 23);
INSERT INTO public.api_person VALUES (23417, 'Shannon Lynn Szabados', 'F', 1987, 21);
INSERT INTO public.api_person VALUES (23419, 'Shannon Parry', 'F', 1990, 7);
INSERT INTO public.api_person VALUES (23424, 'Sharni Williams', 'F', 1988, 7);
INSERT INTO public.api_person VALUES (23432, 'Sharon van Rouwendaal', 'F', 1994, 94);
INSERT INTO public.api_person VALUES (23435, 'Shashalee Forbes', 'F', 1996, 69);
INSERT INTO public.api_person VALUES (23437, 'Shaun Keeling', 'M', 1987, 111);
INSERT INTO public.api_person VALUES (23442, 'Shaunae Miller (-Uibo)', 'F', 1994, 10);
INSERT INTO public.api_person VALUES (23451, 'Shea Michael Weber', 'M', 1986, 21);
INSERT INTO public.api_person VALUES (23464, 'Shelina Laura Zadorsky', 'F', 1993, 21);
INSERT INTO public.api_person VALUES (23471, 'Shelly-Ann Fraser-Pryce', 'F', 1987, 69);
INSERT INTO public.api_person VALUES (23476, 'Shericka Jackson', 'F', 1994, 69);
INSERT INTO public.api_person VALUES (23485, 'Shi Jinglin', 'F', 1993, 23);
INSERT INTO public.api_person VALUES (23486, 'Shi Jingnan', 'M', 1995, 23);
INSERT INTO public.api_person VALUES (23487, 'Shi Tingmao', 'F', 1992, 23);
INSERT INTO public.api_person VALUES (23488, 'Shi Zhiyong', 'M', 1994, 23);
INSERT INTO public.api_person VALUES (23496, 'Shim Seok-Hui', 'F', 1997, 75);
INSERT INTO public.api_person VALUES (23497, 'Shin Seung-Chan', 'F', 1995, 75);
INSERT INTO public.api_person VALUES (23507, 'Shinobu Ota', 'M', 1994, 71);
INSERT INTO public.api_person VALUES (23521, 'Shmagi Bolkvadze', 'M', 1994, 49);
INSERT INTO public.api_person VALUES (23523, 'Shohei Ono', 'M', 1992, 71);
INSERT INTO public.api_person VALUES (23525, 'Shona Clare McCallin', 'F', 1992, 47);
INSERT INTO public.api_person VALUES (23529, 'Shota Iizuka', 'M', 1991, 71);
INSERT INTO public.api_person VALUES (23542, 'Si Yajie', 'F', 1999, 23);
INSERT INTO public.api_person VALUES (23557, 'Sidney Patrick Crosby', 'M', 1988, 21);
INSERT INTO public.api_person VALUES (23632, 'Silvija Popovi', 'F', 1986, 117);
INSERT INTO public.api_person VALUES (23637, 'Silvio Heinevetter', 'M', 1985, 50);
INSERT INTO public.api_person VALUES (23668, 'Simon Eder', 'M', 1984, 8);
INSERT INTO public.api_person VALUES (23671, 'Simon Gougnard', 'M', 1991, 13);
INSERT INTO public.api_person VALUES (23676, 'Simon Martirosyan', 'M', 1997, 6);
INSERT INTO public.api_person VALUES (23677, 'Simon Niepmann', 'M', 1985, 120);
INSERT INTO public.api_person VALUES (23682, 'Simon Schempp', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (23684, 'Simon Schrch', 'M', 1991, 120);
INSERT INTO public.api_person VALUES (23685, 'Simon Shnapir', 'M', 1988, 141);
INSERT INTO public.api_person VALUES (23690, 'Simona Cristina Gherman (Alexandru-)', 'F', 1985, 110);
INSERT INTO public.api_person VALUES (23693, 'Simona Pop (Deac-)', 'F', 1989, 110);
INSERT INTO public.api_person VALUES (23695, 'Simone Arianne Biles', 'F', 1997, 141);
INSERT INTO public.api_person VALUES (23696, 'Simone Ashley Manuel', 'F', 1996, 141);
INSERT INTO public.api_person VALUES (23697, 'Simone Buti', 'M', 1984, 68);
INSERT INTO public.api_person VALUES (23700, 'Simone Facey', 'F', 1985, 69);
INSERT INTO public.api_person VALUES (23701, 'Simone Giannelli', 'M', 1997, 68);
INSERT INTO public.api_person VALUES (23707, 'Simone Laudehr', 'F', 1986, 50);
INSERT INTO public.api_person VALUES (23721, 'Sinphet Kruaithong', 'M', 1996, 128);
INSERT INTO public.api_person VALUES (23722, 'Siobhan-Marie O''Connor', 'F', 1996, 47);
INSERT INTO public.api_person VALUES (23723, 'Siraba Dembl', 'F', 1986, 44);
INSERT INTO public.api_person VALUES (23732, 'Sjinkie Knegt', 'M', 1990, 94);
INSERT INTO public.api_person VALUES (23751, 'Slobodan Niki', 'M', 1983, 117);
INSERT INTO public.api_person VALUES (23754, 'Slvia Domnguez Fernndez', 'F', 1987, 38);
INSERT INTO public.api_person VALUES (23774, 'Snke Rothenberger', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (23782, 'Sofia Magdalena Mattsson', 'F', 1990, 123);
INSERT INTO public.api_person VALUES (23786, 'Sofiane Oumiha', 'M', 1995, 44);
INSERT INTO public.api_person VALUES (23788, 'Sofiya Aleksandrovna Velikaya', 'F', 1985, 112);
INSERT INTO public.api_person VALUES (23795, 'Sohrab Moradi', 'M', 1989, 62);
INSERT INTO public.api_person VALUES (23810, 'Soner Demirta', 'M', 1991, 134);
INSERT INTO public.api_person VALUES (23836, 'Sonja Petrovi', 'F', 1989, 117);
INSERT INTO public.api_person VALUES (23839, 'Sophie Celina Scheder', 'F', 1997, 50);
INSERT INTO public.api_person VALUES (23840, 'Sophie Charlotte Bray', 'F', 1990, 47);
INSERT INTO public.api_person VALUES (23841, 'Sophie Diana Schmidt', 'F', 1988, 21);
INSERT INTO public.api_person VALUES (23844, 'Sophie Hitchon', 'F', 1991, 47);
INSERT INTO public.api_person VALUES (23849, 'Sopita Tanasan', 'F', 1995, 128);
INSERT INTO public.api_person VALUES (23857, 'Soslan Lyudvikovich Ramonov', 'M', 1991, 112);
INSERT INTO public.api_person VALUES (23862, 'Souleymane Diop Cissokho', 'M', 1991, 44);
INSERT INTO public.api_person VALUES (23866, 'Spencer James W. Wilton', 'M', 1973, 47);
INSERT INTO public.api_person VALUES (23868, 'Spyridon "Spyros" Gianniotis', 'M', 1980, 52);
INSERT INTO public.api_person VALUES (23883, 'Srgio "Escadinha" Dutra dos Santos', 'M', 1976, 18);
INSERT INTO public.api_person VALUES (23888, 'Sri Wahyuni Agustiani', 'F', 1995, 59);
INSERT INTO public.api_person VALUES (23926, 'Stanley Amuzie', 'M', 1996, 96);
INSERT INTO public.api_person VALUES (23943, 'Steele Alexander Johnson', 'M', 1996, 141);
INSERT INTO public.api_person VALUES (23951, 'Stefan Birevi', 'M', 1990, 117);
INSERT INTO public.api_person VALUES (23961, 'Stefan Groothuis', 'M', 1982, 94);
INSERT INTO public.api_person VALUES (23966, 'Stefan Jovi', 'M', 1991, 117);
INSERT INTO public.api_person VALUES (23973, 'Stefan Markovi', 'M', 1988, 117);
INSERT INTO public.api_person VALUES (23975, 'Stefan Mitrovi', 'M', 1988, 117);
INSERT INTO public.api_person VALUES (23990, 'Stefana Veljkovi', 'F', 1990, 117);
INSERT INTO public.api_person VALUES (23994, 'Stefanie Bhler', 'F', 1982, 50);
INSERT INTO public.api_person VALUES (23997, 'Stefanie Marty', 'F', 1989, 120);
INSERT INTO public.api_person VALUES (23998, 'Stefaniya Aleksandrovna Elfutina', 'F', 1997, 112);
INSERT INTO public.api_person VALUES (24007, 'Stefano Tempesti', 'M', 1979, 68);
INSERT INTO public.api_person VALUES (24010, 'Stefany del Carmen Hernndez Mendoza', 'F', 1991, 143);
INSERT INTO public.api_person VALUES (24015, 'Steffen Fth', 'M', 1990, 50);
INSERT INTO public.api_person VALUES (24016, 'Steffen Peters', 'M', 1965, 141);
INSERT INTO public.api_person VALUES (24018, 'Steffen Weinhold', 'M', 1986, 50);
INSERT INTO public.api_person VALUES (24021, 'Steffi Kriegerstein', 'F', 1993, 50);
INSERT INTO public.api_person VALUES (24059, 'Stephanie Lynn Marie Labb', 'F', 1987, 21);
INSERT INTO public.api_person VALUES (24067, 'Stephen "Steve" Scott', 'M', 1985, 47);
INSERT INTO public.api_person VALUES (24105, 'Stephen Milne', 'M', 1994, 47);
INSERT INTO public.api_person VALUES (24106, 'Stephen Newbold', 'M', 1995, 10);
INSERT INTO public.api_person VALUES (24114, 'Stephenie Ann McPherson', 'F', 1989, 69);
INSERT INTO public.api_person VALUES (24121, 'Steve Johnson', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (24123, 'Steve Missillier', 'M', 1985, 44);
INSERT INTO public.api_person VALUES (24124, 'Steven "Steve" Holcomb', 'M', 1981, 141);
INSERT INTO public.api_person VALUES (24129, 'Steven Daniel "Steve" Langton', 'M', 1984, 141);
INSERT INTO public.api_person VALUES (24137, 'Steven Gardiner', 'M', 1996, 10);
INSERT INTO public.api_person VALUES (24142, 'Steven James Burke', 'M', 1988, 47);
INSERT INTO public.api_person VALUES (24155, 'Stig Andr Berge', 'M', 1983, 98);
INSERT INTO public.api_person VALUES (24164, 'Stine Bredal Oftedal', 'F', 1992, 98);
INSERT INTO public.api_person VALUES (24169, 'Stle Sandbech', 'M', 1994, 98);
INSERT INTO public.api_person VALUES (24188, 'Stuart Brian Tinney', 'M', 1965, 7);
INSERT INTO public.api_person VALUES (24209, 'Sukanya Srisurat', 'F', 1995, 128);
INSERT INTO public.api_person VALUES (24234, 'Sun Wenyan', 'F', 1990, 23);
INSERT INTO public.api_person VALUES (24236, 'Sun Yanan', 'F', 1993, 23);
INSERT INTO public.api_person VALUES (24237, 'Sun Yang', 'M', 1992, 23);
INSERT INTO public.api_person VALUES (24239, 'Sun Yiwen', 'F', 1992, 23);
INSERT INTO public.api_person VALUES (24241, 'Sun Yujie', 'F', 1993, 23);
INSERT INTO public.api_person VALUES (24247, 'Sunette Stella Viljoen', 'F', 1984, 111);
INSERT INTO public.api_person VALUES (24277, 'Susannah Townsend', 'F', 1989, 47);
INSERT INTO public.api_person VALUES (24298, 'Suzanne Brigit "Sue" Bird', 'F', 1981, 141);
INSERT INTO public.api_person VALUES (24319, 'Sven Bender', 'M', 1989, 50);
INSERT INTO public.api_person VALUES (24334, 'Sven Jimmie Ericsson', 'M', 1981, 123);
INSERT INTO public.api_person VALUES (24336, 'Sven Kramer', 'M', 1987, 94);
INSERT INTO public.api_person VALUES (24360, 'Svenja Anette Huth', 'F', 1991, 50);
INSERT INTO public.api_person VALUES (24383, 'Svetlana Alekseyevna Romashina', 'F', 1990, 112);
INSERT INTO public.api_person VALUES (24394, 'Svetlana Konstantinovna Kolesnichenko', 'F', 1994, 112);
INSERT INTO public.api_person VALUES (24450, 'Sylvia Shaqueria Fowles', 'F', 1986, 141);
INSERT INTO public.api_person VALUES (24470, 'Tabea Kemme', 'F', 1992, 50);
INSERT INTO public.api_person VALUES (24493, 'Taha Akgl', 'M', 1991, 134);
INSERT INTO public.api_person VALUES (24509, 'Takanori Nagase', 'M', 1994, 71);
INSERT INTO public.api_person VALUES (24530, 'Takeshi Matsuda', 'M', 1984, 71);
INSERT INTO public.api_person VALUES (24531, 'Taku Hiraoka', 'M', 1996, 71);
INSERT INTO public.api_person VALUES (24532, 'Taku Takeuchi', 'M', 1988, 71);
INSERT INTO public.api_person VALUES (24535, 'Takuya Haneda', 'M', 1987, 71);
INSERT INTO public.api_person VALUES (24544, 'Tamara Csipes', 'F', 1990, 58);
INSERT INTO public.api_person VALUES (24545, 'Tamara Horacek', 'F', 1996, 44);
INSERT INTO public.api_person VALUES (24551, 'Tamara Radoaj', 'F', 1988, 117);
INSERT INTO public.api_person VALUES (24560, 'Tamika Devonne Catchings', 'F', 1979, 141);
INSERT INTO public.api_person VALUES (24563, 'Tamirat Tola Abera', 'M', 1992, 40);
INSERT INTO public.api_person VALUES (24575, 'Tams Kenderesi', 'M', 1997, 58);
INSERT INTO public.api_person VALUES (24587, 'Tamsin Cook', 'F', 1999, 7);
INSERT INTO public.api_person VALUES (24588, 'Tan Jiaxin', 'F', 1997, 23);
INSERT INTO public.api_person VALUES (24591, 'Tan Wee Kiong', 'M', 1989, 84);
INSERT INTO public.api_person VALUES (24593, 'Tan Ya-Ting', 'F', 1994, 131);
INSERT INTO public.api_person VALUES (24604, 'Tang Mengni', 'F', 1994, 23);
INSERT INTO public.api_person VALUES (24607, 'Tanguy Cosyns', 'M', 1991, 13);
INSERT INTO public.api_person VALUES (24608, 'Tania Cagnotto (-Parolin)', 'F', 1985, 68);
INSERT INTO public.api_person VALUES (24609, 'Tania Di Mario', 'F', 1979, 68);
INSERT INTO public.api_person VALUES (24616, 'Tanja Chiara Frank', 'F', 1993, 8);
INSERT INTO public.api_person VALUES (24629, 'Taoufik Makhloufi', 'M', 1988, 3);
INSERT INTO public.api_person VALUES (24639, 'Tara Leigh-Anne Watchorn', 'F', 1991, 21);
INSERT INTO public.api_person VALUES (24643, 'Taras Viktorovych Mishchuk', 'M', 1995, 138);
INSERT INTO public.api_person VALUES (24661, 'Tatjana Hfner', 'F', 1984, 50);
INSERT INTO public.api_person VALUES (24682, 'Tatyana Ivanovna Ivanova', 'F', 1992, 112);
INSERT INTO public.api_person VALUES (24710, 'Tatyana Vladimirova Yerokhina', 'F', 1985, 112);
INSERT INTO public.api_person VALUES (24715, 'Tatyana Yuryevna Logunova', 'F', 1980, 112);
INSERT INTO public.api_person VALUES (24721, 'Tawin Hanprab', 'M', 1998, 128);
INSERT INTO public.api_person VALUES (24722, 'Taylor Ellis-Watson', 'F', 1993, 141);
INSERT INTO public.api_person VALUES (24724, 'Taylor Madison Ruck', 'F', 2000, 21);
INSERT INTO public.api_person VALUES (24725, 'Taylor McKeown', 'F', 1995, 7);
INSERT INTO public.api_person VALUES (24727, 'Taylor Sander', 'M', 1992, 141);
INSERT INTO public.api_person VALUES (24728, 'Taylor Worth', 'M', 1991, 7);
INSERT INTO public.api_person VALUES (24735, 'Teddy Pierre-Marie Riner', 'M', 1989, 44);
INSERT INTO public.api_person VALUES (24736, 'Teemu Ilmari Selnne', 'M', 1971, 43);
INSERT INTO public.api_person VALUES (24748, 'Teja Gregorin', 'F', 1981, 116);
INSERT INTO public.api_person VALUES (24752, 'Telma Alexandra Pinto Monteiro', 'F', 1986, 106);
INSERT INTO public.api_person VALUES (24759, 'Teodor Anders Peterson', 'M', 1989, 123);
INSERT INTO public.api_person VALUES (24782, 'Teresa Frassinetti', 'F', 1986, 68);
INSERT INTO public.api_person VALUES (24788, 'Terina Lily Te Tamaki', 'F', 1997, 99);
INSERT INTO public.api_person VALUES (24812, 'Tessa Gobbo', 'F', 1991, 141);
INSERT INTO public.api_person VALUES (24813, 'Tessa Jane Virtue (-McCormick)', 'F', 1990, 21);
INSERT INTO public.api_person VALUES (24815, 'Tetiana Andrivna Volosozhar', 'F', 1987, 112);
INSERT INTO public.api_person VALUES (24867, 'Theodore Sharp "Ted" Ligety', 'M', 1985, 141);
INSERT INTO public.api_person VALUES (24877, 'Theresa Matauaina Fitzpatrick', 'F', 1995, 99);
INSERT INTO public.api_person VALUES (24882, 'Therese Johaug', 'F', 1989, 98);
INSERT INTO public.api_person VALUES (24885, 'Thiago Braz da Silva', 'M', 1994, 18);
INSERT INTO public.api_person VALUES (24888, 'Thiago Maia Alencar', 'M', 1997, 18);
INSERT INTO public.api_person VALUES (24892, 'Thibault Colard', 'M', 1992, 44);
INSERT INTO public.api_person VALUES (24893, 'Thibaut Vallette', 'M', 1974, 44);
INSERT INTO public.api_person VALUES (24897, 'Thierry Omeyer', 'M', 1977, 44);
INSERT INTO public.api_person VALUES (24909, 'Thomas "Tom" Jaeschke', 'M', 1994, 141);
INSERT INTO public.api_person VALUES (24920, 'Thomas Allen "Tom" Shields', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (24929, 'Thomas Briels', 'M', 1988, 13);
INSERT INTO public.api_person VALUES (24939, 'Thomas Diethart', 'M', 1993, 8);
INSERT INTO public.api_person VALUES (24968, 'Thomas Gabriel Jrmie Baroukh', 'M', 1988, 44);
INSERT INTO public.api_person VALUES (25012, 'Thomas Matthew "Tom" Ransley', 'M', 1986, 47);
INSERT INTO public.api_person VALUES (25017, 'Thomas Morgenstern', 'M', 1987, 8);
INSERT INTO public.api_person VALUES (25030, 'Thomas Plel', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (25034, 'Thomas Rhler', 'M', 1992, 50);
INSERT INTO public.api_person VALUES (25038, 'Thomas Robert "Tom" Daley', 'M', 1994, 47);
INSERT INTO public.api_person VALUES (25075, 'Thomas Zajac', 'M', 1986, 8);
INSERT INTO public.api_person VALUES (25113, 'Tian Tao', 'M', 1994, 23);
INSERT INTO public.api_person VALUES (25114, 'Tianna Madison-Bartoletta', 'F', 1986, 141);
INSERT INTO public.api_person VALUES (25124, 'Tibor Linka', 'M', 1995, 122);
INSERT INTO public.api_person VALUES (25145, 'Tijana Bogdanovi', 'F', 1998, 117);
INSERT INTO public.api_person VALUES (25146, 'Tijana Bokovi', 'F', 1997, 117);
INSERT INTO public.api_person VALUES (25147, 'Tijana Maleevi', 'F', 1991, 117);
INSERT INTO public.api_person VALUES (25154, 'Timea Bacsinszky', 'F', 1989, 120);
INSERT INTO public.api_person VALUES (25156, 'Timm Herzbruch', 'M', 1997, 50);
INSERT INTO public.api_person VALUES (25158, 'Timo Boll', 'M', 1981, 50);
INSERT INTO public.api_person VALUES (25159, 'Timo Horn', 'M', 1993, 50);
INSERT INTO public.api_person VALUES (25168, 'Timothey N''Guessan', 'M', 1993, 44);
INSERT INTO public.api_person VALUES (25181, 'Timothy Ernest Victor Kwizera "Tim" Agaba', 'M', 1989, 111);
INSERT INTO public.api_person VALUES (25205, 'Timur Marselevich Safin', 'M', 1993, 112);
INSERT INTO public.api_person VALUES (25206, 'Timur Oruz', 'M', 1995, 50);
INSERT INTO public.api_person VALUES (25207, 'Tina Alexandria Charles', 'F', 1989, 141);
INSERT INTO public.api_person VALUES (25209, 'Tina Dietze', 'F', 1988, 50);
INSERT INTO public.api_person VALUES (25214, 'Tina Trstenjak', 'F', 1991, 116);
INSERT INTO public.api_person VALUES (25218, 'Tiril Kampenhaug Eckhoff', 'F', 1991, 98);
INSERT INTO public.api_person VALUES (25219, 'Tirunesh Dibaba Keneni', 'F', 1985, 40);
INSERT INTO public.api_person VALUES (25227, 'Tnu Endrekson', 'M', 1979, 39);
INSERT INTO public.api_person VALUES (25230, 'Tobias Arlt', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (25231, 'Tobias Constantin Hauke', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (25233, 'Tobias Reichmann', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (25235, 'Tobias Wendl', 'M', 1988, 50);
INSERT INTO public.api_person VALUES (25267, 'Tom Boon', 'M', 1990, 13);
INSERT INTO public.api_person VALUES (25268, 'Tom Burton', 'M', 1990, 7);
INSERT INTO public.api_person VALUES (25269, 'Tom Dumoulin', 'M', 1991, 94);
INSERT INTO public.api_person VALUES (25275, 'Tom Grambusch', 'M', 1996, 50);
INSERT INTO public.api_person VALUES (25279, 'Tom Liebscher', 'M', 1993, 50);
INSERT INTO public.api_person VALUES (25281, 'Tom Mitchell', 'M', 1989, 47);
INSERT INTO public.api_person VALUES (25287, 'Tomas "Tom" Walsh', 'M', 1992, 99);
INSERT INTO public.api_person VALUES (25327, 'Tomoka Takeuchi', 'F', 1984, 71);
INSERT INTO public.api_person VALUES (25334, 'Tone Wieten', 'M', 1994, 94);
INSERT INTO public.api_person VALUES (25343, 'Toni Stipanovi', 'M', 1986, 28);
INSERT INTO public.api_person VALUES (25350, 'Tontowi Ahmad', 'M', 1987, 59);
INSERT INTO public.api_person VALUES (25355, 'Tony McQuay', 'M', 1990, 141);
INSERT INTO public.api_person VALUES (25357, 'Tony Victor James Yoka', 'M', 1992, 44);
INSERT INTO public.api_person VALUES (25366, 'Tora Berger (-Tveldal)', 'F', 1982, 98);
INSERT INTO public.api_person VALUES (25367, 'Torah Jane Bright (-Thomson)', 'F', 1987, 7);
INSERT INTO public.api_person VALUES (25405, 'Torul sgrov', 'M', 1993, 9);
INSERT INTO public.api_person VALUES (25422, 'Tpp Karin Stina Nilsson', 'F', 1994, 123);
INSERT INTO public.api_person VALUES (25440, 'Travis Stevens', 'M', 1986, 141);
INSERT INTO public.api_person VALUES (25495, 'Tsvetelina Biserova Naydenova', 'F', 1994, 20);
INSERT INTO public.api_person VALUES (25506, 'Tuomo Iisakki Ruutu', 'M', 1984, 43);
INSERT INTO public.api_person VALUES (25514, 'Tuukka Mikael Rask', 'M', 1988, 43);
INSERT INTO public.api_person VALUES (25517, 'Tuyana Norpolovna Dashidorzhiyeva', 'F', 1996, 112);
INSERT INTO public.api_person VALUES (25519, 'Tyla Nathan-Wong', 'F', 1994, 99);
INSERT INTO public.api_person VALUES (25555, 'Ulf Niklas Alexander Edler', 'M', 1987, 123);
INSERT INTO public.api_person VALUES (25627, 'Usain St. Leo Bolt', 'M', 1987, 69);
INSERT INTO public.api_person VALUES (25628, 'Usman Edu Muhammed', 'M', 1994, 96);
INSERT INTO public.api_person VALUES (25652, 'Uwe Gensheimer', 'M', 1987, 50);
INSERT INTO public.api_person VALUES (25684, 'Vadim Nikolayevich Streltsov', 'M', 1986, 15);
INSERT INTO public.api_person VALUES (25700, 'Valent Sinkovi', 'M', 1989, 28);
INSERT INTO public.api_person VALUES (25703, 'Valentin Demyanenko', 'M', 1984, 9);
INSERT INTO public.api_person VALUES (25714, 'Valentin Porte', 'M', 1991, 44);
INSERT INTO public.api_person VALUES (25739, 'Valentino Gallo', 'M', 1985, 68);
INSERT INTO public.api_person VALUES (25748, 'Valentyna Oleksandrivna "Valj" Semerenko', 'F', 1986, 138);
INSERT INTO public.api_person VALUES (25758, 'Valerie Kasanita Adams-Vili (-Price)', 'F', 1985, 99);
INSERT INTO public.api_person VALUES (25779, 'Valeriya Sergeyevna Zholobova-Koblova', 'F', 1993, 112);
INSERT INTO public.api_person VALUES (25822, 'Valrie Maltais', 'F', 1991, 21);
INSERT INTO public.api_person VALUES (25839, 'Varlam Lip''art''eliani', 'M', 1989, 49);
INSERT INTO public.api_person VALUES (25854, 'Vasilij bogar', 'M', 1976, 116);
INSERT INTO public.api_person VALUES (25862, 'Vasily Alekseyevich Levit', 'M', 1988, 72);
INSERT INTO public.api_person VALUES (25885, 'Vatemo Ravouvou', 'M', 1990, 42);
INSERT INTO public.api_person VALUES (25904, 'Vctor Claver Arocas', 'M', 1989, 38);
INSERT INTO public.api_person VALUES (25949, 'Venus Ebony Starr Williams', 'F', 1980, 141);
INSERT INTO public.api_person VALUES (25955, 'Vera Leonidovna Biryukova', 'F', 1998, 112);
INSERT INTO public.api_person VALUES (25972, 'Veronica Angella Campbell-Brown', 'F', 1982, 69);
INSERT INTO public.api_person VALUES (25975, 'Veronica Egebakken Kristiansen', 'F', 1990, 98);
INSERT INTO public.api_person VALUES (25978, 'Veronika Vtkov', 'F', 1989, 31);
INSERT INTO public.api_person VALUES (25988, 'Vesna Fabjan', 'F', 1986, 116);
INSERT INTO public.api_person VALUES (26016, 'Victor Ivan "Vic" Wild', 'M', 1987, 112);
INSERT INTO public.api_person VALUES (26030, 'Victoria "Vicki" Adams', 'F', 1990, 47);
INSERT INTO public.api_person VALUES (26037, 'Victoria Frances "Vicky" Holland', 'F', 1986, 47);
INSERT INTO public.api_person VALUES (26043, 'Victoria Thornley', 'F', 1988, 47);
INSERT INTO public.api_person VALUES (26067, 'Viktor An', 'M', 1986, 112);
INSERT INTO public.api_person VALUES (26075, 'Viktor Axelsen', 'M', 1994, 32);
INSERT INTO public.api_person VALUES (26076, 'Viktor Erik Kjll', 'M', 1986, 123);
INSERT INTO public.api_person VALUES (26152, 'Viktoria Rebensburg', 'F', 1990, 50);
INSERT INTO public.api_person VALUES (26159, 'Viktoriya Oleksandrivna "Vita" Semerenko', 'F', 1986, 138);
INSERT INTO public.api_person VALUES (26160, 'Viktoriya Viktorovna Kalinina', 'F', 1989, 112);
INSERT INTO public.api_person VALUES (26161, 'Viktoriya Yuryevna Zhilinskayte', 'F', 1989, 112);
INSERT INTO public.api_person VALUES (26173, 'Viliame Sevaka Mata', 'M', 1992, 42);
INSERT INTO public.api_person VALUES (26204, 'Vincent Grard', 'M', 1987, 44);
INSERT INTO public.api_person VALUES (26214, 'Vincent Vanasch', 'M', 1988, 13);
INSERT INTO public.api_person VALUES (26237, 'Violetta Vitalyevna Kolobova', 'F', 1991, 112);
INSERT INTO public.api_person VALUES (26254, 'Virginia "Ginny" Thrasher', 'F', 1997, 141);
INSERT INTO public.api_person VALUES (26274, 'Vitalina Igorevna Batsarashkina', 'F', 1997, 112);
INSERT INTO public.api_person VALUES (26292, 'Vitaly Vladimirovich Dunaytsev', 'M', 1992, 112);
INSERT INTO public.api_person VALUES (26303, 'Vivian Jepkemoi Cheruiyot', 'F', 1984, 73);
INSERT INTO public.api_person VALUES (26309, 'Vlada Aleksandrovna Chigiryova', 'F', 1995, 112);
INSERT INTO public.api_person VALUES (26315, 'Vladimer Khinchegashvili', 'M', 1991, 49);
INSERT INTO public.api_person VALUES (26331, 'Vladimir Anatolyevich Maslennikov', 'M', 1995, 112);
INSERT INTO public.api_person VALUES (26397, 'Vladimir Olegovich Nikitin', 'M', 1990, 112);
INSERT INTO public.api_person VALUES (26413, 'Vladimir timac', 'M', 1988, 117);
INSERT INTO public.api_person VALUES (26426, 'Vladimir Viktorovich Grigoryev', 'M', 1983, 112);
INSERT INTO public.api_person VALUES (26470, 'Vladislav Nikolayevich Antonov', 'M', 1992, 112);
INSERT INTO public.api_person VALUES (26471, 'Vladislav Olegovich Goncharov', 'M', 1996, 15);
INSERT INTO public.api_person VALUES (26477, 'Vladlena Eduardovna Bobrovnikova', 'F', 1988, 112);
INSERT INTO public.api_person VALUES (26585, 'Walace Souza Silva', 'M', 1995, 18);
INSERT INTO public.api_person VALUES (26600, 'Wallace Leandro de Souza', 'M', 1987, 18);
INSERT INTO public.api_person VALUES (26729, 'Wang Shun', 'M', 1994, 23);
INSERT INTO public.api_person VALUES (26737, 'Wang Yan', 'F', 2000, 23);
INSERT INTO public.api_person VALUES (26743, 'Wang Zhen', 'M', 1992, 23);
INSERT INTO public.api_person VALUES (26762, 'Wayde van Niekerk', 'M', 1992, 111);
INSERT INTO public.api_person VALUES (26778, 'Wei Qiuyue', 'F', 1989, 23);
INSERT INTO public.api_person VALUES (26809, 'Werner Kok', 'M', 1993, 111);
INSERT INTO public.api_person VALUES (26917, 'Willemijn Bos', 'F', 1988, 94);
INSERT INTO public.api_person VALUES (26939, 'William "Will" Ryan', 'M', 1989, 7);
INSERT INTO public.api_person VALUES (26975, 'William Bundu "Will" Claye', 'M', 1991, 141);
INSERT INTO public.api_person VALUES (26996, 'William de Asevedo Furtado', 'M', 1995, 18);
INSERT INTO public.api_person VALUES (27089, 'William Lockwood', 'M', 1988, 7);
INSERT INTO public.api_person VALUES (27102, 'William Meynard', 'M', 1987, 44);
INSERT INTO public.api_person VALUES (27118, 'William Peixoto Arjona', 'M', 1979, 18);
INSERT INTO public.api_person VALUES (27128, 'William Reid Priddy', 'M', 1978, 141);
INSERT INTO public.api_person VALUES (27147, 'William Spencer "Will" Satch', 'M', 1989, 47);
INSERT INTO public.api_person VALUES (27162, 'William Troost-Ekong', 'M', 1994, 96);
INSERT INTO public.api_person VALUES (27230, 'Wojciech Nowicki', 'M', 1989, 105);
INSERT INTO public.api_person VALUES (27250, 'Wolfgang Linger', 'M', 1983, 8);
INSERT INTO public.api_person VALUES (27289, 'Wu Dajing', 'M', 1995, 23);
INSERT INTO public.api_person VALUES (27297, 'Wu Minxia', 'F', 1986, 23);
INSERT INTO public.api_person VALUES (27307, 'Wverton Pereira da Silva', 'M', 1988, 18);
INSERT INTO public.api_person VALUES (27312, 'Xan de Waard', 'F', 1996, 94);
INSERT INTO public.api_person VALUES (27320, 'Xavier Garca Gadea', 'M', 1984, 28);
INSERT INTO public.api_person VALUES (27328, 'Xetaq Qazyumov', 'M', 1983, 9);
INSERT INTO public.api_person VALUES (27332, 'Xiang Yanmei', 'F', 1992, 23);
INSERT INTO public.api_person VALUES (27338, 'Xiaona Shan', 'F', 1983, 50);
INSERT INTO public.api_person VALUES (27346, 'Xu Anqi', 'F', 1992, 23);
INSERT INTO public.api_person VALUES (27351, 'Xu Jiayu', 'M', 1996, 23);
INSERT INTO public.api_person VALUES (27356, 'Xu Mengtao', 'F', 1991, 23);
INSERT INTO public.api_person VALUES (27359, 'Xu Xin', 'M', 1990, 23);
INSERT INTO public.api_person VALUES (27363, 'Xu Yunli', 'F', 1987, 23);
INSERT INTO public.api_person VALUES (27383, 'Yan Ni', 'F', 1987, 23);
INSERT INTO public.api_person VALUES (27386, 'Yana Alekseyevna Kudryavtseva', 'F', 1998, 112);
INSERT INTO public.api_person VALUES (27387, 'Yana Karapetovna Yegoryan', 'F', 1994, 112);
INSERT INTO public.api_person VALUES (27390, 'Yana Sergeyevna Romanova', 'F', 1984, 112);
INSERT INTO public.api_person VALUES (27399, 'Yang Fangxu', 'F', 1995, 23);
INSERT INTO public.api_person VALUES (27429, 'Yannick Philippe Andr Borel', 'M', 1989, 44);
INSERT INTO public.api_person VALUES (27434, 'Yarden Gerbi', 'F', 1989, 66);
INSERT INTO public.api_person VALUES (27441, 'Yasmani Copello Escobar', 'M', 1987, 134);
INSERT INTO public.api_person VALUES (27442, 'Yasmany Daniel Lugo Cabrera', 'M', 1990, 29);
INSERT INTO public.api_person VALUES (27466, 'Yekaterina Aleksandrovna Bobrova', 'F', 1991, 112);
INSERT INTO public.api_person VALUES (27468, 'Yekaterina Aleksandrovna Lobysheva', 'F', 1986, 112);
INSERT INTO public.api_person VALUES (27469, 'Yekaterina Aleksandrovna Marennikova', 'F', 1982, 112);
INSERT INTO public.api_person VALUES (27471, 'Yekaterina Alekseyevna Larionova', 'F', 1994, 72);
INSERT INTO public.api_person VALUES (27473, 'Yekaterina Andreyevna Pantyulina-Lisunova', 'F', 1990, 112);
INSERT INTO public.api_person VALUES (27474, 'Yekaterina Borisovna Bukina', 'F', 1987, 112);
INSERT INTO public.api_person VALUES (27475, 'Yekaterina Fyodorovna Ilyina', 'F', 1991, 112);
INSERT INTO public.api_person VALUES (27482, 'Yekaterina Valeryevna Makarova', 'F', 1988, 112);
INSERT INTO public.api_person VALUES (27483, 'Yekaterina Valeryevna Prokofyeva', 'F', 1991, 112);
INSERT INTO public.api_person VALUES (27486, 'Yekaterina Vladimirovna Dyachenko', 'F', 1988, 112);
INSERT INTO public.api_person VALUES (27488, 'Yekaterina Vladimirovna Shikhova', 'F', 1986, 112);
INSERT INTO public.api_person VALUES (27490, 'Yekaterina Yevgenyevna Shumilova', 'F', 1987, 112);
INSERT INTO public.api_person VALUES (27491, 'Yeldos Bakhtybayevich Smetov', 'M', 1993, 72);
INSERT INTO public.api_person VALUES (27506, 'Yelena Gennadyevna Prokofyeva', 'F', 1994, 112);
INSERT INTO public.api_person VALUES (27528, 'Yelena Ruslanovna Ilyinykh', 'F', 1995, 112);
INSERT INTO public.api_person VALUES (27532, 'Yelena Sergeyevna Vesnina', 'F', 1986, 112);
INSERT INTO public.api_person VALUES (27535, 'Yelena Valeryevna Nikitina', 'F', 1993, 112);
INSERT INTO public.api_person VALUES (27576, 'Yevgeniya Andreyevna Ivanova', 'F', 1987, 112);
INSERT INTO public.api_person VALUES (27582, 'Yevgeniya Viktorovna Soboleva-Khokhriakova', 'F', 1989, 112);
INSERT INTO public.api_person VALUES (27588, 'Yevgeny Aleksandrovich Garanichev', 'M', 1989, 112);
INSERT INTO public.api_person VALUES (27595, 'Yevgeny Andreyevich Tishchenko', 'M', 1991, 112);
INSERT INTO public.api_person VALUES (27612, 'Yevgeny Mikhaylovich Rylov', 'M', 1997, 112);
INSERT INTO public.api_person VALUES (27621, 'Yevgeny Romanovich Ustyugov', 'M', 1986, 112);
INSERT INTO public.api_person VALUES (27631, 'Yevgeny Viktorovich Plyushchenko', 'M', 1983, 112);
INSERT INTO public.api_person VALUES (27648, 'Yi Siling', 'F', 1989, 23);
INSERT INTO public.api_person VALUES (27649, 'Yin Chengxin', 'F', 1995, 23);
INSERT INTO public.api_person VALUES (27651, 'Yin Junhua', 'F', 1991, 23);
INSERT INTO public.api_person VALUES (27652, 'Ying Han', 'F', 1983, 50);
INSERT INTO public.api_person VALUES (27666, 'Yoel Segundo Finol Rivas', 'M', 1997, 143);
INSERT INTO public.api_person VALUES (27669, 'Yohan Blake', 'M', 1990, 69);
INSERT INTO public.api_person VALUES (27684, 'Yoon Jin-Hee', 'F', 1987, 75);
INSERT INTO public.api_person VALUES (27700, 'Yoshihide Kiryu', 'M', 1996, 71);
INSERT INTO public.api_person VALUES (27722, 'You Hao', 'M', 1992, 23);
INSERT INTO public.api_person VALUES (27741, 'Yu Song', 'F', 1987, 23);
INSERT INTO public.api_person VALUES (27749, 'Yuan Xinyue', 'F', 1997, 23);
INSERT INTO public.api_person VALUES (27757, 'Yuki Kobori', 'M', 1994, 71);
INSERT INTO public.api_person VALUES (27764, 'Yukiko Inui', 'F', 1991, 71);
INSERT INTO public.api_person VALUES (27781, 'Yulimar del Valle Rojas Rodrguez', 'F', 1996, 143);
INSERT INTO public.api_person VALUES (27788, 'Yuliya Andreyevna Yefimova', 'F', 1992, 112);
INSERT INTO public.api_person VALUES (27791, 'Yuliya Igorevna Skokova', 'F', 1983, 112);
INSERT INTO public.api_person VALUES (27797, 'Yuliya Petrovna Gavrilova', 'F', 1989, 112);
INSERT INTO public.api_person VALUES (27803, 'Yuliya Valentynivna Dzhyma', 'F', 1991, 138);
INSERT INTO public.api_person VALUES (27810, 'Yuliya Vyacheslavovna Lipnitskaya', 'F', 1999, 112);
INSERT INTO public.api_person VALUES (27828, 'Yu-Na Kim', 'F', 1991, 75);
INSERT INTO public.api_person VALUES (27830, 'Yurberjen Herney Martnez Rivas', 'M', 1992, 26);
INSERT INTO public.api_person VALUES (27831, 'Yuri Alvear Orjuela', 'F', 1986, 26);
INSERT INTO public.api_person VALUES (27852, 'Yuriy Volodymyrovych Cheban', 'M', 1986, 138);
INSERT INTO public.api_person VALUES (27925, 'Yusuke Tanaka', 'M', 1990, 71);
INSERT INTO public.api_person VALUES (27931, 'Yuzuru Hanyu', 'M', 1995, 71);
INSERT INTO public.api_person VALUES (27948, 'Zach Garrett', 'M', 1995, 141);
INSERT INTO public.api_person VALUES (27970, 'Zbigniew Marcin Brdka', 'M', 1985, 105);
INSERT INTO public.api_person VALUES (28003, 'Zeng Zhen', 'F', 1994, 23);
INSERT INTO public.api_person VALUES (28013, 'Zhan Vensanovych Beleniuk', 'M', 1991, 138);
INSERT INTO public.api_person VALUES (28016, 'Zhang Binbin', 'F', 1989, 23);
INSERT INTO public.api_person VALUES (28018, 'Zhang Changning', 'F', 1996, 23);
INSERT INTO public.api_person VALUES (28019, 'Zhang Chenglong', 'M', 1989, 23);
INSERT INTO public.api_person VALUES (28023, 'Zhang Fengliu', 'F', 1990, 23);
INSERT INTO public.api_person VALUES (28026, 'Zhang Hong', 'F', 1989, 23);
INSERT INTO public.api_person VALUES (28029, 'Zhang Jike', 'M', 1988, 23);
INSERT INTO public.api_person VALUES (28034, 'Zhang Mengxue', 'F', 1991, 23);
INSERT INTO public.api_person VALUES (28036, 'Zhang Nan', 'M', 1990, 23);
INSERT INTO public.api_person VALUES (28044, 'Zhang Wenxiu', 'F', 1986, 23);
INSERT INTO public.api_person VALUES (28068, 'Zhao Shuai', 'M', 1996, 23);
INSERT INTO public.api_person VALUES (28070, 'Zhao Yunlei', 'F', 1987, 23);
INSERT INTO public.api_person VALUES (28071, 'Zhazira Abdrakhmanovna Zhapparkul', 'F', 1994, 72);
INSERT INTO public.api_person VALUES (28077, 'Zheng Shuyin', 'F', 1994, 23);
INSERT INTO public.api_person VALUES (28080, 'Zhong Tianshi', 'F', 1991, 23);
INSERT INTO public.api_person VALUES (28095, 'Zhou Yang', 'F', 1992, 23);
INSERT INTO public.api_person VALUES (28102, 'Zhu Ting', 'F', 1995, 23);
INSERT INTO public.api_person VALUES (28124, 'Zoe Michaela  de Toledo', 'F', 1987, 47);
INSERT INTO public.api_person VALUES (28125, 'Zoe Samantha Lee', 'F', 1986, 47);


--
-- TOC entry 3227 (class 0 OID 33470)
-- Dependencies: 231
-- Data for Name: api_personmedal; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.api_personmedal VALUES (25, 36, 22);
INSERT INTO public.api_personmedal VALUES (33, 807, 30);
INSERT INTO public.api_personmedal VALUES (50, 716, 39);
INSERT INTO public.api_personmedal VALUES (51, 718, 39);
INSERT INTO public.api_personmedal VALUES (61, 761, 48);
INSERT INTO public.api_personmedal VALUES (72, 608, 55);
INSERT INTO public.api_personmedal VALUES (75, 395, 58);
INSERT INTO public.api_personmedal VALUES (77, 874, 60);
INSERT INTO public.api_personmedal VALUES (117, 645, 93);
INSERT INTO public.api_personmedal VALUES (118, 672, 93);
INSERT INTO public.api_personmedal VALUES (153, 1041, 117);
INSERT INTO public.api_personmedal VALUES (154, 539, 118);
INSERT INTO public.api_personmedal VALUES (168, 193, 129);
INSERT INTO public.api_personmedal VALUES (260, 448, 193);
INSERT INTO public.api_personmedal VALUES (296, 551, 216);
INSERT INTO public.api_personmedal VALUES (305, 453, 220);
INSERT INTO public.api_personmedal VALUES (309, 754, 224);
INSERT INTO public.api_personmedal VALUES (323, 753, 235);
INSERT INTO public.api_personmedal VALUES (330, 741, 240);
INSERT INTO public.api_personmedal VALUES (331, 145, 241);
INSERT INTO public.api_personmedal VALUES (342, 1015, 249);
INSERT INTO public.api_personmedal VALUES (343, 1021, 249);
INSERT INTO public.api_personmedal VALUES (350, 986, 253);
INSERT INTO public.api_personmedal VALUES (357, 36, 257);
INSERT INTO public.api_personmedal VALUES (391, 1096, 275);
INSERT INTO public.api_personmedal VALUES (466, 173, 328);
INSERT INTO public.api_personmedal VALUES (553, 1081, 395);
INSERT INTO public.api_personmedal VALUES (554, 1087, 395);
INSERT INTO public.api_personmedal VALUES (572, 870, 408);
INSERT INTO public.api_personmedal VALUES (619, 557, 439);
INSERT INTO public.api_personmedal VALUES (656, 6, 462);
INSERT INTO public.api_personmedal VALUES (662, 508, 467);
INSERT INTO public.api_personmedal VALUES (666, 171, 469);
INSERT INTO public.api_personmedal VALUES (695, 1076, 490);
INSERT INTO public.api_personmedal VALUES (713, 1052, 504);
INSERT INTO public.api_personmedal VALUES (732, 994, 515);
INSERT INTO public.api_personmedal VALUES (754, 994, 531);
INSERT INTO public.api_personmedal VALUES (755, 996, 531);
INSERT INTO public.api_personmedal VALUES (787, 501, 553);
INSERT INTO public.api_personmedal VALUES (849, 825, 594);
INSERT INTO public.api_personmedal VALUES (892, 1087, 620);
INSERT INTO public.api_personmedal VALUES (912, 1125, 628);
INSERT INTO public.api_personmedal VALUES (925, 978, 637);
INSERT INTO public.api_personmedal VALUES (926, 981, 637);
INSERT INTO public.api_personmedal VALUES (931, 815, 640);
INSERT INTO public.api_personmedal VALUES (932, 174, 641);
INSERT INTO public.api_personmedal VALUES (942, 732, 646);
INSERT INTO public.api_personmedal VALUES (945, 739, 647);
INSERT INTO public.api_personmedal VALUES (962, 978, 659);
INSERT INTO public.api_personmedal VALUES (968, 755, 664);
INSERT INTO public.api_personmedal VALUES (973, 957, 667);
INSERT INTO public.api_personmedal VALUES (975, 372, 669);
INSERT INTO public.api_personmedal VALUES (987, 978, 678);
INSERT INTO public.api_personmedal VALUES (988, 981, 678);
INSERT INTO public.api_personmedal VALUES (1091, 813, 742);
INSERT INTO public.api_personmedal VALUES (1096, 813, 747);
INSERT INTO public.api_personmedal VALUES (1112, 982, 755);
INSERT INTO public.api_personmedal VALUES (1114, 1145, 757);
INSERT INTO public.api_personmedal VALUES (1128, 289, 768);
INSERT INTO public.api_personmedal VALUES (1129, 517, 769);
INSERT INTO public.api_personmedal VALUES (1131, 1074, 771);
INSERT INTO public.api_personmedal VALUES (1136, 532, 776);
INSERT INTO public.api_personmedal VALUES (1140, 177, 779);
INSERT INTO public.api_personmedal VALUES (1141, 370, 780);
INSERT INTO public.api_personmedal VALUES (1142, 374, 780);
INSERT INTO public.api_personmedal VALUES (1156, 516, 791);
INSERT INTO public.api_personmedal VALUES (1163, 1075, 797);
INSERT INTO public.api_personmedal VALUES (1164, 534, 798);
INSERT INTO public.api_personmedal VALUES (1171, 422, 802);
INSERT INTO public.api_personmedal VALUES (1204, 1078, 823);
INSERT INTO public.api_personmedal VALUES (1215, 451, 831);
INSERT INTO public.api_personmedal VALUES (1217, 583, 833);
INSERT INTO public.api_personmedal VALUES (1219, 456, 835);
INSERT INTO public.api_personmedal VALUES (1226, 396, 839);
INSERT INTO public.api_personmedal VALUES (1227, 433, 840);
INSERT INTO public.api_personmedal VALUES (1228, 439, 840);
INSERT INTO public.api_personmedal VALUES (1229, 441, 840);
INSERT INTO public.api_personmedal VALUES (1235, 1050, 843);
INSERT INTO public.api_personmedal VALUES (1281, 924, 876);
INSERT INTO public.api_personmedal VALUES (1282, 614, 877);
INSERT INTO public.api_personmedal VALUES (1474, 558, 1021);
INSERT INTO public.api_personmedal VALUES (1485, 391, 1030);
INSERT INTO public.api_personmedal VALUES (1488, 1079, 1032);
INSERT INTO public.api_personmedal VALUES (1494, 295, 1037);
INSERT INTO public.api_personmedal VALUES (1495, 810, 1038);
INSERT INTO public.api_personmedal VALUES (1498, 175, 1040);
INSERT INTO public.api_personmedal VALUES (1509, 799, 1049);
INSERT INTO public.api_personmedal VALUES (1514, 440, 1052);
INSERT INTO public.api_personmedal VALUES (1515, 442, 1052);
INSERT INTO public.api_personmedal VALUES (1516, 444, 1052);
INSERT INTO public.api_personmedal VALUES (1524, 1037, 1055);
INSERT INTO public.api_personmedal VALUES (1526, 739, 1056);
INSERT INTO public.api_personmedal VALUES (1529, 1059, 1058);
INSERT INTO public.api_personmedal VALUES (1551, 533, 1076);
INSERT INTO public.api_personmedal VALUES (1565, 317, 1090);
INSERT INTO public.api_personmedal VALUES (1569, 350, 1093);
INSERT INTO public.api_personmedal VALUES (1570, 451, 1094);
INSERT INTO public.api_personmedal VALUES (1574, 716, 1097);
INSERT INTO public.api_personmedal VALUES (1575, 721, 1097);
INSERT INTO public.api_personmedal VALUES (1582, 398, 1098);
INSERT INTO public.api_personmedal VALUES (1583, 106, 1099);
INSERT INTO public.api_personmedal VALUES (1584, 109, 1099);
INSERT INTO public.api_personmedal VALUES (1585, 113, 1099);
INSERT INTO public.api_personmedal VALUES (1593, 88, 1101);
INSERT INTO public.api_personmedal VALUES (1594, 120, 1101);
INSERT INTO public.api_personmedal VALUES (1598, 396, 1105);
INSERT INTO public.api_personmedal VALUES (1609, 39, 1114);
INSERT INTO public.api_personmedal VALUES (1664, 1166, 1150);
INSERT INTO public.api_personmedal VALUES (1677, 537, 1160);
INSERT INTO public.api_personmedal VALUES (1678, 716, 1161);
INSERT INTO public.api_personmedal VALUES (1683, 1078, 1163);
INSERT INTO public.api_personmedal VALUES (1685, 452, 1165);
INSERT INTO public.api_personmedal VALUES (1688, 537, 1167);
INSERT INTO public.api_personmedal VALUES (1696, 451, 1169);
INSERT INTO public.api_personmedal VALUES (1731, 1169, 1193);
INSERT INTO public.api_personmedal VALUES (1734, 482, 1195);
INSERT INTO public.api_personmedal VALUES (1735, 395, 1196);
INSERT INTO public.api_personmedal VALUES (1768, 434, 1219);
INSERT INTO public.api_personmedal VALUES (1770, 558, 1221);
INSERT INTO public.api_personmedal VALUES (1775, 466, 1224);
INSERT INTO public.api_personmedal VALUES (1781, 1151, 1230);
INSERT INTO public.api_personmedal VALUES (1782, 1153, 1230);
INSERT INTO public.api_personmedal VALUES (1793, 174, 1238);
INSERT INTO public.api_personmedal VALUES (1808, 381, 1249);
INSERT INTO public.api_personmedal VALUES (1815, 344, 1255);
INSERT INTO public.api_personmedal VALUES (1817, 485, 1257);
INSERT INTO public.api_personmedal VALUES (1821, 975, 1260);
INSERT INTO public.api_personmedal VALUES (1832, 507, 1267);
INSERT INTO public.api_personmedal VALUES (1833, 816, 1268);
INSERT INTO public.api_personmedal VALUES (1834, 507, 1269);
INSERT INTO public.api_personmedal VALUES (1836, 507, 1270);
INSERT INTO public.api_personmedal VALUES (1850, 319, 1277);
INSERT INTO public.api_personmedal VALUES (1861, 215, 1283);
INSERT INTO public.api_personmedal VALUES (1928, 1139, 1335);
INSERT INTO public.api_personmedal VALUES (1948, 1075, 1353);
INSERT INTO public.api_personmedal VALUES (2043, 21, 1417);
INSERT INTO public.api_personmedal VALUES (2044, 29, 1417);
INSERT INTO public.api_personmedal VALUES (2045, 36, 1417);
INSERT INTO public.api_personmedal VALUES (2087, 813, 1443);
INSERT INTO public.api_personmedal VALUES (2125, 367, 1466);
INSERT INTO public.api_personmedal VALUES (2184, 514, 1504);
INSERT INTO public.api_personmedal VALUES (2187, 1084, 1506);
INSERT INTO public.api_personmedal VALUES (2214, 1134, 1526);
INSERT INTO public.api_personmedal VALUES (2221, 1134, 1528);
INSERT INTO public.api_personmedal VALUES (2226, 449, 1531);
INSERT INTO public.api_personmedal VALUES (2229, 539, 1534);
INSERT INTO public.api_personmedal VALUES (2236, 533, 1540);
INSERT INTO public.api_personmedal VALUES (2246, 513, 1549);
INSERT INTO public.api_personmedal VALUES (2250, 781, 1551);
INSERT INTO public.api_personmedal VALUES (2297, 929, 1580);
INSERT INTO public.api_personmedal VALUES (2381, 811, 1635);
INSERT INTO public.api_personmedal VALUES (2385, 1085, 1637);
INSERT INTO public.api_personmedal VALUES (2386, 1088, 1637);
INSERT INTO public.api_personmedal VALUES (2397, 812, 1647);
INSERT INTO public.api_personmedal VALUES (2424, 368, 1663);
INSERT INTO public.api_personmedal VALUES (2459, 812, 1692);
INSERT INTO public.api_personmedal VALUES (2484, 172, 1707);
INSERT INTO public.api_personmedal VALUES (2493, 1079, 1714);
INSERT INTO public.api_personmedal VALUES (2526, 442, 1734);
INSERT INTO public.api_personmedal VALUES (2528, 791, 1736);
INSERT INTO public.api_personmedal VALUES (2565, 491, 1762);
INSERT INTO public.api_personmedal VALUES (2592, 150, 1780);
INSERT INTO public.api_personmedal VALUES (2597, 127, 1783);
INSERT INTO public.api_personmedal VALUES (2599, 881, 1784);
INSERT INTO public.api_personmedal VALUES (2608, 396, 1790);
INSERT INTO public.api_personmedal VALUES (2619, 1079, 1795);
INSERT INTO public.api_personmedal VALUES (2625, 1168, 1801);
INSERT INTO public.api_personmedal VALUES (2645, 974, 1814);
INSERT INTO public.api_personmedal VALUES (2666, 173, 1829);
INSERT INTO public.api_personmedal VALUES (2670, 937, 1833);
INSERT INTO public.api_personmedal VALUES (2671, 942, 1833);
INSERT INTO public.api_personmedal VALUES (2681, 1070, 1840);
INSERT INTO public.api_personmedal VALUES (2685, 909, 1843);
INSERT INTO public.api_personmedal VALUES (2690, 620, 1848);
INSERT INTO public.api_personmedal VALUES (2691, 630, 1848);
INSERT INTO public.api_personmedal VALUES (2697, 302, 1854);
INSERT INTO public.api_personmedal VALUES (2703, 1014, 1855);
INSERT INTO public.api_personmedal VALUES (2712, 1027, 1860);
INSERT INTO public.api_personmedal VALUES (2723, 816, 1867);
INSERT INTO public.api_personmedal VALUES (2732, 816, 1873);
INSERT INTO public.api_personmedal VALUES (2733, 450, 1874);
INSERT INTO public.api_personmedal VALUES (2734, 450, 1875);
INSERT INTO public.api_personmedal VALUES (2735, 1028, 1876);
INSERT INTO public.api_personmedal VALUES (2740, 1027, 1881);
INSERT INTO public.api_personmedal VALUES (2742, 299, 1883);
INSERT INTO public.api_personmedal VALUES (2743, 309, 1883);
INSERT INTO public.api_personmedal VALUES (2746, 816, 1886);
INSERT INTO public.api_personmedal VALUES (2747, 450, 1887);
INSERT INTO public.api_personmedal VALUES (2754, 816, 1892);
INSERT INTO public.api_personmedal VALUES (2762, 580, 1899);
INSERT INTO public.api_personmedal VALUES (2774, 542, 1909);
INSERT INTO public.api_personmedal VALUES (2789, 1078, 1919);
INSERT INTO public.api_personmedal VALUES (2795, 1015, 1923);
INSERT INTO public.api_personmedal VALUES (2808, 458, 1932);
INSERT INTO public.api_personmedal VALUES (2822, 110, 1941);
INSERT INTO public.api_personmedal VALUES (2823, 549, 1942);
INSERT INTO public.api_personmedal VALUES (2847, 581, 1957);
INSERT INTO public.api_personmedal VALUES (2893, 458, 1990);
INSERT INTO public.api_personmedal VALUES (2895, 396, 1992);
INSERT INTO public.api_personmedal VALUES (2959, 668, 2043);
INSERT INTO public.api_personmedal VALUES (2960, 683, 2043);
INSERT INTO public.api_personmedal VALUES (3033, 658, 2095);
INSERT INTO public.api_personmedal VALUES (3038, 1044, 2099);
INSERT INTO public.api_personmedal VALUES (3047, 957, 2107);
INSERT INTO public.api_personmedal VALUES (3106, 812, 2155);
INSERT INTO public.api_personmedal VALUES (3153, 1076, 2192);
INSERT INTO public.api_personmedal VALUES (3167, 555, 2204);
INSERT INTO public.api_personmedal VALUES (3176, 180, 2206);
INSERT INTO public.api_personmedal VALUES (3193, 530, 2221);
INSERT INTO public.api_personmedal VALUES (3198, 814, 2226);
INSERT INTO public.api_personmedal VALUES (3205, 1118, 2230);
INSERT INTO public.api_personmedal VALUES (3206, 1121, 2230);
INSERT INTO public.api_personmedal VALUES (3207, 1123, 2230);
INSERT INTO public.api_personmedal VALUES (3210, 815, 2231);
INSERT INTO public.api_personmedal VALUES (3250, 201, 2260);
INSERT INTO public.api_personmedal VALUES (3252, 37, 2262);
INSERT INTO public.api_personmedal VALUES (3286, 1082, 2287);
INSERT INTO public.api_personmedal VALUES (3301, 1054, 2297);
INSERT INTO public.api_personmedal VALUES (3309, 958, 2301);
INSERT INTO public.api_personmedal VALUES (3384, 200, 2357);
INSERT INTO public.api_personmedal VALUES (3385, 508, 2358);
INSERT INTO public.api_personmedal VALUES (3455, 424, 2416);
INSERT INTO public.api_personmedal VALUES (3459, 407, 2419);
INSERT INTO public.api_personmedal VALUES (3480, 454, 2436);
INSERT INTO public.api_personmedal VALUES (3503, 871, 2455);
INSERT INTO public.api_personmedal VALUES (3512, 372, 2459);
INSERT INTO public.api_personmedal VALUES (3536, 979, 2479);
INSERT INTO public.api_personmedal VALUES (3552, 34, 2491);
INSERT INTO public.api_personmedal VALUES (3559, 108, 2497);
INSERT INTO public.api_personmedal VALUES (3561, 814, 2499);
INSERT INTO public.api_personmedal VALUES (3567, 1040, 2505);
INSERT INTO public.api_personmedal VALUES (3571, 398, 2508);
INSERT INTO public.api_personmedal VALUES (3573, 117, 2510);
INSERT INTO public.api_personmedal VALUES (3574, 560, 2511);
INSERT INTO public.api_personmedal VALUES (3581, 55, 2515);
INSERT INTO public.api_personmedal VALUES (3595, 358, 2528);
INSERT INTO public.api_personmedal VALUES (3596, 360, 2528);
INSERT INTO public.api_personmedal VALUES (3597, 173, 2529);
INSERT INTO public.api_personmedal VALUES (3603, 35, 2534);
INSERT INTO public.api_personmedal VALUES (3660, 484, 2573);
INSERT INTO public.api_personmedal VALUES (3716, 1057, 2615);
INSERT INTO public.api_personmedal VALUES (3730, 834, 2627);
INSERT INTO public.api_personmedal VALUES (3731, 239, 2628);
INSERT INTO public.api_personmedal VALUES (3783, 163, 2667);
INSERT INTO public.api_personmedal VALUES (3784, 1064, 2668);
INSERT INTO public.api_personmedal VALUES (3799, 1147, 2681);
INSERT INTO public.api_personmedal VALUES (3805, 396, 2687);
INSERT INTO public.api_personmedal VALUES (3865, 627, 2735);
INSERT INTO public.api_personmedal VALUES (3882, 138, 2747);
INSERT INTO public.api_personmedal VALUES (3885, 789, 2748);
INSERT INTO public.api_personmedal VALUES (3913, 747, 2770);
INSERT INTO public.api_personmedal VALUES (3915, 451, 2771);
INSERT INTO public.api_personmedal VALUES (3919, 982, 2774);
INSERT INTO public.api_personmedal VALUES (3927, 254, 2779);
INSERT INTO public.api_personmedal VALUES (3968, 202, 2807);
INSERT INTO public.api_personmedal VALUES (3991, 1025, 2823);
INSERT INTO public.api_personmedal VALUES (4031, 1154, 2855);
INSERT INTO public.api_personmedal VALUES (4165, 1100, 2948);
INSERT INTO public.api_personmedal VALUES (4219, 459, 2986);
INSERT INTO public.api_personmedal VALUES (4223, 784, 2989);
INSERT INTO public.api_personmedal VALUES (4248, 560, 3006);
INSERT INTO public.api_personmedal VALUES (4251, 774, 3009);
INSERT INTO public.api_personmedal VALUES (4253, 809, 3011);
INSERT INTO public.api_personmedal VALUES (4337, 1075, 3063);
INSERT INTO public.api_personmedal VALUES (4341, 1099, 3065);
INSERT INTO public.api_personmedal VALUES (4379, 567, 3098);
INSERT INTO public.api_personmedal VALUES (4381, 668, 3099);
INSERT INTO public.api_personmedal VALUES (4383, 451, 3101);
INSERT INTO public.api_personmedal VALUES (4385, 135, 3103);
INSERT INTO public.api_personmedal VALUES (4408, 515, 3118);
INSERT INTO public.api_personmedal VALUES (4410, 1181, 3120);
INSERT INTO public.api_personmedal VALUES (4430, 170, 3132);
INSERT INTO public.api_personmedal VALUES (4441, 735, 3137);
INSERT INTO public.api_personmedal VALUES (4443, 403, 3139);
INSERT INTO public.api_personmedal VALUES (4445, 66, 3141);
INSERT INTO public.api_personmedal VALUES (4467, 809, 3159);
INSERT INTO public.api_personmedal VALUES (4479, 44, 3170);
INSERT INTO public.api_personmedal VALUES (4569, 515, 3229);
INSERT INTO public.api_personmedal VALUES (4576, 1023, 3235);
INSERT INTO public.api_personmedal VALUES (4585, 288, 3239);
INSERT INTO public.api_personmedal VALUES (4598, 3, 3244);
INSERT INTO public.api_personmedal VALUES (4599, 5, 3244);
INSERT INTO public.api_personmedal VALUES (4616, 811, 3256);
INSERT INTO public.api_personmedal VALUES (4620, 809, 3259);
INSERT INTO public.api_personmedal VALUES (4629, 179, 3268);
INSERT INTO public.api_personmedal VALUES (4636, 172, 3272);
INSERT INTO public.api_personmedal VALUES (4659, 36, 3286);
INSERT INTO public.api_personmedal VALUES (4725, 1078, 3340);
INSERT INTO public.api_personmedal VALUES (4726, 94, 3341);
INSERT INTO public.api_personmedal VALUES (4727, 1077, 3342);
INSERT INTO public.api_personmedal VALUES (4729, 132, 3344);
INSERT INTO public.api_personmedal VALUES (4778, 560, 3377);
INSERT INTO public.api_personmedal VALUES (4782, 715, 3381);
INSERT INTO public.api_personmedal VALUES (4783, 719, 3381);
INSERT INTO public.api_personmedal VALUES (4787, 723, 3382);
INSERT INTO public.api_personmedal VALUES (4788, 140, 3383);
INSERT INTO public.api_personmedal VALUES (4790, 172, 3384);
INSERT INTO public.api_personmedal VALUES (4795, 722, 3388);
INSERT INTO public.api_personmedal VALUES (4799, 715, 3389);
INSERT INTO public.api_personmedal VALUES (4851, 805, 3422);
INSERT INTO public.api_personmedal VALUES (4879, 175, 3445);
INSERT INTO public.api_personmedal VALUES (4907, 797, 3469);
INSERT INTO public.api_personmedal VALUES (4937, 668, 3489);
INSERT INTO public.api_personmedal VALUES (4938, 671, 3489);
INSERT INTO public.api_personmedal VALUES (4946, 26, 3496);
INSERT INTO public.api_personmedal VALUES (4947, 457, 3497);
INSERT INTO public.api_personmedal VALUES (4955, 566, 3503);
INSERT INTO public.api_personmedal VALUES (4957, 289, 3505);
INSERT INTO public.api_personmedal VALUES (4958, 286, 3506);
INSERT INTO public.api_personmedal VALUES (4959, 291, 3506);
INSERT INTO public.api_personmedal VALUES (4974, 532, 3519);
INSERT INTO public.api_personmedal VALUES (4976, 670, 3521);
INSERT INTO public.api_personmedal VALUES (4977, 673, 3521);
INSERT INTO public.api_personmedal VALUES (4978, 646, 3522);
INSERT INTO public.api_personmedal VALUES (4980, 452, 3523);
INSERT INTO public.api_personmedal VALUES (4986, 451, 3527);
INSERT INTO public.api_personmedal VALUES (4987, 587, 3528);
INSERT INTO public.api_personmedal VALUES (5004, 324, 3540);
INSERT INTO public.api_personmedal VALUES (5005, 332, 3540);
INSERT INTO public.api_personmedal VALUES (5016, 1074, 3547);
INSERT INTO public.api_personmedal VALUES (5022, 549, 3553);
INSERT INTO public.api_personmedal VALUES (5026, 1140, 3555);
INSERT INTO public.api_personmedal VALUES (5089, 1075, 3601);
INSERT INTO public.api_personmedal VALUES (5125, 991, 3624);
INSERT INTO public.api_personmedal VALUES (5126, 993, 3624);
INSERT INTO public.api_personmedal VALUES (5135, 1075, 3631);
INSERT INTO public.api_personmedal VALUES (5147, 352, 3639);
INSERT INTO public.api_personmedal VALUES (5154, 349, 3644);
INSERT INTO public.api_personmedal VALUES (5182, 1075, 3658);
INSERT INTO public.api_personmedal VALUES (5207, 810, 3677);
INSERT INTO public.api_personmedal VALUES (5208, 457, 3678);
INSERT INTO public.api_personmedal VALUES (5210, 550, 3679);
INSERT INTO public.api_personmedal VALUES (5256, 269, 3708);
INSERT INTO public.api_personmedal VALUES (5266, 278, 3717);
INSERT INTO public.api_personmedal VALUES (5316, 169, 3756);
INSERT INTO public.api_personmedal VALUES (5357, 1043, 3783);
INSERT INTO public.api_personmedal VALUES (5358, 166, 3784);
INSERT INTO public.api_personmedal VALUES (5363, 814, 3789);
INSERT INTO public.api_personmedal VALUES (5373, 1077, 3795);
INSERT INTO public.api_personmedal VALUES (5411, 290, 3818);
INSERT INTO public.api_personmedal VALUES (5412, 447, 3819);
INSERT INTO public.api_personmedal VALUES (5418, 715, 3823);
INSERT INTO public.api_personmedal VALUES (5419, 719, 3823);
INSERT INTO public.api_personmedal VALUES (5424, 151, 3825);
INSERT INTO public.api_personmedal VALUES (5430, 305, 3830);
INSERT INTO public.api_personmedal VALUES (5451, 694, 3845);
INSERT INTO public.api_personmedal VALUES (5452, 718, 3845);
INSERT INTO public.api_personmedal VALUES (5455, 538, 3848);
INSERT INTO public.api_personmedal VALUES (5456, 633, 3849);
INSERT INTO public.api_personmedal VALUES (5457, 1077, 3850);
INSERT INTO public.api_personmedal VALUES (5473, 882, 3858);
INSERT INTO public.api_personmedal VALUES (5475, 458, 3860);
INSERT INTO public.api_personmedal VALUES (5478, 454, 3863);
INSERT INTO public.api_personmedal VALUES (5482, 448, 3867);
INSERT INTO public.api_personmedal VALUES (5495, 557, 3877);
INSERT INTO public.api_personmedal VALUES (5496, 576, 3878);
INSERT INTO public.api_personmedal VALUES (5508, 873, 3890);
INSERT INTO public.api_personmedal VALUES (5529, 649, 3905);
INSERT INTO public.api_personmedal VALUES (5530, 663, 3905);
INSERT INTO public.api_personmedal VALUES (5543, 161, 3910);
INSERT INTO public.api_personmedal VALUES (5553, 7, 3917);
INSERT INTO public.api_personmedal VALUES (5554, 10, 3917);
INSERT INTO public.api_personmedal VALUES (5559, 550, 3922);
INSERT INTO public.api_personmedal VALUES (5564, 717, 3925);
INSERT INTO public.api_personmedal VALUES (5573, 560, 3932);
INSERT INTO public.api_personmedal VALUES (5574, 1112, 3933);
INSERT INTO public.api_personmedal VALUES (5592, 1032, 3950);
INSERT INTO public.api_personmedal VALUES (5593, 1040, 3950);
INSERT INTO public.api_personmedal VALUES (5701, 1104, 4029);
INSERT INTO public.api_personmedal VALUES (5841, 1077, 4129);
INSERT INTO public.api_personmedal VALUES (5844, 588, 4130);
INSERT INTO public.api_personmedal VALUES (5847, 397, 4133);
INSERT INTO public.api_personmedal VALUES (5852, 558, 4138);
INSERT INTO public.api_personmedal VALUES (5858, 458, 4143);
INSERT INTO public.api_personmedal VALUES (5859, 345, 4144);
INSERT INTO public.api_personmedal VALUES (5860, 349, 4144);
INSERT INTO public.api_personmedal VALUES (5863, 1196, 4145);
INSERT INTO public.api_personmedal VALUES (5864, 1206, 4145);
INSERT INTO public.api_personmedal VALUES (5867, 681, 4148);
INSERT INTO public.api_personmedal VALUES (5870, 456, 4150);
INSERT INTO public.api_personmedal VALUES (5873, 763, 4152);
INSERT INTO public.api_personmedal VALUES (5876, 321, 4155);
INSERT INTO public.api_personmedal VALUES (5877, 327, 4155);
INSERT INTO public.api_personmedal VALUES (5879, 1109, 4157);
INSERT INTO public.api_personmedal VALUES (5890, 157, 4164);
INSERT INTO public.api_personmedal VALUES (5895, 589, 4167);
INSERT INTO public.api_personmedal VALUES (5898, 339, 4170);
INSERT INTO public.api_personmedal VALUES (5934, 479, 4194);
INSERT INTO public.api_personmedal VALUES (5935, 340, 4195);
INSERT INTO public.api_personmedal VALUES (5947, 557, 4204);
INSERT INTO public.api_personmedal VALUES (5955, 625, 4211);
INSERT INTO public.api_personmedal VALUES (5957, 815, 4212);
INSERT INTO public.api_personmedal VALUES (5971, 451, 4225);
INSERT INTO public.api_personmedal VALUES (5972, 1066, 4226);
INSERT INTO public.api_personmedal VALUES (5973, 316, 4227);
INSERT INTO public.api_personmedal VALUES (5974, 1160, 4228);
INSERT INTO public.api_personmedal VALUES (5975, 558, 4229);
INSERT INTO public.api_personmedal VALUES (5976, 504, 4230);
INSERT INTO public.api_personmedal VALUES (5980, 857, 4233);
INSERT INTO public.api_personmedal VALUES (5999, 10, 4246);
INSERT INTO public.api_personmedal VALUES (6009, 110, 4254);
INSERT INTO public.api_personmedal VALUES (6010, 810, 4255);
INSERT INTO public.api_personmedal VALUES (6025, 107, 4261);
INSERT INTO public.api_personmedal VALUES (6033, 356, 4269);
INSERT INTO public.api_personmedal VALUES (6043, 449, 4276);
INSERT INTO public.api_personmedal VALUES (6088, 813, 4305);
INSERT INTO public.api_personmedal VALUES (6092, 603, 4308);
INSERT INTO public.api_personmedal VALUES (6105, 82, 4319);
INSERT INTO public.api_personmedal VALUES (6134, 1027, 4339);
INSERT INTO public.api_personmedal VALUES (6163, 110, 4359);
INSERT INTO public.api_personmedal VALUES (6172, 111, 4365);
INSERT INTO public.api_personmedal VALUES (6183, 398, 4371);
INSERT INTO public.api_personmedal VALUES (6204, 164, 4384);
INSERT INTO public.api_personmedal VALUES (6209, 918, 4387);
INSERT INTO public.api_personmedal VALUES (6210, 920, 4387);
INSERT INTO public.api_personmedal VALUES (6215, 1100, 4392);
INSERT INTO public.api_personmedal VALUES (6219, 58, 4394);
INSERT INTO public.api_personmedal VALUES (6227, 959, 4399);
INSERT INTO public.api_personmedal VALUES (6231, 30, 4401);
INSERT INTO public.api_personmedal VALUES (6240, 1108, 4409);
INSERT INTO public.api_personmedal VALUES (6242, 980, 4411);
INSERT INTO public.api_personmedal VALUES (6245, 1074, 4414);
INSERT INTO public.api_personmedal VALUES (6265, 362, 4425);
INSERT INTO public.api_personmedal VALUES (6271, 272, 4429);
INSERT INTO public.api_personmedal VALUES (6279, 39, 4435);
INSERT INTO public.api_personmedal VALUES (6293, 330, 4443);
INSERT INTO public.api_personmedal VALUES (6294, 672, 4444);
INSERT INTO public.api_personmedal VALUES (6314, 156, 4458);
INSERT INTO public.api_personmedal VALUES (6316, 455, 4460);
INSERT INTO public.api_personmedal VALUES (6323, 455, 4466);
INSERT INTO public.api_personmedal VALUES (6345, 721, 4481);
INSERT INTO public.api_personmedal VALUES (6361, 1028, 4492);
INSERT INTO public.api_personmedal VALUES (6400, 216, 4519);
INSERT INTO public.api_personmedal VALUES (6406, 490, 4523);
INSERT INTO public.api_personmedal VALUES (6407, 674, 4524);
INSERT INTO public.api_personmedal VALUES (6442, 1016, 4552);
INSERT INTO public.api_personmedal VALUES (6482, 54, 4576);
INSERT INTO public.api_personmedal VALUES (6518, 669, 4607);
INSERT INTO public.api_personmedal VALUES (6534, 647, 4621);
INSERT INTO public.api_personmedal VALUES (6535, 671, 4621);
INSERT INTO public.api_personmedal VALUES (6552, 1142, 4637);
INSERT INTO public.api_personmedal VALUES (6570, 267, 4649);
INSERT INTO public.api_personmedal VALUES (6571, 637, 4650);
INSERT INTO public.api_personmedal VALUES (6576, 664, 4654);
INSERT INTO public.api_personmedal VALUES (6577, 674, 4654);
INSERT INTO public.api_personmedal VALUES (6596, 31, 4665);
INSERT INTO public.api_personmedal VALUES (6618, 516, 4681);
INSERT INTO public.api_personmedal VALUES (6623, 635, 4685);
INSERT INTO public.api_personmedal VALUES (6626, 1074, 4687);
INSERT INTO public.api_personmedal VALUES (6697, 814, 4737);
INSERT INTO public.api_personmedal VALUES (6700, 810, 4739);
INSERT INTO public.api_personmedal VALUES (6702, 109, 4740);
INSERT INTO public.api_personmedal VALUES (6723, 237, 4758);
INSERT INTO public.api_personmedal VALUES (6777, 980, 4789);
INSERT INTO public.api_personmedal VALUES (6831, 464, 4825);
INSERT INTO public.api_personmedal VALUES (6842, 101, 4835);
INSERT INTO public.api_personmedal VALUES (6862, 392, 4848);
INSERT INTO public.api_personmedal VALUES (6867, 1136, 4853);
INSERT INTO public.api_personmedal VALUES (6883, 682, 4867);
INSERT INTO public.api_personmedal VALUES (6884, 174, 4868);
INSERT INTO public.api_personmedal VALUES (6890, 115, 4873);
INSERT INTO public.api_personmedal VALUES (6896, 57, 4878);
INSERT INTO public.api_personmedal VALUES (6902, 812, 4882);
INSERT INTO public.api_personmedal VALUES (6906, 535, 4885);
INSERT INTO public.api_personmedal VALUES (6923, 1075, 4898);
INSERT INTO public.api_personmedal VALUES (6934, 697, 4907);
INSERT INTO public.api_personmedal VALUES (6935, 716, 4907);
INSERT INTO public.api_personmedal VALUES (6936, 718, 4907);
INSERT INTO public.api_personmedal VALUES (6943, 27, 4910);
INSERT INTO public.api_personmedal VALUES (6945, 409, 4912);
INSERT INTO public.api_personmedal VALUES (6946, 418, 4912);
INSERT INTO public.api_personmedal VALUES (6949, 830, 4914);
INSERT INTO public.api_personmedal VALUES (6952, 556, 4917);
INSERT INTO public.api_personmedal VALUES (6955, 1074, 4920);
INSERT INTO public.api_personmedal VALUES (6960, 675, 4925);
INSERT INTO public.api_personmedal VALUES (6967, 395, 4931);
INSERT INTO public.api_personmedal VALUES (6976, 958, 4939);
INSERT INTO public.api_personmedal VALUES (6985, 356, 4946);
INSERT INTO public.api_personmedal VALUES (6997, 329, 4957);
INSERT INTO public.api_personmedal VALUES (6998, 242, 4958);
INSERT INTO public.api_personmedal VALUES (7002, 556, 4961);
INSERT INTO public.api_personmedal VALUES (7006, 60, 4964);
INSERT INTO public.api_personmedal VALUES (7018, 366, 4970);
INSERT INTO public.api_personmedal VALUES (7027, 959, 4979);
INSERT INTO public.api_personmedal VALUES (7030, 448, 4981);
INSERT INTO public.api_personmedal VALUES (7081, 539, 5017);
INSERT INTO public.api_personmedal VALUES (7089, 1141, 5020);
INSERT INTO public.api_personmedal VALUES (7101, 369, 5031);
INSERT INTO public.api_personmedal VALUES (7102, 176, 5032);
INSERT INTO public.api_personmedal VALUES (7106, 806, 5034);
INSERT INTO public.api_personmedal VALUES (7118, 174, 5043);
INSERT INTO public.api_personmedal VALUES (7144, 207, 5063);
INSERT INTO public.api_personmedal VALUES (7162, 252, 5076);
INSERT INTO public.api_personmedal VALUES (7163, 255, 5076);
INSERT INTO public.api_personmedal VALUES (7164, 261, 5076);
INSERT INTO public.api_personmedal VALUES (7191, 1071, 5086);
INSERT INTO public.api_personmedal VALUES (7196, 218, 5091);
INSERT INTO public.api_personmedal VALUES (7197, 987, 5092);
INSERT INTO public.api_personmedal VALUES (7198, 990, 5092);
INSERT INTO public.api_personmedal VALUES (7237, 319, 5121);
INSERT INTO public.api_personmedal VALUES (7239, 848, 5123);
INSERT INTO public.api_personmedal VALUES (7240, 442, 5124);
INSERT INTO public.api_personmedal VALUES (7243, 963, 5127);
INSERT INTO public.api_personmedal VALUES (7244, 966, 5127);
INSERT INTO public.api_personmedal VALUES (7245, 969, 5127);
INSERT INTO public.api_personmedal VALUES (7247, 450, 5128);
INSERT INTO public.api_personmedal VALUES (7248, 376, 5129);
INSERT INTO public.api_personmedal VALUES (7249, 108, 5130);
INSERT INTO public.api_personmedal VALUES (7252, 979, 5132);
INSERT INTO public.api_personmedal VALUES (7267, 323, 5146);
INSERT INTO public.api_personmedal VALUES (7268, 328, 5146);
INSERT INTO public.api_personmedal VALUES (7295, 807, 5164);
INSERT INTO public.api_personmedal VALUES (7325, 644, 5185);
INSERT INTO public.api_personmedal VALUES (7326, 671, 5185);
INSERT INTO public.api_personmedal VALUES (7332, 223, 5189);
INSERT INTO public.api_personmedal VALUES (7367, 1045, 5219);
INSERT INTO public.api_personmedal VALUES (7371, 1075, 5223);
INSERT INTO public.api_personmedal VALUES (7383, 52, 5235);
INSERT INTO public.api_personmedal VALUES (7408, 807, 5256);
INSERT INTO public.api_personmedal VALUES (7412, 673, 5260);
INSERT INTO public.api_personmedal VALUES (7413, 1024, 5261);
INSERT INTO public.api_personmedal VALUES (7436, 419, 5277);
INSERT INTO public.api_personmedal VALUES (7437, 427, 5277);
INSERT INTO public.api_personmedal VALUES (7449, 37, 5288);
INSERT INTO public.api_personmedal VALUES (7464, 1047, 5300);
INSERT INTO public.api_personmedal VALUES (7469, 394, 5304);
INSERT INTO public.api_personmedal VALUES (7476, 877, 5310);
INSERT INTO public.api_personmedal VALUES (7484, 895, 5318);
INSERT INTO public.api_personmedal VALUES (7496, 1026, 5322);
INSERT INTO public.api_personmedal VALUES (7515, 398, 5336);
INSERT INTO public.api_personmedal VALUES (7575, 169, 5376);
INSERT INTO public.api_personmedal VALUES (7576, 169, 5377);
INSERT INTO public.api_personmedal VALUES (7594, 428, 5389);
INSERT INTO public.api_personmedal VALUES (7595, 856, 5390);
INSERT INTO public.api_personmedal VALUES (7603, 126, 5394);
INSERT INTO public.api_personmedal VALUES (7608, 231, 5398);
INSERT INTO public.api_personmedal VALUES (7618, 879, 5406);
INSERT INTO public.api_personmedal VALUES (7620, 412, 5408);
INSERT INTO public.api_personmedal VALUES (7621, 425, 5408);
INSERT INTO public.api_personmedal VALUES (7622, 427, 5408);
INSERT INTO public.api_personmedal VALUES (7625, 241, 5409);
INSERT INTO public.api_personmedal VALUES (7630, 287, 5414);
INSERT INTO public.api_personmedal VALUES (7633, 828, 5417);
INSERT INTO public.api_personmedal VALUES (7639, 1031, 5421);
INSERT INTO public.api_personmedal VALUES (7640, 1016, 5422);
INSERT INTO public.api_personmedal VALUES (7667, 1174, 5441);
INSERT INTO public.api_personmedal VALUES (7668, 1178, 5441);
INSERT INTO public.api_personmedal VALUES (7681, 805, 5450);
INSERT INTO public.api_personmedal VALUES (7687, 64, 5454);
INSERT INTO public.api_personmedal VALUES (7708, 108, 5468);
INSERT INTO public.api_personmedal VALUES (7709, 398, 5469);
INSERT INTO public.api_personmedal VALUES (7731, 1072, 5486);
INSERT INTO public.api_personmedal VALUES (7757, 624, 5501);
INSERT INTO public.api_personmedal VALUES (7758, 398, 5502);
INSERT INTO public.api_personmedal VALUES (7775, 172, 5514);
INSERT INTO public.api_personmedal VALUES (7829, 406, 5552);
INSERT INTO public.api_personmedal VALUES (7874, 61, 5585);
INSERT INTO public.api_personmedal VALUES (7885, 24, 5594);
INSERT INTO public.api_personmedal VALUES (7892, 747, 5598);
INSERT INTO public.api_personmedal VALUES (7915, 748, 5616);
INSERT INTO public.api_personmedal VALUES (7916, 751, 5616);
INSERT INTO public.api_personmedal VALUES (7919, 808, 5617);
INSERT INTO public.api_personmedal VALUES (7950, 515, 5643);
INSERT INTO public.api_personmedal VALUES (7951, 476, 5644);
INSERT INTO public.api_personmedal VALUES (7954, 461, 5647);
INSERT INTO public.api_personmedal VALUES (7975, 656, 5663);
INSERT INTO public.api_personmedal VALUES (7999, 994, 5677);
INSERT INTO public.api_personmedal VALUES (8020, 957, 5691);
INSERT INTO public.api_personmedal VALUES (8021, 1038, 5692);
INSERT INTO public.api_personmedal VALUES (8027, 978, 5697);
INSERT INTO public.api_personmedal VALUES (8033, 221, 5702);
INSERT INTO public.api_personmedal VALUES (8084, 518, 5732);
INSERT INTO public.api_personmedal VALUES (8098, 946, 5745);
INSERT INTO public.api_personmedal VALUES (8099, 959, 5745);
INSERT INTO public.api_personmedal VALUES (8101, 962, 5746);
INSERT INTO public.api_personmedal VALUES (8103, 934, 5748);
INSERT INTO public.api_personmedal VALUES (8105, 1159, 5750);
INSERT INTO public.api_personmedal VALUES (8187, 545, 5807);
INSERT INTO public.api_personmedal VALUES (8189, 84, 5809);
INSERT INTO public.api_personmedal VALUES (8190, 794, 5810);
INSERT INTO public.api_personmedal VALUES (8208, 573, 5822);
INSERT INTO public.api_personmedal VALUES (8223, 197, 5833);
INSERT INTO public.api_personmedal VALUES (8225, 496, 5835);
INSERT INTO public.api_personmedal VALUES (8232, 962, 5841);
INSERT INTO public.api_personmedal VALUES (8233, 348, 5842);
INSERT INTO public.api_personmedal VALUES (8281, 805, 5880);
INSERT INTO public.api_personmedal VALUES (8286, 393, 5884);
INSERT INTO public.api_personmedal VALUES (8326, 174, 5915);
INSERT INTO public.api_personmedal VALUES (8338, 169, 5926);
INSERT INTO public.api_personmedal VALUES (8343, 1074, 5928);
INSERT INTO public.api_personmedal VALUES (8359, 622, 5938);
INSERT INTO public.api_personmedal VALUES (8360, 629, 5938);
INSERT INTO public.api_personmedal VALUES (8365, 554, 5940);
INSERT INTO public.api_personmedal VALUES (8366, 811, 5941);
INSERT INTO public.api_personmedal VALUES (8391, 811, 5959);
INSERT INTO public.api_personmedal VALUES (8414, 1074, 5975);
INSERT INTO public.api_personmedal VALUES (8423, 672, 5982);
INSERT INTO public.api_personmedal VALUES (8424, 675, 5982);
INSERT INTO public.api_personmedal VALUES (8442, 557, 5997);
INSERT INTO public.api_personmedal VALUES (8443, 1039, 5998);
INSERT INTO public.api_personmedal VALUES (8446, 879, 6001);
INSERT INTO public.api_personmedal VALUES (8448, 396, 6003);
INSERT INTO public.api_personmedal VALUES (8639, 1108, 6132);
INSERT INTO public.api_personmedal VALUES (8659, 239, 6149);
INSERT INTO public.api_personmedal VALUES (8661, 288, 6151);
INSERT INTO public.api_personmedal VALUES (8718, 292, 6195);
INSERT INTO public.api_personmedal VALUES (8756, 617, 6230);
INSERT INTO public.api_personmedal VALUES (8874, 111, 6308);
INSERT INTO public.api_personmedal VALUES (8937, 821, 6343);
INSERT INTO public.api_personmedal VALUES (8949, 91, 6351);
INSERT INTO public.api_personmedal VALUES (8950, 100, 6351);
INSERT INTO public.api_personmedal VALUES (8951, 107, 6351);
INSERT INTO public.api_personmedal VALUES (8952, 985, 6352);
INSERT INTO public.api_personmedal VALUES (8966, 537, 6361);
INSERT INTO public.api_personmedal VALUES (8978, 423, 6365);
INSERT INTO public.api_personmedal VALUES (8984, 172, 6371);
INSERT INTO public.api_personmedal VALUES (8998, 508, 6378);
INSERT INTO public.api_personmedal VALUES (9004, 1121, 6383);
INSERT INTO public.api_personmedal VALUES (9016, 279, 6394);
INSERT INTO public.api_personmedal VALUES (9025, 397, 6400);
INSERT INTO public.api_personmedal VALUES (9032, 315, 6404);
INSERT INTO public.api_personmedal VALUES (9036, 300, 6408);
INSERT INTO public.api_personmedal VALUES (9040, 385, 6411);
INSERT INTO public.api_personmedal VALUES (9043, 311, 6412);
INSERT INTO public.api_personmedal VALUES (9044, 815, 6413);
INSERT INTO public.api_personmedal VALUES (9078, 903, 6436);
INSERT INTO public.api_personmedal VALUES (9079, 73, 6437);
INSERT INTO public.api_personmedal VALUES (9082, 147, 6438);
INSERT INTO public.api_personmedal VALUES (9083, 355, 6439);
INSERT INTO public.api_personmedal VALUES (9108, 1128, 6452);
INSERT INTO public.api_personmedal VALUES (9153, 457, 6490);
INSERT INTO public.api_personmedal VALUES (9165, 558, 6496);
INSERT INTO public.api_personmedal VALUES (9169, 454, 6499);
INSERT INTO public.api_personmedal VALUES (9174, 463, 6502);
INSERT INTO public.api_personmedal VALUES (9180, 909, 6505);
INSERT INTO public.api_personmedal VALUES (9181, 867, 6506);
INSERT INTO public.api_personmedal VALUES (9199, 816, 6521);
INSERT INTO public.api_personmedal VALUES (9216, 1088, 6531);
INSERT INTO public.api_personmedal VALUES (9231, 806, 6540);
INSERT INTO public.api_personmedal VALUES (9238, 378, 6546);
INSERT INTO public.api_personmedal VALUES (9275, 951, 6567);
INSERT INTO public.api_personmedal VALUES (9276, 960, 6567);
INSERT INTO public.api_personmedal VALUES (9304, 558, 6586);
INSERT INTO public.api_personmedal VALUES (9305, 397, 6587);
INSERT INTO public.api_personmedal VALUES (9311, 452, 6592);
INSERT INTO public.api_personmedal VALUES (9334, 111, 6609);
INSERT INTO public.api_personmedal VALUES (9335, 719, 6610);
INSERT INTO public.api_personmedal VALUES (9342, 723, 6613);
INSERT INTO public.api_personmedal VALUES (9343, 537, 6614);
INSERT INTO public.api_personmedal VALUES (9351, 262, 6621);
INSERT INTO public.api_personmedal VALUES (9354, 1014, 6623);
INSERT INTO public.api_personmedal VALUES (9356, 105, 6625);
INSERT INTO public.api_personmedal VALUES (9358, 310, 6627);
INSERT INTO public.api_personmedal VALUES (9360, 558, 6628);
INSERT INTO public.api_personmedal VALUES (9366, 711, 6633);
INSERT INTO public.api_personmedal VALUES (9367, 715, 6633);
INSERT INTO public.api_personmedal VALUES (9368, 719, 6633);
INSERT INTO public.api_personmedal VALUES (9369, 722, 6633);
INSERT INTO public.api_personmedal VALUES (9374, 397, 6637);
INSERT INTO public.api_personmedal VALUES (9375, 397, 6638);
INSERT INTO public.api_personmedal VALUES (9385, 395, 6647);
INSERT INTO public.api_personmedal VALUES (9386, 454, 6648);
INSERT INTO public.api_personmedal VALUES (9407, 106, 6661);
INSERT INTO public.api_personmedal VALUES (9412, 1171, 6665);
INSERT INTO public.api_personmedal VALUES (9424, 367, 6673);
INSERT INTO public.api_personmedal VALUES (9448, 373, 6693);
INSERT INTO public.api_personmedal VALUES (9463, 901, 6705);
INSERT INTO public.api_personmedal VALUES (9485, 1095, 6720);
INSERT INTO public.api_personmedal VALUES (9486, 1099, 6720);
INSERT INTO public.api_personmedal VALUES (9488, 519, 6721);
INSERT INTO public.api_personmedal VALUES (9497, 1023, 6727);
INSERT INTO public.api_personmedal VALUES (9498, 514, 6728);
INSERT INTO public.api_personmedal VALUES (9504, 353, 6731);
INSERT INTO public.api_personmedal VALUES (9522, 1039, 6738);
INSERT INTO public.api_personmedal VALUES (9531, 904, 6745);
INSERT INTO public.api_personmedal VALUES (9596, 1075, 6794);
INSERT INTO public.api_personmedal VALUES (9616, 569, 6806);
INSERT INTO public.api_personmedal VALUES (9628, 1075, 6815);
INSERT INTO public.api_personmedal VALUES (9637, 955, 6822);
INSERT INTO public.api_personmedal VALUES (9638, 958, 6822);
INSERT INTO public.api_personmedal VALUES (9642, 607, 6824);
INSERT INTO public.api_personmedal VALUES (9666, 1075, 6842);
INSERT INTO public.api_personmedal VALUES (9667, 807, 6843);
INSERT INTO public.api_personmedal VALUES (9671, 241, 6847);
INSERT INTO public.api_personmedal VALUES (9703, 1091, 6867);
INSERT INTO public.api_personmedal VALUES (9711, 188, 6874);
INSERT INTO public.api_personmedal VALUES (9733, 220, 6895);
INSERT INTO public.api_personmedal VALUES (9858, 373, 7004);
INSERT INTO public.api_personmedal VALUES (9907, 213, 7036);
INSERT INTO public.api_personmedal VALUES (9908, 451, 7037);
INSERT INTO public.api_personmedal VALUES (9919, 292, 7047);
INSERT INTO public.api_personmedal VALUES (9987, 143, 7091);
INSERT INTO public.api_personmedal VALUES (9999, 767, 7098);
INSERT INTO public.api_personmedal VALUES (10012, 457, 7109);
INSERT INTO public.api_personmedal VALUES (10015, 1158, 7110);
INSERT INTO public.api_personmedal VALUES (10016, 397, 7111);
INSERT INTO public.api_personmedal VALUES (10027, 32, 7120);
INSERT INTO public.api_personmedal VALUES (10029, 805, 7122);
INSERT INTO public.api_personmedal VALUES (10035, 558, 7128);
INSERT INTO public.api_personmedal VALUES (10036, 1028, 7129);
INSERT INTO public.api_personmedal VALUES (10042, 1079, 7134);
INSERT INTO public.api_personmedal VALUES (10097, 270, 7172);
INSERT INTO public.api_personmedal VALUES (10102, 408, 7174);
INSERT INTO public.api_personmedal VALUES (10105, 1094, 7175);
INSERT INTO public.api_personmedal VALUES (10106, 1099, 7175);
INSERT INTO public.api_personmedal VALUES (10107, 449, 7176);
INSERT INTO public.api_personmedal VALUES (10115, 669, 7181);
INSERT INTO public.api_personmedal VALUES (10122, 465, 7186);
INSERT INTO public.api_personmedal VALUES (10143, 453, 7201);
INSERT INTO public.api_personmedal VALUES (10147, 85, 7205);
INSERT INTO public.api_personmedal VALUES (10160, 1114, 7214);
INSERT INTO public.api_personmedal VALUES (10161, 443, 7215);
INSERT INTO public.api_personmedal VALUES (10170, 974, 7223);
INSERT INTO public.api_personmedal VALUES (10176, 822, 7228);
INSERT INTO public.api_personmedal VALUES (10191, 198, 7241);
INSERT INTO public.api_personmedal VALUES (10195, 815, 7244);
INSERT INTO public.api_personmedal VALUES (10202, 597, 7251);
INSERT INTO public.api_personmedal VALUES (10211, 592, 7257);
INSERT INTO public.api_personmedal VALUES (10212, 393, 7258);
INSERT INTO public.api_personmedal VALUES (10215, 171, 7261);
INSERT INTO public.api_personmedal VALUES (10221, 454, 7263);
INSERT INTO public.api_personmedal VALUES (10222, 514, 7264);
INSERT INTO public.api_personmedal VALUES (10234, 1080, 7269);
INSERT INTO public.api_personmedal VALUES (10235, 1086, 7269);
INSERT INTO public.api_personmedal VALUES (10243, 404, 7274);
INSERT INTO public.api_personmedal VALUES (10368, 639, 7367);
INSERT INTO public.api_personmedal VALUES (10369, 74, 7368);
INSERT INTO public.api_personmedal VALUES (10381, 811, 7378);
INSERT INTO public.api_personmedal VALUES (10384, 206, 7379);
INSERT INTO public.api_personmedal VALUES (10391, 806, 7386);
INSERT INTO public.api_personmedal VALUES (10402, 449, 7397);
INSERT INTO public.api_personmedal VALUES (10407, 349, 7402);
INSERT INTO public.api_personmedal VALUES (10421, 38, 7411);
INSERT INTO public.api_personmedal VALUES (10463, 1079, 7443);
INSERT INTO public.api_personmedal VALUES (10466, 669, 7446);
INSERT INTO public.api_personmedal VALUES (10467, 684, 7446);
INSERT INTO public.api_personmedal VALUES (10469, 454, 7447);
INSERT INTO public.api_personmedal VALUES (10471, 455, 7449);
INSERT INTO public.api_personmedal VALUES (10486, 779, 7460);
INSERT INTO public.api_personmedal VALUES (10509, 810, 7477);
INSERT INTO public.api_personmedal VALUES (10524, 109, 7487);
INSERT INTO public.api_personmedal VALUES (10532, 538, 7492);
INSERT INTO public.api_personmedal VALUES (10539, 343, 7495);
INSERT INTO public.api_personmedal VALUES (10540, 815, 7496);
INSERT INTO public.api_personmedal VALUES (10554, 813, 7509);
INSERT INTO public.api_personmedal VALUES (10574, 122, 7522);
INSERT INTO public.api_personmedal VALUES (10621, 674, 7558);
INSERT INTO public.api_personmedal VALUES (10673, 527, 7603);
INSERT INTO public.api_personmedal VALUES (10731, 894, 7642);
INSERT INTO public.api_personmedal VALUES (10881, 557, 7750);
INSERT INTO public.api_personmedal VALUES (10888, 293, 7755);
INSERT INTO public.api_personmedal VALUES (10968, 458, 7824);
INSERT INTO public.api_personmedal VALUES (10982, 253, 7829);
INSERT INTO public.api_personmedal VALUES (10983, 256, 7829);
INSERT INTO public.api_personmedal VALUES (11129, 290, 7940);
INSERT INTO public.api_personmedal VALUES (11149, 92, 7957);
INSERT INTO public.api_personmedal VALUES (11150, 102, 7957);
INSERT INTO public.api_personmedal VALUES (11151, 106, 7957);
INSERT INTO public.api_personmedal VALUES (11155, 397, 7961);
INSERT INTO public.api_personmedal VALUES (11262, 154, 8031);
INSERT INTO public.api_personmedal VALUES (11270, 691, 8033);
INSERT INTO public.api_personmedal VALUES (11280, 1036, 8040);
INSERT INTO public.api_personmedal VALUES (11281, 1038, 8040);
INSERT INTO public.api_personmedal VALUES (11300, 393, 8053);
INSERT INTO public.api_personmedal VALUES (11308, 393, 8059);
INSERT INTO public.api_personmedal VALUES (11310, 1075, 8061);
INSERT INTO public.api_personmedal VALUES (11327, 961, 8076);
INSERT INTO public.api_personmedal VALUES (11328, 967, 8076);
INSERT INTO public.api_personmedal VALUES (11343, 638, 8086);
INSERT INTO public.api_personmedal VALUES (11344, 679, 8086);
INSERT INTO public.api_personmedal VALUES (11351, 606, 8093);
INSERT INTO public.api_personmedal VALUES (11364, 252, 8100);
INSERT INTO public.api_personmedal VALUES (11365, 255, 8100);
INSERT INTO public.api_personmedal VALUES (11368, 441, 8101);
INSERT INTO public.api_personmedal VALUES (11386, 75, 8116);
INSERT INTO public.api_personmedal VALUES (11452, 795, 8157);
INSERT INTO public.api_personmedal VALUES (11496, 529, 8188);
INSERT INTO public.api_personmedal VALUES (11548, 179, 8217);
INSERT INTO public.api_personmedal VALUES (11549, 454, 8218);
INSERT INTO public.api_personmedal VALUES (11550, 365, 8219);
INSERT INTO public.api_personmedal VALUES (11551, 366, 8219);
INSERT INTO public.api_personmedal VALUES (11552, 224, 8220);
INSERT INTO public.api_personmedal VALUES (11562, 559, 8229);
INSERT INTO public.api_personmedal VALUES (11569, 368, 8234);
INSERT INTO public.api_personmedal VALUES (11591, 739, 8250);
INSERT INTO public.api_personmedal VALUES (11601, 558, 8257);
INSERT INTO public.api_personmedal VALUES (11605, 541, 8260);
INSERT INTO public.api_personmedal VALUES (11606, 553, 8261);
INSERT INTO public.api_personmedal VALUES (11637, 888, 8283);
INSERT INTO public.api_personmedal VALUES (11641, 86, 8286);
INSERT INTO public.api_personmedal VALUES (11738, 516, 8351);
INSERT INTO public.api_personmedal VALUES (11981, 317, 8531);
INSERT INTO public.api_personmedal VALUES (11994, 456, 8537);
INSERT INTO public.api_personmedal VALUES (12045, 108, 8582);
INSERT INTO public.api_personmedal VALUES (12091, 374, 8610);
INSERT INTO public.api_personmedal VALUES (12139, 322, 8647);
INSERT INTO public.api_personmedal VALUES (12177, 873, 8669);
INSERT INTO public.api_personmedal VALUES (12195, 560, 8683);
INSERT INTO public.api_personmedal VALUES (12264, 37, 8731);
INSERT INTO public.api_personmedal VALUES (12280, 564, 8745);
INSERT INTO public.api_personmedal VALUES (12302, 1077, 8762);
INSERT INTO public.api_personmedal VALUES (12399, 521, 8814);
INSERT INTO public.api_personmedal VALUES (12428, 616, 8839);
INSERT INTO public.api_personmedal VALUES (12460, 456, 8858);
INSERT INTO public.api_personmedal VALUES (12461, 1078, 8859);
INSERT INTO public.api_personmedal VALUES (12466, 815, 8863);
INSERT INTO public.api_personmedal VALUES (12467, 815, 8864);
INSERT INTO public.api_personmedal VALUES (12469, 437, 8866);
INSERT INTO public.api_personmedal VALUES (12533, 518, 8906);
INSERT INTO public.api_personmedal VALUES (12595, 451, 8950);
INSERT INTO public.api_personmedal VALUES (12635, 161, 8984);
INSERT INTO public.api_personmedal VALUES (12636, 155, 8985);
INSERT INTO public.api_personmedal VALUES (12637, 811, 8986);
INSERT INTO public.api_personmedal VALUES (12639, 318, 8987);
INSERT INTO public.api_personmedal VALUES (12642, 1119, 8989);
INSERT INTO public.api_personmedal VALUES (12643, 808, 8990);
INSERT INTO public.api_personmedal VALUES (12646, 453, 8993);
INSERT INTO public.api_personmedal VALUES (12647, 839, 8994);
INSERT INTO public.api_personmedal VALUES (12704, 1040, 9041);
INSERT INTO public.api_personmedal VALUES (12759, 451, 9080);
INSERT INTO public.api_personmedal VALUES (12760, 1024, 9081);
INSERT INTO public.api_personmedal VALUES (12761, 282, 9082);
INSERT INTO public.api_personmedal VALUES (12767, 1135, 9086);
INSERT INTO public.api_personmedal VALUES (12773, 636, 9088);
INSERT INTO public.api_personmedal VALUES (12795, 72, 9102);
INSERT INTO public.api_personmedal VALUES (12823, 293, 9121);
INSERT INTO public.api_personmedal VALUES (12841, 394, 9133);
INSERT INTO public.api_personmedal VALUES (12879, 740, 9163);
INSERT INTO public.api_personmedal VALUES (12925, 527, 9197);
INSERT INTO public.api_personmedal VALUES (12932, 171, 9204);
INSERT INTO public.api_personmedal VALUES (12993, 740, 9241);
INSERT INTO public.api_personmedal VALUES (13075, 1075, 9293);
INSERT INTO public.api_personmedal VALUES (13147, 448, 9334);
INSERT INTO public.api_personmedal VALUES (13157, 479, 9341);
INSERT INTO public.api_personmedal VALUES (13159, 802, 9343);
INSERT INTO public.api_personmedal VALUES (13232, 905, 9391);
INSERT INTO public.api_personmedal VALUES (13247, 364, 9397);
INSERT INTO public.api_personmedal VALUES (13248, 368, 9397);
INSERT INTO public.api_personmedal VALUES (13274, 776, 9416);
INSERT INTO public.api_personmedal VALUES (13275, 864, 9417);
INSERT INTO public.api_personmedal VALUES (13282, 48, 9422);
INSERT INTO public.api_personmedal VALUES (13293, 1077, 9431);
INSERT INTO public.api_personmedal VALUES (13337, 519, 9458);
INSERT INTO public.api_personmedal VALUES (13357, 1105, 9474);
INSERT INTO public.api_personmedal VALUES (13358, 1109, 9474);
INSERT INTO public.api_personmedal VALUES (13377, 512, 9491);
INSERT INTO public.api_personmedal VALUES (13382, 1067, 9495);
INSERT INTO public.api_personmedal VALUES (13384, 560, 9496);
INSERT INTO public.api_personmedal VALUES (13386, 458, 9498);
INSERT INTO public.api_personmedal VALUES (13389, 456, 9500);
INSERT INTO public.api_personmedal VALUES (13391, 585, 9501);
INSERT INTO public.api_personmedal VALUES (13412, 514, 9515);
INSERT INTO public.api_personmedal VALUES (13452, 1075, 9549);
INSERT INTO public.api_personmedal VALUES (13488, 531, 9571);
INSERT INTO public.api_personmedal VALUES (13534, 1075, 9612);
INSERT INTO public.api_personmedal VALUES (13648, 382, 9697);
INSERT INTO public.api_personmedal VALUES (13790, 169, 9804);
INSERT INTO public.api_personmedal VALUES (13861, 498, 9858);
INSERT INTO public.api_personmedal VALUES (13872, 189, 9867);
INSERT INTO public.api_personmedal VALUES (13877, 880, 9871);
INSERT INTO public.api_personmedal VALUES (13878, 864, 9872);
INSERT INTO public.api_personmedal VALUES (13895, 1077, 9884);
INSERT INTO public.api_personmedal VALUES (13940, 337, 9914);
INSERT INTO public.api_personmedal VALUES (13959, 540, 9924);
INSERT INTO public.api_personmedal VALUES (13961, 984, 9925);
INSERT INTO public.api_personmedal VALUES (13975, 768, 9934);
INSERT INTO public.api_personmedal VALUES (13977, 542, 9936);
INSERT INTO public.api_personmedal VALUES (13993, 632, 9946);
INSERT INTO public.api_personmedal VALUES (13995, 452, 9948);
INSERT INTO public.api_personmedal VALUES (14005, 1010, 9955);
INSERT INTO public.api_personmedal VALUES (14130, 898, 10039);
INSERT INTO public.api_personmedal VALUES (14136, 540, 10044);
INSERT INTO public.api_personmedal VALUES (14140, 456, 10047);
INSERT INTO public.api_personmedal VALUES (14180, 119, 10080);
INSERT INTO public.api_personmedal VALUES (14229, 449, 10124);
INSERT INTO public.api_personmedal VALUES (14310, 609, 10181);
INSERT INTO public.api_personmedal VALUES (14337, 801, 10206);
INSERT INTO public.api_personmedal VALUES (14361, 927, 10227);
INSERT INTO public.api_personmedal VALUES (14363, 447, 10229);
INSERT INTO public.api_personmedal VALUES (14364, 400, 10230);
INSERT INTO public.api_personmedal VALUES (14369, 447, 10235);
INSERT INTO public.api_personmedal VALUES (14667, 842, 10458);
INSERT INTO public.api_personmedal VALUES (14668, 1078, 10459);
INSERT INTO public.api_personmedal VALUES (14670, 702, 10460);
INSERT INTO public.api_personmedal VALUES (14716, 846, 10492);
INSERT INTO public.api_personmedal VALUES (14720, 51, 10495);
INSERT INTO public.api_personmedal VALUES (14750, 472, 10518);
INSERT INTO public.api_personmedal VALUES (14784, 587, 10542);
INSERT INTO public.api_personmedal VALUES (14804, 456, 10556);
INSERT INTO public.api_personmedal VALUES (14819, 591, 10568);
INSERT INTO public.api_personmedal VALUES (14820, 601, 10568);
INSERT INTO public.api_personmedal VALUES (14838, 779, 10582);
INSERT INTO public.api_personmedal VALUES (14889, 509, 10621);
INSERT INTO public.api_personmedal VALUES (14906, 841, 10629);
INSERT INTO public.api_personmedal VALUES (14912, 185, 10632);
INSERT INTO public.api_personmedal VALUES (14931, 548, 10647);
INSERT INTO public.api_personmedal VALUES (14936, 737, 10650);
INSERT INTO public.api_personmedal VALUES (14937, 740, 10650);
INSERT INTO public.api_personmedal VALUES (15009, 808, 10707);
INSERT INTO public.api_personmedal VALUES (15019, 559, 10714);
INSERT INTO public.api_personmedal VALUES (15024, 1098, 10718);
INSERT INTO public.api_personmedal VALUES (15043, 169, 10733);
INSERT INTO public.api_personmedal VALUES (15045, 104, 10735);
INSERT INTO public.api_personmedal VALUES (15050, 568, 10738);
INSERT INTO public.api_personmedal VALUES (15109, 888, 10769);
INSERT INTO public.api_personmedal VALUES (15121, 392, 10779);
INSERT INTO public.api_personmedal VALUES (15124, 452, 10781);
INSERT INTO public.api_personmedal VALUES (15128, 1014, 10784);
INSERT INTO public.api_personmedal VALUES (15129, 1022, 10784);
INSERT INTO public.api_personmedal VALUES (15132, 493, 10786);
INSERT INTO public.api_personmedal VALUES (15146, 453, 10795);
INSERT INTO public.api_personmedal VALUES (15189, 570, 10826);
INSERT INTO public.api_personmedal VALUES (15250, 1002, 10867);
INSERT INTO public.api_personmedal VALUES (15254, 894, 10870);
INSERT INTO public.api_personmedal VALUES (15319, 546, 10913);
INSERT INTO public.api_personmedal VALUES (15327, 227, 10920);
INSERT INTO public.api_personmedal VALUES (15328, 998, 10921);
INSERT INTO public.api_personmedal VALUES (15354, 570, 10941);
INSERT INTO public.api_personmedal VALUES (15358, 395, 10945);
INSERT INTO public.api_personmedal VALUES (15433, 550, 10988);
INSERT INTO public.api_personmedal VALUES (15481, 361, 11022);
INSERT INTO public.api_personmedal VALUES (15496, 212, 11031);
INSERT INTO public.api_personmedal VALUES (15500, 1018, 11035);
INSERT INTO public.api_personmedal VALUES (15501, 1020, 11035);
INSERT INTO public.api_personmedal VALUES (15510, 384, 11041);
INSERT INTO public.api_personmedal VALUES (15514, 260, 11043);
INSERT INTO public.api_personmedal VALUES (15519, 11, 11044);
INSERT INTO public.api_personmedal VALUES (15525, 386, 11049);
INSERT INTO public.api_personmedal VALUES (15540, 539, 11060);
INSERT INTO public.api_personmedal VALUES (15606, 1146, 11114);
INSERT INTO public.api_personmedal VALUES (15612, 840, 11120);
INSERT INTO public.api_personmedal VALUES (15628, 1192, 11128);
INSERT INTO public.api_personmedal VALUES (15629, 1195, 11128);
INSERT INTO public.api_personmedal VALUES (15630, 1197, 11128);
INSERT INTO public.api_personmedal VALUES (15631, 1201, 11128);
INSERT INTO public.api_personmedal VALUES (15632, 1206, 11128);
INSERT INTO public.api_personmedal VALUES (15690, 450, 11167);
INSERT INTO public.api_personmedal VALUES (15756, 396, 11215);
INSERT INTO public.api_personmedal VALUES (15774, 346, 11230);
INSERT INTO public.api_personmedal VALUES (15775, 348, 11230);
INSERT INTO public.api_personmedal VALUES (15792, 220, 11238);
INSERT INTO public.api_personmedal VALUES (15793, 226, 11238);
INSERT INTO public.api_personmedal VALUES (15794, 230, 11238);
INSERT INTO public.api_personmedal VALUES (15797, 453, 11241);
INSERT INTO public.api_personmedal VALUES (15804, 865, 11247);
INSERT INTO public.api_personmedal VALUES (15805, 503, 11248);
INSERT INTO public.api_personmedal VALUES (15891, 539, 11310);
INSERT INTO public.api_personmedal VALUES (15904, 427, 11318);
INSERT INTO public.api_personmedal VALUES (15913, 206, 11326);
INSERT INTO public.api_personmedal VALUES (15917, 62, 11329);
INSERT INTO public.api_personmedal VALUES (15934, 812, 11341);
INSERT INTO public.api_personmedal VALUES (15960, 995, 11358);
INSERT INTO public.api_personmedal VALUES (15980, 806, 11376);
INSERT INTO public.api_personmedal VALUES (15983, 141, 11378);
INSERT INTO public.api_personmedal VALUES (16021, 917, 11399);
INSERT INTO public.api_personmedal VALUES (16026, 811, 11401);
INSERT INTO public.api_personmedal VALUES (16073, 762, 11435);
INSERT INTO public.api_personmedal VALUES (16100, 289, 11451);
INSERT INTO public.api_personmedal VALUES (16106, 325, 11454);
INSERT INTO public.api_personmedal VALUES (16107, 330, 11454);
INSERT INTO public.api_personmedal VALUES (16117, 780, 11463);
INSERT INTO public.api_personmedal VALUES (16118, 784, 11463);
INSERT INTO public.api_personmedal VALUES (16146, 526, 11485);
INSERT INTO public.api_personmedal VALUES (16148, 1179, 11486);
INSERT INTO public.api_personmedal VALUES (16149, 1184, 11486);
INSERT INTO public.api_personmedal VALUES (16154, 5, 11490);
INSERT INTO public.api_personmedal VALUES (16156, 526, 11491);
INSERT INTO public.api_personmedal VALUES (16172, 774, 11505);
INSERT INTO public.api_personmedal VALUES (16230, 766, 11546);
INSERT INTO public.api_personmedal VALUES (16253, 673, 11564);
INSERT INTO public.api_personmedal VALUES (16258, 283, 11567);
INSERT INTO public.api_personmedal VALUES (16282, 668, 11591);
INSERT INTO public.api_personmedal VALUES (16338, 556, 11627);
INSERT INTO public.api_personmedal VALUES (16384, 672, 11662);
INSERT INTO public.api_personmedal VALUES (16385, 675, 11662);
INSERT INTO public.api_personmedal VALUES (16416, 670, 11691);
INSERT INTO public.api_personmedal VALUES (16422, 532, 11695);
INSERT INTO public.api_personmedal VALUES (16448, 1074, 11712);
INSERT INTO public.api_personmedal VALUES (16461, 670, 11722);
INSERT INTO public.api_personmedal VALUES (16462, 556, 11723);
INSERT INTO public.api_personmedal VALUES (16501, 986, 11757);
INSERT INTO public.api_personmedal VALUES (16503, 1170, 11759);
INSERT INTO public.api_personmedal VALUES (16521, 1183, 11772);
INSERT INTO public.api_personmedal VALUES (16522, 1188, 11772);
INSERT INTO public.api_personmedal VALUES (16573, 930, 11811);
INSERT INTO public.api_personmedal VALUES (16601, 1190, 11831);
INSERT INTO public.api_personmedal VALUES (16611, 989, 11835);
INSERT INTO public.api_personmedal VALUES (16612, 993, 11835);
INSERT INTO public.api_personmedal VALUES (16629, 242, 11850);
INSERT INTO public.api_personmedal VALUES (16638, 219, 11856);
INSERT INTO public.api_personmedal VALUES (16653, 458, 11868);
INSERT INTO public.api_personmedal VALUES (16730, 398, 11924);
INSERT INTO public.api_personmedal VALUES (16745, 458, 11935);
INSERT INTO public.api_personmedal VALUES (16751, 447, 11939);
INSERT INTO public.api_personmedal VALUES (16777, 50, 11959);
INSERT INTO public.api_personmedal VALUES (16794, 1076, 11967);
INSERT INTO public.api_personmedal VALUES (16821, 277, 11987);
INSERT INTO public.api_personmedal VALUES (16829, 947, 11992);
INSERT INTO public.api_personmedal VALUES (16830, 961, 11992);
INSERT INTO public.api_personmedal VALUES (16840, 555, 12001);
INSERT INTO public.api_personmedal VALUES (16842, 317, 12003);
INSERT INTO public.api_personmedal VALUES (16856, 1040, 12011);
INSERT INTO public.api_personmedal VALUES (16866, 273, 12014);
INSERT INTO public.api_personmedal VALUES (16867, 285, 12014);
INSERT INTO public.api_personmedal VALUES (16868, 291, 12014);
INSERT INTO public.api_personmedal VALUES (16890, 577, 12030);
INSERT INTO public.api_personmedal VALUES (16912, 38, 12049);
INSERT INTO public.api_personmedal VALUES (16914, 1074, 12051);
INSERT INTO public.api_personmedal VALUES (16924, 1077, 12059);
INSERT INTO public.api_personmedal VALUES (16932, 725, 12062);
INSERT INTO public.api_personmedal VALUES (16933, 734, 12062);
INSERT INTO public.api_personmedal VALUES (16934, 876, 12063);
INSERT INTO public.api_personmedal VALUES (17000, 604, 12115);
INSERT INTO public.api_personmedal VALUES (17026, 2, 12135);
INSERT INTO public.api_personmedal VALUES (17052, 720, 12154);
INSERT INTO public.api_personmedal VALUES (17061, 1053, 12159);
INSERT INTO public.api_personmedal VALUES (17062, 950, 12160);
INSERT INTO public.api_personmedal VALUES (17071, 995, 12169);
INSERT INTO public.api_personmedal VALUES (17078, 366, 12172);
INSERT INTO public.api_personmedal VALUES (17096, 373, 12186);
INSERT INTO public.api_personmedal VALUES (17121, 70, 12205);
INSERT INTO public.api_personmedal VALUES (17134, 1074, 12217);
INSERT INTO public.api_personmedal VALUES (17144, 174, 12224);
INSERT INTO public.api_personmedal VALUES (17145, 809, 12225);
INSERT INTO public.api_personmedal VALUES (17149, 268, 12228);
INSERT INTO public.api_personmedal VALUES (17150, 142, 12229);
INSERT INTO public.api_personmedal VALUES (17165, 584, 12238);
INSERT INTO public.api_personmedal VALUES (17180, 560, 12249);
INSERT INTO public.api_personmedal VALUES (17190, 1077, 12257);
INSERT INTO public.api_personmedal VALUES (17217, 1026, 12269);
INSERT INTO public.api_personmedal VALUES (17234, 87, 12279);
INSERT INTO public.api_personmedal VALUES (17236, 1172, 12281);
INSERT INTO public.api_personmedal VALUES (17238, 316, 12283);
INSERT INTO public.api_personmedal VALUES (17247, 303, 12290);
INSERT INTO public.api_personmedal VALUES (17307, 481, 12331);
INSERT INTO public.api_personmedal VALUES (17314, 165, 12337);
INSERT INTO public.api_personmedal VALUES (17342, 1040, 12361);
INSERT INTO public.api_personmedal VALUES (17354, 394, 12369);
INSERT INTO public.api_personmedal VALUES (17403, 447, 12402);
INSERT INTO public.api_personmedal VALUES (17427, 1078, 12422);
INSERT INTO public.api_personmedal VALUES (17429, 722, 12423);
INSERT INTO public.api_personmedal VALUES (17430, 266, 12424);
INSERT INTO public.api_personmedal VALUES (17432, 397, 12425);
INSERT INTO public.api_personmedal VALUES (17434, 1120, 12427);
INSERT INTO public.api_personmedal VALUES (17435, 538, 12428);
INSERT INTO public.api_personmedal VALUES (17436, 1079, 12429);
INSERT INTO public.api_personmedal VALUES (17444, 131, 12433);
INSERT INTO public.api_personmedal VALUES (17451, 398, 12436);
INSERT INTO public.api_personmedal VALUES (17460, 34, 12442);
INSERT INTO public.api_personmedal VALUES (17497, 251, 12472);
INSERT INTO public.api_personmedal VALUES (17509, 1046, 12482);
INSERT INTO public.api_personmedal VALUES (17535, 1026, 12503);
INSERT INTO public.api_personmedal VALUES (17542, 169, 12510);
INSERT INTO public.api_personmedal VALUES (17546, 600, 12514);
INSERT INTO public.api_personmedal VALUES (17586, 979, 12539);
INSERT INTO public.api_personmedal VALUES (17619, 1119, 12561);
INSERT INTO public.api_personmedal VALUES (17627, 586, 12567);
INSERT INTO public.api_personmedal VALUES (17658, 191, 12591);
INSERT INTO public.api_personmedal VALUES (17676, 315, 12604);
INSERT INTO public.api_personmedal VALUES (17678, 551, 12605);
INSERT INTO public.api_personmedal VALUES (17698, 453, 12620);
INSERT INTO public.api_personmedal VALUES (17708, 1077, 12628);
INSERT INTO public.api_personmedal VALUES (17709, 1078, 12629);
INSERT INTO public.api_personmedal VALUES (17737, 756, 12647);
INSERT INTO public.api_personmedal VALUES (17749, 988, 12657);
INSERT INTO public.api_personmedal VALUES (17750, 993, 12657);
INSERT INTO public.api_personmedal VALUES (17813, 1025, 12696);
INSERT INTO public.api_personmedal VALUES (17882, 1186, 12738);
INSERT INTO public.api_personmedal VALUES (17913, 1099, 12768);
INSERT INTO public.api_personmedal VALUES (17926, 674, 12778);
INSERT INTO public.api_personmedal VALUES (18236, 395, 13025);
INSERT INTO public.api_personmedal VALUES (18295, 1108, 13071);
INSERT INTO public.api_personmedal VALUES (18327, 1074, 13096);
INSERT INTO public.api_personmedal VALUES (18371, 454, 13132);
INSERT INTO public.api_personmedal VALUES (18387, 308, 13147);
INSERT INTO public.api_personmedal VALUES (18423, 1074, 13175);
INSERT INTO public.api_personmedal VALUES (18425, 800, 13176);
INSERT INTO public.api_personmedal VALUES (18440, 238, 13186);
INSERT INTO public.api_personmedal VALUES (18442, 1055, 13187);
INSERT INTO public.api_personmedal VALUES (18462, 397, 13202);
INSERT INTO public.api_personmedal VALUES (18474, 1108, 13212);
INSERT INTO public.api_personmedal VALUES (18476, 810, 13213);
INSERT INTO public.api_personmedal VALUES (18508, 1076, 13242);
INSERT INTO public.api_personmedal VALUES (18509, 1194, 13243);
INSERT INTO public.api_personmedal VALUES (18510, 1206, 13243);
INSERT INTO public.api_personmedal VALUES (18531, 393, 13260);
INSERT INTO public.api_personmedal VALUES (18558, 171, 13285);
INSERT INTO public.api_personmedal VALUES (18602, 398, 13323);
INSERT INTO public.api_personmedal VALUES (18631, 242, 13335);
INSERT INTO public.api_personmedal VALUES (18632, 244, 13335);
INSERT INTO public.api_personmedal VALUES (18700, 674, 13385);
INSERT INTO public.api_personmedal VALUES (18705, 249, 13389);
INSERT INTO public.api_personmedal VALUES (18712, 205, 13394);
INSERT INTO public.api_personmedal VALUES (18783, 648, 13449);
INSERT INTO public.api_personmedal VALUES (18801, 80, 13465);
INSERT INTO public.api_personmedal VALUES (18844, 396, 13499);
INSERT INTO public.api_personmedal VALUES (18846, 1078, 13501);
INSERT INTO public.api_personmedal VALUES (18849, 657, 13504);
INSERT INTO public.api_personmedal VALUES (18850, 517, 13505);
INSERT INTO public.api_personmedal VALUES (18853, 194, 13508);
INSERT INTO public.api_personmedal VALUES (18860, 517, 13511);
INSERT INTO public.api_personmedal VALUES (18871, 615, 13519);
INSERT INTO public.api_personmedal VALUES (18873, 812, 13521);
INSERT INTO public.api_personmedal VALUES (18877, 1056, 13524);
INSERT INTO public.api_personmedal VALUES (18878, 555, 13525);
INSERT INTO public.api_personmedal VALUES (18887, 809, 13533);
INSERT INTO public.api_personmedal VALUES (18888, 809, 13534);
INSERT INTO public.api_personmedal VALUES (18898, 457, 13542);
INSERT INTO public.api_personmedal VALUES (18967, 1092, 13597);
INSERT INTO public.api_personmedal VALUES (18968, 1098, 13597);
INSERT INTO public.api_personmedal VALUES (19001, 454, 13620);
INSERT INTO public.api_personmedal VALUES (19002, 528, 13621);
INSERT INTO public.api_personmedal VALUES (19003, 373, 13622);
INSERT INTO public.api_personmedal VALUES (19004, 669, 13623);
INSERT INTO public.api_personmedal VALUES (19012, 1189, 13629);
INSERT INTO public.api_personmedal VALUES (19030, 171, 13646);
INSERT INTO public.api_personmedal VALUES (19053, 453, 13666);
INSERT INTO public.api_personmedal VALUES (19055, 557, 13668);
INSERT INTO public.api_personmedal VALUES (19065, 453, 13675);
INSERT INTO public.api_personmedal VALUES (19066, 453, 13676);
INSERT INTO public.api_personmedal VALUES (19069, 782, 13678);
INSERT INTO public.api_personmedal VALUES (19071, 453, 13679);
INSERT INTO public.api_personmedal VALUES (19123, 1076, 13719);
INSERT INTO public.api_personmedal VALUES (19153, 1167, 13743);
INSERT INTO public.api_personmedal VALUES (19158, 361, 13747);
INSERT INTO public.api_personmedal VALUES (19159, 549, 13748);
INSERT INTO public.api_personmedal VALUES (19162, 933, 13751);
INSERT INTO public.api_personmedal VALUES (19166, 1079, 13752);
INSERT INTO public.api_personmedal VALUES (19168, 458, 13754);
INSERT INTO public.api_personmedal VALUES (19171, 394, 13757);
INSERT INTO public.api_personmedal VALUES (19198, 1078, 13779);
INSERT INTO public.api_personmedal VALUES (19230, 192, 13797);
INSERT INTO public.api_personmedal VALUES (19253, 449, 13815);
INSERT INTO public.api_personmedal VALUES (19254, 68, 13816);
INSERT INTO public.api_personmedal VALUES (19267, 744, 13825);
INSERT INTO public.api_personmedal VALUES (19268, 746, 13825);
INSERT INTO public.api_personmedal VALUES (19287, 241, 13840);
INSERT INTO public.api_personmedal VALUES (19298, 1085, 13848);
INSERT INTO public.api_personmedal VALUES (19299, 1088, 13848);
INSERT INTO public.api_personmedal VALUES (19307, 1076, 13853);
INSERT INTO public.api_personmedal VALUES (19309, 20, 13854);
INSERT INTO public.api_personmedal VALUES (19316, 557, 13857);
INSERT INTO public.api_personmedal VALUES (19321, 399, 13861);
INSERT INTO public.api_personmedal VALUES (19325, 1065, 13865);
INSERT INTO public.api_personmedal VALUES (19332, 1005, 13872);
INSERT INTO public.api_personmedal VALUES (19343, 1076, 13878);
INSERT INTO public.api_personmedal VALUES (19423, 1078, 13938);
INSERT INTO public.api_personmedal VALUES (19425, 398, 13939);
INSERT INTO public.api_personmedal VALUES (19427, 1039, 13941);
INSERT INTO public.api_personmedal VALUES (19428, 582, 13942);
INSERT INTO public.api_personmedal VALUES (19431, 449, 13945);
INSERT INTO public.api_personmedal VALUES (19437, 984, 13948);
INSERT INTO public.api_personmedal VALUES (19444, 1161, 13951);
INSERT INTO public.api_personmedal VALUES (19445, 1026, 13952);
INSERT INTO public.api_personmedal VALUES (19447, 515, 13954);
INSERT INTO public.api_personmedal VALUES (19452, 814, 13959);
INSERT INTO public.api_personmedal VALUES (19474, 814, 13978);
INSERT INTO public.api_personmedal VALUES (19479, 1131, 13981);
INSERT INTO public.api_personmedal VALUES (19480, 1137, 13981);
INSERT INTO public.api_personmedal VALUES (19482, 164, 13983);
INSERT INTO public.api_personmedal VALUES (19484, 203, 13985);
INSERT INTO public.api_personmedal VALUES (19485, 494, 13986);
INSERT INTO public.api_personmedal VALUES (19487, 741, 13988);
INSERT INTO public.api_personmedal VALUES (19491, 741, 13992);
INSERT INTO public.api_personmedal VALUES (19493, 910, 13994);
INSERT INTO public.api_personmedal VALUES (19499, 497, 13997);
INSERT INTO public.api_personmedal VALUES (19533, 538, 14025);
INSERT INTO public.api_personmedal VALUES (19563, 560, 14045);
INSERT INTO public.api_personmedal VALUES (19572, 452, 14053);
INSERT INTO public.api_personmedal VALUES (19577, 1076, 14056);
INSERT INTO public.api_personmedal VALUES (19584, 360, 14060);
INSERT INTO public.api_personmedal VALUES (19610, 962, 14071);
INSERT INTO public.api_personmedal VALUES (19629, 858, 14082);
INSERT INTO public.api_personmedal VALUES (19674, 1001, 14114);
INSERT INTO public.api_personmedal VALUES (19675, 1004, 14114);
INSERT INTO public.api_personmedal VALUES (19772, 531, 14183);
INSERT INTO public.api_personmedal VALUES (19843, 254, 14238);
INSERT INTO public.api_personmedal VALUES (19848, 810, 14241);
INSERT INTO public.api_personmedal VALUES (19851, 532, 14244);
INSERT INTO public.api_personmedal VALUES (19858, 350, 14249);
INSERT INTO public.api_personmedal VALUES (19861, 533, 14252);
INSERT INTO public.api_personmedal VALUES (19862, 447, 14253);
INSERT INTO public.api_personmedal VALUES (19863, 526, 14254);
INSERT INTO public.api_personmedal VALUES (19865, 753, 14255);
INSERT INTO public.api_personmedal VALUES (19895, 1207, 14268);
INSERT INTO public.api_personmedal VALUES (19898, 1207, 14270);
INSERT INTO public.api_personmedal VALUES (19919, 537, 14280);
INSERT INTO public.api_personmedal VALUES (19921, 723, 14282);
INSERT INTO public.api_personmedal VALUES (19928, 458, 14289);
INSERT INTO public.api_personmedal VALUES (19936, 544, 14296);
INSERT INTO public.api_personmedal VALUES (19970, 690, 14312);
INSERT INTO public.api_personmedal VALUES (19971, 718, 14312);
INSERT INTO public.api_personmedal VALUES (19972, 709, 14313);
INSERT INTO public.api_personmedal VALUES (19973, 716, 14313);
INSERT INTO public.api_personmedal VALUES (19974, 721, 14313);
INSERT INTO public.api_personmedal VALUES (19975, 724, 14313);
INSERT INTO public.api_personmedal VALUES (19976, 733, 14313);
INSERT INTO public.api_personmedal VALUES (19993, 456, 14321);
INSERT INTO public.api_personmedal VALUES (19997, 941, 14323);
INSERT INTO public.api_personmedal VALUES (20026, 315, 14342);
INSERT INTO public.api_personmedal VALUES (20027, 689, 14343);
INSERT INTO public.api_personmedal VALUES (20028, 701, 14343);
INSERT INTO public.api_personmedal VALUES (20029, 712, 14343);
INSERT INTO public.api_personmedal VALUES (20030, 727, 14343);
INSERT INTO public.api_personmedal VALUES (20040, 584, 14349);
INSERT INTO public.api_personmedal VALUES (20055, 1079, 14357);
INSERT INTO public.api_personmedal VALUES (20088, 314, 14374);
INSERT INTO public.api_personmedal VALUES (20091, 807, 14377);
INSERT INTO public.api_personmedal VALUES (20104, 810, 14382);
INSERT INTO public.api_personmedal VALUES (20105, 483, 14383);
INSERT INTO public.api_personmedal VALUES (20107, 559, 14384);
INSERT INTO public.api_personmedal VALUES (20108, 560, 14385);
INSERT INTO public.api_personmedal VALUES (20157, 741, 14423);
INSERT INTO public.api_personmedal VALUES (20158, 783, 14424);
INSERT INTO public.api_personmedal VALUES (20182, 1078, 14447);
INSERT INTO public.api_personmedal VALUES (20191, 559, 14453);
INSERT INTO public.api_personmedal VALUES (20192, 316, 14454);
INSERT INTO public.api_personmedal VALUES (20193, 1163, 14455);
INSERT INTO public.api_personmedal VALUES (20208, 457, 14463);
INSERT INTO public.api_personmedal VALUES (20211, 111, 14465);
INSERT INTO public.api_personmedal VALUES (20212, 810, 14466);
INSERT INTO public.api_personmedal VALUES (20214, 560, 14468);
INSERT INTO public.api_personmedal VALUES (20219, 810, 14472);
INSERT INTO public.api_personmedal VALUES (20220, 1069, 14473);
INSERT INTO public.api_personmedal VALUES (20221, 718, 14474);
INSERT INTO public.api_personmedal VALUES (20226, 34, 14478);
INSERT INTO public.api_personmedal VALUES (20231, 1078, 14482);
INSERT INTO public.api_personmedal VALUES (20252, 723, 14497);
INSERT INTO public.api_personmedal VALUES (20291, 236, 14528);
INSERT INTO public.api_personmedal VALUES (20303, 355, 14538);
INSERT INTO public.api_personmedal VALUES (20309, 448, 14544);
INSERT INTO public.api_personmedal VALUES (20313, 413, 14548);
INSERT INTO public.api_personmedal VALUES (20314, 426, 14548);
INSERT INTO public.api_personmedal VALUES (20319, 180, 14552);
INSERT INTO public.api_personmedal VALUES (20327, 43, 14556);
INSERT INTO public.api_personmedal VALUES (20340, 537, 14563);
INSERT INTO public.api_personmedal VALUES (20362, 1015, 14577);
INSERT INTO public.api_personmedal VALUES (20363, 1021, 14577);
INSERT INTO public.api_personmedal VALUES (20367, 69, 14580);
INSERT INTO public.api_personmedal VALUES (20378, 671, 14589);
INSERT INTO public.api_personmedal VALUES (20410, 1039, 14610);
INSERT INTO public.api_personmedal VALUES (20412, 1049, 14612);
INSERT INTO public.api_personmedal VALUES (20413, 354, 14613);
INSERT INTO public.api_personmedal VALUES (20414, 169, 14614);
INSERT INTO public.api_personmedal VALUES (20434, 468, 14631);
INSERT INTO public.api_personmedal VALUES (20462, 9, 14656);
INSERT INTO public.api_personmedal VALUES (20463, 10, 14656);
INSERT INTO public.api_personmedal VALUES (20466, 826, 14657);
INSERT INTO public.api_personmedal VALUES (20478, 814, 14665);
INSERT INTO public.api_personmedal VALUES (20479, 1119, 14666);
INSERT INTO public.api_personmedal VALUES (20489, 1189, 14675);
INSERT INTO public.api_personmedal VALUES (20531, 885, 14707);
INSERT INTO public.api_personmedal VALUES (20543, 377, 14715);
INSERT INTO public.api_personmedal VALUES (20552, 610, 14722);
INSERT INTO public.api_personmedal VALUES (20559, 860, 14727);
INSERT INTO public.api_personmedal VALUES (20560, 1073, 14728);
INSERT INTO public.api_personmedal VALUES (20592, 769, 14755);
INSERT INTO public.api_personmedal VALUES (20595, 602, 14756);
INSERT INTO public.api_personmedal VALUES (20597, 750, 14757);
INSERT INTO public.api_personmedal VALUES (20611, 759, 14764);
INSERT INTO public.api_personmedal VALUES (20622, 4, 14774);
INSERT INTO public.api_personmedal VALUES (20638, 552, 14789);
INSERT INTO public.api_personmedal VALUES (20645, 810, 14793);
INSERT INTO public.api_personmedal VALUES (20659, 626, 14805);
INSERT INTO public.api_personmedal VALUES (20665, 768, 14806);
INSERT INTO public.api_personmedal VALUES (20667, 1076, 14808);
INSERT INTO public.api_personmedal VALUES (20674, 395, 14812);
INSERT INTO public.api_personmedal VALUES (20685, 178, 14820);
INSERT INTO public.api_personmedal VALUES (20686, 41, 14821);
INSERT INTO public.api_personmedal VALUES (20693, 611, 14827);
INSERT INTO public.api_personmedal VALUES (20702, 1039, 14835);
INSERT INTO public.api_personmedal VALUES (20707, 317, 14839);
INSERT INTO public.api_personmedal VALUES (20717, 555, 14843);
INSERT INTO public.api_personmedal VALUES (20718, 457, 14844);
INSERT INTO public.api_personmedal VALUES (20747, 524, 14863);
INSERT INTO public.api_personmedal VALUES (20748, 921, 14864);
INSERT INTO public.api_personmedal VALUES (20749, 928, 14864);
INSERT INTO public.api_personmedal VALUES (20833, 169, 14925);
INSERT INTO public.api_personmedal VALUES (20835, 934, 14927);
INSERT INTO public.api_personmedal VALUES (20836, 936, 14927);
INSERT INTO public.api_personmedal VALUES (20893, 1177, 14962);
INSERT INTO public.api_personmedal VALUES (20894, 1188, 14962);
INSERT INTO public.api_personmedal VALUES (20895, 414, 14963);
INSERT INTO public.api_personmedal VALUES (20896, 426, 14963);
INSERT INTO public.api_personmedal VALUES (20921, 426, 14976);
INSERT INTO public.api_personmedal VALUES (20923, 746, 14977);
INSERT INTO public.api_personmedal VALUES (20926, 887, 14980);
INSERT INTO public.api_personmedal VALUES (20948, 1190, 14989);
INSERT INTO public.api_personmedal VALUES (21004, 397, 15025);
INSERT INTO public.api_personmedal VALUES (21009, 666, 15029);
INSERT INTO public.api_personmedal VALUES (21010, 676, 15029);
INSERT INTO public.api_personmedal VALUES (21011, 680, 15029);
INSERT INTO public.api_personmedal VALUES (21039, 1015, 15044);
INSERT INTO public.api_personmedal VALUES (21049, 96, 15051);
INSERT INTO public.api_personmedal VALUES (21063, 297, 15062);
INSERT INTO public.api_personmedal VALUES (21076, 1013, 15068);
INSERT INTO public.api_personmedal VALUES (21082, 347, 15073);
INSERT INTO public.api_personmedal VALUES (21083, 348, 15073);
INSERT INTO public.api_personmedal VALUES (21085, 458, 15074);
INSERT INTO public.api_personmedal VALUES (21099, 312, 15081);
INSERT INTO public.api_personmedal VALUES (21100, 320, 15081);
INSERT INTO public.api_personmedal VALUES (21107, 452, 15086);
INSERT INTO public.api_personmedal VALUES (21119, 530, 15093);
INSERT INTO public.api_personmedal VALUES (21135, 255, 15102);
INSERT INTO public.api_personmedal VALUES (21175, 1036, 15131);
INSERT INTO public.api_personmedal VALUES (21176, 1038, 15131);
INSERT INTO public.api_personmedal VALUES (21179, 11, 15134);
INSERT INTO public.api_personmedal VALUES (21185, 1, 15140);
INSERT INTO public.api_personmedal VALUES (21186, 4, 15140);
INSERT INTO public.api_personmedal VALUES (21197, 855, 15149);
INSERT INTO public.api_personmedal VALUES (21237, 741, 15184);
INSERT INTO public.api_personmedal VALUES (21244, 56, 15189);
INSERT INTO public.api_personmedal VALUES (21257, 650, 15197);
INSERT INTO public.api_personmedal VALUES (21258, 670, 15197);
INSERT INTO public.api_personmedal VALUES (21259, 673, 15197);
INSERT INTO public.api_personmedal VALUES (21260, 37, 15198);
INSERT INTO public.api_personmedal VALUES (21261, 868, 15199);
INSERT INTO public.api_personmedal VALUES (21262, 557, 15200);
INSERT INTO public.api_personmedal VALUES (21265, 169, 15203);
INSERT INTO public.api_personmedal VALUES (21267, 691, 15205);
INSERT INTO public.api_personmedal VALUES (21277, 169, 15213);
INSERT INTO public.api_personmedal VALUES (21294, 236, 15225);
INSERT INTO public.api_personmedal VALUES (21304, 222, 15232);
INSERT INTO public.api_personmedal VALUES (21321, 173, 15245);
INSERT INTO public.api_personmedal VALUES (21374, 935, 15287);
INSERT INTO public.api_personmedal VALUES (21376, 1079, 15289);
INSERT INTO public.api_personmedal VALUES (21413, 394, 15315);
INSERT INTO public.api_personmedal VALUES (21431, 993, 15327);
INSERT INTO public.api_personmedal VALUES (21454, 1075, 15341);
INSERT INTO public.api_personmedal VALUES (21456, 1075, 15343);
INSERT INTO public.api_personmedal VALUES (21513, 476, 15370);
INSERT INTO public.api_personmedal VALUES (21515, 838, 15371);
INSERT INTO public.api_personmedal VALUES (21516, 37, 15372);
INSERT INTO public.api_personmedal VALUES (21517, 42, 15372);
INSERT INTO public.api_personmedal VALUES (21526, 447, 15376);
INSERT INTO public.api_personmedal VALUES (21527, 1076, 15377);
INSERT INTO public.api_personmedal VALUES (21535, 281, 15379);
INSERT INTO public.api_personmedal VALUES (21536, 290, 15379);
INSERT INTO public.api_personmedal VALUES (21560, 1079, 15396);
INSERT INTO public.api_personmedal VALUES (21561, 317, 15397);
INSERT INTO public.api_personmedal VALUES (21564, 456, 15400);
INSERT INTO public.api_personmedal VALUES (21573, 173, 15405);
INSERT INTO public.api_personmedal VALUES (21574, 451, 15406);
INSERT INTO public.api_personmedal VALUES (21575, 350, 15407);
INSERT INTO public.api_personmedal VALUES (21590, 178, 15415);
INSERT INTO public.api_personmedal VALUES (21593, 1077, 15418);
INSERT INTO public.api_personmedal VALUES (21594, 173, 15419);
INSERT INTO public.api_personmedal VALUES (21595, 539, 15420);
INSERT INTO public.api_personmedal VALUES (21596, 173, 15421);
INSERT INTO public.api_personmedal VALUES (21597, 306, 15422);
INSERT INTO public.api_personmedal VALUES (21598, 315, 15422);
INSERT INTO public.api_personmedal VALUES (21603, 815, 15425);
INSERT INTO public.api_personmedal VALUES (21604, 500, 15426);
INSERT INTO public.api_personmedal VALUES (21625, 537, 15440);
INSERT INTO public.api_personmedal VALUES (21628, 430, 15443);
INSERT INTO public.api_personmedal VALUES (21629, 441, 15443);
INSERT INTO public.api_personmedal VALUES (21658, 1076, 15469);
INSERT INTO public.api_personmedal VALUES (21663, 1077, 15473);
INSERT INTO public.api_personmedal VALUES (21666, 457, 15475);
INSERT INTO public.api_personmedal VALUES (21668, 451, 15477);
INSERT INTO public.api_personmedal VALUES (21671, 531, 15480);
INSERT INTO public.api_personmedal VALUES (21677, 985, 15484);
INSERT INTO public.api_personmedal VALUES (21700, 520, 15495);
INSERT INTO public.api_personmedal VALUES (21727, 12, 15514);
INSERT INTO public.api_personmedal VALUES (21742, 722, 15521);
INSERT INTO public.api_personmedal VALUES (21743, 721, 15522);
INSERT INTO public.api_personmedal VALUES (21744, 726, 15522);
INSERT INTO public.api_personmedal VALUES (21772, 158, 15542);
INSERT INTO public.api_personmedal VALUES (21776, 756, 15544);
INSERT INTO public.api_personmedal VALUES (21782, 1078, 15547);
INSERT INTO public.api_personmedal VALUES (21833, 1203, 15585);
INSERT INTO public.api_personmedal VALUES (21843, 1189, 15591);
INSERT INTO public.api_personmedal VALUES (21848, 4, 15593);
INSERT INTO public.api_personmedal VALUES (21903, 396, 15631);
INSERT INTO public.api_personmedal VALUES (21948, 394, 15665);
INSERT INTO public.api_personmedal VALUES (21985, 555, 15691);
INSERT INTO public.api_personmedal VALUES (21993, 1076, 15698);
INSERT INTO public.api_personmedal VALUES (22024, 396, 15721);
INSERT INTO public.api_personmedal VALUES (22025, 173, 15722);
INSERT INTO public.api_personmedal VALUES (22094, 173, 15770);
INSERT INTO public.api_personmedal VALUES (22129, 798, 15799);
INSERT INTO public.api_personmedal VALUES (22153, 1122, 15817);
INSERT INTO public.api_personmedal VALUES (22179, 218, 15831);
INSERT INTO public.api_personmedal VALUES (22190, 740, 15840);
INSERT INTO public.api_personmedal VALUES (22204, 749, 15845);
INSERT INTO public.api_personmedal VALUES (22205, 751, 15845);
INSERT INTO public.api_personmedal VALUES (22218, 605, 15855);
INSERT INTO public.api_personmedal VALUES (22228, 716, 15863);
INSERT INTO public.api_personmedal VALUES (22233, 238, 15865);
INSERT INTO public.api_personmedal VALUES (22234, 246, 15865);
INSERT INTO public.api_personmedal VALUES (22245, 740, 15873);
INSERT INTO public.api_personmedal VALUES (22257, 457, 15883);
INSERT INTO public.api_personmedal VALUES (22264, 849, 15888);
INSERT INTO public.api_personmedal VALUES (22300, 1027, 15911);
INSERT INTO public.api_personmedal VALUES (22311, 692, 15918);
INSERT INTO public.api_personmedal VALUES (22312, 718, 15918);
INSERT INTO public.api_personmedal VALUES (22314, 456, 15920);
INSERT INTO public.api_personmedal VALUES (22316, 160, 15922);
INSERT INTO public.api_personmedal VALUES (22320, 428, 15925);
INSERT INTO public.api_personmedal VALUES (22324, 808, 15928);
INSERT INTO public.api_personmedal VALUES (22332, 12, 15932);
INSERT INTO public.api_personmedal VALUES (22335, 327, 15935);
INSERT INTO public.api_personmedal VALUES (22341, 397, 15940);
INSERT INTO public.api_personmedal VALUES (22368, 547, 15961);
INSERT INTO public.api_personmedal VALUES (22369, 172, 15962);
INSERT INTO public.api_personmedal VALUES (22391, 452, 15976);
INSERT INTO public.api_personmedal VALUES (22396, 455, 15979);
INSERT INTO public.api_personmedal VALUES (22410, 258, 15990);
INSERT INTO public.api_personmedal VALUES (22411, 263, 15990);
INSERT INTO public.api_personmedal VALUES (22414, 577, 15992);
INSERT INTO public.api_personmedal VALUES (22421, 458, 15996);
INSERT INTO public.api_personmedal VALUES (22425, 397, 15999);
INSERT INTO public.api_personmedal VALUES (22436, 549, 16007);
INSERT INTO public.api_personmedal VALUES (22437, 458, 16008);
INSERT INTO public.api_personmedal VALUES (22439, 8, 16010);
INSERT INTO public.api_personmedal VALUES (22464, 97, 16020);
INSERT INTO public.api_personmedal VALUES (22465, 339, 16021);
INSERT INTO public.api_personmedal VALUES (22476, 751, 16029);
INSERT INTO public.api_personmedal VALUES (22483, 808, 16035);
INSERT INTO public.api_personmedal VALUES (22490, 428, 16040);
INSERT INTO public.api_personmedal VALUES (22512, 1079, 16057);
INSERT INTO public.api_personmedal VALUES (22549, 454, 16084);
INSERT INTO public.api_personmedal VALUES (22554, 505, 16088);
INSERT INTO public.api_personmedal VALUES (22600, 817, 16114);
INSERT INTO public.api_personmedal VALUES (22607, 381, 16120);
INSERT INTO public.api_personmedal VALUES (22628, 199, 16138);
INSERT INTO public.api_personmedal VALUES (22688, 421, 16181);
INSERT INTO public.api_personmedal VALUES (22786, 508, 16249);
INSERT INTO public.api_personmedal VALUES (22801, 649, 16258);
INSERT INTO public.api_personmedal VALUES (22857, 836, 16288);
INSERT INTO public.api_personmedal VALUES (22859, 99, 16289);
INSERT INTO public.api_personmedal VALUES (22865, 393, 16295);
INSERT INTO public.api_personmedal VALUES (22866, 393, 16296);
INSERT INTO public.api_personmedal VALUES (22873, 448, 16303);
INSERT INTO public.api_personmedal VALUES (22887, 453, 16313);
INSERT INTO public.api_personmedal VALUES (22890, 806, 16316);
INSERT INTO public.api_personmedal VALUES (22893, 453, 16319);
INSERT INTO public.api_personmedal VALUES (22894, 453, 16320);
INSERT INTO public.api_personmedal VALUES (22896, 453, 16322);
INSERT INTO public.api_personmedal VALUES (22898, 805, 16324);
INSERT INTO public.api_personmedal VALUES (22900, 525, 16325);
INSERT INTO public.api_personmedal VALUES (22904, 1121, 16328);
INSERT INTO public.api_personmedal VALUES (22921, 789, 16340);
INSERT INTO public.api_personmedal VALUES (22925, 786, 16343);
INSERT INTO public.api_personmedal VALUES (22955, 355, 16367);
INSERT INTO public.api_personmedal VALUES (22960, 356, 16372);
INSERT INTO public.api_personmedal VALUES (22973, 448, 16380);
INSERT INTO public.api_personmedal VALUES (23062, 759, 16447);
INSERT INTO public.api_personmedal VALUES (23066, 805, 16450);
INSERT INTO public.api_personmedal VALUES (23069, 1207, 16453);
INSERT INTO public.api_personmedal VALUES (23074, 462, 16455);
INSERT INTO public.api_personmedal VALUES (23077, 242, 16457);
INSERT INTO public.api_personmedal VALUES (23079, 812, 16458);
INSERT INTO public.api_personmedal VALUES (23081, 448, 16460);
INSERT INTO public.api_personmedal VALUES (23083, 812, 16462);
INSERT INTO public.api_personmedal VALUES (23089, 962, 16466);
INSERT INTO public.api_personmedal VALUES (23090, 1100, 16467);
INSERT INTO public.api_personmedal VALUES (23091, 394, 16468);
INSERT INTO public.api_personmedal VALUES (23108, 831, 16482);
INSERT INTO public.api_personmedal VALUES (23111, 764, 16485);
INSERT INTO public.api_personmedal VALUES (23123, 265, 16493);
INSERT INTO public.api_personmedal VALUES (23124, 71, 16494);
INSERT INTO public.api_personmedal VALUES (23129, 1061, 16499);
INSERT INTO public.api_personmedal VALUES (23137, 1078, 16505);
INSERT INTO public.api_personmedal VALUES (23165, 509, 16528);
INSERT INTO public.api_personmedal VALUES (23168, 383, 16531);
INSERT INTO public.api_personmedal VALUES (23249, 197, 16574);
INSERT INTO public.api_personmedal VALUES (23265, 742, 16586);
INSERT INTO public.api_personmedal VALUES (23266, 745, 16586);
INSERT INTO public.api_personmedal VALUES (23275, 546, 16593);
INSERT INTO public.api_personmedal VALUES (23282, 457, 16599);
INSERT INTO public.api_personmedal VALUES (23296, 677, 16609);
INSERT INTO public.api_personmedal VALUES (23298, 344, 16611);
INSERT INTO public.api_personmedal VALUES (23299, 1062, 16612);
INSERT INTO public.api_personmedal VALUES (23301, 814, 16614);
INSERT INTO public.api_personmedal VALUES (23302, 456, 16615);
INSERT INTO public.api_personmedal VALUES (23303, 707, 16616);
INSERT INTO public.api_personmedal VALUES (23304, 719, 16616);
INSERT INTO public.api_personmedal VALUES (23305, 700, 16617);
INSERT INTO public.api_personmedal VALUES (23306, 714, 16617);
INSERT INTO public.api_personmedal VALUES (23307, 721, 16617);
INSERT INTO public.api_personmedal VALUES (23308, 728, 16617);
INSERT INTO public.api_personmedal VALUES (23311, 715, 16619);
INSERT INTO public.api_personmedal VALUES (23312, 719, 16619);
INSERT INTO public.api_personmedal VALUES (23313, 441, 16620);
INSERT INTO public.api_personmedal VALUES (23314, 445, 16620);
INSERT INTO public.api_personmedal VALUES (23316, 447, 16622);
INSERT INTO public.api_personmedal VALUES (23318, 447, 16624);
INSERT INTO public.api_personmedal VALUES (23327, 397, 16631);
INSERT INTO public.api_personmedal VALUES (23329, 543, 16633);
INSERT INTO public.api_personmedal VALUES (23360, 1093, 16651);
INSERT INTO public.api_personmedal VALUES (23361, 1098, 16651);
INSERT INTO public.api_personmedal VALUES (23364, 1097, 16652);
INSERT INTO public.api_personmedal VALUES (23365, 1098, 16652);
INSERT INTO public.api_personmedal VALUES (23369, 870, 16656);
INSERT INTO public.api_personmedal VALUES (23375, 746, 16662);
INSERT INTO public.api_personmedal VALUES (23376, 33, 16663);
INSERT INTO public.api_personmedal VALUES (23386, 741, 16670);
INSERT INTO public.api_personmedal VALUES (23390, 264, 16672);
INSERT INTO public.api_personmedal VALUES (23393, 762, 16674);
INSERT INTO public.api_personmedal VALUES (23404, 1017, 16682);
INSERT INTO public.api_personmedal VALUES (23414, 304, 16690);
INSERT INTO public.api_personmedal VALUES (23416, 809, 16691);
INSERT INTO public.api_personmedal VALUES (23419, 486, 16694);
INSERT INTO public.api_personmedal VALUES (23424, 814, 16697);
INSERT INTO public.api_personmedal VALUES (23446, 1035, 16712);
INSERT INTO public.api_personmedal VALUES (23447, 1038, 16712);
INSERT INTO public.api_personmedal VALUES (23450, 994, 16714);
INSERT INTO public.api_personmedal VALUES (23451, 997, 16714);
INSERT INTO public.api_personmedal VALUES (23452, 1003, 16714);
INSERT INTO public.api_personmedal VALUES (23483, 514, 16739);
INSERT INTO public.api_personmedal VALUES (23498, 396, 16748);
INSERT INTO public.api_personmedal VALUES (23544, 451, 16784);
INSERT INTO public.api_personmedal VALUES (23555, 453, 16794);
INSERT INTO public.api_personmedal VALUES (23601, 443, 16821);
INSERT INTO public.api_personmedal VALUES (23615, 773, 16832);
INSERT INTO public.api_personmedal VALUES (23619, 98, 16834);
INSERT INTO public.api_personmedal VALUES (23626, 173, 16840);
INSERT INTO public.api_personmedal VALUES (23664, 778, 16863);
INSERT INTO public.api_personmedal VALUES (23677, 641, 16875);
INSERT INTO public.api_personmedal VALUES (23678, 1074, 16876);
INSERT INTO public.api_personmedal VALUES (23700, 926, 16895);
INSERT INTO public.api_personmedal VALUES (23759, 813, 16940);
INSERT INTO public.api_personmedal VALUES (23760, 521, 16941);
INSERT INTO public.api_personmedal VALUES (23762, 367, 16943);
INSERT INTO public.api_personmedal VALUES (23769, 598, 16948);
INSERT INTO public.api_personmedal VALUES (23789, 393, 16962);
INSERT INTO public.api_personmedal VALUES (23802, 556, 16971);
INSERT INTO public.api_personmedal VALUES (23804, 243, 16973);
INSERT INTO public.api_personmedal VALUES (23806, 234, 16975);
INSERT INTO public.api_personmedal VALUES (23807, 240, 16975);
INSERT INTO public.api_personmedal VALUES (23810, 156, 16977);
INSERT INTO public.api_personmedal VALUES (23822, 1075, 16984);
INSERT INTO public.api_personmedal VALUES (23831, 144, 16991);
INSERT INTO public.api_personmedal VALUES (23852, 814, 17010);
INSERT INTO public.api_personmedal VALUES (23871, 123, 17022);
INSERT INTO public.api_personmedal VALUES (23880, 510, 17031);
INSERT INTO public.api_personmedal VALUES (23881, 257, 17032);
INSERT INTO public.api_personmedal VALUES (23916, 1193, 17053);
INSERT INTO public.api_personmedal VALUES (23917, 1205, 17053);
INSERT INTO public.api_personmedal VALUES (23919, 457, 17055);
INSERT INTO public.api_personmedal VALUES (23931, 452, 17062);
INSERT INTO public.api_personmedal VALUES (23955, 931, 17081);
INSERT INTO public.api_personmedal VALUES (23956, 943, 17081);
INSERT INTO public.api_personmedal VALUES (23984, 551, 17101);
INSERT INTO public.api_personmedal VALUES (23996, 457, 17105);
INSERT INTO public.api_personmedal VALUES (24034, 294, 17129);
INSERT INTO public.api_personmedal VALUES (24060, 1120, 17149);
INSERT INTO public.api_personmedal VALUES (24097, 1063, 17171);
INSERT INTO public.api_personmedal VALUES (24099, 458, 17173);
INSERT INTO public.api_personmedal VALUES (24100, 451, 17174);
INSERT INTO public.api_personmedal VALUES (24115, 392, 17185);
INSERT INTO public.api_personmedal VALUES (24125, 1068, 17189);
INSERT INTO public.api_personmedal VALUES (24130, 1077, 17192);
INSERT INTO public.api_personmedal VALUES (24135, 1120, 17194);
INSERT INTO public.api_personmedal VALUES (24166, 1006, 17217);
INSERT INTO public.api_personmedal VALUES (24167, 1009, 17217);
INSERT INTO public.api_personmedal VALUES (24168, 1014, 17217);
INSERT INTO public.api_personmedal VALUES (24192, 257, 17234);
INSERT INTO public.api_personmedal VALUES (24200, 450, 17238);
INSERT INTO public.api_personmedal VALUES (24217, 1134, 17252);
INSERT INTO public.api_personmedal VALUES (24243, 925, 17273);
INSERT INTO public.api_personmedal VALUES (24249, 1100, 17278);
INSERT INTO public.api_personmedal VALUES (24262, 525, 17286);
INSERT INTO public.api_personmedal VALUES (24286, 1040, 17306);
INSERT INTO public.api_personmedal VALUES (24287, 1008, 17307);
INSERT INTO public.api_personmedal VALUES (24288, 1011, 17307);
INSERT INTO public.api_personmedal VALUES (24289, 1020, 17307);
INSERT INTO public.api_personmedal VALUES (24297, 579, 17308);
INSERT INTO public.api_personmedal VALUES (24303, 452, 17311);
INSERT INTO public.api_personmedal VALUES (24360, 816, 17346);
INSERT INTO public.api_personmedal VALUES (24362, 914, 17348);
INSERT INTO public.api_personmedal VALUES (24364, 902, 17350);
INSERT INTO public.api_personmedal VALUES (24371, 436, 17354);
INSERT INTO public.api_personmedal VALUES (24372, 442, 17354);
INSERT INTO public.api_personmedal VALUES (24380, 739, 17360);
INSERT INTO public.api_personmedal VALUES (24388, 507, 17366);
INSERT INTO public.api_personmedal VALUES (24475, 1157, 17408);
INSERT INTO public.api_personmedal VALUES (24478, 884, 17411);
INSERT INTO public.api_personmedal VALUES (24491, 556, 17420);
INSERT INTO public.api_personmedal VALUES (24498, 280, 17424);
INSERT INTO public.api_personmedal VALUES (24501, 556, 17427);
INSERT INTO public.api_personmedal VALUES (24515, 812, 17437);
INSERT INTO public.api_personmedal VALUES (24524, 812, 17445);
INSERT INTO public.api_personmedal VALUES (24526, 170, 17447);
INSERT INTO public.api_personmedal VALUES (24529, 235, 17450);
INSERT INTO public.api_personmedal VALUES (24573, 940, 17477);
INSERT INTO public.api_personmedal VALUES (24578, 457, 17479);
INSERT INTO public.api_personmedal VALUES (24584, 812, 17482);
INSERT INTO public.api_personmedal VALUES (24590, 1206, 17486);
INSERT INTO public.api_personmedal VALUES (24606, 259, 17499);
INSERT INTO public.api_personmedal VALUES (24607, 173, 17500);
INSERT INTO public.api_personmedal VALUES (24640, 948, 17524);
INSERT INTO public.api_personmedal VALUES (24641, 952, 17524);
INSERT INTO public.api_personmedal VALUES (24642, 954, 17524);
INSERT INTO public.api_personmedal VALUES (24653, 455, 17529);
INSERT INTO public.api_personmedal VALUES (24662, 992, 17536);
INSERT INTO public.api_personmedal VALUES (24696, 514, 17555);
INSERT INTO public.api_personmedal VALUES (24705, 522, 17560);
INSERT INTO public.api_personmedal VALUES (24707, 1074, 17561);
INSERT INTO public.api_personmedal VALUES (24713, 449, 17566);
INSERT INTO public.api_personmedal VALUES (24722, 455, 17574);
INSERT INTO public.api_personmedal VALUES (24734, 788, 17583);
INSERT INTO public.api_personmedal VALUES (24747, 1198, 17592);
INSERT INTO public.api_personmedal VALUES (24748, 1200, 17592);
INSERT INTO public.api_personmedal VALUES (24756, 1121, 17596);
INSERT INTO public.api_personmedal VALUES (24762, 582, 17601);
INSERT INTO public.api_personmedal VALUES (24763, 1126, 17602);
INSERT INTO public.api_personmedal VALUES (24780, 912, 17616);
INSERT INTO public.api_personmedal VALUES (24876, 467, 17677);
INSERT INTO public.api_personmedal VALUES (24882, 660, 17681);
INSERT INTO public.api_personmedal VALUES (24891, 477, 17686);
INSERT INTO public.api_personmedal VALUES (24901, 806, 17693);
INSERT INTO public.api_personmedal VALUES (24908, 453, 17699);
INSERT INTO public.api_personmedal VALUES (24910, 453, 17701);
INSERT INTO public.api_personmedal VALUES (24913, 232, 17704);
INSERT INTO public.api_personmedal VALUES (24915, 49, 17706);
INSERT INTO public.api_personmedal VALUES (24921, 571, 17710);
INSERT INTO public.api_personmedal VALUES (24931, 455, 17718);
INSERT INTO public.api_personmedal VALUES (24932, 194, 17719);
INSERT INTO public.api_personmedal VALUES (24935, 448, 17722);
INSERT INTO public.api_personmedal VALUES (24936, 360, 17723);
INSERT INTO public.api_personmedal VALUES (24959, 455, 17737);
INSERT INTO public.api_personmedal VALUES (24970, 813, 17745);
INSERT INTO public.api_personmedal VALUES (24975, 518, 17748);
INSERT INTO public.api_personmedal VALUES (24977, 518, 17750);
INSERT INTO public.api_personmedal VALUES (24980, 806, 17753);
INSERT INTO public.api_personmedal VALUES (24985, 670, 17757);
INSERT INTO public.api_personmedal VALUES (24986, 1127, 17758);
INSERT INTO public.api_personmedal VALUES (24987, 1074, 17759);
INSERT INTO public.api_personmedal VALUES (24998, 513, 17765);
INSERT INTO public.api_personmedal VALUES (25011, 13, 17773);
INSERT INTO public.api_personmedal VALUES (25013, 401, 17775);
INSERT INTO public.api_personmedal VALUES (25022, 807, 17781);
INSERT INTO public.api_personmedal VALUES (25028, 513, 17785);
INSERT INTO public.api_personmedal VALUES (25070, 394, 17803);
INSERT INTO public.api_personmedal VALUES (25074, 919, 17805);
INSERT INTO public.api_personmedal VALUES (25082, 224, 17811);
INSERT INTO public.api_personmedal VALUES (25085, 274, 17813);
INSERT INTO public.api_personmedal VALUES (25112, 805, 17831);
INSERT INTO public.api_personmedal VALUES (25115, 805, 17833);
INSERT INTO public.api_personmedal VALUES (25157, 995, 17865);
INSERT INTO public.api_personmedal VALUES (25217, 405, 17906);
INSERT INTO public.api_personmedal VALUES (25218, 416, 17906);
INSERT INTO public.api_personmedal VALUES (25219, 420, 17906);
INSERT INTO public.api_personmedal VALUES (25225, 394, 17910);
INSERT INTO public.api_personmedal VALUES (25231, 240, 17915);
INSERT INTO public.api_personmedal VALUES (25240, 234, 17923);
INSERT INTO public.api_personmedal VALUES (25241, 240, 17923);
INSERT INTO public.api_personmedal VALUES (25254, 247, 17933);
INSERT INTO public.api_personmedal VALUES (25268, 394, 17939);
INSERT INTO public.api_personmedal VALUES (25269, 514, 17940);
INSERT INTO public.api_personmedal VALUES (25270, 514, 17941);
INSERT INTO public.api_personmedal VALUES (25282, 807, 17950);
INSERT INTO public.api_personmedal VALUES (25285, 172, 17953);
INSERT INTO public.api_personmedal VALUES (25291, 485, 17958);
INSERT INTO public.api_personmedal VALUES (25296, 450, 17962);
INSERT INTO public.api_personmedal VALUES (25300, 355, 17965);
INSERT INTO public.api_personmedal VALUES (25303, 539, 17966);
INSERT INTO public.api_personmedal VALUES (25304, 1039, 17967);
INSERT INTO public.api_personmedal VALUES (25305, 335, 17968);
INSERT INTO public.api_personmedal VALUES (25306, 341, 17968);
INSERT INTO public.api_personmedal VALUES (25308, 1077, 17969);
INSERT INTO public.api_personmedal VALUES (25316, 1078, 17975);
INSERT INTO public.api_personmedal VALUES (25322, 560, 17981);
INSERT INTO public.api_personmedal VALUES (25327, 1077, 17984);
INSERT INTO public.api_personmedal VALUES (25330, 1078, 17985);
INSERT INTO public.api_personmedal VALUES (25332, 537, 17986);
INSERT INTO public.api_personmedal VALUES (25337, 669, 17990);
INSERT INTO public.api_personmedal VALUES (25354, 1202, 18000);
INSERT INTO public.api_personmedal VALUES (25358, 396, 18004);
INSERT INTO public.api_personmedal VALUES (25365, 538, 18007);
INSERT INTO public.api_personmedal VALUES (25367, 396, 18009);
INSERT INTO public.api_personmedal VALUES (25369, 721, 18011);
INSERT INTO public.api_personmedal VALUES (25386, 721, 18021);
INSERT INTO public.api_personmedal VALUES (25396, 398, 18024);
INSERT INTO public.api_personmedal VALUES (25400, 814, 18026);
INSERT INTO public.api_personmedal VALUES (25408, 1077, 18031);
INSERT INTO public.api_personmedal VALUES (25425, 859, 18040);
INSERT INTO public.api_personmedal VALUES (25430, 356, 18045);
INSERT INTO public.api_personmedal VALUES (25455, 1032, 18060);
INSERT INTO public.api_personmedal VALUES (25456, 1040, 18060);
INSERT INTO public.api_personmedal VALUES (25476, 807, 18071);
INSERT INTO public.api_personmedal VALUES (25489, 331, 18082);
INSERT INTO public.api_personmedal VALUES (25497, 1048, 18089);
INSERT INTO public.api_personmedal VALUES (25541, 447, 18125);
INSERT INTO public.api_personmedal VALUES (25544, 289, 18128);
INSERT INTO public.api_personmedal VALUES (25571, 649, 18146);
INSERT INTO public.api_personmedal VALUES (25572, 659, 18146);
INSERT INTO public.api_personmedal VALUES (25573, 665, 18146);
INSERT INTO public.api_personmedal VALUES (25574, 668, 18146);
INSERT INTO public.api_personmedal VALUES (25575, 671, 18146);
INSERT INTO public.api_personmedal VALUES (25576, 674, 18146);
INSERT INTO public.api_personmedal VALUES (25612, 1024, 18154);
INSERT INTO public.api_personmedal VALUES (25624, 1135, 18158);
INSERT INTO public.api_personmedal VALUES (25654, 357, 18180);
INSERT INTO public.api_personmedal VALUES (25655, 361, 18180);
INSERT INTO public.api_personmedal VALUES (25754, 39, 18249);
INSERT INTO public.api_personmedal VALUES (25767, 813, 18257);
INSERT INTO public.api_personmedal VALUES (25768, 293, 18258);
INSERT INTO public.api_personmedal VALUES (25781, 448, 18265);
INSERT INTO public.api_personmedal VALUES (25816, 1175, 18290);
INSERT INTO public.api_personmedal VALUES (25817, 1185, 18290);
INSERT INTO public.api_personmedal VALUES (25855, 148, 18314);
INSERT INTO public.api_personmedal VALUES (25872, 1078, 18325);
INSERT INTO public.api_personmedal VALUES (25877, 717, 18330);
INSERT INTO public.api_personmedal VALUES (25894, 720, 18342);
INSERT INTO public.api_personmedal VALUES (25900, 896, 18347);
INSERT INTO public.api_personmedal VALUES (25926, 509, 18367);
INSERT INTO public.api_personmedal VALUES (25929, 539, 18369);
INSERT INTO public.api_personmedal VALUES (25962, 889, 18390);
INSERT INTO public.api_personmedal VALUES (25980, 1076, 18400);
INSERT INTO public.api_personmedal VALUES (25983, 939, 18403);
INSERT INTO public.api_personmedal VALUES (25987, 1051, 18406);
INSERT INTO public.api_personmedal VALUES (26054, 447, 18451);
INSERT INTO public.api_personmedal VALUES (26075, 765, 18468);
INSERT INTO public.api_personmedal VALUES (26079, 811, 18472);
INSERT INTO public.api_personmedal VALUES (26092, 170, 18482);
INSERT INTO public.api_personmedal VALUES (26099, 545, 18489);
INSERT INTO public.api_personmedal VALUES (26145, 809, 18529);
INSERT INTO public.api_personmedal VALUES (26147, 235, 18531);
INSERT INTO public.api_personmedal VALUES (26149, 374, 18533);
INSERT INTO public.api_personmedal VALUES (26151, 174, 18535);
INSERT INTO public.api_personmedal VALUES (26153, 492, 18537);
INSERT INTO public.api_personmedal VALUES (26166, 170, 18547);
INSERT INTO public.api_personmedal VALUES (26167, 811, 18548);
INSERT INTO public.api_personmedal VALUES (26190, 753, 18566);
INSERT INTO public.api_personmedal VALUES (26196, 523, 18572);
INSERT INTO public.api_personmedal VALUES (26216, 215, 18588);
INSERT INTO public.api_personmedal VALUES (26228, 706, 18599);
INSERT INTO public.api_personmedal VALUES (26229, 729, 18599);
INSERT INTO public.api_personmedal VALUES (26233, 134, 18601);
INSERT INTO public.api_personmedal VALUES (26240, 320, 18607);
INSERT INTO public.api_personmedal VALUES (26285, 170, 18638);
INSERT INTO public.api_personmedal VALUES (26300, 203, 18650);
INSERT INTO public.api_personmedal VALUES (26301, 163, 18651);
INSERT INTO public.api_personmedal VALUES (26303, 488, 18653);
INSERT INTO public.api_personmedal VALUES (26316, 654, 18661);
INSERT INTO public.api_personmedal VALUES (26317, 673, 18661);
INSERT INTO public.api_personmedal VALUES (26363, 125, 18687);
INSERT INTO public.api_personmedal VALUES (26375, 36, 18698);
INSERT INTO public.api_personmedal VALUES (26398, 837, 18716);
INSERT INTO public.api_personmedal VALUES (26399, 516, 18717);
INSERT INTO public.api_personmedal VALUES (26404, 16, 18721);
INSERT INTO public.api_personmedal VALUES (26405, 46, 18721);
INSERT INTO public.api_personmedal VALUES (26415, 209, 18727);
INSERT INTO public.api_personmedal VALUES (26417, 275, 18729);
INSERT INTO public.api_personmedal VALUES (26422, 121, 18733);
INSERT INTO public.api_personmedal VALUES (26426, 583, 18735);
INSERT INTO public.api_personmedal VALUES (26427, 1078, 18736);
INSERT INTO public.api_personmedal VALUES (26436, 392, 18743);
INSERT INTO public.api_personmedal VALUES (26439, 790, 18746);
INSERT INTO public.api_personmedal VALUES (26447, 551, 18751);
INSERT INTO public.api_personmedal VALUES (26449, 915, 18753);
INSERT INTO public.api_personmedal VALUES (26452, 631, 18756);
INSERT INTO public.api_personmedal VALUES (26461, 1078, 18760);
INSERT INTO public.api_personmedal VALUES (26478, 455, 18772);
INSERT INTO public.api_personmedal VALUES (26481, 455, 18773);
INSERT INTO public.api_personmedal VALUES (26482, 106, 18774);
INSERT INTO public.api_personmedal VALUES (26492, 526, 18778);
INSERT INTO public.api_personmedal VALUES (26495, 447, 18779);
INSERT INTO public.api_personmedal VALUES (26538, 1088, 18814);
INSERT INTO public.api_personmedal VALUES (26598, 183, 18860);
INSERT INTO public.api_personmedal VALUES (26599, 807, 18861);
INSERT INTO public.api_personmedal VALUES (26613, 65, 18873);
INSERT INTO public.api_personmedal VALUES (26659, 257, 18909);
INSERT INTO public.api_personmedal VALUES (26667, 816, 18916);
INSERT INTO public.api_personmedal VALUES (26668, 971, 18917);
INSERT INTO public.api_personmedal VALUES (26706, 130, 18939);
INSERT INTO public.api_personmedal VALUES (26719, 676, 18948);
INSERT INTO public.api_personmedal VALUES (26754, 461, 18974);
INSERT INTO public.api_personmedal VALUES (26759, 457, 18979);
INSERT INTO public.api_personmedal VALUES (26780, 1207, 18997);
INSERT INTO public.api_personmedal VALUES (26783, 543, 19000);
INSERT INTO public.api_personmedal VALUES (26810, 1086, 19010);
INSERT INTO public.api_personmedal VALUES (26811, 1089, 19010);
INSERT INTO public.api_personmedal VALUES (26822, 1077, 19016);
INSERT INTO public.api_personmedal VALUES (26825, 634, 19019);
INSERT INTO public.api_personmedal VALUES (26895, 736, 19066);
INSERT INTO public.api_personmedal VALUES (26896, 739, 19066);
INSERT INTO public.api_personmedal VALUES (26902, 900, 19069);
INSERT INTO public.api_personmedal VALUES (26923, 908, 19084);
INSERT INTO public.api_personmedal VALUES (26936, 488, 19093);
INSERT INTO public.api_personmedal VALUES (26949, 109, 19101);
INSERT INTO public.api_personmedal VALUES (26951, 560, 19102);
INSERT INTO public.api_personmedal VALUES (26969, 652, 19116);
INSERT INTO public.api_personmedal VALUES (26970, 668, 19116);
INSERT INTO public.api_personmedal VALUES (26971, 671, 19116);
INSERT INTO public.api_personmedal VALUES (26972, 685, 19116);
INSERT INTO public.api_personmedal VALUES (26981, 568, 19121);
INSERT INTO public.api_personmedal VALUES (26993, 38, 19128);
INSERT INTO public.api_personmedal VALUES (26997, 708, 19132);
INSERT INTO public.api_personmedal VALUES (27008, 395, 19142);
INSERT INTO public.api_personmedal VALUES (27071, 170, 19182);
INSERT INTO public.api_personmedal VALUES (27083, 174, 19191);
INSERT INTO public.api_personmedal VALUES (27087, 1150, 19194);
INSERT INTO public.api_personmedal VALUES (27089, 393, 19196);
INSERT INTO public.api_personmedal VALUES (27101, 95, 19207);
INSERT INTO public.api_personmedal VALUES (27102, 559, 19208);
INSERT INTO public.api_personmedal VALUES (27104, 594, 19210);
INSERT INTO public.api_personmedal VALUES (27105, 612, 19210);
INSERT INTO public.api_personmedal VALUES (27108, 813, 19211);
INSERT INTO public.api_personmedal VALUES (27110, 398, 19212);
INSERT INTO public.api_personmedal VALUES (27113, 1058, 19214);
INSERT INTO public.api_personmedal VALUES (27117, 574, 19217);
INSERT INTO public.api_personmedal VALUES (27123, 351, 19220);
INSERT INTO public.api_personmedal VALUES (27125, 15, 19221);
INSERT INTO public.api_personmedal VALUES (27130, 813, 19225);
INSERT INTO public.api_personmedal VALUES (27137, 34, 19231);
INSERT INTO public.api_personmedal VALUES (27139, 191, 19233);
INSERT INTO public.api_personmedal VALUES (27148, 803, 19241);
INSERT INTO public.api_personmedal VALUES (27151, 210, 19243);
INSERT INTO public.api_personmedal VALUES (27154, 456, 19245);
INSERT INTO public.api_personmedal VALUES (27197, 455, 19272);
INSERT INTO public.api_personmedal VALUES (27207, 550, 19280);
INSERT INTO public.api_personmedal VALUES (27209, 1079, 19282);
INSERT INTO public.api_personmedal VALUES (27215, 558, 19286);
INSERT INTO public.api_personmedal VALUES (27216, 1016, 19287);
INSERT INTO public.api_personmedal VALUES (27218, 932, 19289);
INSERT INTO public.api_personmedal VALUES (27219, 944, 19289);
INSERT INTO public.api_personmedal VALUES (27248, 835, 19308);
INSERT INTO public.api_personmedal VALUES (27289, 458, 19337);
INSERT INTO public.api_personmedal VALUES (27292, 1034, 19340);
INSERT INTO public.api_personmedal VALUES (27293, 1038, 19340);
INSERT INTO public.api_personmedal VALUES (27297, 1003, 19343);
INSERT INTO public.api_personmedal VALUES (27299, 427, 19344);
INSERT INTO public.api_personmedal VALUES (27305, 447, 19348);
INSERT INTO public.api_personmedal VALUES (27306, 290, 19349);
INSERT INTO public.api_personmedal VALUES (27309, 1075, 19352);
INSERT INTO public.api_personmedal VALUES (27310, 394, 19353);
INSERT INTO public.api_personmedal VALUES (27312, 455, 19355);
INSERT INTO public.api_personmedal VALUES (27319, 811, 19360);
INSERT INTO public.api_personmedal VALUES (27320, 170, 19361);
INSERT INTO public.api_personmedal VALUES (27321, 170, 19362);
INSERT INTO public.api_personmedal VALUES (27322, 448, 19363);
INSERT INTO public.api_personmedal VALUES (27327, 171, 19366);
INSERT INTO public.api_personmedal VALUES (27384, 1144, 19410);
INSERT INTO public.api_personmedal VALUES (27461, 427, 19453);
INSERT INTO public.api_personmedal VALUES (27465, 410, 19457);
INSERT INTO public.api_personmedal VALUES (27518, 394, 19503);
INSERT INTO public.api_personmedal VALUES (27565, 1079, 19535);
INSERT INTO public.api_personmedal VALUES (27577, 276, 19544);
INSERT INTO public.api_personmedal VALUES (27614, 1129, 19572);
INSERT INTO public.api_personmedal VALUES (27627, 452, 19583);
INSERT INTO public.api_personmedal VALUES (27663, 1132, 19606);
INSERT INTO public.api_personmedal VALUES (27664, 1136, 19606);
INSERT INTO public.api_personmedal VALUES (27707, 217, 19641);
INSERT INTO public.api_personmedal VALUES (27717, 110, 19649);
INSERT INTO public.api_personmedal VALUES (27721, 168, 19650);
INSERT INTO public.api_personmedal VALUES (27728, 777, 19657);
INSERT INTO public.api_personmedal VALUES (27738, 111, 19666);
INSERT INTO public.api_personmedal VALUES (27773, 487, 19691);
INSERT INTO public.api_personmedal VALUES (27778, 395, 19696);
INSERT INTO public.api_personmedal VALUES (27784, 775, 19702);
INSERT INTO public.api_personmedal VALUES (27795, 395, 19707);
INSERT INTO public.api_personmedal VALUES (27817, 506, 19725);
INSERT INTO public.api_personmedal VALUES (27819, 999, 19727);
INSERT INTO public.api_personmedal VALUES (27838, 524, 19740);
INSERT INTO public.api_personmedal VALUES (27891, 945, 19769);
INSERT INTO public.api_personmedal VALUES (27892, 960, 19769);
INSERT INTO public.api_personmedal VALUES (27931, 806, 19789);
INSERT INTO public.api_personmedal VALUES (27968, 415, 19820);
INSERT INTO public.api_personmedal VALUES (27969, 417, 19820);
INSERT INTO public.api_personmedal VALUES (28031, 972, 19868);
INSERT INTO public.api_personmedal VALUES (28036, 391, 19873);
INSERT INTO public.api_personmedal VALUES (28038, 391, 19875);
INSERT INTO public.api_personmedal VALUES (28051, 1204, 19885);
INSERT INTO public.api_personmedal VALUES (28052, 383, 19886);
INSERT INTO public.api_personmedal VALUES (28055, 973, 19889);
INSERT INTO public.api_personmedal VALUES (28063, 1199, 19892);
INSERT INTO public.api_personmedal VALUES (28064, 1208, 19892);
INSERT INTO public.api_personmedal VALUES (28073, 973, 19900);
INSERT INTO public.api_personmedal VALUES (28074, 976, 19900);
INSERT INTO public.api_personmedal VALUES (28080, 816, 19906);
INSERT INTO public.api_personmedal VALUES (28101, 257, 19921);
INSERT INTO public.api_personmedal VALUES (28105, 450, 19923);
INSERT INTO public.api_personmedal VALUES (28106, 153, 19924);
INSERT INTO public.api_personmedal VALUES (28108, 298, 19925);
INSERT INTO public.api_personmedal VALUES (28150, 389, 19946);
INSERT INTO public.api_personmedal VALUES (28151, 391, 19946);
INSERT INTO public.api_personmedal VALUES (28178, 1075, 19969);
INSERT INTO public.api_personmedal VALUES (28180, 556, 19971);
INSERT INTO public.api_personmedal VALUES (28181, 397, 19972);
INSERT INTO public.api_personmedal VALUES (28183, 586, 19974);
INSERT INTO public.api_personmedal VALUES (28185, 538, 19975);
INSERT INTO public.api_personmedal VALUES (28188, 718, 19978);
INSERT INTO public.api_personmedal VALUES (28193, 515, 19983);
INSERT INTO public.api_personmedal VALUES (28206, 1076, 19992);
INSERT INTO public.api_personmedal VALUES (28207, 1076, 19993);
INSERT INTO public.api_personmedal VALUES (28230, 395, 20009);
INSERT INTO public.api_personmedal VALUES (28232, 818, 20011);
INSERT INTO public.api_personmedal VALUES (28242, 22, 20016);
INSERT INTO public.api_personmedal VALUES (28250, 949, 20023);
INSERT INTO public.api_personmedal VALUES (28251, 953, 20023);
INSERT INTO public.api_personmedal VALUES (28252, 961, 20023);
INSERT INTO public.api_personmedal VALUES (28253, 536, 20024);
INSERT INTO public.api_personmedal VALUES (28266, 473, 20031);
INSERT INTO public.api_personmedal VALUES (28291, 23, 20049);
INSERT INTO public.api_personmedal VALUES (28336, 555, 20084);
INSERT INTO public.api_personmedal VALUES (28355, 979, 20099);
INSERT INTO public.api_personmedal VALUES (28361, 806, 20103);
INSERT INTO public.api_personmedal VALUES (28364, 1076, 20106);
INSERT INTO public.api_personmedal VALUES (28393, 482, 20131);
INSERT INTO public.api_personmedal VALUES (28479, 765, 20188);
INSERT INTO public.api_personmedal VALUES (28488, 288, 20194);
INSERT INTO public.api_personmedal VALUES (28552, 548, 20238);
INSERT INTO public.api_personmedal VALUES (28554, 572, 20240);
INSERT INTO public.api_personmedal VALUES (28558, 340, 20244);
INSERT INTO public.api_personmedal VALUES (28565, 593, 20247);
INSERT INTO public.api_personmedal VALUES (28567, 771, 20248);
INSERT INTO public.api_personmedal VALUES (28592, 176, 20266);
INSERT INTO public.api_personmedal VALUES (28593, 367, 20267);
INSERT INTO public.api_personmedal VALUES (28610, 402, 20280);
INSERT INTO public.api_personmedal VALUES (28628, 363, 20293);
INSERT INTO public.api_personmedal VALUES (28636, 1113, 20297);
INSERT INTO public.api_personmedal VALUES (28637, 1119, 20297);
INSERT INTO public.api_personmedal VALUES (28638, 1124, 20297);
INSERT INTO public.api_personmedal VALUES (28679, 771, 20326);
INSERT INTO public.api_personmedal VALUES (28681, 1074, 20328);
INSERT INTO public.api_personmedal VALUES (28713, 547, 20352);
INSERT INTO public.api_personmedal VALUES (28733, 1074, 20370);
INSERT INTO public.api_personmedal VALUES (28741, 326, 20376);
INSERT INTO public.api_personmedal VALUES (28767, 1030, 20392);
INSERT INTO public.api_personmedal VALUES (28768, 1039, 20392);
INSERT INTO public.api_personmedal VALUES (28776, 1074, 20399);
INSERT INTO public.api_personmedal VALUES (28779, 449, 20402);
INSERT INTO public.api_personmedal VALUES (28787, 1164, 20409);
INSERT INTO public.api_personmedal VALUES (28790, 171, 20412);
INSERT INTO public.api_personmedal VALUES (28802, 513, 20420);
INSERT INTO public.api_personmedal VALUES (28821, 449, 20432);
INSERT INTO public.api_personmedal VALUES (28848, 169, 20451);
INSERT INTO public.api_personmedal VALUES (28878, 47, 20473);
INSERT INTO public.api_personmedal VALUES (28879, 17, 20474);
INSERT INTO public.api_personmedal VALUES (28910, 529, 20500);
INSERT INTO public.api_personmedal VALUES (28952, 480, 20530);
INSERT INTO public.api_personmedal VALUES (28981, 397, 20549);
INSERT INTO public.api_personmedal VALUES (29047, 502, 20592);
INSERT INTO public.api_personmedal VALUES (29048, 572, 20593);
INSERT INTO public.api_personmedal VALUES (29081, 453, 20620);
INSERT INTO public.api_personmedal VALUES (29116, 696, 20644);
INSERT INTO public.api_personmedal VALUES (29117, 698, 20644);
INSERT INTO public.api_personmedal VALUES (29118, 717, 20644);
INSERT INTO public.api_personmedal VALUES (29119, 723, 20644);
INSERT INTO public.api_personmedal VALUES (29171, 1075, 20679);
INSERT INTO public.api_personmedal VALUES (29220, 1074, 20715);
INSERT INTO public.api_personmedal VALUES (29226, 720, 20719);
INSERT INTO public.api_personmedal VALUES (29227, 730, 20719);
INSERT INTO public.api_personmedal VALUES (29265, 513, 20745);
INSERT INTO public.api_personmedal VALUES (29286, 567, 20758);
INSERT INTO public.api_personmedal VALUES (29362, 222, 20811);
INSERT INTO public.api_personmedal VALUES (29363, 250, 20812);
INSERT INTO public.api_personmedal VALUES (29384, 38, 20832);
INSERT INTO public.api_personmedal VALUES (29404, 515, 20843);
INSERT INTO public.api_personmedal VALUES (29412, 1133, 20850);
INSERT INTO public.api_personmedal VALUES (29413, 1138, 20850);
INSERT INTO public.api_personmedal VALUES (29494, 792, 20912);
INSERT INTO public.api_personmedal VALUES (29521, 1076, 20933);
INSERT INTO public.api_personmedal VALUES (29530, 752, 20935);
INSERT INTO public.api_personmedal VALUES (29561, 513, 20959);
INSERT INTO public.api_personmedal VALUES (29563, 556, 20960);
INSERT INTO public.api_personmedal VALUES (29580, 291, 20973);
INSERT INTO public.api_personmedal VALUES (29608, 394, 20998);
INSERT INTO public.api_personmedal VALUES (29657, 354, 21024);
INSERT INTO public.api_personmedal VALUES (29658, 557, 21025);
INSERT INTO public.api_personmedal VALUES (29666, 359, 21032);
INSERT INTO public.api_personmedal VALUES (29670, 531, 21034);
INSERT INTO public.api_personmedal VALUES (29675, 1079, 21038);
INSERT INTO public.api_personmedal VALUES (29677, 109, 21040);
INSERT INTO public.api_personmedal VALUES (29684, 458, 21046);
INSERT INTO public.api_personmedal VALUES (29744, 528, 21088);
INSERT INTO public.api_personmedal VALUES (29750, 575, 21091);
INSERT INTO public.api_personmedal VALUES (29781, 1143, 21112);
INSERT INTO public.api_personmedal VALUES (29803, 515, 21125);
INSERT INTO public.api_personmedal VALUES (29807, 651, 21129);
INSERT INTO public.api_personmedal VALUES (29812, 813, 21133);
INSERT INTO public.api_personmedal VALUES (29831, 854, 21145);
INSERT INTO public.api_personmedal VALUES (29838, 59, 21150);
INSERT INTO public.api_personmedal VALUES (29880, 354, 21176);
INSERT INTO public.api_personmedal VALUES (29881, 688, 21177);
INSERT INTO public.api_personmedal VALUES (29893, 450, 21180);
INSERT INTO public.api_personmedal VALUES (29894, 538, 21181);
INSERT INTO public.api_personmedal VALUES (29902, 1025, 21185);
INSERT INTO public.api_personmedal VALUES (29903, 395, 21186);
INSERT INTO public.api_personmedal VALUES (29905, 559, 21188);
INSERT INTO public.api_personmedal VALUES (29970, 368, 21240);
INSERT INTO public.api_personmedal VALUES (29977, 167, 21244);
INSERT INTO public.api_personmedal VALUES (30001, 332, 21260);
INSERT INTO public.api_personmedal VALUES (30019, 374, 21272);
INSERT INTO public.api_personmedal VALUES (30020, 810, 21273);
INSERT INTO public.api_personmedal VALUES (30026, 814, 21277);
INSERT INTO public.api_personmedal VALUES (30035, 687, 21284);
INSERT INTO public.api_personmedal VALUES (30040, 786, 21289);
INSERT INTO public.api_personmedal VALUES (30041, 760, 21290);
INSERT INTO public.api_personmedal VALUES (30066, 284, 21307);
INSERT INTO public.api_personmedal VALUES (30070, 393, 21311);
INSERT INTO public.api_personmedal VALUES (30075, 473, 21316);
INSERT INTO public.api_personmedal VALUES (30086, 778, 21323);
INSERT INTO public.api_personmedal VALUES (30091, 495, 21327);
INSERT INTO public.api_personmedal VALUES (30161, 785, 21372);
INSERT INTO public.api_personmedal VALUES (30322, 290, 21489);
INSERT INTO public.api_personmedal VALUES (30427, 301, 21566);
INSERT INTO public.api_personmedal VALUES (30428, 313, 21566);
INSERT INTO public.api_personmedal VALUES (30429, 1077, 21567);
INSERT INTO public.api_personmedal VALUES (30447, 398, 21577);
INSERT INTO public.api_personmedal VALUES (30450, 541, 21580);
INSERT INTO public.api_personmedal VALUES (30498, 863, 21612);
INSERT INTO public.api_personmedal VALUES (30580, 212, 21673);
INSERT INTO public.api_personmedal VALUES (30617, 333, 21705);
INSERT INTO public.api_personmedal VALUES (30627, 447, 21713);
INSERT INTO public.api_personmedal VALUES (30670, 393, 21739);
INSERT INTO public.api_personmedal VALUES (30674, 77, 21743);
INSERT INTO public.api_personmedal VALUES (30680, 509, 21748);
INSERT INTO public.api_personmedal VALUES (30695, 1136, 21757);
INSERT INTO public.api_personmedal VALUES (30718, 398, 21776);
INSERT INTO public.api_personmedal VALUES (30725, 411, 21782);
INSERT INTO public.api_personmedal VALUES (30752, 171, 21799);
INSERT INTO public.api_personmedal VALUES (30767, 805, 21810);
INSERT INTO public.api_personmedal VALUES (30856, 223, 21882);
INSERT INTO public.api_personmedal VALUES (30927, 514, 21934);
INSERT INTO public.api_personmedal VALUES (30960, 1074, 21960);
INSERT INTO public.api_personmedal VALUES (30968, 703, 21967);
INSERT INTO public.api_personmedal VALUES (30971, 876, 21969);
INSERT INTO public.api_personmedal VALUES (30984, 720, 21981);
INSERT INTO public.api_personmedal VALUES (30988, 847, 21984);
INSERT INTO public.api_personmedal VALUES (30998, 913, 21991);
INSERT INTO public.api_personmedal VALUES (30999, 738, 21992);
INSERT INTO public.api_personmedal VALUES (31000, 741, 21992);
INSERT INTO public.api_personmedal VALUES (31001, 467, 21993);
INSERT INTO public.api_personmedal VALUES (31033, 555, 22012);
INSERT INTO public.api_personmedal VALUES (31050, 181, 22021);
INSERT INTO public.api_personmedal VALUES (31099, 394, 22060);
INSERT INTO public.api_personmedal VALUES (31242, 515, 22171);
INSERT INTO public.api_personmedal VALUES (31274, 177, 22195);
INSERT INTO public.api_personmedal VALUES (31291, 675, 22212);
INSERT INTO public.api_personmedal VALUES (31355, 815, 22255);
INSERT INTO public.api_personmedal VALUES (31382, 1074, 22276);
INSERT INTO public.api_personmedal VALUES (31399, 995, 22292);
INSERT INTO public.api_personmedal VALUES (31408, 1037, 22300);
INSERT INTO public.api_personmedal VALUES (31412, 195, 22303);
INSERT INTO public.api_personmedal VALUES (31452, 171, 22333);
INSERT INTO public.api_personmedal VALUES (31467, 393, 22343);
INSERT INTO public.api_personmedal VALUES (31471, 393, 22345);
INSERT INTO public.api_personmedal VALUES (31517, 354, 22377);
INSERT INTO public.api_personmedal VALUES (31615, 883, 22447);
INSERT INTO public.api_personmedal VALUES (31638, 245, 22461);
INSERT INTO public.api_personmedal VALUES (31672, 1079, 22487);
INSERT INTO public.api_personmedal VALUES (31676, 375, 22491);
INSERT INTO public.api_personmedal VALUES (31706, 1187, 22517);
INSERT INTO public.api_personmedal VALUES (31713, 248, 22523);
INSERT INTO public.api_personmedal VALUES (31760, 796, 22554);
INSERT INTO public.api_personmedal VALUES (31762, 815, 22555);
INSERT INTO public.api_personmedal VALUES (31766, 557, 22558);
INSERT INTO public.api_personmedal VALUES (31771, 341, 22563);
INSERT INTO public.api_personmedal VALUES (31800, 379, 22582);
INSERT INTO public.api_personmedal VALUES (31820, 539, 22597);
INSERT INTO public.api_personmedal VALUES (31840, 475, 22614);
INSERT INTO public.api_personmedal VALUES (31841, 897, 22615);
INSERT INTO public.api_personmedal VALUES (31843, 556, 22617);
INSERT INTO public.api_personmedal VALUES (31853, 559, 22626);
INSERT INTO public.api_personmedal VALUES (31936, 38, 22695);
INSERT INTO public.api_personmedal VALUES (31937, 1107, 22696);
INSERT INTO public.api_personmedal VALUES (31941, 823, 22700);
INSERT INTO public.api_personmedal VALUES (31966, 188, 22720);
INSERT INTO public.api_personmedal VALUES (31972, 397, 22725);
INSERT INTO public.api_personmedal VALUES (31974, 133, 22727);
INSERT INTO public.api_personmedal VALUES (31982, 103, 22734);
INSERT INTO public.api_personmedal VALUES (31983, 777, 22735);
INSERT INTO public.api_personmedal VALUES (31997, 79, 22747);
INSERT INTO public.api_personmedal VALUES (31999, 1023, 22749);
INSERT INTO public.api_personmedal VALUES (32000, 1074, 22750);
INSERT INTO public.api_personmedal VALUES (32003, 1023, 22752);
INSERT INTO public.api_personmedal VALUES (32004, 668, 22753);
INSERT INTO public.api_personmedal VALUES (32007, 642, 22756);
INSERT INTO public.api_personmedal VALUES (32008, 653, 22756);
INSERT INTO public.api_personmedal VALUES (32009, 671, 22756);
INSERT INTO public.api_personmedal VALUES (32014, 674, 22760);
INSERT INTO public.api_personmedal VALUES (32028, 6, 22763);
INSERT INTO public.api_personmedal VALUES (32034, 426, 22769);
INSERT INTO public.api_personmedal VALUES (32049, 35, 22777);
INSERT INTO public.api_personmedal VALUES (32072, 464, 22795);
INSERT INTO public.api_personmedal VALUES (32075, 890, 22798);
INSERT INTO public.api_personmedal VALUES (32085, 397, 22807);
INSERT INTO public.api_personmedal VALUES (32086, 174, 22808);
INSERT INTO public.api_personmedal VALUES (32089, 891, 22811);
INSERT INTO public.api_personmedal VALUES (32121, 398, 22833);
INSERT INTO public.api_personmedal VALUES (32122, 256, 22834);
INSERT INTO public.api_personmedal VALUES (32136, 395, 22844);
INSERT INTO public.api_personmedal VALUES (32140, 885, 22846);
INSERT INTO public.api_personmedal VALUES (32142, 1155, 22848);
INSERT INTO public.api_personmedal VALUES (32151, 1076, 22856);
INSERT INTO public.api_personmedal VALUES (32153, 912, 22858);
INSERT INTO public.api_personmedal VALUES (32158, 237, 22860);
INSERT INTO public.api_personmedal VALUES (32159, 248, 22860);
INSERT INTO public.api_personmedal VALUES (32170, 500, 22867);
INSERT INTO public.api_personmedal VALUES (32191, 806, 22883);
INSERT INTO public.api_personmedal VALUES (32197, 331, 22886);
INSERT INTO public.api_personmedal VALUES (32198, 362, 22887);
INSERT INTO public.api_personmedal VALUES (32200, 78, 22889);
INSERT INTO public.api_personmedal VALUES (32201, 563, 22890);
INSERT INTO public.api_personmedal VALUES (32202, 292, 22891);
INSERT INTO public.api_personmedal VALUES (32203, 289, 22892);
INSERT INTO public.api_personmedal VALUES (32208, 814, 22897);
INSERT INTO public.api_personmedal VALUES (32209, 456, 22898);
INSERT INTO public.api_personmedal VALUES (32220, 1076, 22906);
INSERT INTO public.api_personmedal VALUES (32223, 1002, 22908);
INSERT INTO public.api_personmedal VALUES (32224, 1076, 22909);
INSERT INTO public.api_personmedal VALUES (32227, 1076, 22910);
INSERT INTO public.api_personmedal VALUES (32229, 555, 22912);
INSERT INTO public.api_personmedal VALUES (32250, 930, 22927);
INSERT INTO public.api_personmedal VALUES (32284, 556, 22954);
INSERT INTO public.api_personmedal VALUES (32296, 146, 22962);
INSERT INTO public.api_personmedal VALUES (32297, 508, 22963);
INSERT INTO public.api_personmedal VALUES (32304, 361, 22967);
INSERT INTO public.api_personmedal VALUES (32323, 124, 22979);
INSERT INTO public.api_personmedal VALUES (32335, 1079, 22985);
INSERT INTO public.api_personmedal VALUES (32345, 717, 22991);
INSERT INTO public.api_personmedal VALUES (32350, 812, 22995);
INSERT INTO public.api_personmedal VALUES (32352, 916, 22996);
INSERT INTO public.api_personmedal VALUES (32358, 452, 23002);
INSERT INTO public.api_personmedal VALUES (32361, 429, 23005);
INSERT INTO public.api_personmedal VALUES (32370, 576, 23013);
INSERT INTO public.api_personmedal VALUES (32383, 899, 23019);
INSERT INTO public.api_personmedal VALUES (32387, 852, 23020);
INSERT INTO public.api_personmedal VALUES (32389, 1079, 23022);
INSERT INTO public.api_personmedal VALUES (32390, 397, 23023);
INSERT INTO public.api_personmedal VALUES (32393, 907, 23025);
INSERT INTO public.api_personmedal VALUES (32397, 396, 23028);
INSERT INTO public.api_personmedal VALUES (32399, 136, 23030);
INSERT INTO public.api_personmedal VALUES (32400, 174, 23031);
INSERT INTO public.api_personmedal VALUES (32408, 116, 23037);
INSERT INTO public.api_personmedal VALUES (32418, 861, 23046);
INSERT INTO public.api_personmedal VALUES (32421, 1079, 23049);
INSERT INTO public.api_personmedal VALUES (32423, 695, 23051);
INSERT INTO public.api_personmedal VALUES (32424, 699, 23051);
INSERT INTO public.api_personmedal VALUES (32425, 710, 23051);
INSERT INTO public.api_personmedal VALUES (32431, 559, 23056);
INSERT INTO public.api_personmedal VALUES (32434, 307, 23058);
INSERT INTO public.api_personmedal VALUES (32435, 316, 23058);
INSERT INTO public.api_personmedal VALUES (32447, 211, 23063);
INSERT INTO public.api_personmedal VALUES (32461, 396, 23075);
INSERT INTO public.api_personmedal VALUES (32462, 585, 23076);
INSERT INTO public.api_personmedal VALUES (32474, 395, 23085);
INSERT INTO public.api_personmedal VALUES (32478, 523, 23089);
INSERT INTO public.api_personmedal VALUES (32482, 811, 23092);
INSERT INTO public.api_personmedal VALUES (32485, 555, 23094);
INSERT INTO public.api_personmedal VALUES (32517, 454, 23110);
INSERT INTO public.api_personmedal VALUES (32523, 820, 23116);
INSERT INTO public.api_personmedal VALUES (32537, 1024, 23127);
INSERT INTO public.api_personmedal VALUES (32544, 513, 23132);
INSERT INTO public.api_personmedal VALUES (32557, 1033, 23143);
INSERT INTO public.api_personmedal VALUES (32558, 1039, 23143);
INSERT INTO public.api_personmedal VALUES (32569, 557, 23151);
INSERT INTO public.api_personmedal VALUES (32580, 219, 23161);
INSERT INTO public.api_personmedal VALUES (32581, 225, 23161);
INSERT INTO public.api_personmedal VALUES (32598, 442, 23172);
INSERT INTO public.api_personmedal VALUES (32608, 172, 23181);
INSERT INTO public.api_personmedal VALUES (32611, 875, 23182);
INSERT INTO public.api_personmedal VALUES (32612, 458, 23183);
INSERT INTO public.api_personmedal VALUES (32614, 970, 23185);
INSERT INTO public.api_personmedal VALUES (32616, 555, 23187);
INSERT INTO public.api_personmedal VALUES (32617, 1107, 23188);
INSERT INTO public.api_personmedal VALUES (32644, 555, 23209);
INSERT INTO public.api_personmedal VALUES (32652, 394, 23214);
INSERT INTO public.api_personmedal VALUES (32701, 613, 23249);
INSERT INTO public.api_personmedal VALUES (32774, 891, 23299);
INSERT INTO public.api_personmedal VALUES (32830, 171, 23332);
INSERT INTO public.api_personmedal VALUES (32835, 171, 23335);
INSERT INTO public.api_personmedal VALUES (32838, 470, 23337);
INSERT INTO public.api_personmedal VALUES (32871, 595, 23361);
INSERT INTO public.api_personmedal VALUES (32885, 395, 23372);
INSERT INTO public.api_personmedal VALUES (32891, 1134, 23378);
INSERT INTO public.api_personmedal VALUES (32904, 184, 23390);
INSERT INTO public.api_personmedal VALUES (32905, 208, 23391);
INSERT INTO public.api_personmedal VALUES (32906, 559, 23392);
INSERT INTO public.api_personmedal VALUES (32907, 182, 23393);
INSERT INTO public.api_personmedal VALUES (32926, 362, 23405);
INSERT INTO public.api_personmedal VALUES (32929, 443, 23407);
INSERT INTO public.api_personmedal VALUES (32954, 1077, 23417);
INSERT INTO public.api_personmedal VALUES (32957, 558, 23419);
INSERT INTO public.api_personmedal VALUES (32962, 558, 23424);
INSERT INTO public.api_personmedal VALUES (32974, 686, 23432);
INSERT INTO public.api_personmedal VALUES (32977, 107, 23435);
INSERT INTO public.api_personmedal VALUES (32979, 520, 23437);
INSERT INTO public.api_personmedal VALUES (32986, 112, 23442);
INSERT INTO public.api_personmedal VALUES (33001, 1074, 23451);
INSERT INTO public.api_personmedal VALUES (33020, 398, 23464);
INSERT INTO public.api_personmedal VALUES (33030, 93, 23471);
INSERT INTO public.api_personmedal VALUES (33031, 107, 23471);
INSERT INTO public.api_personmedal VALUES (33045, 110, 23476);
INSERT INTO public.api_personmedal VALUES (33046, 114, 23476);
INSERT INTO public.api_personmedal VALUES (33063, 705, 23485);
INSERT INTO public.api_personmedal VALUES (33064, 1109, 23486);
INSERT INTO public.api_personmedal VALUES (33065, 336, 23487);
INSERT INTO public.api_personmedal VALUES (33066, 342, 23487);
INSERT INTO public.api_personmedal VALUES (33067, 829, 23488);
INSERT INTO public.api_personmedal VALUES (33080, 1115, 23496);
INSERT INTO public.api_personmedal VALUES (33081, 1117, 23496);
INSERT INTO public.api_personmedal VALUES (33082, 1119, 23496);
INSERT INTO public.api_personmedal VALUES (33083, 165, 23497);
INSERT INTO public.api_personmedal VALUES (33096, 866, 23507);
INSERT INTO public.api_personmedal VALUES (33125, 897, 23521);
INSERT INTO public.api_personmedal VALUES (33127, 474, 23523);
INSERT INTO public.api_personmedal VALUES (33129, 456, 23525);
INSERT INTO public.api_personmedal VALUES (33134, 35, 23529);
INSERT INTO public.api_personmedal VALUES (33155, 334, 23542);
INSERT INTO public.api_personmedal VALUES (33175, 1074, 23557);
INSERT INTO public.api_personmedal VALUES (33274, 809, 23632);
INSERT INTO public.api_personmedal VALUES (33283, 449, 23637);
INSERT INTO public.api_personmedal VALUES (33324, 959, 23668);
INSERT INTO public.api_personmedal VALUES (33328, 454, 23671);
INSERT INTO public.api_personmedal VALUES (33334, 824, 23676);
INSERT INTO public.api_personmedal VALUES (33335, 525, 23677);
INSERT INTO public.api_personmedal VALUES (33341, 958, 23682);
INSERT INTO public.api_personmedal VALUES (33343, 525, 23684);
INSERT INTO public.api_personmedal VALUES (33344, 1040, 23685);
INSERT INTO public.api_personmedal VALUES (33356, 381, 23690);
INSERT INTO public.api_personmedal VALUES (33359, 381, 23693);
INSERT INTO public.api_personmedal VALUES (33363, 431, 23695);
INSERT INTO public.api_personmedal VALUES (33364, 432, 23695);
INSERT INTO public.api_personmedal VALUES (33365, 435, 23695);
INSERT INTO public.api_personmedal VALUES (33366, 438, 23695);
INSERT INTO public.api_personmedal VALUES (33367, 441, 23695);
INSERT INTO public.api_personmedal VALUES (33368, 698, 23696);
INSERT INTO public.api_personmedal VALUES (33369, 716, 23696);
INSERT INTO public.api_personmedal VALUES (33370, 718, 23696);
INSERT INTO public.api_personmedal VALUES (33371, 731, 23696);
INSERT INTO public.api_personmedal VALUES (33372, 806, 23697);
INSERT INTO public.api_personmedal VALUES (33375, 107, 23700);
INSERT INTO public.api_personmedal VALUES (33376, 806, 23701);
INSERT INTO public.api_personmedal VALUES (33383, 396, 23707);
INSERT INTO public.api_personmedal VALUES (33403, 819, 23721);
INSERT INTO public.api_personmedal VALUES (33404, 713, 23722);
INSERT INTO public.api_personmedal VALUES (33405, 451, 23723);
INSERT INTO public.api_personmedal VALUES (33415, 1103, 23732);
INSERT INTO public.api_personmedal VALUES (33439, 811, 23751);
INSERT INTO public.api_personmedal VALUES (33445, 173, 23754);
INSERT INTO public.api_personmedal VALUES (33470, 348, 23774);
INSERT INTO public.api_personmedal VALUES (33479, 900, 23782);
INSERT INTO public.api_personmedal VALUES (33484, 196, 23786);
INSERT INTO public.api_personmedal VALUES (33486, 388, 23788);
INSERT INTO public.api_personmedal VALUES (33487, 390, 23788);
INSERT INTO public.api_personmedal VALUES (33503, 832, 23795);
INSERT INTO public.api_personmedal VALUES (33519, 882, 23810);
INSERT INTO public.api_personmedal VALUES (33548, 174, 23836);
INSERT INTO public.api_personmedal VALUES (33553, 446, 23839);
INSERT INTO public.api_personmedal VALUES (33554, 456, 23840);
INSERT INTO public.api_personmedal VALUES (33555, 398, 23841);
INSERT INTO public.api_personmedal VALUES (33559, 129, 23844);
INSERT INTO public.api_personmedal VALUES (33565, 844, 23849);
INSERT INTO public.api_personmedal VALUES (33574, 892, 23857);
INSERT INTO public.api_personmedal VALUES (33581, 209, 23862);
INSERT INTO public.api_personmedal VALUES (33585, 349, 23866);
INSERT INTO public.api_personmedal VALUES (33587, 640, 23868);
INSERT INTO public.api_personmedal VALUES (33606, 805, 23883);
INSERT INTO public.api_personmedal VALUES (33614, 845, 23888);
INSERT INTO public.api_personmedal VALUES (33668, 395, 23926);
INSERT INTO public.api_personmedal VALUES (33691, 328, 23943);
INSERT INTO public.api_personmedal VALUES (33702, 170, 23951);
INSERT INTO public.api_personmedal VALUES (33716, 1173, 23961);
INSERT INTO public.api_personmedal VALUES (33722, 170, 23966);
INSERT INTO public.api_personmedal VALUES (33732, 170, 23973);
INSERT INTO public.api_personmedal VALUES (33734, 811, 23975);
INSERT INTO public.api_personmedal VALUES (33757, 809, 23990);
INSERT INTO public.api_personmedal VALUES (33770, 1016, 23994);
INSERT INTO public.api_personmedal VALUES (33776, 1079, 23997);
INSERT INTO public.api_personmedal VALUES (33777, 590, 23998);
INSERT INTO public.api_personmedal VALUES (33789, 813, 24007);
INSERT INTO public.api_personmedal VALUES (33793, 296, 24010);
INSERT INTO public.api_personmedal VALUES (33798, 449, 24015);
INSERT INTO public.api_personmedal VALUES (33799, 350, 24016);
INSERT INTO public.api_personmedal VALUES (33802, 449, 24018);
INSERT INTO public.api_personmedal VALUES (33808, 256, 24021);
INSERT INTO public.api_personmedal VALUES (33872, 398, 24059);
INSERT INTO public.api_personmedal VALUES (33880, 599, 24067);
INSERT INTO public.api_personmedal VALUES (33941, 675, 24105);
INSERT INTO public.api_personmedal VALUES (33942, 39, 24106);
INSERT INTO public.api_personmedal VALUES (33950, 110, 24114);
INSERT INTO public.api_personmedal VALUES (33959, 780, 24121);
INSERT INTO public.api_personmedal VALUES (33961, 923, 24123);
INSERT INTO public.api_personmedal VALUES (33962, 980, 24124);
INSERT INTO public.api_personmedal VALUES (33963, 983, 24124);
INSERT INTO public.api_personmedal VALUES (33969, 980, 24129);
INSERT INTO public.api_personmedal VALUES (33970, 983, 24129);
INSERT INTO public.api_personmedal VALUES (33983, 39, 24137);
INSERT INTO public.api_personmedal VALUES (33988, 288, 24142);
INSERT INTO public.api_personmedal VALUES (34007, 867, 24155);
INSERT INTO public.api_personmedal VALUES (34016, 452, 24164);
INSERT INTO public.api_personmedal VALUES (34023, 1156, 24169);
INSERT INTO public.api_personmedal VALUES (34047, 362, 24188);
INSERT INTO public.api_personmedal VALUES (34077, 853, 24209);
INSERT INTO public.api_personmedal VALUES (34109, 737, 24234);
INSERT INTO public.api_personmedal VALUES (34110, 740, 24234);
INSERT INTO public.api_personmedal VALUES (34113, 903, 24236);
INSERT INTO public.api_personmedal VALUES (34114, 662, 24237);
INSERT INTO public.api_personmedal VALUES (34115, 678, 24237);
INSERT INTO public.api_personmedal VALUES (34121, 380, 24239);
INSERT INTO public.api_personmedal VALUES (34122, 382, 24239);
INSERT INTO public.api_personmedal VALUES (34124, 382, 24241);
INSERT INTO public.api_personmedal VALUES (34132, 137, 24247);
INSERT INTO public.api_personmedal VALUES (34180, 456, 24277);
INSERT INTO public.api_personmedal VALUES (34208, 172, 24298);
INSERT INTO public.api_personmedal VALUES (34242, 394, 24319);
INSERT INTO public.api_personmedal VALUES (34267, 1075, 24334);
INSERT INTO public.api_personmedal VALUES (34269, 1180, 24336);
INSERT INTO public.api_personmedal VALUES (34270, 1182, 24336);
INSERT INTO public.api_personmedal VALUES (34271, 1188, 24336);
INSERT INTO public.api_personmedal VALUES (34305, 396, 24360);
INSERT INTO public.api_personmedal VALUES (34334, 736, 24383);
INSERT INTO public.api_personmedal VALUES (34335, 739, 24383);
INSERT INTO public.api_personmedal VALUES (34353, 739, 24394);
INSERT INTO public.api_personmedal VALUES (34429, 172, 24450);
INSERT INTO public.api_personmedal VALUES (34460, 396, 24470);
INSERT INTO public.api_personmedal VALUES (34493, 886, 24493);
INSERT INTO public.api_personmedal VALUES (34516, 470, 24509);
INSERT INTO public.api_personmedal VALUES (34554, 676, 24530);
INSERT INTO public.api_personmedal VALUES (34558, 1148, 24531);
INSERT INTO public.api_personmedal VALUES (34559, 1136, 24532);
INSERT INTO public.api_personmedal VALUES (34564, 233, 24535);
INSERT INTO public.api_personmedal VALUES (34578, 255, 24544);
INSERT INTO public.api_personmedal VALUES (34579, 451, 24545);
INSERT INTO public.api_personmedal VALUES (34595, 174, 24551);
INSERT INTO public.api_personmedal VALUES (34608, 172, 24560);
INSERT INTO public.api_personmedal VALUES (34616, 18, 24563);
INSERT INTO public.api_personmedal VALUES (34634, 661, 24575);
INSERT INTO public.api_personmedal VALUES (34655, 722, 24587);
INSERT INTO public.api_personmedal VALUES (34656, 443, 24588);
INSERT INTO public.api_personmedal VALUES (34661, 155, 24591);
INSERT INTO public.api_personmedal VALUES (34664, 12, 24593);
INSERT INTO public.api_personmedal VALUES (34675, 740, 24604);
INSERT INTO public.api_personmedal VALUES (34678, 454, 24607);
INSERT INTO public.api_personmedal VALUES (34679, 338, 24608);
INSERT INTO public.api_personmedal VALUES (34680, 343, 24608);
INSERT INTO public.api_personmedal VALUES (34681, 815, 24609);
INSERT INTO public.api_personmedal VALUES (34692, 578, 24616);
INSERT INTO public.api_personmedal VALUES (34711, 14, 24629);
INSERT INTO public.api_personmedal VALUES (34712, 53, 24629);
INSERT INTO public.api_personmedal VALUES (34725, 1077, 24639);
INSERT INTO public.api_personmedal VALUES (34730, 221, 24643);
INSERT INTO public.api_personmedal VALUES (34753, 1090, 24661);
INSERT INTO public.api_personmedal VALUES (34783, 1087, 24682);
INSERT INTO public.api_personmedal VALUES (34824, 450, 24710);
INSERT INTO public.api_personmedal VALUES (34830, 383, 24715);
INSERT INTO public.api_personmedal VALUES (34838, 758, 24721);
INSERT INTO public.api_personmedal VALUES (34839, 109, 24722);
INSERT INTO public.api_personmedal VALUES (34841, 717, 24724);
INSERT INTO public.api_personmedal VALUES (34842, 723, 24724);
INSERT INTO public.api_personmedal VALUES (34843, 719, 24725);
INSERT INTO public.api_personmedal VALUES (34845, 807, 24727);
INSERT INTO public.api_personmedal VALUES (34846, 6, 24728);
INSERT INTO public.api_personmedal VALUES (34856, 471, 24735);
INSERT INTO public.api_personmedal VALUES (34859, 1076, 24736);
INSERT INTO public.api_personmedal VALUES (34881, 965, 24748);
INSERT INTO public.api_personmedal VALUES (34885, 497, 24752);
INSERT INTO public.api_personmedal VALUES (34893, 1000, 24759);
INSERT INTO public.api_personmedal VALUES (34894, 1004, 24759);
INSERT INTO public.api_personmedal VALUES (34928, 815, 24782);
INSERT INTO public.api_personmedal VALUES (34936, 559, 24788);
INSERT INTO public.api_personmedal VALUES (34963, 537, 24812);
INSERT INTO public.api_personmedal VALUES (34964, 1033, 24813);
INSERT INTO public.api_personmedal VALUES (34965, 1039, 24813);
INSERT INTO public.api_personmedal VALUES (34968, 1035, 24815);
INSERT INTO public.api_personmedal VALUES (34969, 1038, 24815);
INSERT INTO public.api_personmedal VALUES (35047, 922, 24867);
INSERT INTO public.api_personmedal VALUES (35060, 559, 24877);
INSERT INTO public.api_personmedal VALUES (35066, 1007, 24882);
INSERT INTO public.api_personmedal VALUES (35067, 1012, 24882);
INSERT INTO public.api_personmedal VALUES (35073, 76, 24885);
INSERT INTO public.api_personmedal VALUES (35077, 393, 24888);
INSERT INTO public.api_personmedal VALUES (35081, 527, 24892);
INSERT INTO public.api_personmedal VALUES (35082, 360, 24893);
INSERT INTO public.api_personmedal VALUES (35086, 448, 24897);
INSERT INTO public.api_personmedal VALUES (35106, 807, 24909);
INSERT INTO public.api_personmedal VALUES (35118, 671, 24920);
INSERT INTO public.api_personmedal VALUES (35133, 454, 24929);
INSERT INTO public.api_personmedal VALUES (35144, 1135, 24939);
INSERT INTO public.api_personmedal VALUES (35185, 527, 24968);
INSERT INTO public.api_personmedal VALUES (35240, 513, 25012);
INSERT INTO public.api_personmedal VALUES (35252, 1135, 25017);
INSERT INTO public.api_personmedal VALUES (35270, 569, 25030);
INSERT INTO public.api_personmedal VALUES (35275, 67, 25034);
INSERT INTO public.api_personmedal VALUES (35279, 329, 25038);
INSERT INTO public.api_personmedal VALUES (35327, 578, 25075);
INSERT INTO public.api_personmedal VALUES (35380, 827, 25113);
INSERT INTO public.api_personmedal VALUES (35381, 106, 25114);
INSERT INTO public.api_personmedal VALUES (35382, 139, 25114);
INSERT INTO public.api_personmedal VALUES (35400, 241, 25124);
INSERT INTO public.api_personmedal VALUES (35429, 770, 25145);
INSERT INTO public.api_personmedal VALUES (35430, 809, 25146);
INSERT INTO public.api_personmedal VALUES (35431, 809, 25147);
INSERT INTO public.api_personmedal VALUES (35440, 788, 25154);
INSERT INTO public.api_personmedal VALUES (35442, 455, 25156);
INSERT INTO public.api_personmedal VALUES (35444, 747, 25158);
INSERT INTO public.api_personmedal VALUES (35447, 394, 25159);
INSERT INTO public.api_personmedal VALUES (35458, 448, 25168);
INSERT INTO public.api_personmedal VALUES (35474, 557, 25181);
INSERT INTO public.api_personmedal VALUES (35500, 371, 25205);
INSERT INTO public.api_personmedal VALUES (35501, 372, 25205);
INSERT INTO public.api_personmedal VALUES (35502, 455, 25206);
INSERT INTO public.api_personmedal VALUES (35503, 172, 25207);
INSERT INTO public.api_personmedal VALUES (35506, 253, 25209);
INSERT INTO public.api_personmedal VALUES (35507, 256, 25209);
INSERT INTO public.api_personmedal VALUES (35516, 489, 25214);
INSERT INTO public.api_personmedal VALUES (35520, 960, 25218);
INSERT INTO public.api_personmedal VALUES (35521, 968, 25218);
INSERT INTO public.api_personmedal VALUES (35522, 974, 25218);
INSERT INTO public.api_personmedal VALUES (35523, 90, 25219);
INSERT INTO public.api_personmedal VALUES (35540, 533, 25227);
INSERT INTO public.api_personmedal VALUES (35548, 1083, 25230);
INSERT INTO public.api_personmedal VALUES (35549, 1086, 25230);
INSERT INTO public.api_personmedal VALUES (35550, 455, 25231);
INSERT INTO public.api_personmedal VALUES (35555, 449, 25233);
INSERT INTO public.api_personmedal VALUES (35557, 1083, 25235);
INSERT INTO public.api_personmedal VALUES (35558, 1086, 25235);
INSERT INTO public.api_personmedal VALUES (35601, 454, 25267);
INSERT INTO public.api_personmedal VALUES (35602, 561, 25268);
INSERT INTO public.api_personmedal VALUES (35603, 271, 25269);
INSERT INTO public.api_personmedal VALUES (35610, 455, 25275);
INSERT INTO public.api_personmedal VALUES (35614, 240, 25279);
INSERT INTO public.api_personmedal VALUES (35616, 556, 25281);
INSERT INTO public.api_personmedal VALUES (35624, 81, 25287);
INSERT INTO public.api_personmedal VALUES (35675, 1165, 25327);
INSERT INTO public.api_personmedal VALUES (35683, 515, 25334);
INSERT INTO public.api_personmedal VALUES (35698, 562, 25343);
INSERT INTO public.api_personmedal VALUES (35708, 160, 25350);
INSERT INTO public.api_personmedal VALUES (35715, 37, 25355);
INSERT INTO public.api_personmedal VALUES (35718, 204, 25357);
INSERT INTO public.api_personmedal VALUES (35730, 960, 25366);
INSERT INTO public.api_personmedal VALUES (35731, 964, 25366);
INSERT INTO public.api_personmedal VALUES (35732, 974, 25366);
INSERT INTO public.api_personmedal VALUES (35734, 1162, 25367);
INSERT INTO public.api_personmedal VALUES (35794, 893, 25405);
INSERT INTO public.api_personmedal VALUES (35815, 1022, 25422);
INSERT INTO public.api_personmedal VALUES (35839, 469, 25440);
INSERT INTO public.api_personmedal VALUES (35913, 509, 25495);
INSERT INTO public.api_personmedal VALUES (35925, 1076, 25506);
INSERT INTO public.api_personmedal VALUES (35936, 1076, 25514);
INSERT INTO public.api_personmedal VALUES (35939, 11, 25517);
INSERT INTO public.api_personmedal VALUES (35941, 559, 25519);
INSERT INTO public.api_personmedal VALUES (35992, 1075, 25555);
INSERT INTO public.api_personmedal VALUES (36100, 19, 25627);
INSERT INTO public.api_personmedal VALUES (36101, 28, 25627);
INSERT INTO public.api_personmedal VALUES (36102, 34, 25627);
INSERT INTO public.api_personmedal VALUES (36108, 395, 25628);
INSERT INTO public.api_personmedal VALUES (36138, 449, 25652);
INSERT INTO public.api_personmedal VALUES (36185, 833, 25684);
INSERT INTO public.api_personmedal VALUES (36206, 522, 25700);
INSERT INTO public.api_personmedal VALUES (36210, 229, 25703);
INSERT INTO public.api_personmedal VALUES (36226, 448, 25714);
INSERT INTO public.api_personmedal VALUES (36259, 813, 25739);
INSERT INTO public.api_personmedal VALUES (36275, 972, 25748);
INSERT INTO public.api_personmedal VALUES (36290, 149, 25758);
INSERT INTO public.api_personmedal VALUES (36318, 911, 25779);
INSERT INTO public.api_personmedal VALUES (36384, 1120, 25822);
INSERT INTO public.api_personmedal VALUES (36408, 478, 25839);
INSERT INTO public.api_personmedal VALUES (36431, 565, 25854);
INSERT INTO public.api_personmedal VALUES (36444, 187, 25862);
INSERT INTO public.api_personmedal VALUES (36477, 555, 25885);
INSERT INTO public.api_personmedal VALUES (36499, 171, 25904);
INSERT INTO public.api_personmedal VALUES (36570, 785, 25949);
INSERT INTO public.api_personmedal VALUES (36581, 507, 25955);
INSERT INTO public.api_personmedal VALUES (36605, 107, 25972);
INSERT INTO public.api_personmedal VALUES (36620, 452, 25975);
INSERT INTO public.api_personmedal VALUES (36626, 961, 25978);
INSERT INTO public.api_personmedal VALUES (36639, 1019, 25988);
INSERT INTO public.api_personmedal VALUES (36679, 1149, 26016);
INSERT INTO public.api_personmedal VALUES (36680, 1152, 26016);
INSERT INTO public.api_personmedal VALUES (36701, 1028, 26030);
INSERT INTO public.api_personmedal VALUES (36709, 804, 26037);
INSERT INTO public.api_personmedal VALUES (36719, 544, 26043);
INSERT INTO public.api_personmedal VALUES (36755, 1101, 26067);
INSERT INTO public.api_personmedal VALUES (36756, 1106, 26067);
INSERT INTO public.api_personmedal VALUES (36757, 1107, 26067);
INSERT INTO public.api_personmedal VALUES (36758, 1110, 26067);
INSERT INTO public.api_personmedal VALUES (36772, 159, 26075);
INSERT INTO public.api_personmedal VALUES (36773, 1025, 26076);
INSERT INTO public.api_personmedal VALUES (36898, 938, 26152);
INSERT INTO public.api_personmedal VALUES (36908, 972, 26159);
INSERT INTO public.api_personmedal VALUES (36909, 977, 26159);
INSERT INTO public.api_personmedal VALUES (36910, 450, 26160);
INSERT INTO public.api_personmedal VALUES (36911, 450, 26161);
INSERT INTO public.api_personmedal VALUES (36932, 555, 26173);
INSERT INTO public.api_personmedal VALUES (36983, 448, 26204);
INSERT INTO public.api_personmedal VALUES (36995, 454, 26214);
INSERT INTO public.api_personmedal VALUES (37026, 383, 26237);
INSERT INTO public.api_personmedal VALUES (37057, 621, 26254);
INSERT INTO public.api_personmedal VALUES (37084, 619, 26274);
INSERT INTO public.api_personmedal VALUES (37114, 200, 26292);
INSERT INTO public.api_personmedal VALUES (37127, 89, 26303);
INSERT INTO public.api_personmedal VALUES (37128, 118, 26303);
INSERT INTO public.api_personmedal VALUES (37137, 739, 26309);
INSERT INTO public.api_personmedal VALUES (37144, 862, 26315);
INSERT INTO public.api_personmedal VALUES (37169, 596, 26331);
INSERT INTO public.api_personmedal VALUES (37263, 183, 26397);
INSERT INTO public.api_personmedal VALUES (37283, 170, 26413);
INSERT INTO public.api_personmedal VALUES (37306, 1102, 26426);
INSERT INTO public.api_personmedal VALUES (37307, 1107, 26426);
INSERT INTO public.api_personmedal VALUES (37377, 1087, 26470);
INSERT INTO public.api_personmedal VALUES (37378, 793, 26471);
INSERT INTO public.api_personmedal VALUES (37386, 450, 26477);
INSERT INTO public.api_personmedal VALUES (37546, 393, 26585);
INSERT INTO public.api_personmedal VALUES (37565, 805, 26600);
INSERT INTO public.api_personmedal VALUES (37749, 667, 26729);
INSERT INTO public.api_personmedal VALUES (37760, 443, 26737);
INSERT INTO public.api_personmedal VALUES (37772, 25, 26743);
INSERT INTO public.api_personmedal VALUES (37795, 40, 26762);
INSERT INTO public.api_personmedal VALUES (37813, 808, 26778);
INSERT INTO public.api_personmedal VALUES (37850, 557, 26809);
INSERT INTO public.api_personmedal VALUES (37985, 457, 26917);
INSERT INTO public.api_personmedal VALUES (38011, 571, 26939);
INSERT INTO public.api_personmedal VALUES (38051, 83, 26975);
INSERT INTO public.api_personmedal VALUES (38080, 393, 26996);
INSERT INTO public.api_personmedal VALUES (38202, 517, 27089);
INSERT INTO public.api_personmedal VALUES (38219, 669, 27102);
INSERT INTO public.api_personmedal VALUES (38240, 805, 27118);
INSERT INTO public.api_personmedal VALUES (38254, 807, 27128);
INSERT INTO public.api_personmedal VALUES (38279, 513, 27147);
INSERT INTO public.api_personmedal VALUES (38296, 395, 27162);
INSERT INTO public.api_personmedal VALUES (38393, 63, 27230);
INSERT INTO public.api_personmedal VALUES (38422, 1084, 27250);
INSERT INTO public.api_personmedal VALUES (38473, 1109, 27289);
INSERT INTO public.api_personmedal VALUES (38474, 1111, 27289);
INSERT INTO public.api_personmedal VALUES (38483, 342, 27297);
INSERT INTO public.api_personmedal VALUES (38500, 393, 27307);
INSERT INTO public.api_personmedal VALUES (38512, 457, 27312);
INSERT INTO public.api_personmedal VALUES (38521, 812, 27320);
INSERT INTO public.api_personmedal VALUES (38531, 869, 27328);
INSERT INTO public.api_personmedal VALUES (38538, 850, 27332);
INSERT INTO public.api_personmedal VALUES (38546, 752, 27338);
INSERT INTO public.api_personmedal VALUES (38558, 382, 27346);
INSERT INTO public.api_personmedal VALUES (38565, 643, 27351);
INSERT INTO public.api_personmedal VALUES (38571, 1060, 27356);
INSERT INTO public.api_personmedal VALUES (38574, 745, 27359);
INSERT INTO public.api_personmedal VALUES (38578, 808, 27363);
INSERT INTO public.api_personmedal VALUES (38600, 808, 27383);
INSERT INTO public.api_personmedal VALUES (38603, 511, 27386);
INSERT INTO public.api_personmedal VALUES (38604, 387, 27387);
INSERT INTO public.api_personmedal VALUES (38605, 390, 27387);
INSERT INTO public.api_personmedal VALUES (38612, 973, 27390);
INSERT INTO public.api_personmedal VALUES (38622, 808, 27399);
INSERT INTO public.api_personmedal VALUES (38678, 366, 27429);
INSERT INTO public.api_personmedal VALUES (38683, 491, 27434);
INSERT INTO public.api_personmedal VALUES (38690, 45, 27441);
INSERT INTO public.api_personmedal VALUES (38691, 872, 27442);
INSERT INTO public.api_personmedal VALUES (38722, 1038, 27466);
INSERT INTO public.api_personmedal VALUES (38725, 1208, 27468);
INSERT INTO public.api_personmedal VALUES (38727, 450, 27469);
INSERT INTO public.api_personmedal VALUES (38730, 915, 27471);
INSERT INTO public.api_personmedal VALUES (38736, 816, 27473);
INSERT INTO public.api_personmedal VALUES (38737, 906, 27474);
INSERT INTO public.api_personmedal VALUES (38738, 450, 27475);
INSERT INTO public.api_personmedal VALUES (38747, 787, 27482);
INSERT INTO public.api_personmedal VALUES (38748, 816, 27483);
INSERT INTO public.api_personmedal VALUES (38751, 390, 27486);
INSERT INTO public.api_personmedal VALUES (38755, 1208, 27488);
INSERT INTO public.api_personmedal VALUES (38757, 973, 27490);
INSERT INTO public.api_personmedal VALUES (38758, 460, 27491);
INSERT INTO public.api_personmedal VALUES (38783, 739, 27506);
INSERT INTO public.api_personmedal VALUES (38817, 1034, 27528);
INSERT INTO public.api_personmedal VALUES (38818, 1038, 27528);
INSERT INTO public.api_personmedal VALUES (38823, 787, 27532);
INSERT INTO public.api_personmedal VALUES (38826, 1130, 27535);
INSERT INTO public.api_personmedal VALUES (38886, 816, 27576);
INSERT INTO public.api_personmedal VALUES (38895, 816, 27582);
INSERT INTO public.api_personmedal VALUES (38903, 956, 27588);
INSERT INTO public.api_personmedal VALUES (38913, 186, 27595);
INSERT INTO public.api_personmedal VALUES (38936, 655, 27612);
INSERT INTO public.api_personmedal VALUES (38952, 957, 27621);
INSERT INTO public.api_personmedal VALUES (38966, 1038, 27631);
INSERT INTO public.api_personmedal VALUES (38990, 623, 27648);
INSERT INTO public.api_personmedal VALUES (38992, 740, 27649);
INSERT INTO public.api_personmedal VALUES (38995, 214, 27651);
INSERT INTO public.api_personmedal VALUES (38996, 752, 27652);
INSERT INTO public.api_personmedal VALUES (39015, 185, 27666);
INSERT INTO public.api_personmedal VALUES (39018, 34, 27669);
INSERT INTO public.api_personmedal VALUES (39042, 843, 27684);
INSERT INTO public.api_personmedal VALUES (39065, 35, 27700);
INSERT INTO public.api_personmedal VALUES (39094, 428, 27722);
INSERT INTO public.api_personmedal VALUES (39122, 494, 27741);
INSERT INTO public.api_personmedal VALUES (39132, 808, 27749);
INSERT INTO public.api_personmedal VALUES (39141, 676, 27757);
INSERT INTO public.api_personmedal VALUES (39149, 738, 27764);
INSERT INTO public.api_personmedal VALUES (39150, 741, 27764);
INSERT INTO public.api_personmedal VALUES (39179, 152, 27781);
INSERT INTO public.api_personmedal VALUES (39193, 693, 27788);
INSERT INTO public.api_personmedal VALUES (39194, 704, 27788);
INSERT INTO public.api_personmedal VALUES (39198, 1208, 27791);
INSERT INTO public.api_personmedal VALUES (39204, 390, 27797);
INSERT INTO public.api_personmedal VALUES (39211, 972, 27803);
INSERT INTO public.api_personmedal VALUES (39222, 1038, 27810);
INSERT INTO public.api_personmedal VALUES (39246, 1042, 27828);
INSERT INTO public.api_personmedal VALUES (39249, 190, 27830);
INSERT INTO public.api_personmedal VALUES (39250, 499, 27831);
INSERT INTO public.api_personmedal VALUES (39278, 228, 27852);
INSERT INTO public.api_personmedal VALUES (39380, 426, 27925);
INSERT INTO public.api_personmedal VALUES (39387, 1029, 27931);
INSERT INTO public.api_personmedal VALUES (39408, 5, 27948);
INSERT INTO public.api_personmedal VALUES (39433, 1176, 27970);
INSERT INTO public.api_personmedal VALUES (39434, 1190, 27970);
INSERT INTO public.api_personmedal VALUES (39476, 740, 28003);
INSERT INTO public.api_personmedal VALUES (39487, 878, 28013);
INSERT INTO public.api_personmedal VALUES (39491, 628, 28016);
INSERT INTO public.api_personmedal VALUES (39493, 808, 28018);
INSERT INTO public.api_personmedal VALUES (39494, 428, 28019);
INSERT INTO public.api_personmedal VALUES (39499, 906, 28023);
INSERT INTO public.api_personmedal VALUES (39502, 1191, 28026);
INSERT INTO public.api_personmedal VALUES (39506, 743, 28029);
INSERT INTO public.api_personmedal VALUES (39507, 745, 28029);
INSERT INTO public.api_personmedal VALUES (39517, 618, 28034);
INSERT INTO public.api_personmedal VALUES (39520, 154, 28036);
INSERT INTO public.api_personmedal VALUES (39521, 162, 28036);
INSERT INTO public.api_personmedal VALUES (39532, 128, 28044);
INSERT INTO public.api_personmedal VALUES (39565, 757, 28068);
INSERT INTO public.api_personmedal VALUES (39567, 162, 28070);
INSERT INTO public.api_personmedal VALUES (39570, 851, 28071);
INSERT INTO public.api_personmedal VALUES (39578, 772, 28077);
INSERT INTO public.api_personmedal VALUES (39581, 318, 28080);
INSERT INTO public.api_personmedal VALUES (39598, 1116, 28095);
INSERT INTO public.api_personmedal VALUES (39608, 808, 28102);
INSERT INTO public.api_personmedal VALUES (39647, 538, 28124);
INSERT INTO public.api_personmedal VALUES (39648, 538, 28125);


--
-- TOC entry 3225 (class 0 OID 33459)
-- Dependencies: 229
-- Data for Name: api_sport; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.api_sport VALUES (1, 'Aeronautics');
INSERT INTO public.api_sport VALUES (2, 'Alpine Skiing');
INSERT INTO public.api_sport VALUES (3, 'Alpinism');
INSERT INTO public.api_sport VALUES (4, 'Archery');
INSERT INTO public.api_sport VALUES (5, 'Art Competitions');
INSERT INTO public.api_sport VALUES (6, 'Athletics');
INSERT INTO public.api_sport VALUES (7, 'Badminton');
INSERT INTO public.api_sport VALUES (8, 'Baseball');
INSERT INTO public.api_sport VALUES (9, 'Basketball');
INSERT INTO public.api_sport VALUES (10, 'Basque Pelota');
INSERT INTO public.api_sport VALUES (11, 'Beach Volleyball');
INSERT INTO public.api_sport VALUES (12, 'Biathlon');
INSERT INTO public.api_sport VALUES (13, 'Bobsleigh');
INSERT INTO public.api_sport VALUES (14, 'Boxing');
INSERT INTO public.api_sport VALUES (15, 'Canoeing');
INSERT INTO public.api_sport VALUES (16, 'Cricket');
INSERT INTO public.api_sport VALUES (17, 'Croquet');
INSERT INTO public.api_sport VALUES (18, 'Cross Country Skiing');
INSERT INTO public.api_sport VALUES (19, 'Curling');
INSERT INTO public.api_sport VALUES (20, 'Cycling');
INSERT INTO public.api_sport VALUES (21, 'Diving');
INSERT INTO public.api_sport VALUES (22, 'Equestrianism');
INSERT INTO public.api_sport VALUES (23, 'Fencing');
INSERT INTO public.api_sport VALUES (24, 'Figure Skating');
INSERT INTO public.api_sport VALUES (25, 'Football');
INSERT INTO public.api_sport VALUES (26, 'Freestyle Skiing');
INSERT INTO public.api_sport VALUES (27, 'Golf');
INSERT INTO public.api_sport VALUES (28, 'Gymnastics');
INSERT INTO public.api_sport VALUES (29, 'Handball');
INSERT INTO public.api_sport VALUES (30, 'Hockey');
INSERT INTO public.api_sport VALUES (31, 'Ice Hockey');
INSERT INTO public.api_sport VALUES (32, 'Jeu De Paume');
INSERT INTO public.api_sport VALUES (33, 'Judo');
INSERT INTO public.api_sport VALUES (34, 'Lacrosse');
INSERT INTO public.api_sport VALUES (35, 'Luge');
INSERT INTO public.api_sport VALUES (36, 'Military Ski Patrol');
INSERT INTO public.api_sport VALUES (37, 'Modern Pentathlon');
INSERT INTO public.api_sport VALUES (38, 'Motorboating');
INSERT INTO public.api_sport VALUES (39, 'Nordic Combined');
INSERT INTO public.api_sport VALUES (40, 'Polo');
INSERT INTO public.api_sport VALUES (41, 'Racquets');
INSERT INTO public.api_sport VALUES (42, 'Rhythmic Gymnastics');
INSERT INTO public.api_sport VALUES (43, 'Roque');
INSERT INTO public.api_sport VALUES (44, 'Rowing');
INSERT INTO public.api_sport VALUES (45, 'Rugby');
INSERT INTO public.api_sport VALUES (46, 'Rugby Sevens');
INSERT INTO public.api_sport VALUES (47, 'Sailing');
INSERT INTO public.api_sport VALUES (48, 'Shooting');
INSERT INTO public.api_sport VALUES (49, 'Short Track Speed Skating');
INSERT INTO public.api_sport VALUES (50, 'Skeleton');
INSERT INTO public.api_sport VALUES (51, 'Ski Jumping');
INSERT INTO public.api_sport VALUES (52, 'Snowboarding');
INSERT INTO public.api_sport VALUES (53, 'Softball');
INSERT INTO public.api_sport VALUES (54, 'Speed Skating');
INSERT INTO public.api_sport VALUES (55, 'Swimming');
INSERT INTO public.api_sport VALUES (56, 'Synchronized Swimming');
INSERT INTO public.api_sport VALUES (57, 'Table Tennis');
INSERT INTO public.api_sport VALUES (58, 'Taekwondo');
INSERT INTO public.api_sport VALUES (59, 'Tennis');
INSERT INTO public.api_sport VALUES (60, 'Trampolining');
INSERT INTO public.api_sport VALUES (61, 'Triathlon');
INSERT INTO public.api_sport VALUES (62, 'Tug-Of-War');
INSERT INTO public.api_sport VALUES (63, 'Volleyball');
INSERT INTO public.api_sport VALUES (64, 'Water Polo');
INSERT INTO public.api_sport VALUES (65, 'Weightlifting');
INSERT INTO public.api_sport VALUES (66, 'Wrestling');


--
-- TOC entry 3203 (class 0 OID 33284)
-- Dependencies: 207
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3205 (class 0 OID 33294)
-- Dependencies: 209
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3201 (class 0 OID 33276)
-- Dependencies: 205
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission VALUES (25, 'Can add country', 7, 'add_country');
INSERT INTO public.auth_permission VALUES (26, 'Can change country', 7, 'change_country');
INSERT INTO public.auth_permission VALUES (27, 'Can delete country', 7, 'delete_country');
INSERT INTO public.auth_permission VALUES (28, 'Can view country', 7, 'view_country');
INSERT INTO public.auth_permission VALUES (29, 'Can add event', 8, 'add_event');
INSERT INTO public.auth_permission VALUES (30, 'Can change event', 8, 'change_event');
INSERT INTO public.auth_permission VALUES (31, 'Can delete event', 8, 'delete_event');
INSERT INTO public.auth_permission VALUES (32, 'Can view event', 8, 'view_event');
INSERT INTO public.auth_permission VALUES (33, 'Can add game', 9, 'add_game');
INSERT INTO public.auth_permission VALUES (34, 'Can change game', 9, 'change_game');
INSERT INTO public.auth_permission VALUES (35, 'Can delete game', 9, 'delete_game');
INSERT INTO public.auth_permission VALUES (36, 'Can view game', 9, 'view_game');
INSERT INTO public.auth_permission VALUES (37, 'Can add medal', 10, 'add_medal');
INSERT INTO public.auth_permission VALUES (38, 'Can change medal', 10, 'change_medal');
INSERT INTO public.auth_permission VALUES (39, 'Can delete medal', 10, 'delete_medal');
INSERT INTO public.auth_permission VALUES (40, 'Can view medal', 10, 'view_medal');
INSERT INTO public.auth_permission VALUES (41, 'Can add person', 11, 'add_person');
INSERT INTO public.auth_permission VALUES (42, 'Can change person', 11, 'change_person');
INSERT INTO public.auth_permission VALUES (43, 'Can delete person', 11, 'delete_person');
INSERT INTO public.auth_permission VALUES (44, 'Can view person', 11, 'view_person');
INSERT INTO public.auth_permission VALUES (45, 'Can add sport', 12, 'add_sport');
INSERT INTO public.auth_permission VALUES (46, 'Can change sport', 12, 'change_sport');
INSERT INTO public.auth_permission VALUES (47, 'Can delete sport', 12, 'delete_sport');
INSERT INTO public.auth_permission VALUES (48, 'Can view sport', 12, 'view_sport');
INSERT INTO public.auth_permission VALUES (49, 'Can add person medal', 13, 'add_personmedal');
INSERT INTO public.auth_permission VALUES (50, 'Can change person medal', 13, 'change_personmedal');
INSERT INTO public.auth_permission VALUES (51, 'Can delete person medal', 13, 'delete_personmedal');
INSERT INTO public.auth_permission VALUES (52, 'Can view person medal', 13, 'view_personmedal');
INSERT INTO public.auth_permission VALUES (53, 'Can add game event', 14, 'add_gameevent');
INSERT INTO public.auth_permission VALUES (54, 'Can change game event', 14, 'change_gameevent');
INSERT INTO public.auth_permission VALUES (55, 'Can delete game event', 14, 'delete_gameevent');
INSERT INTO public.auth_permission VALUES (56, 'Can view game event', 14, 'view_gameevent');


--
-- TOC entry 3207 (class 0 OID 33302)
-- Dependencies: 211
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3209 (class 0 OID 33312)
-- Dependencies: 213
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3211 (class 0 OID 33320)
-- Dependencies: 215
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3213 (class 0 OID 33380)
-- Dependencies: 217
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3199 (class 0 OID 33266)
-- Dependencies: 203
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type VALUES (7, 'api', 'country');
INSERT INTO public.django_content_type VALUES (8, 'api', 'event');
INSERT INTO public.django_content_type VALUES (9, 'api', 'game');
INSERT INTO public.django_content_type VALUES (10, 'api', 'medal');
INSERT INTO public.django_content_type VALUES (11, 'api', 'person');
INSERT INTO public.django_content_type VALUES (12, 'api', 'sport');
INSERT INTO public.django_content_type VALUES (13, 'api', 'personmedal');
INSERT INTO public.django_content_type VALUES (14, 'api', 'gameevent');


--
-- TOC entry 3197 (class 0 OID 33255)
-- Dependencies: 201
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations VALUES (1, 'contenttypes', '0001_initial', '2021-03-21 12:35:27.965175+01');
INSERT INTO public.django_migrations VALUES (2, 'auth', '0001_initial', '2021-03-21 12:35:28.035175+01');
INSERT INTO public.django_migrations VALUES (3, 'admin', '0001_initial', '2021-03-21 12:35:28.115175+01');
INSERT INTO public.django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-03-21 12:35:28.135175+01');
INSERT INTO public.django_migrations VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-21 12:35:28.155175+01');
INSERT INTO public.django_migrations VALUES (6, 'api', '0001_initial', '2021-03-21 12:35:28.293175+01');
INSERT INTO public.django_migrations VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2021-03-21 12:35:28.38118+01');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2021-03-21 12:35:28.396181+01');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0003_alter_user_email_max_length', '2021-03-21 12:35:28.413182+01');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0004_alter_user_username_opts', '2021-03-21 12:35:28.433183+01');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0005_alter_user_last_login_null', '2021-03-21 12:35:28.450184+01');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0006_require_contenttypes_0002', '2021-03-21 12:35:28.453185+01');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2021-03-21 12:35:28.470186+01');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0008_alter_user_username_max_length', '2021-03-21 12:35:28.499187+01');
INSERT INTO public.django_migrations VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2021-03-21 12:35:28.517188+01');
INSERT INTO public.django_migrations VALUES (16, 'auth', '0010_alter_group_name_max_length', '2021-03-21 12:35:28.537188+01');
INSERT INTO public.django_migrations VALUES (17, 'auth', '0011_update_proxy_permissions', '2021-03-21 12:35:28.562189+01');
INSERT INTO public.django_migrations VALUES (18, 'sessions', '0001_initial', '2021-03-21 12:35:28.576189+01');


--
-- TOC entry 3230 (class 0 OID 33541)
-- Dependencies: 234
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3254 (class 0 OID 0)
-- Dependencies: 218
-- Name: api_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_country_id_seq', 1, false);


--
-- TOC entry 3255 (class 0 OID 0)
-- Dependencies: 220
-- Name: api_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_event_id_seq', 1, false);


--
-- TOC entry 3256 (class 0 OID 0)
-- Dependencies: 222
-- Name: api_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_game_id_seq', 1, false);


--
-- TOC entry 3257 (class 0 OID 0)
-- Dependencies: 232
-- Name: api_gameevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_gameevent_id_seq', 1, false);


--
-- TOC entry 3258 (class 0 OID 0)
-- Dependencies: 224
-- Name: api_medal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_medal_id_seq', 1, false);


--
-- TOC entry 3259 (class 0 OID 0)
-- Dependencies: 226
-- Name: api_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_person_id_seq', 1, false);


--
-- TOC entry 3260 (class 0 OID 0)
-- Dependencies: 230
-- Name: api_personmedal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_personmedal_id_seq', 1, false);


--
-- TOC entry 3261 (class 0 OID 0)
-- Dependencies: 228
-- Name: api_sport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.api_sport_id_seq', 1, false);


--
-- TOC entry 3262 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3263 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3264 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- TOC entry 3265 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3266 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- TOC entry 3267 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3268 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3269 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- TOC entry 3270 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- TOC entry 3022 (class 2606 OID 33412)
-- Name: api_country api_country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_country
    ADD CONSTRAINT api_country_pkey PRIMARY KEY (id);


--
-- TOC entry 3024 (class 2606 OID 33423)
-- Name: api_event api_event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_event
    ADD CONSTRAINT api_event_pkey PRIMARY KEY (id);


--
-- TOC entry 3027 (class 2606 OID 33434)
-- Name: api_game api_game_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_game
    ADD CONSTRAINT api_game_pkey PRIMARY KEY (id);


--
-- TOC entry 3044 (class 2606 OID 33488)
-- Name: api_gameevent api_gameevent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_gameevent
    ADD CONSTRAINT api_gameevent_pkey PRIMARY KEY (id);


--
-- TOC entry 3031 (class 2606 OID 33445)
-- Name: api_medal api_medal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_medal
    ADD CONSTRAINT api_medal_pkey PRIMARY KEY (id);


--
-- TOC entry 3034 (class 2606 OID 33456)
-- Name: api_person api_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_person
    ADD CONSTRAINT api_person_pkey PRIMARY KEY (id);


--
-- TOC entry 3040 (class 2606 OID 33475)
-- Name: api_personmedal api_personmedal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_personmedal
    ADD CONSTRAINT api_personmedal_pkey PRIMARY KEY (id);


--
-- TOC entry 3036 (class 2606 OID 33467)
-- Name: api_sport api_sport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_sport
    ADD CONSTRAINT api_sport_pkey PRIMARY KEY (id);


--
-- TOC entry 2991 (class 2606 OID 33539)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2996 (class 2606 OID 33336)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2999 (class 2606 OID 33299)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2993 (class 2606 OID 33289)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2986 (class 2606 OID 33327)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2988 (class 2606 OID 33281)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3007 (class 2606 OID 33317)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3010 (class 2606 OID 33351)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3001 (class 2606 OID 33307)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3013 (class 2606 OID 33325)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3016 (class 2606 OID 33365)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3004 (class 2606 OID 33533)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3019 (class 2606 OID 33389)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2981 (class 2606 OID 33273)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2983 (class 2606 OID 33271)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2979 (class 2606 OID 33263)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3047 (class 2606 OID 33548)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3025 (class 1259 OID 33531)
-- Name: api_event_sport_id_590a5420; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_event_sport_id_590a5420 ON public.api_event USING btree (sport_id);


--
-- TOC entry 3041 (class 1259 OID 33529)
-- Name: api_gameevent_event_id_04cf0cbc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_gameevent_event_id_04cf0cbc ON public.api_gameevent USING btree (event_id);


--
-- TOC entry 3042 (class 1259 OID 33530)
-- Name: api_gameevent_game_id_27548afc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_gameevent_game_id_27548afc ON public.api_gameevent USING btree (game_id);


--
-- TOC entry 3028 (class 1259 OID 33504)
-- Name: api_medal_event_id_6c052b98; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_medal_event_id_6c052b98 ON public.api_medal USING btree (event_id);


--
-- TOC entry 3029 (class 1259 OID 33505)
-- Name: api_medal_game_id_75d17654; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_medal_game_id_75d17654 ON public.api_medal USING btree (game_id);


--
-- TOC entry 3032 (class 1259 OID 33518)
-- Name: api_person_nationality_id_20a9dbe9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_person_nationality_id_20a9dbe9 ON public.api_person USING btree (nationality_id);


--
-- TOC entry 3037 (class 1259 OID 33516)
-- Name: api_personmedal_medal_id_2e746753; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_personmedal_medal_id_2e746753 ON public.api_personmedal USING btree (medal_id);


--
-- TOC entry 3038 (class 1259 OID 33517)
-- Name: api_personmedal_person_id_bc5a82df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX api_personmedal_person_id_bc5a82df ON public.api_personmedal USING btree (person_id);


--
-- TOC entry 2989 (class 1259 OID 33540)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2994 (class 1259 OID 33347)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2997 (class 1259 OID 33348)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2984 (class 1259 OID 33333)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3005 (class 1259 OID 33363)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3008 (class 1259 OID 33362)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3011 (class 1259 OID 33377)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3014 (class 1259 OID 33376)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3002 (class 1259 OID 33534)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3017 (class 1259 OID 33400)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3020 (class 1259 OID 33401)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3045 (class 1259 OID 33550)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3048 (class 1259 OID 33549)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3058 (class 2606 OID 33489)
-- Name: api_event api_event_sport_id_590a5420_fk_api_sport_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_event
    ADD CONSTRAINT api_event_sport_id_590a5420_fk_api_sport_id FOREIGN KEY (sport_id) REFERENCES public.api_sport(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3064 (class 2606 OID 33519)
-- Name: api_gameevent api_gameevent_event_id_04cf0cbc_fk_api_event_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_gameevent
    ADD CONSTRAINT api_gameevent_event_id_04cf0cbc_fk_api_event_id FOREIGN KEY (event_id) REFERENCES public.api_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3065 (class 2606 OID 33524)
-- Name: api_gameevent api_gameevent_game_id_27548afc_fk_api_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_gameevent
    ADD CONSTRAINT api_gameevent_game_id_27548afc_fk_api_game_id FOREIGN KEY (game_id) REFERENCES public.api_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3059 (class 2606 OID 33494)
-- Name: api_medal api_medal_event_id_6c052b98_fk_api_event_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_medal
    ADD CONSTRAINT api_medal_event_id_6c052b98_fk_api_event_id FOREIGN KEY (event_id) REFERENCES public.api_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3060 (class 2606 OID 33499)
-- Name: api_medal api_medal_game_id_75d17654_fk_api_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_medal
    ADD CONSTRAINT api_medal_game_id_75d17654_fk_api_game_id FOREIGN KEY (game_id) REFERENCES public.api_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3061 (class 2606 OID 33476)
-- Name: api_person api_person_nationality_id_20a9dbe9_fk_api_country_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_person
    ADD CONSTRAINT api_person_nationality_id_20a9dbe9_fk_api_country_id FOREIGN KEY (nationality_id) REFERENCES public.api_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3062 (class 2606 OID 33506)
-- Name: api_personmedal api_personmedal_medal_id_2e746753_fk_api_medal_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_personmedal
    ADD CONSTRAINT api_personmedal_medal_id_2e746753_fk_api_medal_id FOREIGN KEY (medal_id) REFERENCES public.api_medal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3063 (class 2606 OID 33511)
-- Name: api_personmedal api_personmedal_person_id_bc5a82df_fk_api_person_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.api_personmedal
    ADD CONSTRAINT api_personmedal_person_id_bc5a82df_fk_api_person_id FOREIGN KEY (person_id) REFERENCES public.api_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3051 (class 2606 OID 33342)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3050 (class 2606 OID 33337)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3049 (class 2606 OID 33328)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3053 (class 2606 OID 33357)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3052 (class 2606 OID 33352)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3055 (class 2606 OID 33371)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3054 (class 2606 OID 33366)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3056 (class 2606 OID 33390)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3057 (class 2606 OID 33395)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-03-21 13:12:09

--
-- PostgreSQL database dump complete
--

