FROM python:3.10.6

WORKDIR /app

COPY ./app.py ./
COPY ./ms ./ms/
COPY ./model ./model/
COPY ./requirements.txt ./

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python","app.py"]