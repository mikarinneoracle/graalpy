FROM container-registry.oracle.com/os/oraclelinux:8-slim AS runtime

COPY graalpyfunction graalpyfunction
CMD ./graalpyfunction
