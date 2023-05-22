CREATE TABLE "TRANSPERANCY_DB".groups
(
    group_id bigint NOT NULL,
    users bigint[] NOT NULL,
    symkeys text[],
    PRIMARY KEY (group_id)
);

ALTER TABLE IF EXISTS "TRANSPERANCY_DB".groups
    OWNER to postgres;