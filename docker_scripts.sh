#!/bin/bash

if [ "$1" = "build_image" ]; then

docker build -t nextjs-docker-template:latest .

elif [ "$1" = "remove_image" ]; then

docker rmi -f nextjs-docker-template:latest

elif [ "$1" = "build_container" ]; then

docker run \
--restart unless-stopped \
-d \
--name nextjs-docker-template \
-p 3622:3622 \
nextjs-docker-template:latest

elif [ "$1" = "remove_container" ]; then

docker rm -f nextjs-docker-template

elif [ "$1" = "see_logs" ]; then

docker logs -f nextjs-docker-template

elif [ "$1" = "enter_container" ]; then

docker exec -it nextjs-docker-template /bin/bash

fi
