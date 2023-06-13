-- Table: TRANSPERANCY_DB.symkeys

-- DROP TABLE IF EXISTS "TRANSPERANCY_DB".symkeys;

CREATE TABLE IF NOT EXISTS "TRANSPERANCY_DB".symkeys
(
    symkey_id integer NOT NULL DEFAULT nextval('"TRANSPERANCY_DB".symkeys_symkey_id_seq'::regclass),
    group_id integer,
    uid integer NOT NULL,
    body text COLLATE pg_catalog."default",
    CONSTRAINT symkeys_pkey PRIMARY KEY (symkey_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "TRANSPERANCY_DB".symkeys
    OWNER to postgres;

COMMENT ON TABLE "TRANSPERANCY_DB".symkeys
    IS 'contains encrypted symmetric keys';