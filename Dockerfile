FROM container-registry.oracle.com/os/oraclelinux:8

RUN yum install glibc-devel

COPY graalpyfunction graalpyfunction
CMD ./graalpyfunction
