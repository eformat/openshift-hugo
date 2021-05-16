FROM registry.access.redhat.com/ubi8/ubi:8.3

ENV HUGO_VERSION=0.83.1

RUN curl -skL -o /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz && \
    tar -C /tmp -xzf /tmp/hugo.tar.gz && \
    mv -v /tmp/hugo /usr/local/bin && \
    chmod -R 775 /usr/local/bin/hugo && \
    rm -rf /tmp/*.tar.gz && \
    dnf -y install git && \
    dnf clean all

USER 1001
