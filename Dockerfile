FROM ghcr.io/graalvm/graalpy-community:24.0.1

EXPOSE 8000

RUN mkdir /function
WORKDIR /function
ADD src/func.py /function/
ADD src/requirements.txt /function/

RUN graalpy -Im ensurepip
RUN graalpy -m pip install --target /python/  --no-cache --no-cache-dir -r requirements.txt

ENV PYTHONPATH=/function:/python

ADD . /function/
ENTRYPOINT ["/python/bin/fdk", "/function/func.py", "handler"]