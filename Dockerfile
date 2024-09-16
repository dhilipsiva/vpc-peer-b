FROM python:3.12-slim
WORKDIR /app
RUN apt update && apt install -y --quiet vim iputils-ping curl && pip install --no-cache-dir flask
EXPOSE 5000
ENV FLASK_APP=app.py
COPY . /app
CMD ["flask", "run", "--host=0.0.0.0"]
