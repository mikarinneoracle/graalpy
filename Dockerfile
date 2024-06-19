#FROM ubuntu:latest
FROm alpine:3.14

COPY graalpyfunction graalpyfunction
CMD ./graalpyfunction
