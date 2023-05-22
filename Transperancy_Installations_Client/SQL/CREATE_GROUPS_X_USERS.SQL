CREATE TABLE "TRANSPERANCY_DB".usersxgroups
(
    uid bigint,
    groupid bigint,
    PRIMARY KEY (uid, groupid),
    CONSTRAINT uid FOREIGN KEY (uid)
        REFERENCES "TRANSPERANCY_DB".users (uid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT group_id FOREIGN KEY (groupid)
        REFERENCES "TRANSPERANCY_DB".groups (group_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS "TRANSPERANCY_DB".usersxgroups
    OWNER to postgres;