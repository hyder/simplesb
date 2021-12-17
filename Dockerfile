# Copyright (C) 2020, 2021, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

FROM container-registry.oracle.com/java/jdk:latest

# Add THIRD_PARTY_LICENSES.txt to the image as /licenses
COPY LICENSE.txt /license/
COPY THIRD_PARTY_LICENSES.txt /license/

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
