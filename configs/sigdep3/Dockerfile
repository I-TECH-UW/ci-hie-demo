FROM partnersinhealth/openmrs-server:latest
COPY ./distribution/openmrs_modules/ /openmrs/distribution/openmrs_modules
RUN wget https://sourceforge.net/projects/openmrs/files/releases/OpenMRS_Platform_2.3.3/openmrs.war \
    -P /openmrs/distribution/openmrs_webapps/ --no-check-certificate
