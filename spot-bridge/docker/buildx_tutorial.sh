
docker buildx create --name nimbus-builder 
docker buildx use nimbus-builder
docker run --privileged --rm tonistiigi/binfmt --install all
docker buildx inspect --bootstrap


docker buildx build --platform linux/amd64,linux/arm64 -t cognimbus/spot_ws:latest . --push .






