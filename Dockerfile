# This Dockerfile is used to create an Docker image
# after a build is produced and tested by Azure Pipelines
# See http://docs.microsoft.com/azure/devops/pipelines/languages/docker for more information

# Create a container with the compiled asp.net core app
FROM microsoft/dotnet:2.1-aspnetcore-runtime-bionic-arm32v7

# App listen on port 80
EXPOSE 80

# Create app directory
WORKDIR /app

# Copy files from the artifact staging folder on agent
COPY ./out .

ENTRYPOINT ["dotnet", "JuszczakTech.Server.dll"]
