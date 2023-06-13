-- Table: TRANSPERANCY_DB.users

-- DROP TABLE IF EXISTS "TRANSPERANCY_DB".users;

CREATE TABLE IF NOT EXISTS "TRANSPERANCY_DB".users
(
    uid integer NOT NULL DEFAULT nextval('"TRANSPERANCY_DB".users_uid_seq'::regclass),
    public_key text COLLATE pg_catalog."default" NOT NULL,
    group_ids integer[],
    user_token bigint,
    CONSTRAINT users_pkey PRIMARY KEY (uid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "TRANSPERANCY_DB".users
    OWNER to postgres;

COMMENT ON TABLE "TRANSPERANCY_DB".users
    IS 'Contains user UIDs and Public Keys as well as groups they belong to';