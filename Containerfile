FROM registry.redhat.io/ubi9/nginx-124:latest

COPY index.html /tmp/index.html

RUN mkdir /tmp/src \ 
    && sed "s/DOMAIN/${OCPDOMAIN}/g" /tmp/index.html > /tmp/src/index.html \
    && /usr/libexec/s2i/assemble