# Dockerfile
FROM python:3.9-slim

WORKDIR /app

COPY salma.py .

CMD ["python", "salma.py"]
