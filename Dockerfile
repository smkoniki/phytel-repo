FROM ibmcom/ibm-fhir-server:4.3.0
USER root
RUN yum update -y
COPY server.xml /opt/ol/wlp/usr/servers/fhir-server/server.xml

COPY tenants/default/fhir-server-config.json /opt/ol/wlp/usr/servers/fhir-server/config/default/fhir-server-config.json
RUN mkdir /opt/ol/wlp/usr/servers/fhir-server/config/ACME
RUN mkdir /opt/ol/wlp/usr/servers/fhir-server/config/acmeTwo


COPY  tenants/acme/fhir-server-config.json /opt/ol/wlp/usr/servers/fhir-server/config/ACME/fhir-server-config.json

COPY  tenants/acmetwo/fhir-server-config.json /opt/ol/wlp/usr/servers/fhir-server/config/acmeTwo/fhir-server-config.json


COPY common-fhir-server-extensions-4.2.2-SNAPSHOT.jar /opt/ol/wlp/usr/servers/fhir-server/userlib/common-fhir-server-extensions-4.2.2-SNAPSHOT.jar

#Search Parameters
COPY searchParams/extension-search-parameters.json /opt/ol/wlp/usr/servers/fhir-server/config/default/extension-search-parameters.json


