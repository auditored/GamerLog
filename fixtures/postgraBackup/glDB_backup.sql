PGDMP     6                    {            glDB    15.2    15.2 �    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            +           1262    16712    glDB    DATABASE     z   CREATE DATABASE "glDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "glDB";
                postgres    false            �            1259    16714    accounts_comment    TABLE       CREATE TABLE public.accounts_comment (
    id integer NOT NULL,
    comment character varying(100) NOT NULL,
    rating integer,
    created_date timestamp without time zone NOT NULL,
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    trial894 character(1)
);
 $   DROP TABLE public.accounts_comment;
       public         heap    postgres    false            �            1259    16713    accounts_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.accounts_comment_id_seq;
       public          postgres    false    215            ,           0    0    accounts_comment_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.accounts_comment_id_seq OWNED BY public.accounts_comment.id;
          public          postgres    false    214            �            1259    16723    accounts_contact    TABLE     �   CREATE TABLE public.accounts_contact (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    topic character varying(100) NOT NULL,
    message character varying(100) NOT NULL,
    trial894 character(1)
);
 $   DROP TABLE public.accounts_contact;
       public         heap    postgres    false            �            1259    16722    accounts_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.accounts_contact_id_seq;
       public          postgres    false    217            -           0    0    accounts_contact_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.accounts_contact_id_seq OWNED BY public.accounts_contact.id;
          public          postgres    false    216            �            1259    16730    accounts_favoritegame    TABLE     �   CREATE TABLE public.accounts_favoritegame (
    id integer NOT NULL,
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    trial894 character(1)
);
 )   DROP TABLE public.accounts_favoritegame;
       public         heap    postgres    false            �            1259    16729    accounts_favoritegame_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_favoritegame_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.accounts_favoritegame_id_seq;
       public          postgres    false    219            .           0    0    accounts_favoritegame_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.accounts_favoritegame_id_seq OWNED BY public.accounts_favoritegame.id;
          public          postgres    false    218            �            1259    16739    accounts_userlibrary    TABLE     �   CREATE TABLE public.accounts_userlibrary (
    id integer NOT NULL,
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    trial894 character(1)
);
 (   DROP TABLE public.accounts_userlibrary;
       public         heap    postgres    false            �            1259    16738    accounts_userlibrary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_userlibrary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.accounts_userlibrary_id_seq;
       public          postgres    false    221            /           0    0    accounts_userlibrary_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.accounts_userlibrary_id_seq OWNED BY public.accounts_userlibrary.id;
          public          postgres    false    220            �            1259    16748 
   auth_group    TABLE     �   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    trial894 character(1)
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16747    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    223            0           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    222            �            1259    16755    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial894 character(1)
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16754    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    225            1           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    224            �            1259    16765    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL,
    name character varying(255) NOT NULL,
    trial894 character(1)
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16764    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    227            2           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    226            �            1259    16774 	   auth_user    TABLE        CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp without time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp without time zone NOT NULL,
    first_name character varying(150) NOT NULL,
    trial894 character(1)
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16783    auth_user_groups    TABLE     �   CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL,
    trial894 character(1)
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16782    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    231            3           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    230            �            1259    16773    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    229            4           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    228            �            1259    16793    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial894 character(1)
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16792 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    233            5           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    232            �            1259    16803 	   chat_chat    TABLE     �   CREATE TABLE public.chat_chat (
    id integer NOT NULL,
    text character varying(500) NOT NULL,
    gpt character varying(17000) NOT NULL,
    date timestamp without time zone,
    trial894 character(1)
);
    DROP TABLE public.chat_chat;
       public         heap    postgres    false            �            1259    16802    chat_chat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chat_chat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.chat_chat_id_seq;
       public          postgres    false    235            6           0    0    chat_chat_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.chat_chat_id_seq OWNED BY public.chat_chat.id;
          public          postgres    false    234            �            1259    16812    django_admin_log    TABLE     X  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp without time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    action_flag smallint NOT NULL,
    trial894 character(1)
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16811    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    237            7           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    236            �            1259    16823    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    trial894 character(1)
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16822    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    239            8           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    238            �            1259    16831    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp without time zone NOT NULL,
    trial894 character(1)
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16830    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    241            9           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    240            �            1259    16839    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp without time zone NOT NULL,
    trial894 character(1)
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16848    game_category    TABLE     �   CREATE TABLE public.game_category (
    id integer NOT NULL,
    category character varying(100) NOT NULL,
    game_id integer,
    trial894 character(1)
);
 !   DROP TABLE public.game_category;
       public         heap    postgres    false            �            1259    16847    game_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.game_category_id_seq;
       public          postgres    false    244            :           0    0    game_category_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.game_category_id_seq OWNED BY public.game_category.id;
          public          postgres    false    243            �            1259    16856    game_developer    TABLE     �   CREATE TABLE public.game_developer (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    address character varying(100) NOT NULL,
    is_active boolean NOT NULL,
    ownedby_id integer,
    trial894 character(1)
);
 "   DROP TABLE public.game_developer;
       public         heap    postgres    false            �            1259    16855    game_developer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_developer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.game_developer_id_seq;
       public          postgres    false    246            ;           0    0    game_developer_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.game_developer_id_seq OWNED BY public.game_developer.id;
          public          postgres    false    245            �            1259    16864 	   game_game    TABLE     W  CREATE TABLE public.game_game (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    price integer NOT NULL,
    publishyear integer NOT NULL,
    is_published boolean NOT NULL,
    developer_id integer,
    publisher_id integer,
    rating real NOT NULL,
    coverimage character varying(100),
    trial894 character(1)
);
    DROP TABLE public.game_game;
       public         heap    postgres    false            �            1259    16873    game_game_genres    TABLE     �   CREATE TABLE public.game_game_genres (
    id integer NOT NULL,
    game_id integer NOT NULL,
    genre_id bigint NOT NULL,
    trial894 character(1)
);
 $   DROP TABLE public.game_game_genres;
       public         heap    postgres    false            �            1259    16872    game_game_genres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_game_genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.game_game_genres_id_seq;
       public          postgres    false    250            <           0    0    game_game_genres_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.game_game_genres_id_seq OWNED BY public.game_game_genres.id;
          public          postgres    false    249            �            1259    16863    game_game_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.game_game_id_seq;
       public          postgres    false    248            =           0    0    game_game_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.game_game_id_seq OWNED BY public.game_game.id;
          public          postgres    false    247            �            1259    16883 
   game_genre    TABLE     �   CREATE TABLE public.game_genre (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    trial894 character(1)
);
    DROP TABLE public.game_genre;
       public         heap    postgres    false            �            1259    16882    game_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.game_genre_id_seq;
       public          postgres    false    252            >           0    0    game_genre_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.game_genre_id_seq OWNED BY public.game_genre.id;
          public          postgres    false    251            �            1259    16890    game_platform    TABLE     �   CREATE TABLE public.game_platform (
    id integer NOT NULL,
    type character varying(100) NOT NULL,
    game_id integer,
    trial894 character(1)
);
 !   DROP TABLE public.game_platform;
       public         heap    postgres    false            �            1259    16889    game_platform_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_platform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.game_platform_id_seq;
       public          postgres    false    254            ?           0    0    game_platform_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.game_platform_id_seq OWNED BY public.game_platform.id;
          public          postgres    false    253                        1259    16898    game_publisher    TABLE     �   CREATE TABLE public.game_publisher (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    address character varying(100) NOT NULL,
    is_active boolean NOT NULL,
    trial894 character(1)
);
 "   DROP TABLE public.game_publisher;
       public         heap    postgres    false            �            1259    16897    game_publisher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.game_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.game_publisher_id_seq;
       public          postgres    false    256            @           0    0    game_publisher_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.game_publisher_id_seq OWNED BY public.game_publisher.id;
          public          postgres    false    255                       1259    16904    sqlite_sequence    TABLE     `   CREATE TABLE public.sqlite_sequence (
    name text,
    seq text,
    trial894 character(1)
);
 #   DROP TABLE public.sqlite_sequence;
       public         heap    postgres    false                       1259    16910    user_comment    TABLE       CREATE TABLE public.user_comment (
    id integer NOT NULL,
    comment character varying(100) NOT NULL,
    created_date timestamp without time zone NOT NULL,
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    rating integer,
    trial894 character(1)
);
     DROP TABLE public.user_comment;
       public         heap    postgres    false                       1259    16909    user_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.user_comment_id_seq;
       public          postgres    false    259            A           0    0    user_comment_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_comment_id_seq OWNED BY public.user_comment.id;
          public          postgres    false    258                       1259    16919    user_contact    TABLE     �   CREATE TABLE public.user_contact (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    topic character varying(100) NOT NULL,
    message character varying(100) NOT NULL,
    trial894 character(1)
);
     DROP TABLE public.user_contact;
       public         heap    postgres    false                       1259    16918    user_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.user_contact_id_seq;
       public          postgres    false    261            B           0    0    user_contact_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_contact_id_seq OWNED BY public.user_contact.id;
          public          postgres    false    260                       1259    16926    user_favoritegame    TABLE     �   CREATE TABLE public.user_favoritegame (
    id integer NOT NULL,
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    trial894 character(1)
);
 %   DROP TABLE public.user_favoritegame;
       public         heap    postgres    false                       1259    16925    user_favoritegame_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_favoritegame_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.user_favoritegame_id_seq;
       public          postgres    false    263            C           0    0    user_favoritegame_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.user_favoritegame_id_seq OWNED BY public.user_favoritegame.id;
          public          postgres    false    262            	           1259    16935    user_resetpassinfo    TABLE     �   CREATE TABLE public.user_resetpassinfo (
    id integer NOT NULL,
    question character varying(100) NOT NULL,
    answer character varying(100) NOT NULL,
    user_id integer NOT NULL,
    trial897 character(1)
);
 &   DROP TABLE public.user_resetpassinfo;
       public         heap    postgres    false                       1259    16934    user_resetpassinfo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_resetpassinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.user_resetpassinfo_id_seq;
       public          postgres    false    265            D           0    0    user_resetpassinfo_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.user_resetpassinfo_id_seq OWNED BY public.user_resetpassinfo.id;
          public          postgres    false    264            �           2604    16717    accounts_comment id    DEFAULT     z   ALTER TABLE ONLY public.accounts_comment ALTER COLUMN id SET DEFAULT nextval('public.accounts_comment_id_seq'::regclass);
 B   ALTER TABLE public.accounts_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16726    accounts_contact id    DEFAULT     z   ALTER TABLE ONLY public.accounts_contact ALTER COLUMN id SET DEFAULT nextval('public.accounts_contact_id_seq'::regclass);
 B   ALTER TABLE public.accounts_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16733    accounts_favoritegame id    DEFAULT     �   ALTER TABLE ONLY public.accounts_favoritegame ALTER COLUMN id SET DEFAULT nextval('public.accounts_favoritegame_id_seq'::regclass);
 G   ALTER TABLE public.accounts_favoritegame ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16742    accounts_userlibrary id    DEFAULT     �   ALTER TABLE ONLY public.accounts_userlibrary ALTER COLUMN id SET DEFAULT nextval('public.accounts_userlibrary_id_seq'::regclass);
 F   ALTER TABLE public.accounts_userlibrary ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16751    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16758    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16768    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    16777    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16786    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    16796    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16806    chat_chat id    DEFAULT     l   ALTER TABLE ONLY public.chat_chat ALTER COLUMN id SET DEFAULT nextval('public.chat_chat_id_seq'::regclass);
 ;   ALTER TABLE public.chat_chat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    16815    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    16826    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    16834    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    16851    game_category id    DEFAULT     t   ALTER TABLE ONLY public.game_category ALTER COLUMN id SET DEFAULT nextval('public.game_category_id_seq'::regclass);
 ?   ALTER TABLE public.game_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            �           2604    16859    game_developer id    DEFAULT     v   ALTER TABLE ONLY public.game_developer ALTER COLUMN id SET DEFAULT nextval('public.game_developer_id_seq'::regclass);
 @   ALTER TABLE public.game_developer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            �           2604    16867    game_game id    DEFAULT     l   ALTER TABLE ONLY public.game_game ALTER COLUMN id SET DEFAULT nextval('public.game_game_id_seq'::regclass);
 ;   ALTER TABLE public.game_game ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248            �           2604    16876    game_game_genres id    DEFAULT     z   ALTER TABLE ONLY public.game_game_genres ALTER COLUMN id SET DEFAULT nextval('public.game_game_genres_id_seq'::regclass);
 B   ALTER TABLE public.game_game_genres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            �           2604    16886    game_genre id    DEFAULT     n   ALTER TABLE ONLY public.game_genre ALTER COLUMN id SET DEFAULT nextval('public.game_genre_id_seq'::regclass);
 <   ALTER TABLE public.game_genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            �           2604    16893    game_platform id    DEFAULT     t   ALTER TABLE ONLY public.game_platform ALTER COLUMN id SET DEFAULT nextval('public.game_platform_id_seq'::regclass);
 ?   ALTER TABLE public.game_platform ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            �           2604    16901    game_publisher id    DEFAULT     v   ALTER TABLE ONLY public.game_publisher ALTER COLUMN id SET DEFAULT nextval('public.game_publisher_id_seq'::regclass);
 @   ALTER TABLE public.game_publisher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256            �           2604    16913    user_comment id    DEFAULT     r   ALTER TABLE ONLY public.user_comment ALTER COLUMN id SET DEFAULT nextval('public.user_comment_id_seq'::regclass);
 >   ALTER TABLE public.user_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258    259            �           2604    16922    user_contact id    DEFAULT     r   ALTER TABLE ONLY public.user_contact ALTER COLUMN id SET DEFAULT nextval('public.user_contact_id_seq'::regclass);
 >   ALTER TABLE public.user_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260    261            �           2604    16929    user_favoritegame id    DEFAULT     |   ALTER TABLE ONLY public.user_favoritegame ALTER COLUMN id SET DEFAULT nextval('public.user_favoritegame_id_seq'::regclass);
 C   ALTER TABLE public.user_favoritegame ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    263    263            �           2604    16938    user_resetpassinfo id    DEFAULT     ~   ALTER TABLE ONLY public.user_resetpassinfo ALTER COLUMN id SET DEFAULT nextval('public.user_resetpassinfo_id_seq'::regclass);
 D   ALTER TABLE public.user_resetpassinfo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    265    265            �          0    16714    accounts_comment 
   TABLE DATA           i   COPY public.accounts_comment (id, comment, rating, created_date, game_id, user_id, trial894) FROM stdin;
    public          postgres    false    215   I!      �          0    16723    accounts_contact 
   TABLE DATA           O   COPY public.accounts_contact (id, email, topic, message, trial894) FROM stdin;
    public          postgres    false    217   �$      �          0    16730    accounts_favoritegame 
   TABLE DATA           O   COPY public.accounts_favoritegame (id, game_id, user_id, trial894) FROM stdin;
    public          postgres    false    219   �$      �          0    16739    accounts_userlibrary 
   TABLE DATA           N   COPY public.accounts_userlibrary (id, game_id, user_id, trial894) FROM stdin;
    public          postgres    false    221   �$      �          0    16748 
   auth_group 
   TABLE DATA           8   COPY public.auth_group (id, name, trial894) FROM stdin;
    public          postgres    false    223   %      �          0    16755    auth_group_permissions 
   TABLE DATA           W   COPY public.auth_group_permissions (id, group_id, permission_id, trial894) FROM stdin;
    public          postgres    false    225   1%      �          0    16765    auth_permission 
   TABLE DATA           X   COPY public.auth_permission (id, content_type_id, codename, name, trial894) FROM stdin;
    public          postgres    false    227   N%                0    16774 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name, trial894) FROM stdin;
    public          postgres    false    229   )                0    16783    auth_user_groups 
   TABLE DATA           K   COPY public.auth_user_groups (id, user_id, group_id, trial894) FROM stdin;
    public          postgres    false    231   },                0    16793    auth_user_user_permissions 
   TABLE DATA           Z   COPY public.auth_user_user_permissions (id, user_id, permission_id, trial894) FROM stdin;
    public          postgres    false    233   �,                0    16803 	   chat_chat 
   TABLE DATA           B   COPY public.chat_chat (id, text, gpt, date, trial894) FROM stdin;
    public          postgres    false    235   �-      	          0    16812    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag, trial894) FROM stdin;
    public          postgres    false    237   �.                0    16823    django_content_type 
   TABLE DATA           M   COPY public.django_content_type (id, app_label, model, trial894) FROM stdin;
    public          postgres    false    239   �L                0    16831    django_migrations 
   TABLE DATA           M   COPY public.django_migrations (id, app, name, applied, trial894) FROM stdin;
    public          postgres    false    241   �M                0    16839    django_session 
   TABLE DATA           Z   COPY public.django_session (session_key, session_data, expire_date, trial894) FROM stdin;
    public          postgres    false    242   Q                0    16848    game_category 
   TABLE DATA           H   COPY public.game_category (id, category, game_id, trial894) FROM stdin;
    public          postgres    false    244   _                0    16856    game_developer 
   TABLE DATA           \   COPY public.game_developer (id, name, address, is_active, ownedby_id, trial894) FROM stdin;
    public          postgres    false    246   7_                0    16864 	   game_game 
   TABLE DATA           �   COPY public.game_game (id, title, price, publishyear, is_published, developer_id, publisher_id, rating, coverimage, trial894) FROM stdin;
    public          postgres    false    248   }a                0    16873    game_game_genres 
   TABLE DATA           K   COPY public.game_game_genres (id, game_id, genre_id, trial894) FROM stdin;
    public          postgres    false    250   �i                0    16883 
   game_genre 
   TABLE DATA           8   COPY public.game_genre (id, name, trial894) FROM stdin;
    public          postgres    false    252   �l                0    16890    game_platform 
   TABLE DATA           D   COPY public.game_platform (id, type, game_id, trial894) FROM stdin;
    public          postgres    false    254   fm                0    16898    game_publisher 
   TABLE DATA           P   COPY public.game_publisher (id, name, address, is_active, trial894) FROM stdin;
    public          postgres    false    256   �m                0    16904    sqlite_sequence 
   TABLE DATA           >   COPY public.sqlite_sequence (name, seq, trial894) FROM stdin;
    public          postgres    false    257   6o                0    16910    user_comment 
   TABLE DATA           e   COPY public.user_comment (id, comment, created_date, game_id, user_id, rating, trial894) FROM stdin;
    public          postgres    false    259   0p      !          0    16919    user_contact 
   TABLE DATA           K   COPY public.user_contact (id, email, topic, message, trial894) FROM stdin;
    public          postgres    false    261   2r      #          0    16926    user_favoritegame 
   TABLE DATA           K   COPY public.user_favoritegame (id, game_id, user_id, trial894) FROM stdin;
    public          postgres    false    263   kr      %          0    16935    user_resetpassinfo 
   TABLE DATA           U   COPY public.user_resetpassinfo (id, question, answer, user_id, trial897) FROM stdin;
    public          postgres    false    265   �r      E           0    0    accounts_comment_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.accounts_comment_id_seq', 42, true);
          public          postgres    false    214            F           0    0    accounts_contact_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.accounts_contact_id_seq', 1, false);
          public          postgres    false    216            G           0    0    accounts_favoritegame_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.accounts_favoritegame_id_seq', 37, true);
          public          postgres    false    218            H           0    0    accounts_userlibrary_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.accounts_userlibrary_id_seq', 30, true);
          public          postgres    false    220            I           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    222            J           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    224            K           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);
          public          postgres    false    226            L           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    230            M           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 14, true);
          public          postgres    false    228            N           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 64, true);
          public          postgres    false    232            O           0    0    chat_chat_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.chat_chat_id_seq', 3, true);
          public          postgres    false    234            P           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 434, true);
          public          postgres    false    236            Q           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);
          public          postgres    false    238            R           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 37, true);
          public          postgres    false    240            S           0    0    game_category_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.game_category_id_seq', 1, false);
          public          postgres    false    243            T           0    0    game_developer_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.game_developer_id_seq', 35, true);
          public          postgres    false    245            U           0    0    game_game_genres_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.game_game_genres_id_seq', 204, true);
          public          postgres    false    249            V           0    0    game_game_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.game_game_id_seq', 58, true);
          public          postgres    false    247            W           0    0    game_genre_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.game_genre_id_seq', 50, true);
          public          postgres    false    251            X           0    0    game_platform_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.game_platform_id_seq', 2, true);
          public          postgres    false    253            Y           0    0    game_publisher_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.game_publisher_id_seq', 29, true);
          public          postgres    false    255            Z           0    0    user_comment_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.user_comment_id_seq', 28, true);
          public          postgres    false    258            [           0    0    user_contact_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.user_contact_id_seq', 1, true);
          public          postgres    false    260            \           0    0    user_favoritegame_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.user_favoritegame_id_seq', 416, true);
          public          postgres    false    262            ]           0    0    user_resetpassinfo_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.user_resetpassinfo_id_seq', 6, true);
          public          postgres    false    264                        2606    16719 $   accounts_comment accounts_comment_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.accounts_comment
    ADD CONSTRAINT accounts_comment_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.accounts_comment DROP CONSTRAINT accounts_comment_pk;
       public            postgres    false    215                       2606    16728 $   accounts_contact accounts_contact_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.accounts_contact
    ADD CONSTRAINT accounts_contact_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.accounts_contact DROP CONSTRAINT accounts_contact_pk;
       public            postgres    false    217                       2606    16735 .   accounts_favoritegame accounts_favoritegame_pk 
   CONSTRAINT     l   ALTER TABLE ONLY public.accounts_favoritegame
    ADD CONSTRAINT accounts_favoritegame_pk PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.accounts_favoritegame DROP CONSTRAINT accounts_favoritegame_pk;
       public            postgres    false    219            
           2606    16744 ,   accounts_userlibrary accounts_userlibrary_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public.accounts_userlibrary
    ADD CONSTRAINT accounts_userlibrary_pk PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.accounts_userlibrary DROP CONSTRAINT accounts_userlibrary_pk;
       public            postgres    false    221                       2606    16760 0   auth_group_permissions auth_group_permissions_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pk PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pk;
       public            postgres    false    225                       2606    16770 "   auth_permission auth_permission_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pk;
       public            postgres    false    227                       2606    16788 $   auth_user_groups auth_user_groups_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pk;
       public            postgres    false    231                        2606    16798 8   auth_user_user_permissions auth_user_user_permissions_pk 
   CONSTRAINT     v   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pk PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pk;
       public            postgres    false    233            $           2606    16810    chat_chat chat_chat_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.chat_chat
    ADD CONSTRAINT chat_chat_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.chat_chat DROP CONSTRAINT chat_chat_pk;
       public            postgres    false    235            '           2606    16819 $   django_admin_log django_admin_log_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pk;
       public            postgres    false    237            +           2606    16828 *   django_content_type django_content_type_pk 
   CONSTRAINT     h   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pk PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pk;
       public            postgres    false    239            -           2606    16838 &   django_migrations django_migrations_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pk PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pk;
       public            postgres    false    241            3           2606    16853    game_category game_category_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.game_category
    ADD CONSTRAINT game_category_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.game_category DROP CONSTRAINT game_category_pk;
       public            postgres    false    244            6           2606    16861     game_developer game_developer_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.game_developer
    ADD CONSTRAINT game_developer_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.game_developer DROP CONSTRAINT game_developer_pk;
       public            postgres    false    246            ?           2606    16878 $   game_game_genres game_game_genres_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.game_game_genres
    ADD CONSTRAINT game_game_genres_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.game_game_genres DROP CONSTRAINT game_game_genres_pk;
       public            postgres    false    250            9           2606    16869    game_game game_game_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.game_game
    ADD CONSTRAINT game_game_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.game_game DROP CONSTRAINT game_game_pk;
       public            postgres    false    248            A           2606    16888    game_genre game_genre_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.game_genre
    ADD CONSTRAINT game_genre_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.game_genre DROP CONSTRAINT game_genre_pk;
       public            postgres    false    252            D           2606    16895    game_platform game_platform_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.game_platform
    ADD CONSTRAINT game_platform_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.game_platform DROP CONSTRAINT game_platform_pk;
       public            postgres    false    254            F           2606    16903     game_publisher game_publisher_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.game_publisher
    ADD CONSTRAINT game_publisher_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.game_publisher DROP CONSTRAINT game_publisher_pk;
       public            postgres    false    256                       2606    16753 (   auth_group sqlite_autoindex_auth_group_1 
   CONSTRAINT     l   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT sqlite_autoindex_auth_group_1 PRIMARY KEY (name, id);
 R   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT sqlite_autoindex_auth_group_1;
       public            postgres    false    223    223                       2606    16781 &   auth_user sqlite_autoindex_auth_user_1 
   CONSTRAINT     n   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT sqlite_autoindex_auth_user_1 PRIMARY KEY (username, id);
 P   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT sqlite_autoindex_auth_user_1;
       public            postgres    false    229    229            0           2606    16845 0   django_session sqlite_autoindex_django_session_1 
   CONSTRAINT     w   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT sqlite_autoindex_django_session_1 PRIMARY KEY (session_key);
 Z   ALTER TABLE ONLY public.django_session DROP CONSTRAINT sqlite_autoindex_django_session_1;
       public            postgres    false    242            I           2606    16915    user_comment user_comment_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_comment
    ADD CONSTRAINT user_comment_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_comment DROP CONSTRAINT user_comment_pk;
       public            postgres    false    259            L           2606    16924    user_contact user_contact_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_contact
    ADD CONSTRAINT user_contact_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_contact DROP CONSTRAINT user_contact_pk;
       public            postgres    false    261            O           2606    16931 &   user_favoritegame user_favoritegame_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.user_favoritegame
    ADD CONSTRAINT user_favoritegame_pk PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.user_favoritegame DROP CONSTRAINT user_favoritegame_pk;
       public            postgres    false    263            R           2606    16940 (   user_resetpassinfo user_resetpassinfo_pk 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_resetpassinfo
    ADD CONSTRAINT user_resetpassinfo_pk PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.user_resetpassinfo DROP CONSTRAINT user_resetpassinfo_pk;
       public            postgres    false    265            �           1259    16721 !   accounts_comment_game_id_30029b7d    INDEX     a   CREATE INDEX accounts_comment_game_id_30029b7d ON public.accounts_comment USING btree (game_id);
 5   DROP INDEX public.accounts_comment_game_id_30029b7d;
       public            postgres    false    215                       1259    16720 !   accounts_comment_user_id_7847fb99    INDEX     a   CREATE INDEX accounts_comment_user_id_7847fb99 ON public.accounts_comment USING btree (user_id);
 5   DROP INDEX public.accounts_comment_user_id_7847fb99;
       public            postgres    false    215                       1259    16737 &   accounts_favoritegame_game_id_f2ffaec6    INDEX     k   CREATE INDEX accounts_favoritegame_game_id_f2ffaec6 ON public.accounts_favoritegame USING btree (game_id);
 :   DROP INDEX public.accounts_favoritegame_game_id_f2ffaec6;
       public            postgres    false    219                       1259    16736 &   accounts_favoritegame_user_id_e9bf33e5    INDEX     k   CREATE INDEX accounts_favoritegame_user_id_e9bf33e5 ON public.accounts_favoritegame USING btree (user_id);
 :   DROP INDEX public.accounts_favoritegame_user_id_e9bf33e5;
       public            postgres    false    219                       1259    16746 %   accounts_userlibrary_game_id_7b8478cb    INDEX     i   CREATE INDEX accounts_userlibrary_game_id_7b8478cb ON public.accounts_userlibrary USING btree (game_id);
 9   DROP INDEX public.accounts_userlibrary_game_id_7b8478cb;
       public            postgres    false    221                       1259    16745 %   accounts_userlibrary_user_id_66766522    INDEX     i   CREATE INDEX accounts_userlibrary_user_id_66766522 ON public.accounts_userlibrary USING btree (user_id);
 9   DROP INDEX public.accounts_userlibrary_user_id_66766522;
       public            postgres    false    221                       1259    16762 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    225                       1259    16763 ;   auth_group_permissions_group_id_permission_id_0cd325b0_uniq    INDEX     �   CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON public.auth_group_permissions USING btree (group_id, permission_id);
 O   DROP INDEX public.auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    225    225                       1259    16761 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    225                       1259    16771 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    227                       1259    16772 6   auth_permission_content_type_id_codename_01ab375a_uniq    INDEX     �   CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq ON public.auth_permission USING btree (content_type_id, codename);
 J   DROP INDEX public.auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    227    227                       1259    16789 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    231                       1259    16790 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    231                       1259    16791 /   auth_user_groups_user_id_group_id_94350c0c_uniq    INDEX     �   CREATE UNIQUE INDEX auth_user_groups_user_id_group_id_94350c0c_uniq ON public.auth_user_groups USING btree (user_id, group_id);
 C   DROP INDEX public.auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    231    231                       1259    16799 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    233            !           1259    16800 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    233            "           1259    16801 >   auth_user_user_permissions_user_id_permission_id_14a6b632_uniq    INDEX     �   CREATE UNIQUE INDEX auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON public.auth_user_user_permissions USING btree (user_id, permission_id);
 R   DROP INDEX public.auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    233    233            %           1259    16821 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    237            (           1259    16820 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    237            )           1259    16829 1   django_content_type_app_label_model_76bd3d3b_uniq    INDEX     �   CREATE UNIQUE INDEX django_content_type_app_label_model_76bd3d3b_uniq ON public.django_content_type USING btree (app_label, model);
 E   DROP INDEX public.django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    239    239            .           1259    16846 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    242            1           1259    16854    game_category_game_id_442080aa    INDEX     [   CREATE INDEX game_category_game_id_442080aa ON public.game_category USING btree (game_id);
 2   DROP INDEX public.game_category_game_id_442080aa;
       public            postgres    false    244            4           1259    16862 "   game_developer_ownedby_id_2fc3b728    INDEX     c   CREATE INDEX game_developer_ownedby_id_2fc3b728 ON public.game_developer USING btree (ownedby_id);
 6   DROP INDEX public.game_developer_ownedby_id_2fc3b728;
       public            postgres    false    246            7           1259    16871    game_game_developer_id_46954ebb    INDEX     ]   CREATE INDEX game_game_developer_id_46954ebb ON public.game_game USING btree (developer_id);
 3   DROP INDEX public.game_game_developer_id_46954ebb;
       public            postgres    false    248            ;           1259    16880 !   game_game_genres_game_id_9baec950    INDEX     a   CREATE INDEX game_game_genres_game_id_9baec950 ON public.game_game_genres USING btree (game_id);
 5   DROP INDEX public.game_game_genres_game_id_9baec950;
       public            postgres    false    250            <           1259    16881 /   game_game_genres_game_id_genre_id_e88533fa_uniq    INDEX     �   CREATE UNIQUE INDEX game_game_genres_game_id_genre_id_e88533fa_uniq ON public.game_game_genres USING btree (game_id, genre_id);
 C   DROP INDEX public.game_game_genres_game_id_genre_id_e88533fa_uniq;
       public            postgres    false    250    250            =           1259    16879 "   game_game_genres_genre_id_634b1026    INDEX     c   CREATE INDEX game_game_genres_genre_id_634b1026 ON public.game_game_genres USING btree (genre_id);
 6   DROP INDEX public.game_game_genres_genre_id_634b1026;
       public            postgres    false    250            :           1259    16870    game_game_publisher_id_973373cc    INDEX     ]   CREATE INDEX game_game_publisher_id_973373cc ON public.game_game USING btree (publisher_id);
 3   DROP INDEX public.game_game_publisher_id_973373cc;
       public            postgres    false    248            B           1259    16896    game_platform_game_id_7c73d9fd    INDEX     [   CREATE INDEX game_platform_game_id_7c73d9fd ON public.game_platform USING btree (game_id);
 2   DROP INDEX public.game_platform_game_id_7c73d9fd;
       public            postgres    false    254            G           1259    16917    user_comment_game_id_8c88df4a    INDEX     Y   CREATE INDEX user_comment_game_id_8c88df4a ON public.user_comment USING btree (game_id);
 1   DROP INDEX public.user_comment_game_id_8c88df4a;
       public            postgres    false    259            J           1259    16916    user_comment_user_id_d9d51f62    INDEX     Y   CREATE INDEX user_comment_user_id_d9d51f62 ON public.user_comment USING btree (user_id);
 1   DROP INDEX public.user_comment_user_id_d9d51f62;
       public            postgres    false    259            M           1259    16933 "   user_favoritegame_game_id_279673d4    INDEX     c   CREATE INDEX user_favoritegame_game_id_279673d4 ON public.user_favoritegame USING btree (game_id);
 6   DROP INDEX public.user_favoritegame_game_id_279673d4;
       public            postgres    false    263            P           1259    16932 "   user_favoritegame_user_id_2a9f84da    INDEX     c   CREATE INDEX user_favoritegame_user_id_2a9f84da ON public.user_favoritegame USING btree (user_id);
 6   DROP INDEX public.user_favoritegame_user_id_2a9f84da;
       public            postgres    false    263            S           1259    16941 #   user_resetpassinfo_user_id_439b2a79    INDEX     e   CREATE INDEX user_resetpassinfo_user_id_439b2a79 ON public.user_resetpassinfo USING btree (user_id);
 7   DROP INDEX public.user_resetpassinfo_user_id_439b2a79;
       public            postgres    false    265            T           2606    16942     accounts_comment fk__game_game_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_comment
    ADD CONSTRAINT fk__game_game_1 FOREIGN KEY (game_id) REFERENCES public.game_game(id);
 J   ALTER TABLE ONLY public.accounts_comment DROP CONSTRAINT fk__game_game_1;
       public          postgres    false    215    3385    248            U           2606    16947 5   accounts_favoritegame fk_accounts_contact_game_game_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_favoritegame
    ADD CONSTRAINT fk_accounts_contact_game_game_1 FOREIGN KEY (game_id) REFERENCES public.game_game(id);
 _   ALTER TABLE ONLY public.accounts_favoritegame DROP CONSTRAINT fk_accounts_contact_game_game_1;
       public          postgres    false    3385    219    248            V           2606    16952 9   accounts_userlibrary fk_accounts_favoritegame_game_game_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_userlibrary
    ADD CONSTRAINT fk_accounts_favoritegame_game_game_1 FOREIGN KEY (game_id) REFERENCES public.game_game(id);
 c   ALTER TABLE ONLY public.accounts_userlibrary DROP CONSTRAINT fk_accounts_favoritegame_game_game_1;
       public          postgres    false    221    248    3385            W           2606    16957 6   auth_group_permissions fk_auth_group_auth_permission_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT fk_auth_group_auth_permission_0 FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);
 `   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT fk_auth_group_auth_permission_0;
       public          postgres    false    3350    227    225            X           2606    16962 ?   auth_permission fk_auth_group_permissions_django_content_type_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT fk_auth_group_permissions_django_content_type_0 FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);
 i   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT fk_auth_group_permissions_django_content_type_0;
       public          postgres    false    3371    239    227            Y           2606    16967 @   auth_user_user_permissions fk_auth_user_groups_auth_permission_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT fk_auth_user_groups_auth_permission_0 FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);
 j   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT fk_auth_user_groups_auth_permission_0;
       public          postgres    false    233    227    3350            Z           2606    16972 3   django_admin_log fk_chat_chat_django_content_type_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT fk_chat_chat_django_content_type_1 FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);
 ]   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT fk_chat_chat_django_content_type_1;
       public          postgres    false    239    237    3371            [           2606    16977 +   game_category fk_django_session_game_game_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_category
    ADD CONSTRAINT fk_django_session_game_game_0 FOREIGN KEY (game_id) REFERENCES public.game_game(id);
 U   ALTER TABLE ONLY public.game_category DROP CONSTRAINT fk_django_session_game_game_0;
       public          postgres    false    3385    248    244            \           2606    16982 0   game_developer fk_game_category_game_publisher_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_developer
    ADD CONSTRAINT fk_game_category_game_publisher_0 FOREIGN KEY (ownedby_id) REFERENCES public.game_publisher(id);
 Z   ALTER TABLE ONLY public.game_developer DROP CONSTRAINT fk_game_category_game_publisher_0;
       public          postgres    false    246    256    3398            ]           2606    16992 ,   game_game fk_game_developer_game_developer_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_game
    ADD CONSTRAINT fk_game_developer_game_developer_1 FOREIGN KEY (developer_id) REFERENCES public.game_developer(id);
 V   ALTER TABLE ONLY public.game_game DROP CONSTRAINT fk_game_developer_game_developer_1;
       public          postgres    false    248    246    3382            ^           2606    16987 ,   game_game fk_game_developer_game_publisher_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_game
    ADD CONSTRAINT fk_game_developer_game_publisher_0 FOREIGN KEY (publisher_id) REFERENCES public.game_publisher(id);
 V   ALTER TABLE ONLY public.game_game DROP CONSTRAINT fk_game_developer_game_publisher_0;
       public          postgres    false    256    3398    248            _           2606    17002 )   game_game_genres fk_game_game_game_game_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_game_genres
    ADD CONSTRAINT fk_game_game_game_game_1 FOREIGN KEY (game_id) REFERENCES public.game_game(id);
 S   ALTER TABLE ONLY public.game_game_genres DROP CONSTRAINT fk_game_game_game_game_1;
       public          postgres    false    3385    248    250            `           2606    16997 *   game_game_genres fk_game_game_game_genre_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_game_genres
    ADD CONSTRAINT fk_game_game_game_genre_0 FOREIGN KEY (genre_id) REFERENCES public.game_genre(id);
 T   ALTER TABLE ONLY public.game_game_genres DROP CONSTRAINT fk_game_game_game_genre_0;
       public          postgres    false    252    3393    250            a           2606    17007 '   game_platform fk_game_genre_game_game_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.game_platform
    ADD CONSTRAINT fk_game_genre_game_game_0 FOREIGN KEY (game_id) REFERENCES public.game_game(id);
 Q   ALTER TABLE ONLY public.game_platform DROP CONSTRAINT fk_game_genre_game_game_0;
       public          postgres    false    3385    254    248            b           2606    17012 +   user_comment fk_sqlite_sequence_game_game_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_comment
    ADD CONSTRAINT fk_sqlite_sequence_game_game_1 FOREIGN KEY (game_id) REFERENCES public.game_game(id);
 U   ALTER TABLE ONLY public.user_comment DROP CONSTRAINT fk_sqlite_sequence_game_game_1;
       public          postgres    false    248    259    3385            c           2606    17017 -   user_favoritegame fk_user_contact_game_game_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_favoritegame
    ADD CONSTRAINT fk_user_contact_game_game_1 FOREIGN KEY (game_id) REFERENCES public.game_game(id);
 W   ALTER TABLE ONLY public.user_favoritegame DROP CONSTRAINT fk_user_contact_game_game_1;
       public          postgres    false    248    3385    263            �   2  x�u����F�k�S�x�`��c�"'�S���#.�(2����/�ҵ{w�W0$7�R�Ď��`..���똯@`��?���*�*d������d�o��j���O�3�5:����-<A��|��y8�s�Y[���h�b�����co��x��f�
