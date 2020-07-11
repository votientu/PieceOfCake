# Download gitlab docker image

sudo docker pull gitlab/gitlab-ce

# For Linux users, set the path to /srv/gitlab:

export GITLAB_HOME=/srv/gitlab

# You can fine tune these directories to meet your requirements. Once you’ve set up the GITLAB_HOME variable, you can run the image: 

sudo docker run --detach \
  --hostname gitlab.example.com \
  --publish 443:443 --publish 80:80 --publish 22:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest

  sudo docker logs -f gitlab