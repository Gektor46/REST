FROM python:3.7.3-alpine

COPY requirements.txt .

RUN apk update
RUN apk add zlib-dev jpeg-dev gcc musl-dev
RUN pip install -U pip && pip install --user -r requirements.txt

WORKDIR /

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]