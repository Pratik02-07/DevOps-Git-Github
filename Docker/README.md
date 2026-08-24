Dockerfile → Image → Container

1. Dockerfile → Docker Image

A Dockerfile is a set of instructions telling Docker how to build your application environment.

Example:

FROM python:3.12


WORKDIR /app


COPY app.py .


CMD ["python", "app.py"]

When you run:

docker build -t myapp .

Docker reads the Dockerfile and creates:

Dockerfile
    ↓
docker build
    ↓
myapp:latest

That myapp:latest is the Docker Image.

So:

Dockerfile is the blueprint/instructions.

Image is the packaged result of those instructions.

2. Docker Image → Container

An image itself doesn't normally run your application.

You create a container from the image:

docker run myapp

The relationship is:

                 Docker Image
                      │
             docker run
                      │
          ┌───────────┼───────────┐
          ↓           ↓           ↓
      Container 1  Container 2  Container 3

You can create many containers from one image.

For example:

docker run -d --name app1 myapp
docker run -d --name app2 myapp
docker run -d --name app3 myapp

All three containers are created from the same image.

3. Container → Running Application

A container is the runtime environment created from an image.

For example:

Python Image
     ↓
Python Container
     ↓
Python Application
     ↓
Running
