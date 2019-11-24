FROM ruby:2.5.7

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    apt-get -y --no-install-recommends install \
        vim

WORKDIR /app
CMD ['/bin/bash']
