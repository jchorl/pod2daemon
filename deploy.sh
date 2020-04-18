set -eux

echo "$2" | docker login -u "$1" --password-stdin

docker images

docker push jchorl/pod2daemon-flexvol:latest-arm
