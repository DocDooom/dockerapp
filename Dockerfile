FROM python:3.8
COPY . .
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]
