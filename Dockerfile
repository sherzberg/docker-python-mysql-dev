FROM sherzberg/python-all-dev
MAINTAINER Spencer Herzberg "spencer.herzberg@gmail.com"

# needed for python-pip
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list

RUN apt-get update && apt-get install --no-install-recommends -qq -y \
    python-pip \
    libmysqlclient-dev \
    git-core \
    mercurial \
    libjpeg-dev \
    libpng12-dev \
    libfreetype6 \
    libfreetype6-dev \
    zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -U pip==1.5
RUN pip install -U setuptools --no-use-wheel
RUN pip install -U wheel --no-use-wheel
