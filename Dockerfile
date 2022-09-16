FROM python:3.10-alpine

WORKDIR /app

COPY . .

RUN apk --update --no-cache add build-base && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["uvicorn", "shortener_app.main:app", "--host", "0.0.0.0"]
