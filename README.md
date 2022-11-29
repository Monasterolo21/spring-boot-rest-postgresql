# TAASSpringbootPostgresDocker
 

modify application.properties with correct login and PWD for Postgres

Position in project directory root

 ./mvnw -DskipTests=true clean package

docker-compose build && docker-compose up 

docker compose up is used to start the application

http://localhost:8080/ or using Postman:
 get: http://localhost:8080/api/v1/customers
 
 
 http://localhost:8080/api/v1/customers/create 
 Body: 
 {
 "name": "renata",
 "age": 62,
 "active": true,
 "date": "2022-12-25" 
   
}
