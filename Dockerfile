FROM python:3.7-slim-buster
WORKDIR /app
COPY . /app

RUN RUN apt update -y && apt install -y awscli

RUN pip install -r requirements.txt
CMD ["python3","application.py"]