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


