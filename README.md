

\## Arquitectura de Despliegue

Este proyecto está desplegado en AWS utilizando servicios "serverless":

\- \*\*Container Registry\*\*: Amazon ECR (Elastic Container Registry).

\- \*\*Orquestación\*\*: Amazon ECS (Elastic Container Service).

\- \*\*Cómputo\*\*: AWS Fargate (ejecución sin servidores).



\## Tecnologías

\- Python / FastAPI

\- Docker

\- AWS (ECR, ECS, Fargate)



\## Cómo desplegar

Para replicar este despliegue, sigue estos pasos:

1\. \*\*Dockerizar\*\*: Construir la imagen con `docker build -t mi-api-backend .`

2\. \*\*ECR\*\*: Autenticar y subir la imagen a tu repositorio de AWS ECR.

3\. \*\*ECS\*\*: Crear el clúster en Fargate y definir la tarea apuntando a la imagen de ECR.

![Testigo IP Pública](Testigo%20IP%20Publica.jpg)

\## Endpoints

Puedes probar la API en vivo a través de la documentación interactiva:

`http://34.234.93.85/docs`

