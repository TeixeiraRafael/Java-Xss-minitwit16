
FROM maven:3.8.6-openjdk-8

COPY . /app

WORKDIR /app
RUN mvn verify clean --fail-never 

RUN mvn -v
RUN mvn clean install -DskipTests

CMD ["mvn", "compile", "exec:java"]