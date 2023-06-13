-- Table: TRANSPERANCY_DB.messeges

-- DROP TABLE IF EXISTS "TRANSPERANCY_DB".messeges;

CREATE TABLE IF NOT EXISTS "TRANSPERANCY_DB".messeges
(
    global_mesid bigint NOT NULL DEFAULT nextval('"TRANSPERANCY_DB".messeges_global_mesid_seq'::regclass),
    sender_uid integer NOT NULL,
    group_id integer NOT NULL,
    internal_id smallint NOT NULL,
    sym_key_id integer,
    body text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT messeges_pkey PRIMARY KEY (global_mesid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "TRANSPERANCY_DB".messeges
    OWNER to postgres;