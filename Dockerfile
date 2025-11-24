# 1단계: Maven 빌드
FROM maven:3.9.2-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package

# 2단계: Tomcat 배포
FROM tomcat:9.0
COPY --from=build /app/target/InClassDemo4444-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh", "run"]
