# frontend 
# syntax=docker/dockerfile:1
FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install -r requerimientos.txt
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]