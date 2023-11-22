# Usar una imagen base de Python
FROM python:3.8

# Establecer el directorio de trabajo en /LAB12-DSN-HUALLPA
WORKDIR /LAB12-DSN-HUALLPA

RUN git clone https://github.com/rhuallpa/LAB12-DSN-HUALLPA.git


# Instalar las dependencias de la aplicación
RUN pip install -r requirements.txt

# Copiar todo el contenido del directorio actual al directorio de trabajo
COPY . /LAB12-DSN-HUALLPA/


# Exponer el puerto 9000 para la aplicación Django
EXPOSE 9000

# Comando para ejecutar la aplicación Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:9000"]

