
FROM python:3.8

WORKDIR /usr/src/app

COPY . .
RUN pip install -r /usr/src/app/requirements.txt

EXPOSE 9000

CMD ["python", "/usr/src/app/productpage.py", "9000"]
