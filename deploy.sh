set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker tag jchorl/pod2daemon-flexvol:latest-arm jchorl/pod2daemon-flexvol:latest
docker push jchorl/pod2daemon-flexvol:latest
