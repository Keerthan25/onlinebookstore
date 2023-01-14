FROM maven:amazoncorretto as build
WORKDIR /app
COPY . .
RUN mvn clean install
EXPOSE 8080

FROM adhig93/tomcat-conf
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/
