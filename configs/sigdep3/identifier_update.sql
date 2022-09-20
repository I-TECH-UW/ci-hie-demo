USE openmrs;
INSERT INTO `fhir_patient_identifier_system` (
        `fhir_patient_identifier_system_id`,
        `patient_identifier_type_id`,
        `url`,
        `name`,
        `description`,
        `creator`,
        `date_created`,
        `retired`,
        `retired_by`,
        `date_retired`,
        `retire_reason`,
        `changed_by`,
        `date_changed`,
        `uuid`
    )
VALUES (
        '1',
        '3',
        'http://clientregistry.org/artnumber',
        'ART Number',
        'ART Number',
        1,
        '2013-12-27 00:00:00',
        0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'd5efc10e-bf9c-4813-96ef-2969cec85cbb'
    );