FROM ghcr.io/graalvm/graalpy-community:24.0.1-ol8

EXPOSE 8000

RUN mkdir /function
WORKDIR /function
ADD src/func.py /function/
ADD src/requirements.txt /function/

RUN graalpy -Im ensurepip
RUN graalpy -m pip install --target /python/  --no-cache --no-cache-dir -r requirements.txt

ENV PYTHONPATH=/function:/python

ADD . /function/

RUN mv /function/unix_events.py /opt/graalpy-24.0.1/lib/python3.10/asyncio/unix_events.py

ENTRYPOINT ["/python/bin/fdk", "/function/func.py", "handler"]