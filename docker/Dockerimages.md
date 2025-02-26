## Manual Image Creation and Container Deployment in Azure DevOps
* setting up Docker installation in ubuntu vm
* run the dotnet application and publish it in local vm
* create a Dockerfile


### create a Azure Container registry/dockerhub,login and push the image to acr

az acr login --name <acr-name>
docker tag dotnetapp <acr url>/reponame
docker push <acr url>/reponame

### push docker image from local laptop to dockerhub
* login hub.docker
* docker login
* username: shakirdocker
* pwd:*******


##  Build docker image from Dockerfile
PS D:\dotnet-sample-webapp\dotnetsample-app> docker build -t dotnetapp .

### Create a tag for dotnetapp with repository mydotnetapp

```sh
PS D:\dotnet-sample-webapp\dotnetsample-app> docker tag dotnetapp shakirdocker/mydotnetapp

PS D:\dotnet-sample-webapp\dotnetsample-app> docker images
REPOSITORY                        TAG       IMAGE ID       CREATED          SIZE
dotnetapp                         latest    35106557ca3a   9 minutes ago    226MB
shakirdocker/mydotnetapp          latest    35106557ca3a   9 minutes ago    226MB
dotnetsampleapp                   dev       bdc6d179f253   23 minutes ago   217MB
mcr.microsoft.com/dotnet/aspnet   8.0       fe62ef51bc06   26 hours ago     217MB
nginx                             latest    97662d24417b   2 weeks ago      192MB
kindest/node                      <none>    529a3cc5dfdd   6 months ago     977MB

PS D:\dotnet-sample-webapp\dotnetsample-app> docker push shakirdocker/mydotnetapp

Using default tag: latest
The push refers to repository [docker.io/shakirdocker/mydotnetapp]

