docker build -t server-side .
if [ "$(docker ps -q -f name="serverside")" ]; then
 docker stop serverside
 docker rm serverside
fi
docker run --name serverside -d -p 8899:80 server-side
