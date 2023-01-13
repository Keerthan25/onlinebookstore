FROM ubuntu 
COPY . /app
WORKDIR /app
RUN apt update && apt install maven -y
CMD mvn clean install
