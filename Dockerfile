FROM python:3.10-alpine
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt requirements.txt
RUN  pip3 install -r requirements.txt
COPY . .
EXPOSE 8000
CMD [ "sh","-c","python manage.py runserver 0.0.0.0:8000" ]
