 
FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask gunicorn pyjwt
#RUN gunicorn -b :8080 main:APP

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

