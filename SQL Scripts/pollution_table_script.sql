-- Table: public.pollution

-- DROP TABLE IF EXISTS public.pollution;

CREATE TABLE IF NOT EXISTS public.pollution
(
    id integer NOT NULL DEFAULT nextval('pollution_id_seq'::regclass),
    source character varying COLLATE pg_catalog."default",
    country character varying COLLATE pg_catalog."default",
    parameter character varying COLLATE pg_catalog."default",
    measurement_in_ppm character varying COLLATE pg_catalog."default",
    last_update character varying COLLATE pg_catalog."default",
    CONSTRAINT pollution_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.pollution
    OWNER to postgres;