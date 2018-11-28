-- Generated by Oracle SQL Developer Data Modeler 18.2.0.179.0806
--   at:        2018-11-28 12:48:14 CET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE circuit (
    circuit_id         INTEGER NOT NULL,
    name               VARCHAR2(200 CHAR) NOT NULL,
    country            VARCHAR2(200 CHAR) NOT NULL,
    corners            INTEGER NOT NULL,
    length             INTEGER NOT NULL,
    viewers_capacity   INTEGER,
    car_capacity       INTEGER
);

ALTER TABLE circuit ADD CONSTRAINT circuit_pk PRIMARY KEY ( circuit_id );

CREATE TABLE circuit_sponsor (
    sponsor_sponsor_id   INTEGER NOT NULL,
    circuit_circuit_id   INTEGER NOT NULL
);

ALTER TABLE circuit_sponsor ADD CONSTRAINT circuit_sponsor_pk PRIMARY KEY ( sponsor_sponsor_id,
                                                                            circuit_circuit_id );

CREATE TABLE driver (
    driver_id     INTEGER NOT NULL,
    first_name    VARCHAR2(200 CHAR) NOT NULL,
    last_name     VARCHAR2(200 CHAR) NOT NULL,
    gender        VARCHAR2(200 CHAR) NOT NULL,
    birth_date    DATE NOT NULL,
    nationality   VARCHAR2(200 CHAR) NOT NULL,
    website_url   VARCHAR2(200 CHAR)
);

ALTER TABLE driver ADD CONSTRAINT driver_pk PRIMARY KEY ( driver_id );

CREATE TABLE driver_driver_group (
    driver_driver_id               INTEGER NOT NULL,
    driver_group_driver_group_id   INTEGER NOT NULL
);

ALTER TABLE driver_driver_group ADD CONSTRAINT driver_driver_group_pk PRIMARY KEY ( driver_driver_id,
                                                                                    driver_group_driver_group_id );

CREATE TABLE driver_group (
    driver_group_id      INTEGER NOT NULL,
    racecar_racecar_id   INTEGER NOT NULL
);

ALTER TABLE driver_group ADD CONSTRAINT driver_group_pk PRIMARY KEY ( driver_group_id );

CREATE TABLE driver_sponsor (
    driver_driver_id     INTEGER NOT NULL,
    sponsor_sponsor_id   INTEGER NOT NULL
);

ALTER TABLE driver_sponsor ADD CONSTRAINT driver_sponsor_pk PRIMARY KEY ( driver_driver_id,
                                                                          sponsor_sponsor_id );

CREATE TABLE mechanic (
    mechanic_id   INTEGER NOT NULL,
    first_name    VARCHAR2(200 CHAR) NOT NULL,
    last_name     VARCHAR2(200 CHAR) NOT NULL
);

ALTER TABLE mechanic ADD CONSTRAINT mechanic_pk PRIMARY KEY ( mechanic_id );

CREATE TABLE mechanic_racecar (
    racecar_racecar_id     INTEGER NOT NULL,
    mechanic_mechanic_id   INTEGER NOT NULL
);

ALTER TABLE mechanic_racecar ADD CONSTRAINT mechanic_racecar_pk PRIMARY KEY ( racecar_racecar_id,
                                                                              mechanic_mechanic_id );

CREATE TABLE participation (
    participation_id               INTEGER NOT NULL,
    driver_group_driver_group_id   INTEGER NOT NULL,
    qualifying_session_id          INTEGER NOT NULL,
    race_session_id                INTEGER NOT NULL,
    registration_date              DATE NOT NULL
);

ALTER TABLE participation ADD CONSTRAINT participation_pk PRIMARY KEY ( participation_id );

CREATE TABLE qualifying (
    session_id      INTEGER NOT NULL,
    true_duration   INTEGER NOT NULL
);

ALTER TABLE qualifying ADD CONSTRAINT qualifying_pk PRIMARY KEY ( session_id );

CREATE TABLE race (
    session_id      INTEGER NOT NULL,
    formation_lap   CHAR(1) NOT NULL,
    laps            INTEGER NOT NULL
);

ALTER TABLE race ADD CONSTRAINT race_pk PRIMARY KEY ( session_id );

CREATE TABLE racecar (
    racecar_id      INTEGER NOT NULL,
    manufacturer    VARCHAR2(200 CHAR) NOT NULL,
    type            VARCHAR2(200 CHAR) NOT NULL,
    full_name       VARCHAR2(200 CHAR) NOT NULL,
    "number"        INTEGER NOT NULL,
    class           VARCHAR2(200 CHAR) NOT NULL,
    power           INTEGER NOT NULL,
    weight          INTEGER NOT NULL,
    fuel_tank       INTEGER NOT NULL,
    front_tyres     VARCHAR2(50 CHAR),
    back_tyres      VARCHAR2(50 CHAR),
    engine_layout   VARCHAR2(50 CHAR),
    displacement    INTEGER,
    length          INTEGER,
    width           INTEGER,
    wheelbase       INTEGER,
    team_team_id    INTEGER NOT NULL
);

ALTER TABLE racecar ADD CONSTRAINT racecar_pk PRIMARY KEY ( racecar_id );

CREATE TABLE results (
    best_qualifying_laptime          VARCHAR2(100 CHAR) NOT NULL,
    starting_position                INTEGER NOT NULL,
    pits_count                       INTEGER NOT NULL,
    final_position                   INTEGER,
    points                           INTEGER,
    incident_count                   INTEGER,
    participation_participation_id   INTEGER NOT NULL
);

ALTER TABLE results ADD CONSTRAINT results_pk PRIMARY KEY ( participation_participation_id );

