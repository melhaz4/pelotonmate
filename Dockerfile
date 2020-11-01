FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# RUN cd /usr/local/bin
# RUN aws configure set aws_access_key_id AKIA5EJP2JK2JRJ4TQMQ
# RUN aws configure set aws_secret_access_key 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
# RUN aws configure set default.region us-east-1

EXPOSE 5000
COPY . .

CMD ["database:8000", "flask", "run"]