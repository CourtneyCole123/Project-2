-- Table: public.disasters

-- DROP TABLE IF EXISTS public.disasters;

CREATE TABLE IF NOT EXISTS public.disasters
(
    id integer NOT NULL DEFAULT nextval('disasters_id_seq'::regclass),
    disaster_name character varying COLLATE pg_catalog."default" NOT NULL,
    disaster_type character varying COLLATE pg_catalog."default" NOT NULL,
    start_date date,
    end_date date,
    adjusted_cost integer,
    unadjusted_cost integer,
    deaths integer,
    date_category character varying COLLATE pg_catalog."default",
    CONSTRAINT disasters_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.disasters
    OWNER to postgres;