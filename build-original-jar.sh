jenv global 21
mvn clean package
docker build -t myapp:1.0 .