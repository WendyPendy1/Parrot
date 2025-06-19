FROM python:3.8-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /app/


RUN pip install -r requirements.txt

COPY . /app/


RUN pip install uwsgi

EXPOSE 8000

CMD ["sh", "-c", "python manage.py migrate && uwsgi --http 0.0.0.0:8000 --module parrotsite.wsgi:application"]
