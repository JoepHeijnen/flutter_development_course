rm -r ../lib/generated
java -jar openapi-generator-cli-6.0.0-SNAPSHOT.jar generate -i parro.yaml -g dart -c open-generator-config.yaml --global-property models,supportingFiles --type-mappings=Double=num --enable-post-process-file
