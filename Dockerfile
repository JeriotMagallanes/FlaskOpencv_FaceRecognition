FROM python:3.8

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    libsm6 \
    libxext6 \
    libxrender-dev \
    v4l-utils \
    ffmpeg

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos necesarios
COPY . .

# Instalar dependencias Python
RUN pip install --no-cache-dir -r requirements.txt

# Comando por defecto para ejecutar la aplicación Flask
CMD ["python", "app.py"]
