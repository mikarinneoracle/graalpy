FROM ubuntu:latest

EXPOSE 8000

COPY graalpyfunction graalpyfunction
CMD ./graalpyfunction
