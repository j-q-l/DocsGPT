# Verwende eine Python-Umgebung
FROM python:3.10

# Setze das Arbeitsverzeichnis
WORKDIR /app

# Kopiere alle Files ins Container-Image
COPY . .

# Installiere alle Abhängigkeiten
RUN pip install --upgrade pip && pip install -r requirements.txt

# Starte den DocsGPT-Server mit FastAPI
CMD ["python", "application/main.py"]
