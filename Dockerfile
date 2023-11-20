FROM python:3.10-slim
LABEL maintainer="dho95@my.bcit.ca"

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

CMD [ "python", "app.py" ]
