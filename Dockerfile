# Dockerfile for new minimal Hello World
FROM python:3.11-slim-buster

WORKDIR /app

RUN pip install Flask

COPY app.py .

# No crear usuario, no instalar nada. Solo lo minimo para ver si falla.
# Exponer el puerto de escucha
EXPOSE 5000

# Comando para ejecutar la aplicación directamente con Flask (NO para producción)
CMD ["python", "app.py"]
