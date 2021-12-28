# Tutorial para levantar un clúster básico en GKE

## Pre-requisitos

Tener cuenta en Google Cloud con la api de Kubernetes habilitada, además tener los permisos para crear y destruir clúster

Tener instalador las siguientes herramientas:
* terraform
* gcloud
* kubectl
* helm

Tener archivo con JSON de servicio Google IAM `google_credentials.json` en la carpeta `secure`

## Clúster

Para levantar el clúster, ir a la carpeta `cluster` y ejecutar los comandos: 
```bash
terraform init
terraform plan
terraform apply
```
> Puedes cambiar las variables en el archivo `variables.tf` para definir nombre de cluster, tamaño y configuraciones

Una vez creado el clúster necesitamos obtener las configuraciones del kubernetes:
```
gcloud container clusters get-credentials production --zone us-central1-a --project can
ary
kubectl config view  --minify > secure/kubeconfig
```
> Los nombres de zone, project son definidos en `variables.tf`

## DNS

Para crear la zona DNS, ir a la carpeta `dns`, colocar en `variables.tf` la IP de tu clúster o bien del balanceador, luego ejecutamos:
```bash
terraform init
terraform plan
terraform apply
```

## Drone.io

Para instalar drone.io en tu clúster, ir a la carpeta `packages`.
> Puedes cambiar las variables de configuración de tu repositorio (GitHub, Bitbucket, GitLab, etc....) en el archivos `helm/drone/values.yml``

luego ejecutamos:
```bash
terraform init
terraform plan
terraform apply
```