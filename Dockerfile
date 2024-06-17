FROM ghcr.io/graalvm/graalvm-ce:ol8-java17-22

COPY graalpyfunction graalpyfunction
CMD ./graalpyfunction
