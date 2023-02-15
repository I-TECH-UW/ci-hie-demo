use openmrs;
--
-- Definition of table `fhir_patient_identifier_system`
--
DROP TABLE IF EXISTS `fhir_patient_identifier_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fhir_patient_identifier_system` (
  `fhir_patient_identifier_system_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_identifier_type_id` int(11) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `retired` tinyint(1) NOT NULL DEFAULT '0',
  `retired_by` int(11) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  `uuid` varchar(38) NOT NULL,
  PRIMARY KEY (`fhir_patient_identifier_system_id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `fhir_patient_identifier_system_patient_identifier_type_fk` (`patient_identifier_type_id`),
  KEY `fhir_patient_identifier_system_creator_fk` (`creator`),
  KEY `fhir_patient_identifier_system_changed_by_fk` (`changed_by`),
  KEY `fhir_patient_identifier_system_retired_by_fk` (`retired_by`),
  CONSTRAINT `fhir_patient_identifier_system_changed_by_fk` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fhir_patient_identifier_system_creator_fk` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fhir_patient_identifier_system_patient_identifier_type_fk` FOREIGN KEY (`patient_identifier_type_id`) REFERENCES `patient_identifier_type` (`patient_identifier_type_id`),
  CONSTRAINT `fhir_patient_identifier_system_retired_by_fk` FOREIGN KEY (`retired_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fhir_patient_identifier_system` (`fhir_patient_identifier_system_id`,`patient_identifier_type_id`,`url`,`name`,`description`,`creator`,`date_created`,`retired`,`retired_by`,`date_retired`,`retire_reason`,`changed_by`,`date_changed`,`uuid`)
VALUES ('1','3','http://clientregistry.org/artnumber','ART Number','ART Number',1,'2013-12-27 00:00:00',0,NULL,NULL,NULL,NULL,NULL,'d5efc10e-bf9c-4813-96ef-2969cec85cbb'),
    ('2','6','http://cote.divore/ext/identifier/UPI','UPI','UPI',1,'2013-12-27 00:00:00',0,NULL,NULL,NULL,NULL,NULL,'b4a56d59-42b2-4a4a-86cc-0fb3188bca11'),('3','1','http://tap-cdi.openelis.org/ext/identifier/openmrs-id','openmrs-id','openmrs-id',1,'2013-12-27 00:00:00',0,NULL,NULL,NULL,NULL,NULL,'17b7af60-bc69-4c1c-867e-762219f2ab19');