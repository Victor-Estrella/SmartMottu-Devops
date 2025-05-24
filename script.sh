#!/bin/bash

az group create --name rg-smartmottu --location brazilsouth

az vm create \
--resource-group rg-smartmottu \
--name vm-smartmottu \
--image Ubuntu2204 \
--size Standard_B2s \
--public-ip-address pip-ubuntu \
--authentication-type password \
--admin-username smart \
--admin-password Fiap@2tdsvms

az vm open-port --resource-group rg-smartmottu --name vm-smartmottu --port 8080
