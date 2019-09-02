export NEW_VERSION_A=v0.12
export NEW_VERSION_B=v0.9

docker build -t eliudarudo/go-simple-events-service-a:dev -t eliudarudo/go-simple-events-service-a:$NEW_VERSION_A -f ../github.com/eliudarudo/serviceA/Dockerfile ../github.com/eliudarudo/serviceA
docker build -t eliudarudo/go-simple-events-service-b:dev -t eliudarudo/go-simple-events-service-b:$NEW_VERSION_B -f ../github.com/eliudarudo/serviceB/Dockerfile ../github.com/eliudarudo/serviceB

docker push eliudarudo/go-simple-events-service-a:dev &&  docker push eliudarudo/go-simple-events-service-a:$NEW_VERSION_A
docker push eliudarudo/go-simple-events-service-b:dev &&  docker push eliudarudo/go-simple-events-service-b:$NEW_VERSION_B