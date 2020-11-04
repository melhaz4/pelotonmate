FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# RUN cd /usr/local/bin

EXPOSE 5000
COPY . .

# RUN python test.py

 CMD ["flask", "run"]
