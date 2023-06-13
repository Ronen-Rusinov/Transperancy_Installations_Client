-- Table: TRANSPERANCY_DB.groups

-- DROP TABLE IF EXISTS "TRANSPERANCY_DB".groups;

CREATE TABLE IF NOT EXISTS "TRANSPERANCY_DB".groups
(
    group_id integer NOT NULL DEFAULT nextval('"TRANSPERANCY_DB".groups_group_id_seq'::regclass),
    users integer[] NOT NULL,
    "SymKeyIds" integer[],
    CONSTRAINT groups_pkey PRIMARY KEY (group_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "TRANSPERANCY_DB".groups
    OWNER to postgres;