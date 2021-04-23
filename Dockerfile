
FROM python:3.8

WORKDIR /usr/src/app

COPY . .
RUN pip3 install -r /usr/src/app/requirements.txt

EXPOSE 9000

CMD ["python3", "/usr/src/app/productpage.py", "9000"]
