FROM python

WORKDIR /app/

RUN mkdir -p \
    bin \
    log \
    conf \
    data

COPY /src/*.py /app/

CMD python3 /hello.py