CREATE TABLE "Session" (
    session_id           INTEGER NOT NULL,
    name                 VARCHAR2(200 CHAR) NOT NULL,
    begin_date           DATE NOT NULL,
    end_date             DATE NOT NULL,
    circuit_circuit_id   INTEGER NOT NULL,
    session_type         VARCHAR2(10) NOT NULL
);

ALTER TABLE "Session"
    ADD CONSTRAINT ch_inh_session CHECK ( session_type IN (
        'Qualifying',
        'Race'
    ) );

ALTER TABLE "Session" ADD CONSTRAINT session_pk PRIMARY KEY ( session_id );

CREATE TABLE sponsor (
    sponsor_id   INTEGER NOT NULL,
    name         VARCHAR2(200 CHAR) NOT NULL,
    website      VARCHAR2(200 CHAR)
);

ALTER TABLE sponsor ADD CONSTRAINT sponsor_pk PRIMARY KEY ( sponsor_id );

CREATE TABLE team (
    team_id           INTEGER NOT NULL,
    name              VARCHAR2(200 CHAR) NOT NULL,
    foundation_date   DATE NOT NULL,
    website_url       VARCHAR2(200 CHAR)
);

ALTER TABLE team ADD CONSTRAINT team_pk PRIMARY KEY ( team_id );

ALTER TABLE circuit_sponsor
    ADD CONSTRAINT circuit_sponsor_circuit_fk FOREIGN KEY ( circuit_circuit_id )
        REFERENCES circuit ( circuit_id );

ALTER TABLE circuit_sponsor
    ADD CONSTRAINT circuit_sponsor_sponsor_fk FOREIGN KEY ( sponsor_sponsor_id )
        REFERENCES sponsor ( sponsor_id );

ALTER TABLE driver_driver_group
    ADD CONSTRAINT driver_driver_group_dg_fk FOREIGN KEY ( driver_group_driver_group_id )
        REFERENCES driver_group ( driver_group_id );

ALTER TABLE driver_driver_group
    ADD CONSTRAINT driver_driver_group_driver_fk FOREIGN KEY ( driver_driver_id )
        REFERENCES driver ( driver_id );

ALTER TABLE driver_group
    ADD CONSTRAINT driver_group_racecar_fk FOREIGN KEY ( racecar_racecar_id )
        REFERENCES racecar ( racecar_id );

ALTER TABLE driver_sponsor
    ADD CONSTRAINT driver_sponsor_driver_fk FOREIGN KEY ( driver_driver_id )
        REFERENCES driver ( driver_id );

ALTER TABLE driver_sponsor
    ADD CONSTRAINT driver_sponsor_sponsor_fk FOREIGN KEY ( sponsor_sponsor_id )
        REFERENCES sponsor ( sponsor_id );

ALTER TABLE mechanic_racecar
    ADD CONSTRAINT mechanic_racecar_mechanic_fk FOREIGN KEY ( mechanic_mechanic_id )
        REFERENCES mechanic ( mechanic_id );

ALTER TABLE mechanic_racecar
    ADD CONSTRAINT mechanic_racecar_racecar_fk FOREIGN KEY ( racecar_racecar_id )
        REFERENCES racecar ( racecar_id );

ALTER TABLE participation
    ADD CONSTRAINT participation_driver_group_fk FOREIGN KEY ( driver_group_driver_group_id )
        REFERENCES driver_group ( driver_group_id );

ALTER TABLE participation
    ADD CONSTRAINT participation_qualifying_fk FOREIGN KEY ( qualifying_session_id )
        REFERENCES qualifying ( session_id );

ALTER TABLE participation
    ADD CONSTRAINT participation_race_fk FOREIGN KEY ( race_session_id )
        REFERENCES race ( session_id );

ALTER TABLE qualifying
    ADD CONSTRAINT qualifying_session_fk FOREIGN KEY ( session_id )
        REFERENCES "Session" ( session_id );

ALTER TABLE race
    ADD CONSTRAINT race_session_fk FOREIGN KEY ( session_id )
        REFERENCES "Session" ( session_id );

ALTER TABLE racecar
    ADD CONSTRAINT racecar_team_fk FOREIGN KEY ( team_team_id )
        REFERENCES team ( team_id );

ALTER TABLE results
    ADD CONSTRAINT results_participation_fk FOREIGN KEY ( participation_participation_id )
        REFERENCES participation ( participation_id );

ALTER TABLE "Session"
    ADD CONSTRAINT session_circuit_fk FOREIGN KEY ( circuit_circuit_id )
        REFERENCES circuit ( circuit_id );

CREATE OR REPLACE TRIGGER arc_fkarc_1_qualifying BEFORE
    INSERT OR UPDATE OF session_id ON qualifying
    FOR EACH ROW
DECLARE
    d   VARCHAR2(10);
BEGIN
    SELECT
        a.session_type
    INTO d
    FROM
        "Session" a
    WHERE
        a.session_id =:new.session_id;

    IF ( d IS NULL OR d <> 'Qualifying' ) THEN
        raise_application_error(-20223,'FK Qualifying_Session_FK in Table Qualifying violates Arc constraint on Table "Session" - discriminator column Session_TYPE doesn''t have value ''Qualifying'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_fkarc_1_race BEFORE
    INSERT OR UPDATE OF session_id ON race
    FOR EACH ROW
DECLARE
    d   VARCHAR2(10);
BEGIN
    SELECT
        a.session_type
    INTO d
    FROM
        "Session" a
    WHERE
        a.session_id =:new.session_id;

    IF ( d IS NULL OR d <> 'Race' ) THEN
        raise_application_error(-20223,'FK Race_Session_FK in Table Race violates Arc constraint on Table "Session" - discriminator column Session_TYPE doesn''t have value ''Race'''
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            16
-- CREATE INDEX                             0
-- ALTER TABLE                             34
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           2
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0