FROM python:3.12-alpine AS build
LABEL stage=dbg-api-docs-build-stage

WORKDIR /app

COPY pyproject.toml pyproject.toml
COPY docs docs
COPY mkdocs.yml mkdocs.yml
COPY requirements.txt requirements.txt

RUN pip install --upgrade pip && pip install -r requirements.txt
RUN mkdocs build

FROM nginx:1.25.2-alpine

COPY nginx.conf etc/nginx/nginx.conf
RUN rm -rf /usr/share/nginx/html/*
COPY --from=build /app/site /usr/share/nginx/html/
