
FROM python:3.8

WORKDIR /usr/src/app

COPY . .
RUN pip install -r /usr/src/app/requirements.txt

ARG DETAILS_HOSTNAME
ARG RATINGS_HOSTNAME
ARG REVIEWS_HOSTNAME
ENV DETAILS_HOSTNAME ${DETAILS_HOSTNAME:-http://details:8080/}
ENV RATINGS_HOSTNAME ${RATINGS_HOSTNAME:-http://ratings:8081/}
ENV REVIEWS_HOSTNAME ${REVIEWS_HOSTNAME:-http://reviews:9080/}

EXPOSE 9000

CMD ["python", "/usr/src/app/productpage.py", "9000"]
