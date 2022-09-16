# URL Shortener

This repo contains the code from [this RealPython blog entry](https://realpython.com/build-a-python-url-shortener-with-fastapi).

# Requirements

- Python >= 3.9

# How to run it

## Locally

- Install libs:

```shell
pip install -r requirements.txt
```

- Run it:

```shell
uvicorn shortener_app.main:app --reload
```

ge

## Or using docker

- Build and run it

```shell
docker build -t url-shortener:latest .
docker run -d --rm -p 8000:8000 url-shortener:latest
```

Then head over to `http://127.0.0.1:8000`
For Swagger docs go to `http://127.0.0.1:8000/docs`

# WIP:

- Custom URL key: Let your users create custom URL keys instead of a random string.
- Peek URL: Create an endpoint for your users to check which target URL is behind a shortened URL.
- Graceful Forward: Check if the website exists before forwarding.
- JWT authentication
- Frontend
