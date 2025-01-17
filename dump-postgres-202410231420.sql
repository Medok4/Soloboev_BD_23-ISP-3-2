PGDMP  ,                	    |            postgres    17.0    17.0 %    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    5    postgres    DATABASE     |   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                     postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4822                        2615    16406    AUDIT    SCHEMA        CREATE SCHEMA "AUDIT";
    DROP SCHEMA "AUDIT";
                     postgres    false            �            1259    16462    categorytable    TABLE     �   CREATE TABLE "AUDIT".categorytable (
    category_number integer NOT NULL,
    money_for_hour character varying(20) NOT NULL
);
 "   DROP TABLE "AUDIT".categorytable;
       AUDIT         heap r       postgres    false    6            �            1259    16461 !   categorytable_category_number_seq    SEQUENCE     �   CREATE SEQUENCE "AUDIT".categorytable_category_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "AUDIT".categorytable_category_number_seq;
       AUDIT               postgres    false    6    227            �           0    0 !   categorytable_category_number_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "AUDIT".categorytable_category_number_seq OWNED BY "AUDIT".categorytable.category_number;
          AUDIT               postgres    false    226            �            1259    16469 	   checkwork    TABLE     p   CREATE TABLE "AUDIT".checkwork (
    check_id integer NOT NULL,
    employee_id integer,
    work_id integer
);
    DROP TABLE "AUDIT".checkwork;
       AUDIT         heap r       postgres    false    6            �            1259    16468    checkwork_check_id_seq    SEQUENCE     �   CREATE SEQUENCE "AUDIT".checkwork_check_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE "AUDIT".checkwork_check_id_seq;
       AUDIT               postgres    false    6    229            �           0    0    checkwork_check_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "AUDIT".checkwork_check_id_seq OWNED BY "AUDIT".checkwork.check_id;
          AUDIT               postgres    false    228            �            1259    16448    employee    TABLE     k  CREATE TABLE "AUDIT".employee (
    employee_id integer NOT NULL,
    employee_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    middle_name character varying(64),
    birth_date date NOT NULL,
    work_phone_number character varying(20) NOT NULL,
    passport_number integer NOT NULL,
    category_number integer NOT NULL
);
    DROP TABLE "AUDIT".employee;
       AUDIT         heap r       postgres    false    6            �            1259    16447    employee_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE "AUDIT".employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "AUDIT".employee_employee_id_seq;
       AUDIT               postgres    false    6    223            �           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "AUDIT".employee_employee_id_seq OWNED BY "AUDIT".employee.employee_id;
          AUDIT               postgres    false    222            �            1259    16455 	   worktable    TABLE     �   CREATE TABLE "AUDIT".worktable (
    work_id integer NOT NULL,
    company_name character varying(64) NOT NULL,
    work_date date NOT NULL,
    hours_spend integer NOT NULL
);
    DROP TABLE "AUDIT".worktable;
       AUDIT         heap r       postgres    false    6            �            1259    16454    worktable_work_id_seq    SEQUENCE     �   CREATE SEQUENCE "AUDIT".worktable_work_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "AUDIT".worktable_work_id_seq;
       AUDIT               postgres    false    225    6            �           0    0    worktable_work_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "AUDIT".worktable_work_id_seq OWNED BY "AUDIT".worktable.work_id;
          AUDIT               postgres    false    224            +           2604    16465    categorytable category_number    DEFAULT     �   ALTER TABLE ONLY "AUDIT".categorytable ALTER COLUMN category_number SET DEFAULT nextval('"AUDIT".categorytable_category_number_seq'::regclass);
 M   ALTER TABLE "AUDIT".categorytable ALTER COLUMN category_number DROP DEFAULT;
       AUDIT               postgres    false    227    226    227            ,           2604    16472    checkwork check_id    DEFAULT     z   ALTER TABLE ONLY "AUDIT".checkwork ALTER COLUMN check_id SET DEFAULT nextval('"AUDIT".checkwork_check_id_seq'::regclass);
 B   ALTER TABLE "AUDIT".checkwork ALTER COLUMN check_id DROP DEFAULT;
       AUDIT               postgres    false    228    229    229            )           2604    16451    employee employee_id    DEFAULT     ~   ALTER TABLE ONLY "AUDIT".employee ALTER COLUMN employee_id SET DEFAULT nextval('"AUDIT".employee_employee_id_seq'::regclass);
 D   ALTER TABLE "AUDIT".employee ALTER COLUMN employee_id DROP DEFAULT;
       AUDIT               postgres    false    223    222    223            *           2604    16458    worktable work_id    DEFAULT     x   ALTER TABLE ONLY "AUDIT".worktable ALTER COLUMN work_id SET DEFAULT nextval('"AUDIT".worktable_work_id_seq'::regclass);
 A   ALTER TABLE "AUDIT".worktable ALTER COLUMN work_id DROP DEFAULT;
       AUDIT               postgres    false    225    224    225            �          0    16462    categorytable 
   TABLE DATA           I   COPY "AUDIT".categorytable (category_number, money_for_hour) FROM stdin;
    AUDIT               postgres    false    227   �+       �          0    16469 	   checkwork 
   TABLE DATA           D   COPY "AUDIT".checkwork (check_id, employee_id, work_id) FROM stdin;
    AUDIT               postgres    false    229   �+       �          0    16448    employee 
   TABLE DATA           �   COPY "AUDIT".employee (employee_id, employee_name, last_name, middle_name, birth_date, work_phone_number, passport_number, category_number) FROM stdin;
    AUDIT               postgres    false    223   �+       �          0    16455 	   worktable 
   TABLE DATA           S   COPY "AUDIT".worktable (work_id, company_name, work_date, hours_spend) FROM stdin;
    AUDIT               postgres    false    225   �+       �           0    0 !   categorytable_category_number_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"AUDIT".categorytable_category_number_seq', 1, false);
          AUDIT               postgres    false    226            �           0    0    checkwork_check_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"AUDIT".checkwork_check_id_seq', 1, false);
          AUDIT               postgres    false    228            �           0    0    employee_employee_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"AUDIT".employee_employee_id_seq', 1, false);
          AUDIT               postgres    false    222            �           0    0    worktable_work_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"AUDIT".worktable_work_id_seq', 1, false);
          AUDIT               postgres    false    224            2           2606    16467     categorytable categorytable_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY "AUDIT".categorytable
    ADD CONSTRAINT categorytable_pkey PRIMARY KEY (category_number);
 K   ALTER TABLE ONLY "AUDIT".categorytable DROP CONSTRAINT categorytable_pkey;
       AUDIT                 postgres    false    227            4           2606    16474    checkwork checkwork_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "AUDIT".checkwork
    ADD CONSTRAINT checkwork_pkey PRIMARY KEY (check_id);
 C   ALTER TABLE ONLY "AUDIT".checkwork DROP CONSTRAINT checkwork_pkey;
       AUDIT                 postgres    false    229            .           2606    16453    employee employee_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "AUDIT".employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 A   ALTER TABLE ONLY "AUDIT".employee DROP CONSTRAINT employee_pkey;
       AUDIT                 postgres    false    223            0           2606    16460    worktable worktable_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY "AUDIT".worktable
    ADD CONSTRAINT worktable_pkey PRIMARY KEY (work_id);
 C   ALTER TABLE ONLY "AUDIT".worktable DROP CONSTRAINT worktable_pkey;
       AUDIT                 postgres    false    225            6           2606    16475 $   checkwork checkwork_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "AUDIT".checkwork
    ADD CONSTRAINT checkwork_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES "AUDIT".employee(employee_id);
 O   ALTER TABLE ONLY "AUDIT".checkwork DROP CONSTRAINT checkwork_employee_id_fkey;
       AUDIT               postgres    false    229    4654    223            7           2606    16480     checkwork checkwork_work_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "AUDIT".checkwork
    ADD CONSTRAINT checkwork_work_id_fkey FOREIGN KEY (work_id) REFERENCES "AUDIT".worktable(work_id);
 K   ALTER TABLE ONLY "AUDIT".checkwork DROP CONSTRAINT checkwork_work_id_fkey;
       AUDIT               postgres    false    4656    229    225            5           2606    16485 &   employee employee_category_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "AUDIT".employee
    ADD CONSTRAINT employee_category_number_fkey FOREIGN KEY (category_number) REFERENCES "AUDIT".categorytable(category_number);
 Q   ALTER TABLE ONLY "AUDIT".employee DROP CONSTRAINT employee_category_number_fkey;
       AUDIT               postgres    false    227    223    4658            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     