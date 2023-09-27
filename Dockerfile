FROM --platform=$BUILDPLATFORM python:3.6-alpine

WORKDIR /translation

COPY requirements.txt /translation
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

COPY . /translation

ENTRYPOINT ["python3"]
CMD ["app/app.py"]
