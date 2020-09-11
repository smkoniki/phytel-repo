RELEASE_VERSION=4.2.2-SNAPSHOT
echo "Downloading Jars From JFrog Artifactory"
jarfile=( common-fhir-server-extensions )
            
echo $jarfile
echo "curl -u ${ARTIFACTORY_USER_NAME}:${ARTIFACTORY_API_KEY} -O ${JFROG_ARTIFACTORY}/${jarfile}-${RELEASE_VERSION}.jar"
curl -u ${ARTIFACTORY_USER_NAME}:${ARTIFACTORY_API_KEY} -O "${JFROG_ARTIFACTORY}/${jarfile}-${RELEASE_VERSION}.jar"

pwd
ls -ltr

