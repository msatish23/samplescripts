#!/bin/bash

sudo docker images
az login --identity -u /subscriptions/9540b342-9f94-4dd9-9eca-0698dda0107c/resourceGroups/cloudengg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/cloudengg
az acr login --name cloudengg
docker run -p 8081:80 -d cloudengg.azurecr.io/nginxdemos:v1
