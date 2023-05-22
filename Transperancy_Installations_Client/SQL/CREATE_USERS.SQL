CREATE TABLE "TRANSPERANCY_DB"."USERS"
(
    userid bigint[] NOT NULL,
    public_key text NOT NULL,
    group_ids bigint[],
    PRIMARY KEY (userid)
);

ALTER TABLE IF EXISTS "TRANSPERANCY_DB"."USERS"
    OWNER to postgres;

COMMENT ON TABLE "TRANSPERANCY_DB"."USERS"
    IS 'Contains user UIDs and Public Keys as well as groups they belong to';