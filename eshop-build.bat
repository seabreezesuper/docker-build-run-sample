rem -------------------------------------------------------------------  
rem                    build all services
rem -------------------------------------------------------------------  
rem >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
copy E:\workspace\eshop-server\target\eshop-server-0.0.1-SNAPSHOT.jar F:\eshop\docker-compose启动\eshop-server-0.0.1-SNAPSHOT.jar
ping -n 2 127.1>nul
copy E:\workspace\eshop-userservice\target\eshop-userservice-0.0.1-SNAPSHOT.jar F:\eshop\docker-compose启动\eshop-userservice-0.0.1-SNAPSHOT.jar
ping -n 2 127.1>nul
copy E:\workspace\eshop-productservice\target\eshop-productservice-0.0.1-SNAPSHOT.jar F:\eshop\docker-compose启动\eshop-productservice-0.0.1-SNAPSHOT.jar
ping -n 2 127.1>nul
copy E:\workspace\eshop-orderservice\target\eshop-orderservice-0.0.1-SNAPSHOT.jar F:\eshop\docker-compose启动\eshop-orderservice-0.0.1-SNAPSHOT.jar
ping -n 2 127.1>nul
start cmd /k  "docker build -f server/Dockerfile -t eshop-server:v1 ."
ping -n 15 127.1>nul
start cmd /k  "docker build -f userservice/Dockerfile -t eshop-userservice:v1 ."
ping -n 15 127.1>nul
start cmd /k  "docker build -f orderservice/Dockerfile -t eshop-orderservice:v1 ."
ping -n 15 127.1>nul
start cmd /k  "docker build -f productservice/Dockerfile -t eshop-productservice:v1 ."
ping -n 15 127.1>nul
pause 
rem <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 