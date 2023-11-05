docker build --network host -t client-side .
if [ "$(docker ps -q -f name="clientside")" ]; then
 docker stop clientside
 docker rm clientside
fi
docker run --name clientside -d client-side
