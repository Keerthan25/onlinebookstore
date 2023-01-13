FROM ubuntu 
COPY . /app
WORKDIR /app
RUN apt update && apt install maven -y
EXPOSE 8083
CMD mvn clean install
