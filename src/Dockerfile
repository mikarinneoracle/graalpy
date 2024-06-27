FROM fnproject/python:3.11-dev

EXPOSE 8000

RUN mkdir /function
WORKDIR /function
ADD func.py /function/
ADD requirements.txt /function/

RUN pip3 install --target /python/  --no-cache --no-cache-dir -r requirements.txt

ENV PYTHONPATH=/function:/python

ADD . /function/
ENTRYPOINT ["/python/bin/fdk", "/function/func.py", "handler"]