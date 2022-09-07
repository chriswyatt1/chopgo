docker build -t test .
docker tag test chriswyatt/chopgo
docker login
docker push chriswyatt/chopgo