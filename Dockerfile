# Dockerfile

FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN adduser --disabled-password --gecos '' appuser

USER appuser

COPY app/app.py /app/

WORKDIR /app

RUN pip install flask

EXPOSE 80

CMD ["python", "app.py"]
