FROM python:3.9-slim

WORKDIR /app

COPY src/requirements.txt .

RUN pip install -r requirements.txt

COPY src/app.py .

EXPOSE 8080

CMD ["uvicorn", "app:app", "--port", "8080", "--host", "0.0.0.0", "--reload"]

