CREATE TABLE "TRANSPERANCY_DB".messeges
(
    global_mesid bigserial NOT NULL,
    sender_uid bigint NOT NULL,
    group_id bigint NOT NULL,
    internal_id smallint NOT NULL,
    sym_key_id smallint NOT NULL,
    body text NOT NULL,
    PRIMARY KEY (global_mesid),
    CONSTRAINT "Sender" FOREIGN KEY (sender_uid)
        REFERENCES "TRANSPERANCY_DB".users (uid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS "TRANSPERANCY_DB".messeges
    OWNER to postgres;