FROM thevlang/vlang:buster

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git
