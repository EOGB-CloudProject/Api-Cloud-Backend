# 1. Usar una imagen oficial de Python súper ligera
FROM python:3.12-slim

# 2. Crear una carpeta de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar el archivo de requerimientos
COPY requirements.txt .

# 4. Instalar las librerías
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar el código de nuestra API
COPY main.py .

# 6. Exponer el puerto donde vivirá la API
EXPOSE 80

# 7. El comando para encender el servidor cuando arranque el contenedor
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]