FROM dockerfile/java
ADD dynamodb_local.tar.gz /data
ENTRYPOINT ["/usr/bin/java", "-Djava.library.path=./DynamoDBLocal_lib", "-jar", "DynamoDBLocal.jar"]