�BS�/��e�IE��6ER.����A�@���\��<;>T�Uu"$��|��aT��_�ô1���T��H�4��B+�j��k��T�x�м~���-mK=���):b[�0����n�.�;A���8�>&,]�~QǶ�ա���%���m�\vǉZ�Kr}�[���ۡ���j:����4HcT����#9;��[nqO|���5zFYP���	փҚ�ݥf�l�Ѳ�R�dѼ��CeIF/Mqn�~�=V�t�w��b��Vڂ�d-}��9���E��1J�y=�~�K�|q�I�٬<��#��6M���^�'q��n�/me��"I�%#������nz�hl�8�8%'/�;�| �eL�h��\(I4�(���$!�����twaeHE��!���S�P{�%���^��������呢���I!�!_8�ck),�]�Ⴓ&�+�vl!�lS��V�q9V����:���e_�	$,�@N��緔�=��~5�e�߾��S2T��HP&Oq�2�C�4~���t�8b��W8�e�n�Eu�遤�N��#����x��2���t���8l�Me�1���9�/�Ȏ7K.�eە���~y����cS߳Tφ��V�
[)�9��8���V��n+�a�s��OOO�gk�6      �      x������ � �      �   (   x�36�4���26�44���8MM!,sNCs0+F��� �v      �   $   x�32�45���22�4� ��8M���=... `7(      �      x������ � �      �      x������ � �      �   �  x���Mn�0�r��`���B���M$q����H�2eH���}�MS�]�����i<����~��-�X؆��M�{�/�!ua-�%�~8�k	�@?�ÿ�J�jWp��0����q�Čf�e��I�����Вs�%i�[h���6��+9�a?�1h�z���%�,$_D9�d��Ċ� �H3�4���$�a�A��6%GܗJjI��PҀp�8�n{Ws��x��i޿�C"k[^�ma%ВK�eE�
ɷ�����"C�]zN�Թk8�mH_:�)@$�U��P�Z(9� 9�eϠ�yN�>��x5�w^k�$]*%_�=�$L�dLp�)S�9ع6tC�=_�K�aS{A���� �	J�� ��6���u����z:����j^����H�vX\�#��鰸����/������QO��m��sR]�jIiR5��Yj��m��9�1��]Ʈ����� U��v�P{�ؒ�6�����VdC[�׸��ahL�m�_{���m�QyuK�[^GEC�x]$����T'��ur�ԵT�w�������3���s���]�V���~��[ZU���r*��Y����
*�Y��
��+�3>�f,�k��L	3�� ʚd��c ʆ������?*<�yp�;�.\ôd��Rf��Ȏ�T*͐
��H��.'QxB̓tMA�tMI�tɇ��,��t���y�O�kI>L�g�>�A>#���9���|AE?� ���=� _�y��|M���G�q�����t|�z3(hm���-as�ޜImIG%�pjK�Ք���ê-�gV�sW��4�'�y	� ��ȋ�C�K򋩼8?$�"�L���X�V
s?�&s��+�7��g�H�Хʓ�cWTz�RՒ
'�h��K�R�W����P�hW�N�j����{�F_J1��F��c���k������"         k  x�m��r�H���)���
������n�AM��j
�D��e��f�k��d� t_����JOA��r�#Bq5���b��������dd��N�6�'ݛ:�]6F�#6՗���!qr�m���ٽ��v4=�� zXsM!��B�J{)�6Q]�/r���*��\��/��uH4�4�eDE
t ɭ���� {��B7y���g���4��#��/,�q�3���������B�9��L� � x�x2b� �Qp�/����2��I�,`��P��uP�v<��vŰRu��@�h��>&!'wդН��ڳ��}>ku����1ˎ�H/��A!�.N� �!G\�b)�6�IF�m�$��u�F�� �!�0� ��
G��,:����h�@��Q�S'��o'�t;&����CyG�N?z��h:Ii�r�Y��n��pUL��)�ď����.c�]��V������?�?4�0c���ݿ����]�v<Bʘ���>�t+4�.k��:e���j-W�i�O#�8�>:N�O�C��a�|<�NV}��u�hj
�����v_��0����
$SU����
\|��r}��
�/^n������Ho8&����d��Q00�w7\v��:\�g�������V4(z�`JU�v1���6���w! 2�\���u�b�}F0��WLc����N��a�����y��1rr~��s�פ���C�,g�΋�����P� �,#)e��W|���7�*X��,T@��5ޭ�ߙ�+sr�J��MN�n��+�c��ms?�QT��7I��HuB�8%��e��YRƻ?q�y(\`�q�� {u�d�w?~q��B5,��6�S��j�ے�            x������ � �         �   x���m�@D�3�����<|t�qx� �����������ܭ����ޝ��=�g�}y~�Ͼ?����n��^�f��jȆn�rH�v��z��~ ��`$#��翟g$#�HF2���d$#�HF2�Q�b�Ũ�t��a��(F1�Q�b��(F3�ьf4�����K`4��hF3�ьf4���0�1�acØ禟�fc��0�1�a�a�a�a�a�a������]\�         �   x�%��N�0E��W� QҨ�ȮB����n���\�����mv�<g�+�,$Nt�b�����F��ڀ'R�5ޭ`{Ҡ�K�+k,�58��~f��,�d��[Ǹ�/�n1�����F����	���� Aרґ,�@
��t �9�L��A��o`���1���Q�	��9�৙]���Tzj���"-�ŪYuU���m7�����7}�i���V�,� �oe�      	      x��]ْ�ȕ}F�_�h!r_�V���Z�R���T�T�XDHJ�v�������d-`& *x"䈶�<7���.�7/x&���|$x��L�����8������r���������|����G���X�����Y������y��c���6\ӿ?��T��j��@���$/��L(��yyY���ؙ�^)��vYn>���g7X�KV�M&R,1�en��#�s�f�͘+��Ӫ?��y�1��l���\}ځ��qQ-�k���~|\���e������,�mSln
���v1��i]�0���ƚ�B+o�獅���L��K���"{W�^o�&?�l�zݫ��@j�}�hm[0��)ȭrs��hI Jy������������j��W���q.c4?c�Px2-2����/��j��L*�g҂�A����) ؊ŵ`�̞\/V��_�.6CϱO
��O�e���v����sR0���S��^�BKƴ����b�`]�t�M�/X�/u�|��#x��D��5S,���P�3���?�߾{󧧏���>�wa2�Q��\(�A�[F��hQ�9���;���}C�{P����Zj�;�[#M<��\u-��q�H�����H�ґa��q.��>\3��e�^M�X�)��M�?T��v�9��^#Y�� Q(�lO�H�<�aa�u�{�c�J�$�z2��M" V����H�1B5�����!&�S0Ü[-�y& Cc�s�<�M�4Vh!�$\*@��y�-�D�� �|�w�X$ d�X���	O@�<g0�� K��V�"��bd�_P�����TLg�f�"�3ZO�1�B\��e�x����'�!�gz
������ �'y1�%��CM�cB_�h�� _�|>�.��X�ָ���Øṝ�rp`L?�A�������*�m�9��9�.����j�[�hR�
	�sp�bŜ�(�H���XRL;
�\��ۉ%��$$N��S/_�E���iɝW�Jhig
�W[f�Ģ���h��vZQ&!+rWXI.eZI1��W���Ģb��B��0|jQ��P��I�f��dϛr5�!��&?�n�Y~V��ռ��tO�� ��*hF
��EX�8۔͇��~��q����2�'�촺(�,�m��\m��<�,�T�ɛ��Mh��uJuO,̄�Gsc�Bx���ɘ�����\��X:��0��u���^���_�i���U)���~ؘi%Da���(ژi��W΍b|b�bc�A���z#��ӊ���E�f��bbR�ݞ�|��#.rn)��,üFJ"L����I�TBL5�/��
��O��z�����ĒꋐE	n���oK�������z��aW������@$�0i&�M�q].���Z=�X	��j¥���We��u��q	��L;$�����'8	�����q�?�El�s>c���B��Y�Ȗ�՜��SV0�P؉^�A�:EF�n�F��0�[R�G�F��X:���l����U�{��)O�Z�ɵ:�(C�J�i�ce/�jA�%���:�ΫUuY��G ���v��S���G�x�X��L!�Dr��,��!���T���H~}vY6����^�z�d4�	�,w���8��ш���!�!i*�(/�Ns)�Ǐ=��)2�X#���!���ʹ�Q��dSh�x �����a$p=1�X>A�<�:2��X�Sp�᠏�7F�K�����"le��"0a��3GG�����37�R3]�Sމ�_�T�,�Yd�S�Bs�S	�E���M#�t���^Ms��l* 9��U[��!�uЅ�dxʭz�|*�x.ݤ�8�$�kH'��+m8�@��c�����"F��O[�O������Z�{�yB]I�;r\�_ ڸ�}"a��4�;J��ǄM�'��3�
����c#8�ni�n��n٣�/�����(�8��%�LQzk%����P (Ȃ�1��Қ�PDK�C9��t�Ƅ�Ƚ$��u�S~����x\��Q�T�iǩ�f:Ƌx�$^!ZPzj7$d,^�SeG��E�T
lPw�U��MH�B�bV.t<BS�=f�� .L,�S`KeM��:���Åz�FX2�2�p}�8mA\
BR�j5���?߁%)4V��\R�|�(/�ǋ��@�_��S� %o���n원1��!8%Ń����BGX�s�N���>MvJ`��)��r�5��?�k�T(��0-�՝m���Ӣ\mz*?�t
�=�w��$ޞ���l���j�m ��(�ꀜP	,�Y���חW�t�)m�o���Zm~�_�΋��g����/��Ҧ"$�"O���N�KA� �Ћx��v����0K'LkD
�Y�~��� H���L�U~�X���^X������e?����
��m�XEU"����h+�R�gϚ�����:�����`c4�zЋ�e]�?԰|k;�s�B�֥'��
O�l��,Ҕ��?��gu����z�Cq�rJ���)t������#� ��ًr�1�~*�fsA�A*��T�=_.f��eK��bQ}���#������y� ɖ��|S7X��:��ؘ�
gK-lK��_�'�yuչ�|�����x!�6���+<Nx���~�Q�}�cq
7%�F�"�m��j{y�e�=<+x�	e�YT�fa�ܔ3�	����@J��_����ү��-9ⵎ��M8�5����1����j��eK�읳�؜��|[5�b�,�[��@* ֒,������п���Q���	a\HZ�p�dC&�� X�G�����'t�Xw��s�	�ƚҖ�q��Ϊϋ�6�.�y�<XT������cP�������l3���q5"����<�8E.с�e��T�.����T�TC�Kϥ;v��w} 61ِ�H[h����c&&%4���t� ^6MI��� _M�1a��L��SP��"7�@�����b2�`1ŀ���^��:Y4���TL3a�F����l�j��ɢ�h�v��m�W�e3K8n
!��0��I����������؂��ɴ	�|p_�'��[!�ڋa���<�a;PyN���U���z(V�1d(���y��=���_����;-���KAv��$m���)�r`R�����Gk��*����>�Z�S�	 Îg�x�O��sP�5\�/����p�ʬ�B-p��r�%����n>h���_�Rd[!�X����H��ZO�$Ta�Pn��d�����ș�m�� ��JQ0�4C�С#��cZ _�f���&Ǐ)C���[ڠ�h7=f�
%�I��
K�;JV�t���;3��XD�>d�SIIxh(���H>��0Ԅ���N&&!r�F��2�����a����;�+�Hary>!�V����Q�O8vQrхׇ�'�W?��9�C��O��(��t����pݑ�*�4�裒��"�{�FxCW����w�;\�Wt_AdR~W��cSɰ/��E���Ո)M�Hc�TԜ ��a�F������T�j/����p���W��*��q�`1��:�!���[2x����\�+<���*�@��lӡ�S(��O=hw/X��M7���
�!R'��_���r �,f��B*�ׅ���v�/6���x�,��
�����Q1���E��
�T�)m�5�jq��4���O��UT7��i���qs��>��>�L�n�� =x2�7�z�{Ļ��̥�tC�qI��!��b=�/�cz2�¹q����Xp���XQq��B�-�1�(m$�y}v�Z\U�,~Q�7t��,�f蹸�%�p�GF�S��[���c�A�~�%��E8pC�n})o0O���0�?B!g�©F2۟��S@�A����	71�	7ݙӤ�2����s�����s2�C�0Q�]f�BB��IUn.�EG�Uzt�t�Z;ʟ`q��#���B.}d�/x������(Ų��e�xY�ί�^����fkr����{��sV��엲Y���'�B$����n����������ۄp,H��V�Bg��f�)dg�ՠ�18�,�
c��_� :  ��a�ELHR���Е��0�(�SXL ��\�F�.���}k�w����3��{q*�t{�sc��|��28 �r�����KLpL�#CҒ6��& c[@�v��!��R�K�)W�-'�[.iq���yL��Z_�_W�Zc�XE�^2#2%����[�K��Z���g�L��aPd��l�������P�fct�!��n	�w�������n�'S)<���i��V>�_a���XځEI�li�1��>n���)x����ݷ��-ۥXE{O��ml������� ��u����w��.{[��Ѕ"D�i�T��8�s}����q{�\%��ˠ����|���7��TB�]��H3e�'%���z�\C��YԈB���&x���u� �X�Zt����iK���oW�x_9]���E���F����_n7�@��b��p�b�הs�p��C�-?X7#TL:���`$��q�iM'e�o0�R��S	h(��EU���*wZ��Uv��PT��%����v	Ի�^�����|U/�VO�jN��,��r!:������[б;Uc� �1�Pu�A��"��C\����m�����.��L���.+���[�|X/�p��t�놎,�p�Ga�Pa�[�,���N�݆6���і柷P��9�zU^L)Qy��V�Q�gԾ�Nh���	g.�O�T�s�\��vY�/���'tp�M�0�xa/���up7� &�A�o�a��:;���B":���X��{�c�隰����MB�҇[��LJBd�!���w��Xu����~֘�5T&����\ө�C�<&��I�X�����&���o��M�:��Ը���(���Պ���k����;��)*�k�)�PLߢ�n���Z�09m2H�l���v�\���W��_c���+DtOC��p0h�J����H���c����>�*W��ҡ�M9_lScr���Z��#F;Ki4|yڰ���E���9v���䧿�<����_�Hv� ��P?����=�u��]�ͮ_W��z��i`�],��5!q�]�;���J
s۩��z('LTG���R�� KA�r&��\�Yv{�C��)nG�E#x���!�#\�U0xk�p���|� Whkv=^v#Lk�c��9��"�l=t����1_o��vM�G�ޮ�o�.,��]�]�Ch��<�R��p�^R���>l�K_/����4C{3C��Ҳ��Y���W�&u�XS�r7#{3#c;2N0M�1��;�	�x�'�O�^B?�9�`�n����n:r�C��(�
�?�j��4s'����)�W����W�f���]#�+N؇�Q�Q!u�ho!�I#�P�K�z�%�|E5M�
9*]�݇RCP���6T8
�6��i��W�v���=\z��Y��:rME�t�)���.8�9�����Lv�@K���_�AIG�8�@p�R;����W8JO8~��9�����tt��L@#����dsY��.��Թ�b:P\����ѵ�Ӫ�<�Cu��׫!���v��"Y]6��������N��e��_T�4}k��QH/u(2y|x.��j�"�nC�q��v�õ��#x�_©����H�hn�L`Ԫ/x�'�n!�N#�J���v�!v�����|��+�]��TN�Du��He����ޞO4VPd�=��!�����6է�ʺ��h��Fqǚ�@��h��lY�/�p��l�P���?�{�|h|��b�	)�{�]�����w'�Xj\�eʅ�ѳ�z���DY8ǵ�����S�B����SDK�L��^�z34<�1�wA5�l�ف)$�%�^���RZ�a5�vI�޴V����m�r�R��U8���1���PM����sQm�Ef!�^f�e�e�r�D�d���M��E�h�+D�P*X0̈́��r���tl��fL$�E�
*(�#= ����R$�v��H��2�QR�jB��((�������A��ؽ�n		W,�����v�M�Q�	�B$��á��QR��۰�4r��}�Q��c�3��J��MG�~P!D�3y�%�n�}�z:�`��V**1��쎤��IɺG+C�L�mF{����h��� �3�0��;+������g��w��CT�Ã�����g�
�B7n�=��������=���ƙ���{��{+����=�G�Gq}k��y���l��̿T�Ͷ���h�cGѕ}�f��b�?�G�[h�>ܶ�W{#z��C�_�ա �u�e�P�w�s*!O��U�J):��GiOtc74�x{P��A�S��
>�cݸ���{1S{P�7��� 馥kk�N��f���`7�]���J�~o��=�(�mL��f�
�%It�����P����P�CU��SQ��֣�=�}r�ѣN�8�l����Ү�F;�m���D\�F�t{X�vxn)����[�L��h��J�$���Eö+�u+�F��g��d��UEs���j����\���J��Ά���$
�y�q�)������D�B�<<�U�����r!�'��+jxDŽ��e��]���΁-�(���D��|(��	4�L�sԷ��*�h��&�'�ؐ*�Ւ���(�o$z(�,��{Eu^`�hd�>�u���G�����}0�u<�|�h֛�mլ���M>i�U���� JQ�����x�+��FZB���N�l��j׹�0� �D��M8A�9,������M8�˸w�H�lP�b�g�3���d�%���0��Q���d�%��aɧK]�=s�S�,�ɠKhI�T����X~2�z���,�%��WoV�Ŋz�?z�v�&�ܕ�Ч툪�QsO�i)Af�g����Q"f:�6�[�2�U�6
=�f�ތX�#���F!'��du�!��5��	S}h�4��yF-4��O(I�()�rO)�I&l�aS�r+T��--�&��@G�eR��q����19���*�fty���{x������P����/�$�<�,ܗ�t[�{��tK��;(E���p�����IǜtQ�Q���Z�&sT����|��5�b�+��Y���T.����N�<�h/�'�nW���LGC�3QQ��� �-)a���Q�X�9�|7j��P�F=?}(8�ݣ�<��(��U��^xǻ�ʌ�d�Q>�Ƹ���V&��	+m�)o�L���p���G�(�R�=Eg\���q���A<a_����<�j5JLB>�����6�%!a᮫�	[���ţ[TBC�z��|�P�Q�j������F�\����R��,gċ����$$Ե�=(i�v�`��Q�";:b7Θ��"G�Ih�
If5/��n9
>�~赨m�=��l�4��Pg/�����a��>����-�V�Q�	���K������'�%żW�h�#�r��K솎��X��%���QuK�yN<t�HB_#�Q"b�C��0K}R��$O7l�j�"���R�����t��tV�N���b�|��[XLn�6B����n�����ڵ�`.4�;�A|7xL_*g�{|��n!1�U�,N�����j����;��I����5��l�l�S�t��Ψ��Jc������1K         �   x�]�Ɏ�0���aF���=r�uIb)6��J}���L3sA��K��5V�ɥ��Q(�����Ѱ+l�l�}	�=̑B�N�٥R�^��>(�g�Ժ��)�3Z�=ieߚ\;jf���|_M\Z�<�يi�`+�iL4s^�>U�H�ctW>t>ᓃ)�]G;�lm���X,�[�n�����֜]�{z���2�}�&�ZVsؿ@�ݵ@���ȅ�T�L݌��K�ʌ��           x���[n�0E��Ud1D��u�� �긩?2�S��RM�u��	�sE^^�P��4ò|���B@h�vicW�@��G؁��VJ�F*���E</� � Y�C��	+������HUNaj��	t���-!��Ы�\%�^�q/]<��ulk�~S�:V,e�9��Z.?	C�M%'�HJ6[�!vK3�S3��<sA��>������M%�(I�e!y:�������jh���,�nE�#�2��mg���jR �%��D�Mo��s�=l���$YĐ���픍M��kSÓ��3	k(����ص���Ӝ��L�8����x�a�H,�ɬ�6��㰗�zv���*����B:V�W%��4�O��8�Mj�d��ӄ�4���p�S�p</3�޶��N�DRH=%)Wye��D8im��ss��. Z�P\����$re�&�wh�p:?w���\��G�Y���%���C���BM������/<U *�h�d�e��=�� *�+����a^e^?ĳ�/����%�w�ޣH��D�4&L&0��Y>����h�wLQ���@f'����τr�ҴXL��1�mMqi��JVJURPxh"�B��9ב�c���� }rD�|��ut�5��w�\b�<�_��ɫJS T���i�t���x�﹗{{�SL�}�ޢJ��/�E���)N��+]����L��������SO��B@����S�ܮ����U�T�t
/ev�;����J_�%sL%�+e���-�׸lC�-w�V�4��&��OOO�U�m�           x�՘I��H��Ǚ����w�j@BHB��f2���Y���"#+�rό�&��=��[���z:�Һ	r���l<�8�#;������=��Ә���mV�bAXi�k;��7v�}9!����C��u�M�Tb��\7W�����х���TZ�C�����#{�J Ϩ���B�EÇ?����!�(�:@He�D�|�>ÌN�$j�x�ж���<,�}��ϓ��d$\7���1��^���}:�m���ޗ�Fn��$ I���)�$y�}�K!��럓Ovu�q��ST�Y��v)�(naԤl�	%�<�O�^�w���b�$�~��]`]�}���ߝ�#yGN��E ��x�x�~1��Ij%�m�yβxt�EU�c�6n ߒ�Q0�S��'sn���#����;�Ȣm��zBϼ��f�oB���'��/�4K��A<�ì�B�ă���L�P0e��P�G��_a��N#ix��uS((��E�f:~����1/K� ���z��}���}}��𓐷*��8�+�E�d(j��N�'9��L	R,v���41X�J!7���(�d�fP���_�B�a�WHS�h�J�e���w��
)6p���sW�$=�P�j�"E~A�	����I�E��>2�;L�'CQ<QCO.C�Ҕb��(��)+>vή���8ٶ#_&�6o{tC'R��Tj��@r�-��A���#� M3x%T�\�y�l&)������r� 7�]}S͇����ޔ��=V����>�܂��F��6y�����D�$�5k�,��ȍ:�pY�:\��ޫ��N����b�uA����p~o��F96���;+�%���_���F�m;h�Nm�[-t��d�����̠~\Ein�!�:�ynɋN��S�}O\�6l�"&G���V�ͧ���%���c�*3PR�y�C�T�I��a@��87��dy�l���c1%;�j�E���0�Q���NIi���N����� }A��$Z9�Ѓ?�h�0�\:�!N(/�����/@�� ��	��UG43�өaw���+�R�_���Pt��4�CY̹���L.{��/�ʱ���w�rTOf?�4�t�N7D���a�����H�
|�.��훳���N+�IlBy�[G�zBiY�A��^uf������g�<$�.��+����'��I��׀��TԔ�Z/�t��B��? ����2��9+�r�5�������4Բ�iJΝ������"���%,v�F�P7�vF��������!�@�q,�x�v�Rµ�D�V�`}�q^[nI/$��y;_�l�q/�#}phkp)��K{ ��ۨyz:;.U�"]�@�K��z����4�ߠء�*�J��=��㳸t���:���T��]�]���hp���
��>q�"�
}$� W�ƀ	u%3�mfvN� �>�3�ǘ�u���Pj��` �OE��5:���Д�o.�1n���x�����G5:{�hK��9i����{�S��z����;��au�f�*n�k�Vx���O��lm�겹�� �{M˷���x��aZ�[)�,��"R6Q�,�[���ǡ��4�����2#���C���--��h����4��/�q����l6
GP�~S�3eS�0dP���M�1)�6 �Ȏֱ�5:��V��q�B�}{^<��Y��#�?�Hf���Av-ӟ8�vi�a܉�A`�z7��.Z�j��3�A��D�_��v����Xʷ�ZuOѲ�pR�����w@�{#��LU�6��6A�[���5��l��ӹ�6'*�O���gr�k>��ul��6IB϶���
ķ?��AsJ���z$�^L�.8 �:��eAά�J�O-n����HE���`^7�>�qע.�g]��Rρ�a�~�*ǅ��$=�m1�U]�
���&P��oRY��oW!o��]��)�VNH���R�I�cIe�����1��ǵ�WE�=��7��8i�]��B0�T�w��3��~2�F�(�,�럈X�<�|Q$GS��c<Ћ�)^�5�B6��*�-��4SD��a����1!�i�[�b�\[�$)K7�
�4Uх:`�׈R�2E�u��b!��[�]�lPueЗ}ܐh��۲^��m�=���g�SM^"q&�5,��6t��`ɓkt���.�&	�����u`-S,1��>��e���7*@6�$Å�'.o����VSC�h�l�)c���m�]o�w����B��-#�,e��/��|v�� |�)ȡOU�l�.�����m��{&b����m�*���W[�Q��u�}�p��=~@�bW��.v����t�^j�Dub3T7ޫb�~f/��}s�9Y/��~&�=�:Z��}��]���I%O��n����ĝ9aj���ư�H8;��y� D%n���r������AO��݃N��`��Xq���"���V	�oHܧp�կ�/�i3�S���#�e]�[�P3L��kS��:�-MէO{g���L�q5R�Q-���D�h��N�QQ�D��F���,`f�k�d�g�9��d�s�d�!k܄��9��sߓ�y������c4I�=�����];oI�5Og���#U�n����к���^�\�a�֊ӢzUd��fq��� 66�����ȟ�� �GƥΉ�<RG�٥l�X��>g��9���]��oD��K��!��j�,�M�&�b*�
�d�W�Yτ�:�3�wO3��[�pJc]��dJ��dj	�gE�g�5��O�eVl��ˊ�����W8�~�-Ԙzv��8�7U8��B۠cK�M��Ɣ:zzfќ���F^v���;Dkt���Z�f�
��$q)���L�{хwɯ(�s�`�!��CzK��|	��B��GSL�u)Պ%l$p1"���93N!���r�� h;r�����u�P��X��?��t�����.��̍|N޵6��.��ߐ �i���}��П戺|νr��)06�����J��_��TIL�\�mk3$3jj����Ӯ��E��[���	�h/�ٜ�sO>�=�J@8���!�^m2�|o�GT����X�4�)�%���#�k��6�08�����Rm����%�z�Es7��La��;ꄱr�uŧv~6��n�nP(8m�F5*n�R;���m�:�E}~J�GF��� *�����Ag��C@���P1��-]�5o�ڨ���Ǎ�����wSfhs����tzs�u� �|1��hlޭ�CPV����a�c���	#��k3!�y����o�;����01�~ם/Y�ߝB����T�լ�9��>l����>��ٞ�������9Ap`�*���B���Zw���}���{�f��of��O�H�N}mE��U�oB�g��@�_����8�g�-}��N��(�p꽁[�5��XeߑP����.���𖓾Q�Wr����ˬ�q�A����5bv��oB~4�ω���}�UWu��Y(d4K��6a&0��oE�����cB����m�T/�b��d��i{��!I���2���Ǉ�OB"������|�����9Z            x������ � �         6  x�m��r�0���S�	v���%ڡ��&tv/z#/xIl�qJ٧��	P�^1�OHGG�$h<�kt�"�U�m	��<�nI�m�/=:�:#I(��Jw9�V���@�Z]�&b/��󵈧�+���X��]�ʉ���a����fHEo���z�Dd1�^[s�Z�F���t�<':$:�V۝?��ݞ7a]A�:Ox@ßy� �g�����X�GBR��j��Ɓ�ݡ�U�^��h�m�<V�9������;�؏�q8���9�51��e܃�v^�F��ЇX�l����)���Mcy]5�Y�W%M����K����D��&�)w�q�^7��*΄w
��Ԉцȝ��ãr�6^����S5	cm���4�u�B�ۿ�@�r6�Rv��=����%e�n��2e.�����uI�X�[]<�ݐ=�<����i|�W�7��Ijq�,d�f �l*��d�59���Fsc���Hɏ l�y�6�C\r���a �M�3��;��/J�YQ*u*&�hA)F����0��蜘���$���CO$S�,�!f��]����y����4�����j}y6�         (  x��X�r�:��y
��s��� $��B�N}U.ٖ��X�6����2wL�"3!�}Z�}�t+�T�U��E�lQ��(F^*JQ&�?���y�sY�3W���z�~P4�Jax#W�2Q��Qx�.�$���ݾ#�6p�I6�7�|Q��a(�N����|�W��"/@�����כl���8�[�D��Yg|��a>m@,����9)Å�1���4�W��DD��5\'��v��3���'sM���M�y�I�ї�F��"��7����p?�r)
�����k��*�����{<�T����6 ��� �[&wl�q�H���ຊ�c^��v:١�VqkN�r�cȗ���I�o�+�"���u�<����9g?�G���$)�Y)�=~�!�y���#�0�2bmlĵ��$�R����*+��BV��<:WmR��@�D@Ȧ� |ԙEH !�̌u*�Ճ*3��ޜH2�[g=f�H,��b)|��r�!8 ��ԃ�4�<oZc#ҶV���?������/]�H-�� �p��_-d:��t��"��[�׫�˺qCEWa鏼_�K���:_`�!C�Jd<�0�;Y�������[����bxu�z��]"����V��V���>}�k�"���@܈��"�X�{����˫�Vg�%���P��X���������?�S��d.��%��Y(�C�x�F~�nPt�������h�6C�<䁟b��3�K����m�F�bZ��#����ȍ�Cb�	�!&����'Ī`X�n�t�O$���Z8�fr��Z,B73&?l���mUK��	��qY�gu������4�is�o���ϧ�кnam4HT�P��3����m�Ќ�Չ7��$LDz�>��o���u��M�CF�&ųM��a;�4_�oɉS��yl;^ ,۵B-�)[.��M�/v=|+�%)�H"�$9̘Z��3T}k�<t+v�6{�8݀��k������Z?��~[^V��a�0k�R�
Nt
̯��8����Ew�h�B4���c]=nxj7�rN,Is��>�ӹ���0�8��Zӗ�T�㙙�W��o��E��2w�Ov�	^e�B$q"�Ut�hNQ��_W��h3i�ξ�(��t9��eї(NKc&'�8�n��0Vd}3��&o�d����<�I���m��Nna����0���4˒��{x�P �����5�A��9ݝ��بl��<]�RC��R%"c*�"\�"0�CQ\(J��c�^�����D�X�n��*9m�^����Zl`�mP�V�*O�8��K��E@/3��@��W���}���jɢ^�-� �5����v;��|  a���$O���5K2=��1`K����d�ӗ��{���L�i�f������r���_��/f���	ؗ&���r�o��V�c�Nrg��`�Х�1P�WF�K	���o�%��������#�S�d��B*v�Φ���	������ �
�ﻋ�naq��_�U JbÎ�p4E��N����C���}pO�1)b�#/��4AӉ�\j�ܵxD[�rG��զ�]��Xi�1�����n�v�N؅e��6�<������q`M�d��x?�xۭ��E��$1�Rr������]׸�����P͋���^'�ê��A�?�V��U����-�*����~�X��K�B�����W�k@#8�u�W�t��U�%3Z��g��֖C������H5�(]��C'���S����$=1���0���Y}�nǂ7~	���Ĺ�p���b�{���t2?y�޲���J��}՜͞c~ou�z���w�pmX`	w2t�]�
b�3��CXp���>��F��� �hS|nH3��wDl��堇&�O��W�Y)�d��\n$�O;g���||{J�i���%�$��|-m�|Ng/;ܧ�c�y����,�IX`�ĳ�ԛ�c�5���9����o�K'&�����bv����r�2@}تzw����E������n��"Ҷ�e���%7�O��ih�DaDc����|p�x��ُ?�if�%         �  x�5�K�$1C�Y��0��}�Y���1��U��ep"�<�}�e�ߟ_�߷#�sY�F����>ߚ�I������%X���]� � �VUQ�5Tb�L�S�i�����[�K�4�cAL�UU��l�1m� %��D".�������U=�����(����gp��Gб�B	��.�]����|�Q�BN;��]V#b����!m��ژt5�K�������߸��.O�cw�],>�kB��:Q�T���b�lb
�����v�7rQ�u�7��>�P͞�}�r�}zYy�j;�SBi��b���� Ka�T�b�5���x�gj0s�搫��y������g6ȩ7Ko.M�����\�-N��f���h�%�sk�惜}��ҸK�u�ݭY��lr�9�Ԅ8Ę�Z�ȹ7,�=�@��.V��3��7^~�^oܠ����N�}ċr�O��x�ޞ�{{�)�>����%M�1�=ŏ��S|���J�����'��5���k䏵� k��@�+^��w� ��q���1d�#r��G��~�$��Qd�)���S���_H#k�G�Z���	��"��}D$Y{�L���d�R�*��d�r����H�~�H�~�H��C2E��!��� ����d�%!��}#��3�L��H�U�C2�N�L��1�����1�Z0YU$So ��@2�[D2y=!$So�T�pS���Ke�#�v�[��������~��1=         �   x�mOA�0</��4* p$&��BM�xi����5�b���6�������)�-tp��=��[;�H{�A=}�6��Z�V}���I=ø i��UKB�ɤX�϶ _H<z��F�����B2R�K�hhdQk�	9 �&��pu�=��Πr�8-��j?���~��^7e���6�ҹ,Nv�����Q�  /PY         $   x�3��I�,.I,����4��2�p3b���� ���         �  x�e��N�0��ۧ�$������JQ[� 8pY�,�8N�<=&AM([�O;�;�`�ᾰh�V��2���kܢIǇ�o����A����x�P�����S@4c���:^$l��l�	=�/:��J�6�C�z`���?��� �龁��M��"�B�=x�%�"Q�J��|��%b����u�>p��,����N1V�(UNʞ��]v£x~��@ ���ؘ�_� �7:O>��r���GC��Bɖ��׾�8��'Y�g���:�8#a�VR������A4���#���.=��XW}�A�r;R�"˼��v���G���\ݲ�6���u�5°7<
����Zb��P�1̈���lG.���5��S�p���.��5V��n���� �O         �   x�U�K��0D��0#���)r����G��R�~P��X�]U��F3Y��䑕5�<�a�8he�b'�����5L�%�h� #�ґ�*��Q��mtP�6��d�	5Ɂ>��t��0_�
sb�X�����$nF��s��F�X���t��X�:%q/.���~ε���9(�����.҉3�g�~�>�z�zy�_h�ݙ�O��9��z�� ��k�n��,sY�ߟ��� S8�!         �  x�mSAn�0<ӯ``��\�"�{�S/��X�e)�dzQ�}C��.e;�C� 3;;ÑF�F\k��(�Dr�Vʁ�h���ו}�6r��ܜ&��(�7~ߍ�|Ue�AWz%��fPYK�	d1,��d��8���(��u�)�xm"뭨n@x
dA;K���2�;��@Q�h�r�O���{s���&M��/��q�"pDȫ �m�V�gS�K��<�CI2��iL���u�
��l��,�vf0��']$ U^��Z�S���N��p��4<�0�j�'��Oq���]�C��qRW���QQ��[I��C��b��w���Ҩ���ܵȏ6��o�z��q�d3�i�/�KsS��7��Џ�
�N��E�JkcЕ�.�s�9�������#��h[	�*}�Ko�:tusdŦ�Eo8��0j����b�b�b3䜿}������0+��?q]��d��.Ɇ�zy,��W�����e�tqFP
a+��یj�Z�����      !   )   x�3�LI�K�M5uH�M���K���,N�L,������ ��	^      #   g   x�5���0��R���g҇G���(x{�6�%���I1[oVz�R�R"['�5�r]�c���Pa�ik:�|��f"f�
���Ӡl:4�	�O�CD�"      %   &   x�3�,N�L,�4��2��H������� rc���� }�     