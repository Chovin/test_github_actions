# default to command line input

echo "===="
echo $SSH_ORIGINAL_COMMAND
echo "===="

# TOKEN=$1
# if [ -z "$SSH_ORIGINAL_COMMAND" ]; then
#     # split on space
#     arr=($SSH_ORIGINAL_COMMAND)
#     TOKEN=${arr[1]}
# fi

echo "===="
echo $TOKEN
echo "===="

# login to github container registry
docker login ghcr.io -u $ -p ${TOKEN}

# TODO: change hardcoded path later
cd /home/ubuntu/test_github_actions

# update source just cause
git pull

# stop containers so we can remove the local image
# make stop-production

# remove local image
# docker rmi ghcr.io/tropicode-guam/blue-guam-frontend:latest

# download docker image
docker pull ghcr.io/chovin/test_github_actions:latest

docker compose -f docker/production/docker-compose.yml up -d
