# LAB12-DSN-HUALLPA
laboratorio 12 calificado de desarrollo de soluciones en la nube


# Practica 03 - CRUD de Contactos en AWS

Este proyecto implementa un CRUD de contactos utilizando Django, con la capacidad de insertar imágenes que son almacenadas en un bucket de AWS S3. La base de datos utilizada es MySQL en AWS RDS, y la aplicación se ejecuta en un contenedor Docker en una instancia de Ubuntu en AWS EC2.

## Descripción del Proyecto

Para la realización de esta práctica 03, se han utilizado diversos servicios de AWS, incluyendo EC2 para la instancia, RDS para la base de datos y S3 para el almacenamiento de imágenes. Además, la aplicación se encuentra contenerizada con Docker.

## Uso del Proyecto en Local

Para utilizar este proyecto en un entorno local, sigue estos pasos:

1. Clona el repositorio:

    ```bash
    git clone https://github.com/rhuallpa/LAB12-DSN-HUALLPA.git
    ```

2. Abre la terminal e instala los requerimientos:

    ```bash
    pip install -r requirements.txt
    ```

3. Navega hasta el directorio del proyecto:

    ```bash
    cd LAB12-DSN-HUALLPA/virtual
    ```

4. Inicia la aplicación:

    ```bash
    python manage.py runserver
    ```


## Creación de la Base de Datos en AWS RDS

Accede a AWS Management Console y selecciona el servicio de RDS.

Sigue el asistente de creación de RDS, elige MySQL como motor de base de datos y completa los detalles necesarios, como nombre de la instancia, credenciales, etc. Una vez creada la instancia, anota la información de conexión (endpoint, usuario, contraseña). Modifica el archivo de configuración de la aplicación Django (settings.py) para utilizar la nueva base de datos RDS.

## Creación del Bucket en AWS S3

Accede a AWS Management Console y selecciona el servicio de S3. Crea un nuevo bucket, proporciona un nombre único y configura las opciones según tus necesidades. Anota la URL del bucket y las credenciales de acceso.

## Creación de la Instancia Ubuntu en AWS EC2

Accede a AWS Management Console y selecciona el servicio de EC2. Crea una nueva instancia de Ubuntu siguiendo el asistente, asegurándote de seleccionar una clave SSH para acceder a la instancia. Anota la IP de la instancia y descarga la clave privada generada. Conéctate a la instancia desde tu terminal usando SSH:

    ```bash
    ssh -i "tu-clave-privada.pem" ubuntu@ip-de-la-instancia
    ```


## Creación del Dockerfile
Crea un archivo llamado Dockerfile en la raíz del proyecto. Agrega las instrucciones necesarias para construir la imagen Docker. Por ejemplo:

Dockerfile

    ```bash
    FROM python:3.8

    WORKDIR /app
    
    COPY . /app
    
    RUN pip install -r requirements.txt
    
    EXPOSE 9000
    
    CMD ["python", "manage.py", "runserver", "0.0.0.0:9000"]
        
    ```


## Construye la imagen Docker:

    ```bash
    docker build -t nombre-de-tu-imagen .
    ```

## Ejecuta el contenedor:

    ```bash
    docker run -p 9000:9000 nombre-de-tu-imagen
    ```



